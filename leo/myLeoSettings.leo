<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo (http://webpages.charter.net/edreamleo/front.html) -->
<?xml-stylesheet ekr_test?>
<leo_file xmlns:leo="http://www.leo-editor.org/2011/leo" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="tangentstorm.20130706095433.4094"><vh>@button set-style-sheet</vh></v>
<v t="tangentstorm.20130706033710.8256" a="E"><vh>@settings</vh>
<v t="tangentstorm.20130706033710.8261"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="tangentstorm.20130706033710.8257"><vh>@enabled-plugins</vh></v>
<v t="tangentstorm.20130706033710.8264"><vh>@int qt_max_colorized_chars = 200000</vh></v>
<v t="tangentstorm.20130706033710.8265"><vh>@data contextmenu_commands</vh></v>
<v t="tangentstorm.20130706033710.8266"><vh>@bool use_body_focus_border = False</vh></v>
<v t="tangentstorm.20130706033710.8267"><vh>@shortcut key bindings</vh></v>
<v t="tangentstorm.20130706095433.5621"><vh>@shortcut michal keys</vh></v>
<v t="tangentstorm.20130706033710.8258"><vh>@string initial_split_orientation = horizontal</vh></v>
<v t="tangentstorm.20130707091225.3746" a="E"><vh>Default colors, used if no language-specific color are in effect</vh>
<v t="tangentstorm.20130707091225.3747" a="E"><vh>Colors for Leo constructs</vh>
<v t="tangentstorm.20130707091225.3748"><vh>@color doc_part_color = #ffffcc</vh></v>
<v t="tangentstorm.20130707091225.3749"><vh>@color leo_keyword_color = #888899</vh></v>
<v t="tangentstorm.20130707091225.3750"><vh>@color section_name_color = red</vh></v>
<v t="tangentstorm.20130707091225.3751"><vh>@color show_invisibles_space_color = #E5E5E5</vh></v>
<v t="tangentstorm.20130707091225.3752"><vh>@color show_invisibles_tab_color = #CCCCCC</vh></v>
<v t="tangentstorm.20130707091225.3753"><vh>@color undefined_section_name_color = red</vh></v>
<v t="tangentstorm.20130706095433.13898"><vh>@color url_color = #66ffff</vh></v>
</v>
<v t="tangentstorm.20130707091225.3755"><vh>Colors for standard jEdit tags</vh>
<v t="tangentstorm.20130707091225.3756"><vh>@color comment1_color = #9999cc</vh></v>
<v t="tangentstorm.20130707091225.3757"><vh>@color comment2_color = firebrick3</vh></v>
<v t="tangentstorm.20130707091225.3758"><vh>@color comment3_color = plum3</vh></v>
<v t="tangentstorm.20130707091225.3759"><vh>@color comment4_color = orchid1</vh></v>
<v t="tangentstorm.20130707091225.3760"><vh>@color keyword1_color = magenta</vh></v>
<v t="tangentstorm.20130707091225.3761"><vh>@color keyword2_color = gold</vh></v>
<v t="tangentstorm.20130707091225.3762"><vh>@color keyword3_color = cyan</vh></v>
<v t="tangentstorm.20130707091225.3763"><vh>@color keyword4_color = #ffeecc</vh></v>
<v t="tangentstorm.20130707091225.3764"><vh>@color label_color = red</vh></v>
<v t="tangentstorm.20130707091225.3765"><vh>@color literal1_color = #00aa00</vh></v>
<v t="tangentstorm.20130707091225.3766"><vh>@color literal2_color = #00aa00</vh></v>
<v t="tangentstorm.20130707091225.3767"><vh>@color literal3_color = #00aa00</vh></v>
<v t="tangentstorm.20130707091225.3768"><vh>@color literal4_color = #00aa00</vh></v>
<v t="tangentstorm.20130707091225.3769"><vh>@color markup_color = blue</vh></v>
<v t="tangentstorm.20130707091225.3770"><vh>@color operator_color = #ccddcc</vh></v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="tangentstorm.20130706033710.8256"></t>
<t tx="tangentstorm.20130706033710.8257"># Leo loads plugins in the order they appear here.

# **Important**: to change these defaults, put
# an @enabled-plugins node in myLeoSettings.leo.

# Highly-recommended plugins:

plugins_menu.py
free_layout.py
    # Now loaded automatically.
    # needs to be early

# Recommended plugins:

contextmenu.py
    # This is required by the vim.py and xemacs.py plugins.
leo_to_html.py
mod_scripting.py
nav_qt.py
quicksearch.py
stickynotes.py
todo.py
viewrendered.py

# Alphabetical list of all Leo plugins.

# active_path.py
# add_directives.py
# at_folder.py
# at_produce.py
# at_view.py
# attrib_edit.py
# backlink.py
# bibtex.py
# bookmarks.py
# bzr_qcommands.py
# chapter_hoist.py
# codewisecompleter.py
# colorize_headlines.py
# contextmenu.py
# ctagscompleter.py
# cursesGui.py
# datenodes.py
# debugger_pudb.py
# detect_urls.py
# dragdropgoodies.py
# dtest.py
# dump_globals.py
# empty_leo_file.py
# enable_gc.py
# expfolder.py
# FileActions.py
# free_layout.py
# ftp.py
# geotag.py
# gitarchive.py
# graphcanvas.py
# import_cisco_config.py
# initinclass.py
# interact.py
# ipython.py
# jinjarender.py
# leo_interface.py
# leo_pdf.py
# leo_to_html.py
# leo_to_rtf.py
# leocursor.py
# leofeeds.py
# leomail.py
# leomylyn.py
# leoOPML.py
# leoremote.py
# leoscreen.py
# lineNumbers.py
# macros.py
# maximizeNewWindows.py
# mime.py
# mnplugins.py
# mod_autosave.py
# mod_framesize.py
# mod_http.py
# mod_leo2ascd.py
# mod_read_dir_outline.py
# mod_scripting.py
# mod_speedups.py
# mod_tempfname.py
# mod_timestamp.py
# multifile.py
# nav_qt.py
# nested_splitter.py
# niceNosent.py
# nodeActions.py
# notebook.py
# open_shell.py
# outline_export.py
# paste_as_headlines.py
# plugins_menu.py
# pluginsTest.py
# pretty_print.py
# projectwizard.py
# qt_quicksearch.py
# qtframecommands.py
# quickMove.py
# quicksearch.py
# quit_leo.py
# read_only_nodes.py
# redirect_to_log.py
# rst3.py
# run_nodes.py
# screen_capture.py
# screencast.py
# screenshots.py
# script_io_to_body.py
# scripts_menu.py
# setHomeDirectory.py
# slideshow.py
# spydershell.py
# startfile.py
# stickynotes.py
# stickynotes_plus.py
# systray.py
# testRegisterCommand.py
# textnode.py
# todo.py
# tomboy_import.py
# trace_gc_plugin.py
# trace_keys.py
# trace_tags.py
# valuespace.py
# viewrendered.py
# vim.py
# word_count.py
# word_export.py
# xemacs.py
# xml_edit.py
# xsltWithNodes.py
# zenity_file_dialogs.py
</t>
<t tx="tangentstorm.20130706033710.8258">horizontal: body pane to the left
vertical: body pane on the botton

vertical is the default; you may prefer horizontal for small but wide screens (e.g. on laptops)</t>
<t tx="tangentstorm.20130706033710.8261">@language css
/* Documentation of Qt stylesheets at http://doc.trolltech.com/stylesheet.html 

To experiment, you may want to use a @button that applies
the current stylesheet; look for "@button set-style-sheet" in
scripts.leo.

*/

/* Valid color names: http://www.w3.org/TR/SVG/types.html#ColorKeywords */

/* A QWidget: supports only background attributes.*/

QSplitter::handle {
    background-color: #999; /* lightSteelBlue1 */
}

QStackedWidget {
    color: #ccc;
    background-color: #333;
    border-color: red;
    padding: 0px;
    /* border-width: 0px; */
}

QSplitter {
    border-color: white;
    background-color: white;
    border-style: solid;
}

QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #333;
    color: #ccc;
    selection-color: black;
    selection-background-color: gold;
    font-family: Calibri;
    font-size: 16px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    font-family: DejaVu Sans Mono;
    font-size: 12px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    color: #ccc;
    background-color: #999;
    selection-color: white;
    selection-background-color: blue;
    font-family: Envy Code R, DejaVu Sans Mono;
    font-size: 14px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    color: #eee;
    background-color: #222233;
    selection-color: #000;
    selection-background-color: #ccc;
    font-family: Envy Code R;
    font-size: 14px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family: DejaVu Sans Mono;
    font-size: 12px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family: DejaVu Sans Mono;
    font-size: 12px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}

