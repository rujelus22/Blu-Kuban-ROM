.class public Lcom/dropbox/android/util/aa;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field static final synthetic a:Z

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/util/HashMap;

.field private static d:Ljava/util/HashMap;

.field private static e:Ljava/util/HashMap;

.field private static f:Ljava/util/HashMap;

.field private static g:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 30
    const-class v0, Lcom/dropbox/android/util/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_479

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/dropbox/android/util/aa;->a:Z

    .line 31
    const-class v0, Lcom/dropbox/android/util/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/util/aa;->b:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dropbox/android/util/aa;->c:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dropbox/android/util/aa;->d:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dropbox/android/util/aa;->e:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dropbox/android/util/aa;->f:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/dropbox/android/util/aa;->g:Ljava/util/Set;

    .line 41
    const-string v0, "htm"

    const-string v2, "text/html"

    const-string v3, "page_white_text"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "html"

    const-string v2, "text/html"

    const-string v3, "page_white_text"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "asc"

    const-string v2, "text/plain"

    const-string v3, "page_white_text"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "txt"

    const-string v2, "text/plain"

    const-string v3, "page_white_text"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "xsl"

    const-string v2, "text/xml"

    const-string v3, "page_white_text"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "xml"

    const-string v2, "text/xml"

    const-string v3, "page_white_text"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "css"

    const-string v2, "text/css"

    const-string v3, "page_white_text"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "rtx"

    const-string v2, "text/richtext"

    const-string v3, "page_white_text"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "rtf"

    const-string v2, "text/rtf"

    const-string v3, "page_white_text"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "sgm"

    const-string v2, "text/sgml"

    const-string v3, "page_white_text"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "sgml"

    const-string v2, "text/sgml"

    const-string v3, "page_white_text"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "tsv"

    const-string v2, "text/tab-separated-values"

    const-string v3, "page_white_text"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "csv"

    const-string v2, "text/comma-separated-values"

    const-string v3, "page_white_text"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "vnt"

    const-string v2, "text/x-vnote"

    const-string v3, "page_white_text"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "doc"

    const-string v2, "application/msword"

    const-string v3, "page_white_word"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, "dot"

    const-string v2, "application/msword"

    const-string v3, "page_white_word"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "docx"

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    const-string v3, "page_white_word"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "dotx"

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    const-string v3, "page_white_word"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "docm"

    const-string v2, "application/vnd.ms-word.document.macroEnabled.12"

    const-string v3, "page_white_word"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "dotm"

    const-string v2, "application/vnd.ms-word.template.macroEnabled.12"

    const-string v3, "page_white_word"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "xls"

    const-string v2, "application/vnd.ms-excel"

    const-string v3, "page_white_excel"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "xlt"

    const-string v2, "application/vnd.ms-excel"

    const-string v3, "page_white_excel"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "xla"

    const-string v2, "application/vnd.ms-excel"

    const-string v3, "page_white_excel"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "xlsx"

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const-string v3, "page_white_excel"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "xltx"

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    const-string v3, "page_white_excel"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "xlsm"

    const-string v2, "application/vnd.ms-excel.sheet.macroEnabled.12"

    const-string v3, "page_white_excel"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "xltm"

    const-string v2, "application/vnd.ms-excel.template.macroEnabled.12"

    const-string v3, "page_white_excel"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "xlam"

    const-string v2, "application/vnd.ms-excel.addin.macroEnabled.12"

    const-string v3, "page_white_excel"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "xlsb"

    const-string v2, "application/vnd.ms-excel.sheet.binary.macroEnabled.12"

    const-string v3, "page_white_excel"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "ppt"

    const-string v2, "application/vnd.ms-powerpoint"

    const-string v3, "page_white_powerpoint"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "pot"

    const-string v2, "application/vnd.ms-powerpoint"

    const-string v3, "page_white_powerpoint"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "pps"

    const-string v2, "application/vnd.ms-powerpoint"

    const-string v3, "page_white_powerpoint"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "ppa"

    const-string v2, "application/vnd.ms-powerpoint"

    const-string v3, "page_white_powerpoint"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "pptx"

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    const-string v3, "page_white_powerpoint"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "potx"

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.template"

    const-string v3, "page_white_powerpoint"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "ppsx"

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    const-string v3, "page_white_powerpoint"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "ppam"

    const-string v2, "application/vnd.ms-powerpoint.addin.macroEnabled.12"

    const-string v3, "page_white_powerpoint"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "pptm"

    const-string v2, "application/vnd.ms-powerpoint.presentation.macroEnabled.12"

    const-string v3, "page_white_powerpoint"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "potm"

    const-string v2, "application/vnd.ms-powerpoint.template.macroEnabled.12"

    const-string v3, "page_white_powerpoint"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "ppsm"

    const-string v2, "application/vnd.ms-powerpoint.slideshow.macroEnabled.12"

    const-string v3, "page_white_powerpoint"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "pdf"

    const-string v2, "application/pdf"

    const-string v3, "page_white_acrobat"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "ps"

    const-string v2, "application/postscript"

    const-string v3, "page_white_acrobat"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "ai"

    const-string v2, "application/postscript"

    const-string v3, "page_white_acrobat"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "eps"

    const-string v2, "application/postscript"

    const-string v3, "page_white_acrobat"

    invoke-static {v0, v2, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "xml"

    const-string v2, "application/xml"

    const-string v3, "page_white_text"

    invoke-static {v0, v2, v3, v1}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    const-string v0, "js"

    const-string v2, "application/javascript"

    const-string v3, "page_white_js"

    invoke-static {v0, v2, v3, v1}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    const-string v0, "js"

    const-string v2, "application/x-javascript"

    const-string v3, "page_white_js"

    invoke-static {v0, v2, v3, v1}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 97
    const-string v0, "latex"

    const-string v2, "application/x-latex"

    const-string v3, "page_white_code"

    invoke-static {v0, v2, v3, v1}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 98
    const-string v0, "sh"

    const-string v2, "application/x-sh"

    const-string v3, "page_white_code"

    invoke-static {v0, v2, v3, v1}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 99
    const-string v0, "tex"

    const-string v2, "application/x-tex"

    const-string v3, "page_white_code"

    invoke-static {v0, v2, v3, v1}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    const-string v0, "texi"

    const-string v2, "application/x-texinfo"

    const-string v3, "page_white_code"

    invoke-static {v0, v2, v3, v1}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    const-string v0, "texinfo"

    const-string v2, "application/x-texinfo"

    const-string v3, "page_white_code"

    invoke-static {v0, v2, v3, v1}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 102
    const-string v0, "tcl"

    const-string v2, "application/x-tcl"

    const-string v3, "page_white_code"

    invoke-static {v0, v2, v3, v1}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    const-string v0, "tar"

    const-string v1, "application/x-tar"

    const-string v2, "page_white_compressed"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "zip"

    const-string v1, "application/zip"

    const-string v2, "page_white_compressed"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "tar"

    const-string v1, "application/x-tar"

    const-string v2, "page_white_compressed"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "tar"

    const-string v1, "application/x-tar"

    const-string v2, "page_white_compressed"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "tar"

    const-string v1, "application/x-tar"

    const-string v2, "page_white_compressed"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "swf"

    const-string v1, "application/x-shockwave-flash"

    const-string v2, "page_white_flash"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "bmp"

    const-string v1, "image/bmp"

    const-string v2, "page_white_picture"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "gif"

    const-string v1, "image/gif"

    const-string v2, "page_white_picture"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "jpg"

    const-string v1, "image/jpeg"

    const-string v2, "page_white_picture"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "jpe"

    const-string v1, "image/jpeg"

    const-string v2, "page_white_picture"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "jpeg"

    const-string v1, "image/jpeg"

    const-string v2, "page_white_picture"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "png"

    const-string v1, "image/png"

    const-string v2, "page_white_picture"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "tif"

    const-string v1, "image/tiff"

    const-string v2, "page_white_picture"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "tiff"

    const-string v1, "image/tiff"

    const-string v2, "page_white_picture"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "pnm"

    const-string v1, "image/x-portable-anymap"

    const-string v2, "page_white_picture"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "pbm"

    const-string v1, "image/x-portable-bitmap"

    const-string v2, "page_white_picture"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "pgm"

    const-string v1, "image/x-portable-graymap"

    const-string v2, "page_white_picture"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "xbm"

    const-string v1, "image/x-xbitmap"

    const-string v2, "page_white_picture"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "xwd"

    const-string v1, "image/x-xwindowdump"

    const-string v2, "page_white_picture"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "wrl"

    const-string v1, "model/vrml"

    const-string v2, "page_white"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "vrml"

    const-string v1, "model/vrml"

    const-string v2, "page_white"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "mpg"

    const-string v1, "video/m3peg"

    const-string v2, "film"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "mpe"

    const-string v1, "video/mpeg"

    const-string v2, "film"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "mpeg"

    const-string v1, "video/mpeg"

    const-string v2, "film"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "mov"

    const-string v1, "video/quicktime"

    const-string v2, "film"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "qt"

    const-string v1, "video/quicktime"

    const-string v2, "film"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v0, "mxu"

    const-string v1, "video/vnd.mpegurl"

    const-string v2, "film"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "avi"

    const-string v1, "video/x-msvideo"

    const-string v2, "film"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "movie"

    const-string v1, "video/x-sgi-movie"

    const-string v2, "film"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "3gp"

    const-string v1, "video/3gpp"

    const-string v2, "film"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "au"

    const-string v1, "audio/basic"

    const-string v2, "page_white_sound"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "snd"

    const-string v1, "audio/basic"

    const-string v2, "page_white_sound"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "mid"

    const-string v1, "audio/midi"

    const-string v2, "page_white_sound"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "midi"

    const-string v1, "audio/midi"

    const-string v2, "page_white_sound"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "kar"

    const-string v1, "audio/midi"

    const-string v2, "page_white_sound"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "aif"

    const-string v1, "audio/x-aiff"

    const-string v2, "page_white_sound"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "aiff"

    const-string v1, "audio/x-aiff"

    const-string v2, "page_white_sound"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "aifc"

    const-string v1, "audio/x-aiff"

    const-string v2, "page_white_sound"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "mpga"

    const-string v1, "audio/mpeg"

    const-string v2, "page_white_sound"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "mp2"

    const-string v1, "audio/mpeg"

    const-string v2, "page_white_sound"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "mp3"

    const-string v1, "audio/mpeg"

    const-string v2, "page_white_sound"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "mp4"

    const-string v1, "audio/mp4"

    const-string v2, "page_white_sound"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "m3u"

    const-string v1, "audio/x-mpegurl"

    const-string v2, "page_white_sound"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "ram"

    const-string v1, "audio/x-pn-realaudio"

    const-string v2, "page_white_sound"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "rm"

    const-string v1, "audio/x-pn-realaudio"

    const-string v2, "page_white_sound"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "ra"

    const-string v1, "audio/x-realaudio"

    const-string v2, "page_white_sound"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "wav"

    const-string v1, "audio/x-wav"

    const-string v2, "page_white_sound"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "amr"

    const-string v1, "audio/3gpp"

    const-string v2, "page_white_sound"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v0, "3gpp"

    const-string v1, "audio/3gpp"

    const-string v2, "page_white_sound"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "wma"

    const-string v1, "audio/x-ms-wma"

    const-string v2, "page_white_sound"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "wmv"

    const-string v1, "audio/x-ms-wmv"

    const-string v2, "film"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "url"

    const-string v1, "text/url"

    const-string v2, "page_white"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "apk"

    const-string v1, "application/vnd.android.package-archive"

    const-string v2, "page_white_sound"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "epub"

    const-string v1, "application/epub+zip"

    const-string v2, "page_white"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "prc"

    const-string v1, "application/x-pilot-prc"

    const-string v2, "page_white"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "mobi"

    const-string v1, "application/x-mobipocket-ebook"

    const-string v2, "page_white"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "cbr"

    const-string v1, "application/x-cbr"

    const-string v2, "page_white"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "cbz"

    const-string v1, "application/x-cbr"

    const-string v2, "page_white"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "cbt"

    const-string v1, "application/x-cbr"

    const-string v2, "page_white"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "cba"

    const-string v1, "application/x-cbr"

    const-string v2, "page_white"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "cb7"

    const-string v1, "application/x-cbr"

    const-string v2, "page_white"

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/dropbox/android/util/aa;->g:Ljava/util/Set;

    const-string v1, "image/bmp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lcom/dropbox/android/util/aa;->g:Ljava/util/Set;

    const-string v1, "image/gif"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lcom/dropbox/android/util/aa;->g:Ljava/util/Set;

    const-string v1, "image/png"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lcom/dropbox/android/util/aa;->g:Ljava/util/Set;

    const-string v1, "image/tiff"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lcom/dropbox/android/util/aa;->g:Ljava/util/Set;

    const-string v1, "image/x-portable-anymap"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/dropbox/android/util/aa;->g:Ljava/util/Set;

    const-string v1, "image/x-portable-bitmap"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/dropbox/android/util/aa;->g:Ljava/util/Set;

    const-string v1, "image/x-portable-graymap"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/dropbox/android/util/aa;->g:Ljava/util/Set;

    const-string v1, "image/x-xbitmap"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/dropbox/android/util/aa;->g:Ljava/util/Set;

    const-string v1, "image/x-xwindowdump"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    return-void

    .line 30
    :cond_479
    const/4 v0, 0x0

    goto/16 :goto_a
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 572
    invoke-static {p0, p1}, Lcom/dropbox/android/util/aa;->b(Ljava/io/File;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Security exception, a filename we don\'t allow was attempting to be uploaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 574
    sget-object v1, Lcom/dropbox/android/util/aa;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 578
    :cond_28
    return-object p0
.end method

.method public static a(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 414
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 415
    if-nez v0, :cond_15

    .line 417
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 486
    :cond_14
    :goto_14
    return-object v0

    .line 418
    :cond_15
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 420
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 421
    :cond_2b
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.dropbox.android.Dropbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 423
    new-instance v0, Lcom/dropbox/android/util/Z;

    invoke-direct {v0, p0}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->f()Lcom/dropbox/android/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/ap;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 425
    :cond_4d
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 427
    if-eqz v0, :cond_63

    .line 428
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 430
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 435
    :cond_63
    if-eqz p1, :cond_114

    .line 438
    :try_start_65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_display_name"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 440
    if-eqz v1, :cond_114

    .line 441
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_112

    .line 442
    const-string v0, "_display_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 443
    if-ltz v0, :cond_92

    .line 444
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 447
    :cond_92
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 448
    if-ltz v0, :cond_110

    .line 457
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 458
    if-eqz v0, :cond_110

    .line 459
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 460
    if-eqz v6, :cond_bb

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_110

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_b8
    .catch Ljava/lang/SecurityException; {:try_start_65 .. :try_end_b8} :catch_ce
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_b8} :catch_e8

    move-result v2

    if-eqz v2, :cond_110

    .line 468
    :cond_bb
    :goto_bb
    :try_start_bb
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_be
    .catch Ljava/lang/SecurityException; {:try_start_bb .. :try_end_be} :catch_ce
    .catch Ljava/lang/RuntimeException; {:try_start_bb .. :try_end_be} :catch_10c

    .line 482
    :goto_be
    if-eqz v0, :cond_c8

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 483
    :cond_c8
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 470
    :catch_ce
    move-exception v0

    .line 472
    sget-object v1, Lcom/dropbox/android/util/aa;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception, couldn\'t get filename from URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    throw v0

    .line 474
    :catch_e8
    move-exception v0

    .line 476
    :goto_e9
    sget-object v1, Lcom/dropbox/android/util/aa;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t get filename from URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    sget-object v2, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    move-object v0, v6

    goto :goto_be

    .line 474
    :catch_10c
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_e9

    :cond_110
    move-object v0, v6

    goto :goto_bb

    :cond_112
    move-object v0, v6

    goto :goto_bb

    :cond_114
    move-object v0, v6

    goto :goto_be
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 213
    sget-object v0, Lcom/dropbox/android/util/aa;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 316
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 317
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 320
    const-string v1, "apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 321
    const-string p1, "application/vnd.android.package-archive"

    .line 355
    :cond_1a
    :goto_1a
    return-object p1

    .line 322
    :cond_1b
    const-string v1, "wma"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 323
    const-string p1, "audio/x-ms-wma"

    goto :goto_1a

    .line 324
    :cond_26
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 325
    const-string p1, "application/x-url"

    goto :goto_1a

    .line 326
    :cond_31
    const-string v1, "epub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 327
    const-string p1, "application/epub+zip"

    goto :goto_1a

    .line 328
    :cond_3c
    const-string v1, "prc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 329
    const-string p1, "application/x-pilot-prc"

    goto :goto_1a

    .line 330
    :cond_47
    const-string v1, "mobi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 331
    const-string p1, "application/x-mobipocket-ebook"

    goto :goto_1a

    .line 332
    :cond_52
    const-string v1, "psafe3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 333
    const-string p1, "application/application/x-psafe"

    goto :goto_1a

    .line 334
    :cond_5d
    const-string v1, "cbr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    const-string v1, "cbz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    const-string v1, "cbt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    const-string v1, "cba"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    const-string v1, "cb7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 337
    :cond_85
    const-string p1, "application/x-cbr"

    goto :goto_1a

    .line 338
    :cond_88
    const-string v1, "mmap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_98

    const-string v1, "xmmap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 339
    :cond_98
    const-string p1, "application/vnd.mindjet.mindmanager"

    goto :goto_1a

    .line 340
    :cond_9b
    const-string v1, "mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 341
    const-string p1, "application/x-freemind"

    goto/16 :goto_1a

    .line 342
    :cond_a7
    const-string v1, "rmvb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 343
    const-string p1, "video/x-rmvb"

    goto/16 :goto_1a

    .line 344
    :cond_b3
    const-string v1, "aa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 345
    const-string p1, "audio/audible"

    goto/16 :goto_1a

    .line 346
    :cond_bf
    const-string v1, "aax"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 347
    const-string p1, "audio/vnd.audible.aax"

    goto/16 :goto_1a

    .line 348
    :cond_cb
    const-string v1, "bmml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 349
    const-string p1, "text/vnd.balsamiq.bmml"

    goto/16 :goto_1a

    .line 350
    :cond_d7
    const-string v1, "vnt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 351
    const-string p1, "text/x-vnote"

    goto/16 :goto_1a
.end method

.method public static a(Ljava/util/Collection;Landroid/content/Context;)Ljava/util/HashMap;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 615
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 616
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 617
    invoke-static {v0, p1}, Lcom/dropbox/android/util/aa;->a(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 619
    :cond_25
    return-object v1
.end method

.method public static a(Landroid/database/Cursor;)Ljava/util/Set;
    .registers 4
    .parameter

    .prologue
    .line 624
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 626
    if-eqz p0, :cond_38

    :try_start_7
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_38

    .line 627
    const/4 v1, -0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 628
    :cond_11
    :goto_11
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 629
    invoke-static {p0}, Lcom/dropbox/android/widget/S;->a(Landroid/database/Cursor;)Lcom/dropbox/android/widget/S;

    move-result-object v1

    .line 630
    sget-object v2, Lcom/dropbox/android/widget/S;->a:Lcom/dropbox/android/widget/S;

    if-eq v1, v2, :cond_23

    sget-object v2, Lcom/dropbox/android/widget/S;->f:Lcom/dropbox/android/widget/S;

    if-ne v1, v2, :cond_11

    .line 631
    :cond_23
    const-string v1, "_display_name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 632
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 633
    if-eqz v1, :cond_11

    .line 634
    invoke-static {v1}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Landroid/database/StaleDataException; {:try_start_7 .. :try_end_36} :catch_37

    goto :goto_11

    .line 639
    :catch_37
    move-exception v1

    .line 643
    :cond_38
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    const-string v1, "text/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 199
    const/4 v0, 0x1

    .line 201
    :cond_a
    invoke-static {p0, p1, p2, v0}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 202
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    sget-object v0, Lcom/dropbox/android/util/aa;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/dropbox/android/util/aa;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/dropbox/android/util/aa;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/dropbox/android/util/aa;->f:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-void
.end method

.method public static a(Landroid/net/Uri;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 360
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    .line 364
    :cond_7
    :goto_7
    return v0

    .line 363
    :cond_8
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 364
    const-string v2, "https"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_7

    const-string v2, "dropbox"

    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    aget-object v3, v1, v3

    invoke-static {v2, v3}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "com"

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v1, v3

    invoke-static {v2, v1}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static a(Ljava/io/File;)Z
    .registers 2
    .parameter

    .prologue
    .line 565
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/aa;->p(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    .line 567
    :goto_8
    return v0

    .line 566
    :catch_9
    move-exception v0

    .line 567
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/aa;->p(Ljava/lang/String;)Z

    move-result v0

    goto :goto_8
.end method

.method public static b(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 386
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/aa;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 389
    return-object v0
.end method

.method public static b(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 497
    .line 499
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 500
    if-nez v0, :cond_26

    .line 502
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    :goto_b
    if-nez v0, :cond_d4

    .line 539
    sget-object v0, Lcom/dropbox/android/util/aa;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine source File from uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :goto_25
    return-object v6

    .line 503
    :cond_26
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 504
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 505
    :cond_33
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.dropbox.android.Dropbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 507
    new-instance v0, Lcom/dropbox/android/util/Z;

    invoke-direct {v0, p0}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    .line 508
    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->f()Lcom/dropbox/android/util/ap;

    .line 509
    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->f()Lcom/dropbox/android/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/ap;->b()Ljava/io/File;

    move-result-object v6

    goto :goto_25

    .line 512
    :cond_58
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 513
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 515
    invoke-static {v1, p1}, Lcom/dropbox/android/util/aa;->a(Ljava/io/File;Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    goto :goto_25

    .line 516
    :cond_6c
    if-eqz p1, :cond_106

    .line 519
    const/4 v0, 0x1

    :try_start_6f
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 520
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 521
    if-eqz v1, :cond_106

    .line 522
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_104

    .line 523
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_8e
    .catch Ljava/lang/SecurityException; {:try_start_6f .. :try_end_8e} :catch_94
    .catch Ljava/lang/RuntimeException; {:try_start_6f .. :try_end_8e} :catch_ae

    move-result-object v0

    .line 525
    :goto_8f
    :try_start_8f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_92
    .catch Ljava/lang/SecurityException; {:try_start_8f .. :try_end_92} :catch_94
    .catch Ljava/lang/RuntimeException; {:try_start_8f .. :try_end_92} :catch_ff

    goto/16 :goto_b

    .line 527
    :catch_94
    move-exception v0

    .line 529
    sget-object v1, Lcom/dropbox/android/util/aa;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception, couldn\'t get filename from URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    throw v0

    .line 531
    :catch_ae
    move-exception v0

    move-object v1, v6

    .line 532
    :goto_b0
    sget-object v2, Lcom/dropbox/android/util/aa;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t get filename from content provider for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v2

    sget-object v3, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v2, v0, v3}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    move-object v0, v1

    goto/16 :goto_b

    .line 541
    :cond_d4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 543
    invoke-static {v1, p1}, Lcom/dropbox/android/util/aa;->a(Ljava/io/File;Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    goto/16 :goto_25

    .line 545
    :cond_e5
    sget-object v1, Lcom/dropbox/android/util/aa;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File doesn\'t exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 531
    :catch_ff
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_b0

    :cond_104
    move-object v0, v6

    goto :goto_8f

    :cond_106
    move-object v0, v6

    goto/16 :goto_b
.end method

.method private static b(Ljava/io/File;Landroid/content/Context;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 587
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 589
    :try_start_8
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    .line 592
    :goto_10
    return v0

    .line 590
    :catch_11
    move-exception v0

    .line 592
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 217
    sget-object v0, Lcom/dropbox/android/util/aa;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 218
    sget-object v0, Lcom/dropbox/android/util/aa;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 220
    :goto_14
    return v0

    :cond_15
    const-string v0, "text/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_14
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 225
    const-string v0, "text/html"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 229
    const-string v0, "application/x-url"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 234
    .line 235
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 236
    const/4 v0, -0x1

    if-le v1, v0, :cond_13

    .line 237
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 239
    :cond_13
    sget-object v0, Lcom/dropbox/android/util/aa;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    if-nez v0, :cond_2c

    if-lez v1, :cond_2c

    .line 241
    invoke-static {}, Lcom/dropbox/android/util/h;->G()Lcom/dropbox/android/util/r;

    move-result-object v1

    const-string v2, "ext"

    invoke-virtual {v1, v2, p0}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/util/r;->c()V

    .line 243
    :cond_2c
    return-object v0
.end method

.method public static f(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 247
    if-nez p0, :cond_4

    .line 251
    :cond_3
    :goto_3
    return v0

    .line 250
    :cond_4
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 251
    aget-object v2, v1, v0

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    aget-object v1, v1, v0

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1e
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static g(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 256
    if-eqz p0, :cond_c

    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static h(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 260
    if-eqz p0, :cond_c

    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static i(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 264
    sget-object v0, Lcom/dropbox/android/util/aa;->g:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static j(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 268
    if-eqz p0, :cond_c

    const-string v0, "audio/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static k(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 272
    invoke-static {p0}, Lcom/dropbox/android/util/aa;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/dropbox/android/util/aa;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static l(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 286
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "HTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 287
    if-eqz v1, :cond_13

    .line 288
    sget-object v1, Lcom/dropbox/android/util/aa;->b:Ljava/lang/String;

    const-string v2, "Transcoding disabled; HTC."

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_12
    return v0

    .line 294
    :cond_13
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/dropbox/android/util/bb;->a(I)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {p0}, Lcom/dropbox/android/util/aa;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    .line 295
    :cond_22
    if-eqz v0, :cond_12

    .line 296
    sget-boolean v1, Lcom/dropbox/android/util/aa;->a:Z

    if-nez v1, :cond_12

    invoke-static {p0}, Lcom/dropbox/android/util/aa;->k(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 304
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 305
    const/4 v1, -0x1

    if-le v0, v1, :cond_f

    .line 306
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 308
    :cond_f
    sget-object v0, Lcom/dropbox/android/util/aa;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static n(Ljava/lang/String;)Landroid/util/Pair;
    .registers 5
    .parameter

    .prologue
    .line 373
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 374
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static o(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 380
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 381
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 552
    invoke-static {}, Lcom/dropbox/android/util/ab;->j()Ljava/io/File;

    move-result-object v0

    .line 555
    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_d

    move-result-object v0

    .line 560
    :goto_8
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 556
    :catch_d
    move-exception v1

    .line 557
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static q(Ljava/lang/String;)Landroid/util/Pair;
    .registers 4
    .parameter

    .prologue
    .line 605
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 606
    if-gtz v1, :cond_10

    .line 607
    new-instance v0, Landroid/util/Pair;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 609
    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public static r(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 647
    const-string v0, "[\\000-\\037]|\\\\|/|:|\\?|\\*|<|>|\"|\\|"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 658
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 659
    const-string v0, "/"

    .line 678
    :goto_c
    return-object v0

    .line 661
    :cond_d
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    .line 662
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%x"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 664
    :cond_2b
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 665
    invoke-interface {v0, p0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 666
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 668
    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_45
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 669
    if-eqz v1, :cond_55

    move v1, v3

    .line 671
    goto :goto_45

    .line 673
    :cond_55
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "/%x"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v3

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 675
    :cond_6d
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 676
    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    :cond_7a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
