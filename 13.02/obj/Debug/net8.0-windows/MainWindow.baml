   M S B A M L   `   `   `  ����	  13.02    hw.main_window   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  hw��5   	   $	��400��5   	   $	��400��5   	   $	��400��6   $	��400��6$   .��5      � $��10q�6    � RowDefinitions 5   
   �� 5	      $
��Auto �6   �� 5
      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� -   5         ��Name$ btn_update_process��5      $��Update Process List��5      $��0,0,0,5q�5      $��0��5      $��30��5      $��Stretch=�5      �� 5   
   -   5        $ btn_kill_process��5      $��Kill Process��5      $��0,0,0,5q�5      $��1��5      $��30��5      $��Stretch=�5      �� 5   
   -   5         ��Name$ list_box_processes��5      $��2��5       $��0,0,0,5q�5!      $	��200��5"       �� DisplayMemberPath$ ProcessName��5#      � 5%   
   $��3��6   $��0,0,0,5q�6    � ColumnDefinitions 5&      �� 5'      $��* �6#   �� 5(      $
��Auto �6#   .+�5+      �� -   5         ��Name$ txt_box_process_path��5+      $��0��5,      $��0,0,5,0q�5-      $��25��5.      $��Stretch=�5/      �� 51      -   5        $ btn_browse_process��51      $
��Open��52      $��1��53      $��80��54      55      56      �� 58   
   -   5        $ btn_create_process��58      $��Create new process��59      $��4��5:      $��30��5;      $��Stretch=�5=      5>      5?      