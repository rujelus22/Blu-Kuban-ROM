.class public Lcom/estrongs/android/pop/view/HelpActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Landroid/webkit/WebView;

.field private final d:[Ljava/lang/String;

.field private final e:[I

.field private f:I


# direct methods
.method public constructor <init>()V
    .registers 6

    const/16 v4, 0xa

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    const-string v0, "text/html"

    iput-object v0, p0, Lcom/estrongs/android/pop/view/HelpActivity;->a:Ljava/lang/String;

    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/estrongs/android/pop/view/HelpActivity;->b:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "index.html"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "navigation.html"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "networkshare.html"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "fileoperations.html"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fileviewer.html"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "appoperations.html"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "setting.html"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "search.html"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "faqs.html"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "taskmanager.html"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/pop/view/HelpActivity;->d:[Ljava/lang/String;

    new-array v0, v4, [I

    fill-array-data v0, :array_54

    iput-object v0, p0, Lcom/estrongs/android/pop/view/HelpActivity;->e:[I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/HelpActivity;->e:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/estrongs/android/pop/view/HelpActivity;->f:I

    return-void

    nop

    :array_54
    .array-data 0x4
        0x10t 0x0t 0x6t 0x7ft
        0x14t 0x0t 0x6t 0x7ft
        0x18t 0x0t 0x6t 0x7ft
        0x8t 0x0t 0x6t 0x7ft
        0xct 0x0t 0x6t 0x7ft
        0x1t 0x0t 0x6t 0x7ft
        0x20t 0x0t 0x6t 0x7ft
        0x1ct 0x0t 0x6t 0x7ft
        0x5t 0x0t 0x6t 0x7ft
        0x24t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/HelpActivity;I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/view/HelpActivity;->f:I

    return-void
.end method

.method private a(I)Z
    .registers 7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/HelpActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/HelpActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/HelpActivity;->c:Landroid/webkit/WebView;

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/HelpActivity;->b(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/HelpActivity;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/HelpActivity;->d:[Ljava/lang/String;

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_39
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_30

    move-result-object v0

    :try_start_e
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_18
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_30

    move-result-object v3

    if-nez v3, :cond_28

    if-eqz v0, :cond_23

    :try_start_20
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_45

    :cond_23
    :goto_23
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_28
    :try_start_28
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2f} :catch_30

    goto :goto_18

    :catch_30
    move-exception v2

    if-eqz v0, :cond_23

    :try_start_33
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_23

    :catch_37
    move-exception v0

    goto :goto_23

    :catchall_39
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3d
    if-eqz v1, :cond_42

    :try_start_3f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_43

    :cond_42
    :goto_42
    throw v0

    :catch_43
    move-exception v1

    goto :goto_42

    :catch_45
    move-exception v0

    goto :goto_23

    :catchall_47
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3d
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/HelpActivity;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/HelpActivity;->a(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/HelpActivity;)[I
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/HelpActivity;->e:[I

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/16 v3, 0x8

    const/16 v1, 0x400

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->H()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/HelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x103000a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/HelpActivity;->setTheme(I)V

    :goto_1e
    const v0, 0x7f090099

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/HelpActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/HelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/HelpActivity;->setContentView(I)V

    const v0, 0x7f07010a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/HelpActivity;->c:Landroid/webkit/WebView;

    const v0, 0x7f07010b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdView;

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_82

    new-instance v1, Lcom/google/ads/AdRequest;

    invoke-direct {v1}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->a(Lcom/google/ads/AdRequest;)V

    :goto_54
    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v2, "Anzhi_315"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {v0, v3}, Lcom/google/ads/AdView;->setVisibility(I)V

    :cond_61
    iget-object v0, p0, Lcom/estrongs/android/pop/view/HelpActivity;->c:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/HelpActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/estrongs/android/pop/view/ht;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/ht;-><init>(Lcom/estrongs/android/pop/view/HelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/HelpActivity;->e:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/view/HelpActivity;->a(I)Z

    return-void

    :cond_7a
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/HelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1e

    :cond_82
    invoke-virtual {v0, v3}, Lcom/google/ads/AdView;->setVisibility(I)V

    goto :goto_54
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_20

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_20

    iget v1, p0, Lcom/estrongs/android/pop/view/HelpActivity;->f:I

    iget-object v2, p0, Lcom/estrongs/android/pop/view/HelpActivity;->e:[I

    aget v2, v2, v0

    if-eq v1, v2, :cond_21

    iget-object v1, p0, Lcom/estrongs/android/pop/view/HelpActivity;->e:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/estrongs/android/pop/view/HelpActivity;->f:I

    iget-object v1, p0, Lcom/estrongs/android/pop/view/HelpActivity;->e:[I

    aget v0, v1, v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/view/HelpActivity;->a(I)Z

    :goto_1f
    const/4 v0, 0x1

    :cond_20
    return v0

    :cond_21
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/HelpActivity;->finish()V

    goto :goto_1f
.end method
