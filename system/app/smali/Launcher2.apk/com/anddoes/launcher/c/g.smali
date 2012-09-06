.class public Lcom/anddoes/launcher/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/res/Resources;

.field private c:Landroid/content/res/AssetManager;

.field private d:Ljava/util/HashMap;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/c/g;->e:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/c/g;->f:Ljava/util/List;

    .line 38
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/anddoes/launcher/c/g;->g:F

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 42
    iput-object p2, p0, Lcom/anddoes/launcher/c/g;->a:Ljava/lang/String;

    .line 44
    :try_start_1c
    iget-object v1, p0, Lcom/anddoes/launcher/c/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/c/g;->b:Landroid/content/res/Resources;

    .line 45
    iget-object v0, p0, Lcom/anddoes/launcher/c/g;->b:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/c/g;->c:Landroid/content/res/AssetManager;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2c} :catch_2d

    .line 50
    :goto_2c
    return-void

    .line 47
    :catch_2d
    move-exception v0

    iput-object v2, p0, Lcom/anddoes/launcher/c/g;->b:Landroid/content/res/Resources;

    .line 48
    iput-object v2, p0, Lcom/anddoes/launcher/c/g;->c:Landroid/content/res/AssetManager;

    goto :goto_2c
.end method

.method private static a(I)I
    .registers 4
    .parameter

    .prologue
    .line 216
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 138
    const-string v0, "drawable"

    invoke-virtual {p0, p1, v0}, Lcom/anddoes/launcher/c/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 139
    invoke-virtual {p0, v0, p2}, Lcom/anddoes/launcher/c/g;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/anddoes/launcher/c/g;)Ljava/util/HashMap;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/anddoes/launcher/c/g;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/anddoes/launcher/c/g;F)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/anddoes/launcher/c/g;->g:F

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 62
    .line 63
    iget-object v1, p0, Lcom/anddoes/launcher/c/g;->b:Landroid/content/res/Resources;

    if-eqz v1, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 65
    :try_start_b
    iget-object v1, p0, Lcom/anddoes/launcher/c/g;->b:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/anddoes/launcher/c/g;->a:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_14

    move-result v0

    .line 70
    :cond_13
    :goto_13
    return v0

    .line 67
    :catch_14
    move-exception v1

    goto :goto_13
.end method

.method public final a(II)Landroid/graphics/drawable/Drawable;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 147
    .line 148
    iget-object v1, p0, Lcom/anddoes/launcher/c/g;->b:Landroid/content/res/Resources;

    if-eqz v1, :cond_f

    if-eqz p1, :cond_f

    .line 150
    if-nez p2, :cond_10

    .line 151
    :try_start_9
    iget-object v1, p0, Lcom/anddoes/launcher/c/g;->b:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 161
    :cond_f
    :goto_f
    return-object v0

    .line 153
    :cond_10
    iget-object v1, p0, Lcom/anddoes/launcher/c/g;->b:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_19
    .catch Ljava/lang/StackOverflowError; {:try_start_9 .. :try_end_15} :catch_17

    move-result-object v0

    goto :goto_f

    .line 158
    :catch_17
    move-exception v1

    goto :goto_f

    .line 156
    :catch_19
    move-exception v1

    goto :goto_f
.end method

