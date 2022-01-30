<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="tangentstorm.20201017155622.205"><vh>Settings README</vh></v>
<v t="tangentstorm.20201017155623.205"><vh>@settings</vh>
<v t="tangentstorm.20201028091239.1"><vh>@data abbreviations</vh></v>
<v t="tangentstorm.20201017155623.206"><vh>@enabled-plugins</vh></v>
<v t="tangentstorm.20201017155623.207"><vh>@keys</vh>
<v t="tangentstorm.20201017155623.208"><vh>@shortcuts</vh></v>
</v>
<v t="tangentstorm.20201017155832.2"><vh>Basic Fonts (change these first)</vh>
<v t="tangentstorm.20201017155832.3"><vh>@string font-family = Calibri</vh></v>
<v t="tangentstorm.20201017155832.4"><vh>@string font-size = 10pt </vh></v>
<v t="tangentstorm.20201017155832.5"><vh>@string medium-font-size = 9pt</vh></v>
<v t="tangentstorm.20201017155832.6"><vh>@string small-font-size = 8pt</vh></v>
<v t="tangentstorm.20201017155832.7"><vh>@string font-style = normal</vh></v>
<v t="tangentstorm.20201017155832.8"><vh>@string font-weight = normal</vh></v>
</v>
<v t="tangentstorm.20201017172108.2"><vh>Body Fonts</vh>
<v t="tangentstorm.20201017172108.3"><vh>@string body-font-family = Consolas</vh></v>
<v t="tangentstorm.20201017172108.4"><vh>@string body-font-size = @font-size</vh></v>
<v t="tangentstorm.20201017172108.5"><vh>@string body-font-style = @font-style</vh></v>
<v t="tangentstorm.20201017172108.6"><vh>@string body-font-weight = @font-weight</vh></v>
<v t="tangentstorm.20201017172108.7"><vh>@string font-size-body = @body-font-size</vh></v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="tangentstorm.20201017155622.205">myLeoSettings.leo personal settings file created Sat Oct 17 15:56:23 2020

Only nodes that are descendants of the @settings node are read.

Only settings you need to modify should be in this file, do
not copy large parts of leoSettings.py here.

For more information see http://leoeditor.com/customizing.html</t>
<t tx="tangentstorm.20201017155623.205"></t>
<t tx="tangentstorm.20201017155623.206"># Leo loads plugins in the order they appear here.

# This node *MUST* be a child of the @settings node to take effect.

# **Important**: to change these defaults, put
# an @enabled-plugins node in myLeoSettings.leo.

# Highly-recommended plugins:

plugins_menu.py
free_layout.py
    # Now loaded automatically.
    # But it's useful to have a free_layout menu in the Plugins menu.

# Recommended plugins:

contextmenu.py
    # This is required by the vim.py and xemacs.py plugins.
leo_to_html.py
mod_scripting.py
nav_qt.py
nodetags.py
quicksearch.py
screen_capture.py
settings_finder.py
stickynotes.py
todo.py
viewrendered.py

# Alphabetical list of all Leo plugins.

# Note: This list may be out of date. leo/plugins contains all official plugins.
# Note: Leo loads all qt_*.py files automatically when the qt gui is in effect.

# active_path.py
# add_directives.py
# at_folder.py
# at_produce.py
# at_view.py
# attrib_edit.py
# backlink.py
# bibtex.py
# bigdash.py
# bookmarks.py
# bzr_qcommands.py
# chapter_hoist.py
# colorize_headlines.py
# contextmenu.py
# ctagscompleter.py
# cursesGui.py
# datenodes.py
# debugger_pudb.py
# dragdropgoodies.py
# dtest.py
# dump_globals.py
# empty_leo_file.py
# enable_gc.py
# expfolder.py
# FileActions.py
# free_layout.py
    # loaded automatically
# ftp.py
# geotag.py
# gitarchive.py
# graphcanvas.py
# import_cisco_config.py
# initinclass.py
# interact.py
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
# livecode.py
# macros.py
# markup_inline.py
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
    # loaded automatically.
# niceNosent.py
# nodeActions.py
# nodediff.py
# nodetags.py
# nodewatch.py
# notebook.py
# open_shell.py
# outline_export.py
# paste_as_headlines.py
# plugins_menu.py
# pretty_print.py
# projectwizard.py
# python_terminal.py
# QNCalendarWidget.py
# qt_quicksearch.py
# quickMove.py
# quicksearch.py
# quit_leo.py
# read_only_nodes.py
# redirect_to_log.py
# richtext.py
# rss.py
# rst3.py
# run_nodes.py
# screen_capture.py
# screencast.py
# screenshots.py
# script_io_to_body.py
# scripts_menu.py
# setHomeDirectory.py
# settings_finder.py
# sftp.py
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
# viewrendered2.py
# vim.py
# wikiview.py
# word_count.py
# word_export.py
# xemacs.py
# xml_edit.py
# xsltWithNodes.py
# zenity_file_dialogs.py
</t>
<t tx="tangentstorm.20201017155623.207"></t>
<t tx="tangentstorm.20201017155623.208"># You can define keyboard shortcuts here of the form:
#
#    some-command Shift-F5
</t>
<t tx="tangentstorm.20201017155832.2"># All other fonts are defined in terms of these basic fonts.
# Changing the basic fonts are all that most users will want to do.</t>
<t tx="tangentstorm.20201017155832.3"></t>
<t tx="tangentstorm.20201017155832.4">**Important**: This should be set by each user.</t>
<t tx="tangentstorm.20201017155832.5">A small font size used by default in the check boxes in the Find tab.</t>
<t tx="tangentstorm.20201017155832.6">A small font size used by default in the status area.</t>
<t tx="tangentstorm.20201017155832.7">Valid values are: normal,italic,oblique</t>
<t tx="tangentstorm.20201017155832.8">valid values are: normal,bold,100,..,900</t>
<t tx="tangentstorm.20201017172108.2"></t>
<t tx="tangentstorm.20201017172108.3"></t>
<t tx="tangentstorm.20201017172108.4"></t>
<t tx="tangentstorm.20201017172108.5"></t>
<t tx="tangentstorm.20201017172108.6"></t>
<t tx="tangentstorm.20201017172108.7">This setting must exist for Ctrl-mousewheel font zooming to work.
</t>
<t tx="tangentstorm.20201028091239.1"># Comments lines (lines starting with '#') are ignored.
# Non-comment lines should have the form::
#
#    name=definition
tst;;=testing123</t>
</tnodes>
</leo_file>
