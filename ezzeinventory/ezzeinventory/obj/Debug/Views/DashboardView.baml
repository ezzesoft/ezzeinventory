   M S B A M L   `   `   `  ����H  Dezzeinventory, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:ezzeinventory.Viewsezzeinventory.Views  5      '    !ezzeinventory.Views.DashboardView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:ezzeinventory.Views     5      V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      
�������.��5
      �� $
��Auto=�6   $
��Auto=�66   .��5      � ���	#FFE8EEF0$��20q�6"     � ColumnDefinitions  5   
   �� 5      $	��260 �6   �� 5      $	��260 �6   �� 5      $	��260 �6   �� 5      $	��260 �6    � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      .+�5   
   � ���	#FFEE1E4D$	��250��6&   $	��100��62   $��0��6?   $��0��6O   $��4��6\   $
��Left=�6p   $	��Top=�6�     5      �� 5      $
��Auto �6#   �� 5      $
��Auto �6#    5      �� 5      �� 5       �� 5!      .+�5#      �� $��1��6   $��0��6)   $��Center=�67   $
��Left=�6R   .+�5$      �� $��2q�6   $��
TODAY SALE��6'   $��18(�69   $��DemiBold"�6G   6`   5%      �� 5&      $��0��6   $��0��6)   $��3��66   $��Center=�6G   .+�5'      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]   Kind$ CurrencyInr=�6*   $��80��6=   $��80��6I   5(      �� 5)      $��2��6   $��1��6)   $
��Left=�66   .+�5*      �� $��
₹ 18,000��6   $��10q�6,   $��15(�68   6H   5+      5,      � 5.   
   ���	#FF008BFF$	��250��6&   $	��100��62   $��1��6?   $��0��6O   $��3��6\   $
��Left=�6p   $	��Top=�6�     5/      �� 50      $
��Auto �6#   �� 51       53      �� 54      �� 55      �� 56      .+�58      �� $��1��6   $��0��6)   $��Center=�67   $
��Left=�6R   .+�59      �� $��2q�6   $��MONTHLY SALE��6'   $��18(�6;   $��DemiBold"�6I   6a   5:      �� 5;      $��0��6   $��0��6)   $��3��66   $��Center=�6G   .+�5<        $ Server=�6*   $��60��68   $��80��6D   5=      �� 5>      $��2��6   $��1��6)   $
��Left=�66   .+�5?      �� $��₹ 2,80,000��6   $��10q�6.   $��15(�6:   6J   5@      5A      � 5C   
   ���	#FF00CB6F$	��250��6&   $	��100��62   $��2��6?   $��0��6O   $��2��6\   $
��Left=�6p   $	��Top=�6�     5D      �� 5E      $
��Auto �6#   �� 5F       5H      �� 5I      �� 5J      �� 5K      .+�5M      �� $��1��6   $��0��6)   $��Center=�67   $
��Left=�6R   .+�5N      �� $��2q�6   $��QUARTERLY SALE��6'   $��18(�6=   $��DemiBold"�6K   6c   5O      �� 5P      $��0��6   $��0��6)   $��3��66   $��Center=�6G   .+�5Q        $ 
CloudCheck=�6*   $��70��6<   $��70��6H   $��10q�6S   5R      �� 5S      $��2��6   $��1��6)   $
��Left=�66   .+�5T      �� $��₹ 68,00,000��6   $��10q�6/   $��15(�6;   6K   5U      5V      � 5X   
   ���	#FFFFC500$	��250��6&   $	��100��62   $��3��6?   $��0��6O   $
��Left=�6\   $	��Top=�6w     5Y      �� 5Z      $
��Auto �6#   �� 5[       5]      �� 5^      �� 5_      �� 5`      .+�5b      �� $��1��6   $��0��6)   $��Center=�67   $
��Left=�6R   .+�5c      �� $��2q�6   $��YEARLY SALE��6'   $��18(�6:   $��DemiBold"�6H   $
��Left=�6^   6{   5d      �� 5e      $��0��6   $��0��6)   $��3��66   $��Center=�6G   .+�5f        $ ChartBar=�6*   $��70��6:   $��70��6F   $��20q�6Q   5g      �� 5h      $��2��6   $��1��6)   $
��Left=�66   .+�5i      �� $��₹ 1,80,00,000��6   $��10q�61   $��15(�6=   6M   5j      5l      � 5n      $��0��6   $��1��6#   $
��1030��60   $	��300��6=   $��4��6J   $
��Left=�6^   $	��Top=�6y   $��0 10 0 0q�6�   ��5o      �� 5p       �� ImageSource$ ../Images/graph3.png��6!    j� 
AlignmentY$ Center=�6E    j� 
AlignmentX$ Center=�6Y   5r      � 5s      $��0��6   $��2��6#   $��3��60   $	��450��6D   $	��770��6Q   $��0 10 0 0q�6]   $
��Left=�6o   $	��Top=�6�   ��5t      �� 5u      $ ../Images/graph1.png��6!   $ Center=�6E   $ Center=�6Y   5w      � 5x      $��4��6   $��2��6#   $	��250��60   $	��320��6<   $
��Left=�6I   $	��Top=�6d   $��0 10 0 0q�6|   ��5y      �� 5z      $ ../Images/graph2.png��6!   $ Center=�6E   $ Center=�6Y   5|      5~      5      5�      