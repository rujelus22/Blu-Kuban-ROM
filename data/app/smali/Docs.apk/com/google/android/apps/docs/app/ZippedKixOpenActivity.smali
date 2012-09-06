.class public Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;
.super Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;
.source "ZippedKixOpenActivity.java"


# instance fields
.field public b:LXP;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lld;)Landroid/content/Intent;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p1, v0}, Lld;->a(Landroid/content/Intent;)V

    .line 137
    return-object v0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 103
    new-instance v0, LRC;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;->b:LXP;

    const-string v2, "index.html"

    invoke-direct {v0, v1, p1, v2}, LRC;-><init>(LXP;Ljava/io/File;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, p2}, Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 106
    sget v2, LcX;->mobilebasic_css:I

    invoke-direct {p0, v2}, Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;->a(I)[B

    move-result-object v2

    .line 108
    new-instance v3, LRq;

    invoke-direct {v3, v0}, LRq;-><init>(LRd;)V

    .line 109
    const-string v0, "script.js"

    const-string v4, "text/javascript"

    invoke-virtual {v3, v0, v1, v4}, LRq;->a(Ljava/lang/String;[BLjava/lang/String;)V

    .line 110
    const-string v0, "style.css"

    const-string v1, "text/css"

    invoke-virtual {v3, v0, v2, v1}, LRq;->a(Ljava/lang/String;[BLjava/lang/String;)V

    .line 112
    invoke-virtual {p0, v3, p2}, Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;->a(LRd;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 113
    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    const/4 v0, 0x0

    .line 80
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 82
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 83
    const-string v3, "&#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 85
    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 60
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not occur in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 62
    :cond_3d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    .line 64
    :cond_48
    return-object p0
.end method

.method private a(I)[B
    .registers 4
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;->b:LXP;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, LXP;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 69
    return-object v0
.end method

.method private a(Ljava/lang/String;)[B
    .registers 6
    .parameter

    .prologue
    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    const-string v1, "%HTML_ESCAPED_DOCUMENT_TITLE%"

    invoke-static {p1}, Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget v1, LcY;->document_view_button_back_to_doclist:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    const-string v2, "%HTML_ESCAPED_BACK_BUTTON_CAPTION%"

    invoke-static {v1}, Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "%CSS_FILE_NAME%"

    const-string v2, "style.css"

    invoke-static {v2}, Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget v1, LcX;->mobilebasic_js:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;->a(I)[B

    move-result-object v1

    .line 96
    new-instance v2, Ljava/lang/String;

    sget-object v3, LafC;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 97
    invoke-static {v2, v0}, Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 98
    sget-object v1, LafC;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 99
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 50
    :try_start_0
    sget-object v0, LafC;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    .line 51
    :catch_b
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-8 not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method protected a(LkR;Ljava/io/File;)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-virtual {p1}, LkR;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;->a(Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 119
    const/4 v1, 0x0

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(function() {  var scriptElement = document.createElement(\"script\");  scriptElement.type = \"text/javascript\";  scriptElement.src = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "script.js"

    invoke-static {v3}, Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  document.getElementsByTagName(\"head\")[0].appendChild(scriptElement);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "})();"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "index.html"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, LkR;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v1, v3, v2}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 130
    return-object v0
.end method
