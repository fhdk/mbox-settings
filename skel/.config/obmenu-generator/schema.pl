#!/usr/bin/perl

# obmenu-generator - schema file

=for comment

    item:      add an item inside the menu               {item => ["command", "label", "icon"]},
    cat:       add a category inside the menu             {cat => ["name", "label", "icon"]},
    sep:       horizontal line separator                  {sep => undef}, {sep => "label"},
    pipe:      a pipe menu entry                         {pipe => ["command", "label", "icon"]},
    file:      include the content of an XML file        {file => "/path/to/file.xml"},
    raw:       any XML data supported by Openbox          {raw => q(xml data)},
    begin_cat: beginning of a category              {begin_cat => ["name", "icon"]},
    end_cat:   end of a category                      {end_cat => undef},
    obgenmenu: generic menu settings                {obgenmenu => ["label", "icon"]},
    exit:      default "Exit" action                     {exit => ["label", "icon"]},

=cut

require "$ENV{HOME}/.config/obmenu-generator/config.pl";

## Text editor
my $editor = $CONFIG->{editor};

our $SCHEMA = [
	{sep => "ArchLabs"},
    {item => ['exo-open --launch TerminalEmulator',     'Terminal',          'terminal']},
    {item => ['exo-open --launch WebBrowser ',          'Web Browser',       'firefox']},
    {item => ['exo-open --launch FileManager',          'File Manager',      'file-manager']},
    {sep => undef},
    #          NAME            LABEL                ICON
    {cat => ['utility',     'Accessories', 'applications-utilities']},
    {cat => ['development', 'Development', 'applications-development']},
    {cat => ['education',   'Education',   'applications-science']},
    {cat => ['game',        'Games',       'applications-games']},
    {cat => ['graphics',    'Graphics',    'applications-graphics']},
    {cat => ['audiovideo',  'Multimedia',  'applications-multimedia']},
    {cat => ['network',     'Network',     'applications-internet']},
    {cat => ['office',      'Office',      'applications-office']},
    {cat => ['other',       'Other',       'applications-other']},
    {cat => ['settings',    'Settings',    'gnome-settings']},
    {cat => ['system',      'System',      'applications-system']},
    {sep => undef},
    {pipe => ['al-places-pipemenu',        'Places',       'folder']},
    {pipe => ['al-recent-files-pipemenu',  'Recent Files', 'folder-recent']},
    {sep => undef},
    {begin_cat => ['Preferences', 'theme']},
        {begin_cat => ['Openbox', 'openbox']},
            {item => ["exo-open ~/.config/openbox/menu.xml",     'Edit menu.xml',                'text-xml']},
            {item => ["exo-open ~/.config/openbox/rc.xml",       'Edit rc.xml',                  'text-xml']},
            {item => ["exo-open ~/.config/openbox/autostart",    'Edit autostart',               'text-xml']},
            {sep => undef},
            {item => ['kickshaw',                               'GUI Menu Editor',               'theme']},
            {item => ['obconf',                                 'GUI Config Tool',               'theme']},
            {sep => undef},
            {item => ['openbox --restart',                      'Restart Openbox',               'openbox']},
            {item => ['openbox --reconfigure',                  'Reconfigure Openbox',           'openbox']},
        {end_cat => undef},
        {pipe => ['al-compositor',      'Compositor',   'compton']},
        {pipe => ['al-conky-pipemenu',  'Conky',        'conky']},
        {item => ['tint2conf',          'Tint2 GUI',    'tint2conf']},
        {sep => undef},
        {item => ['lxappearance',                           'Lxappearance',             'theme']},
        {item => ['xfce4-appearance-settings',              'Xfce4 Appearance',         'preferences-desktop-theme']},
        {item => ['rofi-theme-selector',                    'Rofi Appearance',          'theme']},
        {item => ['nitrogen',                               'Choose wallpaper',         'nitrogen']},
        {sep => undef},
        {item => ['pavucontrol',                            'Pulseaudio Preferences',   'multimedia-volume-control']},
        {item => ['exo-preferred-applications',             'Preferred Applications',   'preferred-applications']},
        {item => ['xfce4-settings-manager',                 'Xfce4 Settings Manager',   'preferences-desktop']},
        {item => ['arandr',                                 'Screen Layout Editor',     'display']},
    {end_cat => undef},
    {sep => undef},
    {begin_cat => ['Obmenu-Generator', 'menu-editor']},
        {item => ["$editor ~/.config/obmenu-generator/schema.pl", 'Menu Schema', 'text-x-source']},
        {item => ["$editor ~/.config/obmenu-generator/config.pl", 'Menu Config', 'text-x-source']},
        {sep  => undef},
        {item => ['obmenu-generator -p',       'Generate a pipe menu',              'menu-editor']},
        {item => ['obmenu-generator -s -c',    'Generate a static menu',            'menu-editor']},
    {end_cat => undef},
    {item => ["oldmenu", 		                   'Switch Menu',       	              'menu-editor']},
    {sep => undef},
    {pipe => ['al-kb-pipemenu',                'Display Keybinds',                  'cs-keyboard']},
    {sep => undef},
    {item => ['oblogout',                      'Exit Openbox',                      'exit']},
]
