using System;
using System.Diagnostics;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using Microsoft.Win32;

namespace hw
{
    public partial class main_window : Window
    {
        private SynchronizationContext context;

        public main_window()
        {
            InitializeComponent();
            context = SynchronizationContext.Current;
        }
        
        private async void update_process_list(object sender, RoutedEventArgs e)
        {
            await Task.Run(() =>
            {
                try
                {
                    context.Send(d => list_box_processes.Items.Clear(), null);

                    Process[] processes = Process.GetProcesses();
                    foreach (Process proc in processes)
                    {
                        context.Send(d =>
                        {
                            list_box_processes.Items.Add(proc);
                        }, null);
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            });
        }
        
        private void kill_process(object sender, RoutedEventArgs e)
        {
            if (list_box_processes.SelectedItem != null)
            {
                Process process = list_box_processes.SelectedItem as Process;
                if (process != null)
                {
                    try
                    {
                        process.Kill();
                        MessageBox.Show($"Process \"{process.ProcessName}\" killed");
                        list_box_processes.Items.Remove(process);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }
            }
            else
            {
                MessageBox.Show("Please select a process from the list first");
            }
        }
        
        private void open_process(object sender, RoutedEventArgs e)
        {
            try
            {
                OpenFileDialog open_file_dialog = new OpenFileDialog();
                open_file_dialog.Filter = "Files (*.exe)|*.exe|All Files (*.*)|*.*";

                bool? result = open_file_dialog.ShowDialog();
                if (result == true)
                {
                    txt_box_process_path.Text = open_file_dialog.FileName;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        
        private void create_process(object sender, RoutedEventArgs e)
        {
            try
            {
                string path = txt_box_process_path.Text.Trim();
                if (!string.IsNullOrEmpty(path))
                {
                    Process.Start(path);
                }
                else
                {
                    MessageBox.Show("Please enter or open correct path");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
