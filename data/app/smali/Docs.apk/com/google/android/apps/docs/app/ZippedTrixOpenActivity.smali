.class public Lcom/google/android/apps/docs/app/ZippedTrixOpenActivity;
.super Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;
.source "ZippedTrixOpenActivity.java"


# instance fields
.field public a:LFX;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public b:LXP;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;-><init>()V

    .line 57
    return-void
.end method

.method public static a(Landroid/content/Context;Lld;)Landroid/content/Intent;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/docs/app/ZippedTrixOpenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p1, v0}, Lld;->a(Landroid/content/Intent;)V

    .line 199
    return-object v0
.end method

.method private a(Ljava/util/zip/ZipFile;)Ljava/util/List;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            ")",
            "Ljava/util/List",
            "<",
            "Lhz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    const-string v0, "resources/sheets.js"

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 129
    if-nez v0, :cond_f

    .line 130
    const/4 v0, 0x0

    .line 148
    :goto_e
    return-object v0

    .line 133
    :cond_f
    iget-object v2, p0, Lcom/google/android/apps/docs/app/ZippedTrixOpenActivity;->b:LXP;

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {v2, v0}, LXP;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 134
    new-instance v2, Ljava/lang/String;

    sget-object v3, LafC;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 135
    const/16 v0, 0x3d

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v2, Lamj;

    invoke-direct {v2}, Lamj;-><init>()V

    .line 138
    invoke-virtual {v2, v0}, Lamj;->a(Ljava/lang/String;)Lame;

    move-result-object v0

    invoke-virtual {v0}, Lame;->a()Lamh;

    move-result-object v0

    .line 139
    const-string v2, "sheets"

    invoke-virtual {v0, v2}, Lamh;->a(Ljava/lang/String;)Lame;

    move-result-object v0

    invoke-virtual {v0}, Lame;->a()Lamd;

    move-result-object v2

    .line 140
    const/4 v0, 0x0

    :goto_4e
    invoke-virtual {v2}, Lamd;->a()I

    move-result v3

    if-ge v0, v3, :cond_89

    .line 141
    invoke-virtual {v2, v0}, Lamd;->a(I)Lame;

    move-result-object v3

    invoke-virtual {v3}, Lame;->a()Lamh;

    move-result-object v3

    .line 142
    const-string v4, "sheet"

    invoke-virtual {v3, v4}, Lamh;->a(Ljava/lang/String;)Lame;

    move-result-object v4

    invoke-virtual {v4}, Lame;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 143
    const-string v5, "file"

    invoke-virtual {v3, v5}, Lamh;->a(Ljava/lang/String;)Lame;

    move-result-object v3

    invoke-virtual {v3}, Lame;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v5, LafC;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    new-instance v5, Lhz;

    invoke-direct {v5, v4, v3}, Lhz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    :cond_89
    move-object v0, v1

    .line 148
    goto :goto_e
.end method

.method private b(Ljava/util/zip/ZipFile;)Ljava/util/List;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            ")",
            "Ljava/util/List",
            "<",
            "Lhz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 165
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 166
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 167
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 174
    new-instance v4, Ljava/util/Scanner;

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    sget-object v5, LafC;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 175
    const-string v0, "<title>.*</title>"

    const/16 v5, 0x1f4

    invoke-virtual {v4, v0, v5}, Ljava/util/Scanner;->findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 176
    if-nez v0, :cond_68

    .line 177
    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, ".html"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_52
    :try_start_52
    new-instance v4, Lhz;

    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v0, v3}, Lhz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_52 .. :try_end_60} :catch_61

    goto :goto_9

    .line 187
    :catch_61
    move-exception v0

    .line 188
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 180
    :cond_68
    const-string v4, "<title>"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "</title>"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    .line 192
    :cond_7e
    return-object v1
.end method


# virtual methods
.method protected a(LkR;Ljava/io/File;)Landroid/content/Intent;
    .registers 16
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 75
    invoke-virtual {p1}, LkR;->c()Ljava/lang/String;

    move-result-object v5

    .line 76
    new-instance v6, LRq;

    new-instance v0, LRA;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/ZippedTrixOpenActivity;->b:LXP;

    invoke-direct {v0, v1, p2}, LRA;-><init>(LXP;Ljava/io/File;)V

    invoke-direct {v6, v0}, LRq;-><init>(LRd;)V

    .line 78
    invoke-virtual {p0, v6, v5}, Lcom/google/android/apps/docs/app/ZippedTrixOpenActivity;->a(LRd;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 80
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/docs/app/ZippedTrixOpenActivity;->a:LFX;

    const-string v3, "offlineKixReadFromIndexJson"

    invoke-interface {v0, v3, v2}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    if-eqz v0, :cond_d9

    .line 86
    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/app/ZippedTrixOpenActivity;->a(Ljava/util/zip/ZipFile;)Ljava/util/List;

    move-result-object v0

    .line 88
    :goto_2e
    if-nez v0, :cond_34

    .line 90
    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/app/ZippedTrixOpenActivity;->b(Ljava/util/zip/ZipFile;)Ljava/util/List;

    move-result-object v0

    .line 93
    :cond_34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v2

    :goto_39
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhz;

    .line 94
    const-string v10, "<li id=\"sheet%d\"><a href=\"%s\">%s</a></li>"

    const/4 v3, 0x3

    new-array v11, v3, [Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v2

    const/4 v1, 0x1

    invoke-static {v0}, Lhz;->a(Lhz;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v1

    const/4 v1, 0x2

    invoke-static {v0}, Lhz;->b(Lhz;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v1

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    .line 97
    goto :goto_39

    .line 101
    :cond_69
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/ZippedTrixOpenActivity;->b:LXP;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/ZippedTrixOpenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, LcX;->trix_offline:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v1, v2}, LXP;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    sget-object v2, LafC;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "TRIX_TITLE"

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRIX_ZIP"

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<li>TRIX_SHEETS</li>"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 107
    const-string v1, "trix_offline/index.html"

    sget-object v2, LafC;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v2, "text/html"

    invoke-virtual {v6, v1, v0, v2}, LRq;->a(Ljava/lang/String;[BLjava/lang/String;)V

    .line 109
    const-string v0, "trix_offline/header.png"

    iget-object v1, p0, Lcom/google/android/apps/docs/app/ZippedTrixOpenActivity;->b:LXP;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/ZippedTrixOpenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, LcX;->trix_offline_header:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v1, v2}, LXP;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    const-string v2, "image/png"

    invoke-virtual {v6, v0, v1, v2}, LRq;->a(Ljava/lang/String;[BLjava/lang/String;)V

    .line 114
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "trix_offline/index.html"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, v4, v5}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_d9
    move-object v0, v4

    goto/16 :goto_2e
.end method
