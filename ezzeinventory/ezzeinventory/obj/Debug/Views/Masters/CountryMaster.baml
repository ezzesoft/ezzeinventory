   M S B A M L   `   `   `  ����H  Dezzeinventory, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:ezzeinventory.Viewsezzeinventory.Views  5      /    )ezzeinventory.Views.Masters.CountryMaster   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:ezzeinventory.Views     5      .��5	      � ���	#FFE8EEF0$��20q�6"     � RowDefinitions  5
   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� -   5        $��	gvCountry��5      $��1��6$   $��5,133,15,16q�61   ��6G   �� *CountryList+ �� View 5      �� 5      -   5        gv��.P�5      �� $��
Country Id��6%    �� Width$	 150��6e    �� DisplayMemberBinding 69   �� *	CountryId+6e   �� 5      $��Country Name��6%   $	 230��6i    6;   �� *CountryName+6i   5      5      �� 5   
   -   5        $��txtCountryId��5   l   $��1��6   $��25��6   $
��Left=�6+   {�.  $��
115,12,0,0q�6X   $	��Top=�6�   $	��178��6�   ��6�   ��  �� ElementName$ 	gvCountry�� �� Path$ SelectedItem.CountryId��� 5   
   -   5        $��txtCountryName��5   Z   $��1��6   $��25��6   $
��Left=�6+   $��
115,43,0,0q�6F   $	��Top=�6p   $	��178��6�   ��6�   �� $ 	gvCountry��$ SelectedItem.CountryName��� 5   
   -   5        $��label1��5   b   $��
Country Id��6   $��1��6%   $
��Left=�62   $��12,12,0,274q�6M   6b   �� 5   
   -   5        $��label2��5   n   $��Country Name��6   $��1��6'   $��28��64   $
��Left=�6@   $��	12,43,0,0q�6[   $	��Top=�6|   �� 5   
   -   5        $��btnSave��5   h   $
��Save��6   $��1��6    $��40��6-   $
��Left=�69   $��
179,87,0,0q�6T   $	��Top=�5      $	��114��6)   ��5      �� *	cmdSave+5      5      