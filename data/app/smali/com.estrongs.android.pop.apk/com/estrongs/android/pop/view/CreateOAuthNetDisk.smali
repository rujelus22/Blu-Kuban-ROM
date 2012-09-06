.class public Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field private static g:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;


# instance fields
.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Landroid/webkit/WebView;

.field private k:Lcom/estrongs/android/pop/view/ar;

.field private l:Landroid/widget/ScrollView;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/ProgressBar;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/LinearLayout;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Z

.field private t:Landroid/view/View$OnClickListener;

.field private u:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->g:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    const/4 v0, 0x1

    sput v0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a:I

    const/4 v0, 0x2

    sput v0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->b:I

    const/4 v0, 0x3

    sput v0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->c:I

    const/4 v0, 0x4

    sput v0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->d:I

    const/4 v0, 0x5

    sput v0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->e:I

    const/4 v0, 0x6

    sput v0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->f:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->h:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->i:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->j:Landroid/webkit/WebView;

    new-instance v0, Lcom/estrongs/android/pop/view/ar;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/view/ar;-><init>(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;Lcom/estrongs/android/pop/view/ar;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->k:Lcom/estrongs/android/pop/view/ar;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->l:Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->m:Landroid/widget/Button;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->n:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->o:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->p:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->q:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->r:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->s:Z

    new-instance v0, Lcom/estrongs/android/pop/view/an;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/an;-><init>(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->t:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/pop/view/ao;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/ao;-><init>(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->u:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->u:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x2

    const-string v0, "\\?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-eq v2, v5, :cond_12

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_12
    array-length v2, v0

    if-ne v2, v5, :cond_23

    aget-object v0, v0, v6

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23

    move v0, v1

    :goto_20
    array-length v3, v2

    if-lt v0, v3, :cond_25

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return-object v0

    :cond_25
    aget-object v3, v2, v0

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-ne v4, v5, :cond_3b

    aget-object v4, v3, v1

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    aget-object v0, v3, v6

    goto :goto_24

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_20
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->s:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p1, :cond_4d

    iget-object v1, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->h:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/estrongs/android/pop/fs/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4d

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->h:Ljava/lang/String;

    const-string v3, "fake"

    const-string v4, "/"

    invoke-static {v2, v1, v3, v4}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    const-string v4, "net://"

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Z)V

    iget-boolean v3, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->i:Z

    if-eqz v3, :cond_45

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "path"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "display"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->setResult(ILandroid/content/Intent;)V

    :goto_44
    return v0

    :cond_45
    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/estrongs/android/pop/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    :cond_4d
    const/4 v0, 0x0

    goto :goto_44
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->j:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static b()Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;
    .registers 1

    sget-object v0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->g:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->q:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->n:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c()Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;
    .registers 1

    sget-object v0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->g:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->q:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->u:Landroid/os/Handler;

    sget v1, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->c:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->u:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ljava/util/Properties;)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->h:Ljava/lang/String;

    const-string v1, "box"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "auth_token"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->u:Landroid/os/Handler;

    sget v2, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->u:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1f
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->requestWindowFeature(I)Z

    const v0, 0x7f030033

    invoke-super {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->setContentView(I)V

    const v0, 0x7f070181

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->j:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->j:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->k:Lcom/estrongs/android/pop/view/ar;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const v0, 0x7f070184

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f070183

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->o:Landroid/widget/TextView;

    const v1, 0x7f070182

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->n:Landroid/widget/ProgressBar;

    const v1, 0x7f070180

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->p:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v4, v4, -0x48

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v1, v1, -0x14

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_a2

    const/4 v0, 0x0

    invoke-virtual {p0, v6, v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->finish()V

    :goto_a1
    return-void

    :cond_a2
    const-string v3, "nettype"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->h:Ljava/lang/String;

    const-string v3, "editServer"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->i:Z

    new-instance v1, Lcom/estrongs/android/pop/view/aq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/aq;-><init>(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)V

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/aq;->start()V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_bf
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c9} :catch_f9

    :goto_c9
    invoke-virtual {v2}, Landroid/webkit/CookieManager;->removeAllCookie()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->h:Ljava/lang/String;

    const-string v1, "baidu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iput-boolean v5, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->r:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->i:Z

    if-nez v0, :cond_e0

    const/4 v0, 0x7

    invoke-static {v0, v5}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addNewBaiduCount(II)V

    :cond_e0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    :cond_e9
    sput-object p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->g:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    new-array v0, v7, [I

    fill-array-data v0, :array_fc

    new-array v1, v7, [I

    fill-array-data v1, :array_104

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a([I[I)V

    goto :goto_a1

    :catch_f9
    move-exception v0

    goto :goto_c9

    nop

    :array_fc
    .array-data 0x4
        0x83t 0x1t 0x7t 0x7ft
        0x84t 0x1t 0x7t 0x7ft
    .end array-data

    :array_104
    .array-data 0x4
        0x1et 0x2t 0x9t 0x7ft
        0x60t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method protected onDestroy()V
    .registers 3

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->g:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->r:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->s:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->i:Z

    if-nez v0, :cond_14

    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addCancelBaiduCount(II)V

    :cond_14
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void
.end method