/* The mini-buffer */
QLineEdit#lineEdit {
    selection-color: white;
    selection-background-color: lightgrey;
    font-family: DejaVu Sans Mono;
    font-size: 12px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLineEdit#status1 {
    background-color: lightgrey;
    border-width: 1px;
    border-style: solid;
    border-color: darkgrey;
}

QLineEdit#status2 {
    background-color: lightgrey;
    border-width: 1px;
    border-style: solid;
    border-color: darkgrey;
}

XXQPushButton {
    background-color: #fdf5f5; /* A kind of pink. */
    margin: 2px;
    padding; 4px;
    border-width: 2px;
    border-style: solid;
    border-color: darkgrey;
}

/* QMenuBar works, but not QMenu... */
XXQMenuBar {
    font-family: DejaVu Sans Mono;
    font-size: 12px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}
</t>
<t tx="tangentstorm.20130706033710.8264">If zero, all nodes are colorized, regardless of length of body text.
If &gt; 0, only nodes whose body text are smaller than this limit are colorized.</t>
<t tx="tangentstorm.20130706033710.8265"># Add commands to contextmenu
# The format is &lt;command&gt; SPACE &lt;description&gt;

# stickynote Create a sticky note
# read-at-file-nodes Read file node</t>
<t tx="tangentstorm.20130706033710.8266">Avoid red focus borders in body pane (if it's not in your aesthetic taste)</t>
<t tx="tangentstorm.20130706033710.8267">go-anywhere = ctrl+g</t>
<t tx="tangentstorm.20130706095433.13898"></t>
<t tx="tangentstorm.20130706095433.4094">@language python
# For iterative polishing of Leo's look
# select a node with style sheet and press this button 
# to update stylesheet in realtime.

# For a starting point, look at
# Configuration (enabling plugins etc.)--&gt;@@settings--&gt;@data qt-gui-plugin-style-sheet


c.frame.top.setStyleSheet(p.b)

</t>
<t tx="tangentstorm.20130706095433.5621">contract-or-go-left         ! tree = Backspace
expand-and-go-right         ! tree = Return
goto-next-visible           ! tree = n
goto-prev-visible           ! tree = p
move-outline-down           ! tree = d
move-outline-left           ! tree = &lt;
move-outline-right          ! tree = &gt;
move-outline-up             ! tree = u
</t>
<t tx="tangentstorm.20130707091225.3746"></t>
<t tx="tangentstorm.20130707091225.3747"></t>
<t tx="tangentstorm.20130707091225.3748">The color of text in doc parts.
</t>
<t tx="tangentstorm.20130707091225.3749">The color of Leo keywords such as @ignore, @color, etc.
</t>
<t tx="tangentstorm.20130707091225.3750">The color of name in &lt; &lt; name &gt; &gt; when name is defined.
</t>
<t tx="tangentstorm.20130707091225.3751">The background color that represents spaces when Show Invisibles mode is in effect.

gray80: #CCCCCC
gray90: #E5E5E5
</t>
<t tx="tangentstorm.20130707091225.3752">The foreground color that represents tabs when Show Invisibles mode is in effect.

gray80: #CCCCCC
gray90: #E5E5E5
</t>
<t tx="tangentstorm.20130707091225.3753">The color of name in &lt;&lt; name &gt;&gt; when name is undefined.
</t>
<t tx="tangentstorm.20130707091225.3755"></t>
<t tx="tangentstorm.20130707091225.3756">@language python
# commentt
</t>
<t tx="tangentstorm.20130707091225.3757"></t>
<t tx="tangentstorm.20130707091225.3758"></t>
<t tx="tangentstorm.20130707091225.3759"></t>
<t tx="tangentstorm.20130707091225.3760"></t>
<t tx="tangentstorm.20130707091225.3761"></t>
<t tx="tangentstorm.20130707091225.3762"></t>
<t tx="tangentstorm.20130707091225.3763"></t>
<t tx="tangentstorm.20130707091225.3764"></t>
<t tx="tangentstorm.20130707091225.3765"></t>
<t tx="tangentstorm.20130707091225.3766"></t>
<t tx="tangentstorm.20130707091225.3767"></t>
<t tx="tangentstorm.20130707091225.3768"></t>
<t tx="tangentstorm.20130707091225.3769"></t>
<t tx="tangentstorm.20130707091225.3770"># Support for solozized colors requires black.</t>
</tnodes>
</leo_file>
