   M S B A M L   `   `   `  ����H  Dezzeinventory, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:ezzeinventoryezzeinventory  5   	   C&clr-namespace:ezzeinventory.ViewModelsezzeinventory.ViewModels  5   	   S.clr-namespace:ezzeinventory.ViewModels.Masters ezzeinventory.ViewModels.Masters  5   	   9!clr-namespace:ezzeinventory.Viewsezzeinventory.Views  5	   	   I)clr-namespace:ezzeinventory.Views.Mastersezzeinventory.Views.Masters  5
   	       ezzeinventory.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:ezzeinventory     5   	   =
viewmodels&clr-namespace:ezzeinventory.ViewModels     5   	   Kmasterviewmodels.clr-namespace:ezzeinventory.ViewModels.Masters     5   	   3views!clr-namespace:ezzeinventory.Views     5	   	   Amasterviews)clr-namespace:ezzeinventory.Views.Masters     5
   	   V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  Inventory Management��5   	   $	��600��6&   $
��1080��63   
������� � WindowStartupLocation$ CenterScreen=�6S   
�������$��1q�6�   
���   � � 
ResizeMode$ CanResizeWithGrip=�6�    � WindowState$ 	Maximized=�6�    � WindowStyle$
 None=�6�    � 	Resources 5       �� DataType1   +ezzeinventory.ViewModels.DashboardViewModel'   !ezzeinventory.Views.DashboardView � DataContext.   (ezzeinventory.ViewModels.CreateViewModel$   ezzeinventory.Views.CreateView=  7ezzeinventory.ViewModels.Masters.CountryMasterViewModel/   )ezzeinventory.Views.Masters.CountryMaster   MenuOpen �� TargetProperty	 �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame
 O� KeyTime O� Value  	MenuClose��%�  (��       5   6   *, +)(�� Z     5   3   *, +)(�� �     5   :   *, +)&	      &	 �    �� 5   
   dashboardViewTemplate��"  66   .R�5         6"   �� 5      �� 5   
   createViewTemplate��"  63   .R�5         6   �� 5      �� 5   
   countryMasterViewTemplate��"  6:   .R�5         6(   �� 5      �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $	 GridMenu��6a   .\�5        $
 0��6'   $ 60Q�63     5      $
 0:0:0.5��6'   $	 200Q�69   5      5      �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $	 GridMenu��6a   .\�5         $
 0��6'   $	 200Q�63     5!      $
 0:0:0.5��6'   $ 60Q�69   5"      5#      5$       � Triggers 5&      :� 5'   
    :� RoutedEvent$ ButtonBase.Click��6    :� 
SourceName$ ButtonOpenMenu��66   .[�5(      �� #��[  6   5)      :� 5*   
   $ ButtonBase.Click��6   $ ButtonCloseMenu��66   .[�5+      �� #��[ 6   5,      .��5/      � ���	#FFE8EEF0 � ColumnDefinitions 50   
   �� 51      $
��Auto �6   �� 52      $
��Auto �6   �� 53      �� 54      �� 55       � RowDefinitions 57   
   �� 58      $
��Auto �6   �� 59      $
��Auto �6   �� 5:      �� 5;      �� 5<      �� 5=      �� 5>      �� 5?      �� 5@      �� 5A      .+�5C   
   � $��60��6   $	��Top=�6   
�������$��0��6F   $��0��6V   $��5��6c   .+�5D      �� $��0q�6   
�������$��1q�63    J� Effect 5E      3  -System.Windows.Media.Effects.DropShadowEffect  5F         
BlurRadius$ 5Q�6'      Opacity$	 0.1Q�66   5H      �� 5I      -   5         ��Name$ TextBlockDateTime��5I      $�� ��63   $��Center=�6;   $��Center=�6X   $��22(�6s   �� 5J      $��Center=�6    �� Orientation$ 
Horizontal=�64   $��Right=�6M   .+�5K      '	  !MaterialDesignThemes.Wpf.PackIcon	  $��Center=�6+   $��10q�6F   �
  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]] 
  Kind$ Account=�6R   ���	#FF1C52786a   �� 5L      $��Administration��6   $��Center=�62   $��18(�6M   ���	#FF1C5278��6r   Z� 	  5M      $��Center=�6+   $��10q�6F   $ NotificationClearAll=�6R   ���	#FF1C52786n   	  5N      $��Center=�6+   $��10q�6F   $ MessageAlert=�6R   ���	#FF1C52786f   '  !MaterialDesignThemes.Wpf.PopupBox  5O      $��10q�6*      PlacementMode$ BottomAndAlignRightEdges=�66      	StaysOpen .  ���	#FF1C5278   PopupContent. 5P      �� $	��150��6!   .+�5Q      �� $��Account��6!   �� 5R      $��Settings��6!   �� 5S      $
��Help��6!   �� 5T      �� 5U      -   5         ��Name$ ButtonPopUpLogout��5U   !   $��Logout��6<   6M   5V      5W      5X      5Y      � 5[   
   -   5         �Name$ GridMenu��5[      $��60��6!   $
��Left=�6,   ���	#FF1C5278$��0��6^   $��0��6n   $��10��6{   .+�5\      �� .+�5]      � $	��150��6   
�������.+�5^      � ��5_      �� 5`       �� ImageSource$ Images/blur.jpg��6)    j� 
AlignmentY$ Center=�6H    j� 
AlignmentX$ Center=�6\   5b      �� 5c      -   5        $ ButtonCloseMenu��5c      $��60��66   $��60��6A   $	��Top=�6z   $��Right=�6�   $y�	Collapsed=�6�   ��6M   Z� ��6c   Z� .��5d      	  
�������$
��Bold"�6E   $ 	ArrowLeft=�6W   $��25��6h   $��25��6s   5e      �� 5f      -   5        $ ButtonOpenMenu��5f      $��60��65   $��60��6@   $	��Top=�6y   $��Right=�6�   ��6L   Z� ��6b   Z� .��5g      	  
�������$
��Bold"�6E   $
 Menu=�6W   $��25��6c   $��25��6n   5h      5i      �� 5j      $��Disabled=�6   