.method public final a(Landroid/content/pm/ResolveInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 165
    if-eqz p1, :cond_21

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_21

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 166
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/anddoes/launcher/c/g;->a(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 168
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 74
    .line 75
    iget-object v1, p0, Lcom/anddoes/launcher/c/g;->b:Landroid/content/res/Resources;

    if-eqz v1, :cond_13

    .line 77
    :try_start_5
    const-string v1, "bool"

    invoke-virtual {p0, p1, v1}, Lcom/anddoes/launcher/c/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 78
    if-eqz v1, :cond_13

    .line 79
    iget-object v2, p0, Lcom/anddoes/launcher/c/g;->b:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_14

    move-result v0

    .line 85
    :cond_13
    :goto_13
    return v0

    .line 82
    :catch_14
    move-exception v1

    goto :goto_13
.end method

.method public final b(Ljava/lang/String;)I
    .registers 5
    .parameter

    .prologue
    const/high16 v0, -0x8000

    .line 89
    .line 90
    iget-object v1, p0, Lcom/anddoes/launcher/c/g;->b:Landroid/content/res/Resources;

    if-eqz v1, :cond_14

    .line 92
    :try_start_6
    const-string v1, "color"

    invoke-virtual {p0, p1, v1}, Lcom/anddoes/launcher/c/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 93
    if-eqz v1, :cond_14

    .line 94
    iget-object v2, p0, Lcom/anddoes/launcher/c/g;->b:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_15

    move-result v0

    .line 100
    :cond_14
    :goto_14
    return v0

    .line 97
    :catch_15
    move-exception v1

    goto :goto_14
.end method

.method protected final b(Landroid/content/pm/ResolveInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/anddoes/launcher/c/g;->d:Ljava/util/HashMap;

    if-nez v0, :cond_60

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/c/g;->d:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/anddoes/launcher/c/g;->c:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_60

    :try_start_f
    iget-object v0, p0, Lcom/anddoes/launcher/c/g;->c:Landroid/content/res/AssetManager;

    const-string v1, "appfilter.xml"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    new-instance v2, Lcom/anddoes/launcher/c/h;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/c/h;-><init>(Lcom/anddoes/launcher/c/g;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    iget-object v0, p0, Lcom/anddoes/launcher/c/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {v2}, Lcom/anddoes/launcher/c/h;->a(Lcom/anddoes/launcher/c/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_47
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_ae

    iget-object v0, p0, Lcom/anddoes/launcher/c/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {v2}, Lcom/anddoes/launcher/c/h;->b(Lcom/anddoes/launcher/c/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5a
    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_5d} :catch_c8

    move-result v0

    if-nez v0, :cond_ca

    .line 175
    :cond_60
    :goto_60
    if-eqz p1, :cond_e5

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_e5

    .line 176
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_e5

    .line 177
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_e5

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ComponentInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/anddoes/launcher/c/g;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 181
    iget-object v1, p0, Lcom/anddoes/launcher/c/g;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/anddoes/launcher/c/g;->a(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    :goto_ad
    return-object v0

    .line 173
    :cond_ae
    :try_start_ae
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "drawable"

    invoke-virtual {p0, v0, v3}, Lcom/anddoes/launcher/c/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p0, v0, p2}, Lcom/anddoes/launcher/c/g;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v3, p0, Lcom/anddoes/launcher/c/g;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    :catch_c8
    move-exception v0

    goto :goto_60

    :cond_ca
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "drawable"

    invoke-virtual {p0, v0, v2}, Lcom/anddoes/launcher/c/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p0, v0, p2}, Lcom/anddoes/launcher/c/g;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5a

    iget-object v2, p0, Lcom/anddoes/launcher/c/g;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_e3} :catch_c8

    goto/16 :goto_5a

    .line 184
    :cond_e5
    const/4 v0, 0x0

    goto :goto_ad
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 104
    .line 105
    iget-object v1, p0, Lcom/anddoes/launcher/c/g;->b:Landroid/content/res/Resources;

    if-eqz v1, :cond_13

    .line 107
    :try_start_5
    const-string v1, "string"

    invoke-virtual {p0, p1, v1}, Lcom/anddoes/launcher/c/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 108
    if-eqz v1, :cond_13

    .line 109
    iget-object v2, p0, Lcom/anddoes/launcher/c/g;->b:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_14

    move-result-object v0

    .line 115
    :cond_13
    :goto_13
    return-object v0

    .line 112
    :catch_14
    move-exception v1

    goto :goto_13
.end method

.method public final d(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 119
    .line 120
    iget-object v1, p0, Lcom/anddoes/launcher/c/g;->b:Landroid/content/res/Resources;

    if-eqz v1, :cond_13

    .line 122
    :try_start_5
    const-string v1, "array"

    invoke-virtual {p0, p1, v1}, Lcom/anddoes/launcher/c/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 123
    if-eqz v1, :cond_13

    .line 124
    iget-object v2, p0, Lcom/anddoes/launcher/c/g;->b:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_14

    move-result-object v0

    .line 130
    :cond_13
    :goto_13
    return-object v0

    .line 127
    :catch_14
    move-exception v1

    goto :goto_13
.end method

.method public final e(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/c/g;->a(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final i()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/anddoes/launcher/c/g;->b:Landroid/content/res/Resources;

    return-object v0
.end method

.method protected final j()Landroid/content/res/AssetManager;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/anddoes/launcher/c/g;->c:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method protected final k()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/anddoes/launcher/c/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 189
    if-lez v0, :cond_15

    .line 190
    invoke-static {v0}, Lcom/anddoes/launcher/c/g;->a(I)I

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/anddoes/launcher/c/g;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 193
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected final l()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/anddoes/launcher/c/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 198
    if-lez v0, :cond_15

    .line 199
    invoke-static {v0}, Lcom/anddoes/launcher/c/g;->a(I)I

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/anddoes/launcher/c/g;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 202
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected final m()F
    .registers 4

    .prologue
    const/high16 v1, 0x3f80

    const/high16 v0, 0x3f00

    .line 206
    iget v2, p0, Lcom/anddoes/launcher/c/g;->g:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_b

    .line 212
    :goto_a
    return v0

    .line 209
    :cond_b
    iget v0, p0, Lcom/anddoes/launcher/c/g;->g:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_13

    move v0, v1

    .line 210
    goto :goto_a

    .line 212
    :cond_13
    iget v0, p0, Lcom/anddoes/launcher/c/g;->g:F

    goto :goto_a
.end method
