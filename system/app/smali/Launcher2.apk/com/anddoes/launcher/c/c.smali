.class public final Lcom/anddoes/launcher/c/c;
.super Lcom/anddoes/launcher/c/i;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/anddoes/launcher/c/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gau.go.launcherex.theme"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 118
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/c/c;->e(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_11

    .line 120
    iget-object v1, p0, Lcom/anddoes/launcher/c/c;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_11
    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 37
    const-string v0, "theme_title"

    const-string v1, "theme_info"

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/anddoes/launcher/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public final b()V
    .registers 6

    .prologue
    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/anddoes/launcher/c/c;->j()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "themecfg.xml"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 46
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 52
    new-instance v2, Lcom/anddoes/launcher/c/d;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/c/d;-><init>(Lcom/anddoes/launcher/c/c;)V

    .line 53
    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 54
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 56
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 58
    iget-object v0, v2, Lcom/anddoes/launcher/c/d;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/c/c;->e(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/c/c;->f:Landroid/graphics/drawable/Drawable;

    .line 59
    iget-object v0, v2, Lcom/anddoes/launcher/c/d;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/c/c;->f(Ljava/lang/String;)V

    .line 60
    iget-object v0, v2, Lcom/anddoes/launcher/c/d;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/c/c;->f(Ljava/lang/String;)V

    .line 61
    iget-object v0, v2, Lcom/anddoes/launcher/c/d;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/c/c;->f(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_81

    .line 66
    :goto_44
    :try_start_44
    invoke-virtual {p0}, Lcom/anddoes/launcher/c/c;->j()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "desk.xml"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 68
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 74
    new-instance v2, Lcom/anddoes/launcher/c/e;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/c/e;-><init>(Lcom/anddoes/launcher/c/c;)V

    .line 75
    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 76
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 78
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 80
    iget-object v0, v2, Lcom/anddoes/launcher/c/e;->a:Ljava/lang/String;

    const-string v1, "drawable"

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/c/c;->k:I
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_7b} :catch_7c

    .line 84
    :goto_7b
    return-void

    .line 82
    :catch_7c
    move-exception v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/anddoes/launcher/c/c;->k:I

    goto :goto_7b

    .line 62
    :catch_81
    move-exception v0

    goto :goto_44
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    const-string v0, "go_theme"

    return-object v0
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 93
    const v0, 0x7f02002e

    return v0
.end method

.method public final e()Z
    .registers 2

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public final f()Z
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Lcom/anddoes/launcher/c/c;->k:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