�������.@�5k      �� -   5         ��Name$ ListViewItemDashboard��5k   /   $��60��6#   .��5l      �� $ 
Horizontal=�6%   .+�5m      	  $ ViewDashboard=�66   $��25��6K   $��25��6V   $��10q�6b   $��Center=�6n   �� 5n      $��	Dashboard��6(   $��Center=�69   $��20 10q�6T   5o      5p      �� 5q      -   5        $ ListViewItemCreate��5q   /   $��60��6#   .��5r      �� $ 
Horizontal=�6%   .+�5s      	  $ Pencil=�66   $��25��6D   $��25��6O   $��10q�6[   $��Center=�6g   �� 5t      $��Create��6(   $��Center=�66   $��20 10q�6Q   5u      5v      �� 5w      -   5        $ ListViewCountryMaster��5w   /   $��60��6#   .��5x      �� $ 
Horizontal=�6%   .+�5y      	  $ Account=�66   $��25��6E   $��25��6P   $��10q�6\   $��Center=�6h   �� 5z      $��Master��6(   $��Center=�66   $��20 10q�6Q   5{      5|      �� 5}      $��60��6#   .��5~      �� $ 
Horizontal=�6%   .+�5      	  $ ChartAreaspline=�66   $��25��6M   $��25��6X   $��10q�6d   $��Center=�6p   �� 5�      $��Report��6(   $��Center=�66   $��20 10q�6Q   5�      5�      �� 5�      $��60��6#   .��5�      �� $ 
Horizontal=�6%   .+�5�      	  $ 
DesktopMac=�66   $��25��6H   $��25��6S   $��10q�6_   $��Center=�6k   �� 5�      $��System Control��6(   $��Center=�6>   $��20 10q�6Y   5�      5�      �� 5�      $��60��6#   .��5�      �� $ 
Horizontal=�6%   .+�5�      	  $ 	CloudSync=�66   $��25��6G   $��25��6R   $��10q�6^   $��Center=�6j   �� 5�      $��	Data Sync��6(   $��Center=�69   $��20 10q�6T   5�      5�      5�      5�      5�      �� 5�   
   $��1��6   $��1��6&   $��9��66   $��4��6G   ��6[   �� 5�      5�      