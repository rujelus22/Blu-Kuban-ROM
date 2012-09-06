.class public Lcom/google/commerce/wireless/topiary/HybridWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Lcom/google/commerce/wireless/topiary/g;


# static fields
.field private static o:Ljava/lang/reflect/Method;


# instance fields
.field a:Lcom/google/commerce/wireless/topiary/v;

.field private b:Ljava/lang/String;

.field private final c:[I

.field private d:I

.field private e:Lcom/google/commerce/wireless/topiary/D;

.field private f:Lcom/google/commerce/wireless/topiary/f;

.field private g:Lcom/google/commerce/wireless/topiary/S;

.field private h:Ljava/lang/String;

.field private i:Lcom/google/commerce/wireless/topiary/S;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Landroid/os/Handler;

.field private m:Ljava/util/Hashtable;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 828
    const/4 v0, 0x0

    sput-object v0, Lcom/google/commerce/wireless/topiary/HybridWebView;->o:Ljava/lang/reflect/Method;

    .line 833
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1b

    .line 835
    :try_start_9
    const-class v0, Landroid/webkit/WebView;

    .line 836
    const-string v1, "removeJavascriptInterface"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/commerce/wireless/topiary/HybridWebView;->o:Ljava/lang/reflect/Method;
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_1b} :catch_1c

    .line 841
    :cond_1b
    return-void

    .line 837
    :catch_1c
    move-exception v0

    .line 838
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 62
    const-string v0, "HybridWebView"

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    .line 67
    const/16 v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->c:[I

    .line 69
    iput v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->d:I

    .line 80
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->m:Ljava/util/Hashtable;

    .line 147
    invoke-direct {p0, p1, v1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(Landroid/content/Context;Z)V

    .line 148
    return-void
.end method

.method static synthetic a(Lcom/google/commerce/wireless/topiary/HybridWebView;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(ILjava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->k:Z

    if-eqz v0, :cond_5

    .line 348
    :cond_4
    :goto_4
    return-void

    .line 345
    :cond_5
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->a:Lcom/google/commerce/wireless/topiary/v;

    if-eqz v0, :cond_4

    .line 346
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->a:Lcom/google/commerce/wireless/topiary/v;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/google/commerce/wireless/topiary/v;->a(Lcom/google/commerce/wireless/topiary/HybridWebView;ILjava/lang/String;I)V

    goto :goto_4
.end method

.method private a(Landroid/content/Context;Z)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-ne v0, p1, :cond_20

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-preloading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    .line 164
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->c:[I

    aput v3, v0, v3

    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->l:Landroid/os/Handler;

    .line 167
    invoke-virtual {p0, v3}, Lcom/google/commerce/wireless/topiary/HybridWebView;->setPreloading(Z)V

    .line 168
    invoke-virtual {p0, v3}, Lcom/google/commerce/wireless/topiary/HybridWebView;->setScrollBarStyle(I)V

    .line 169
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 170
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 171
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 172
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 173
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 174
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 177
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 178
    const-wide/32 v1, 0x800000

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 179
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appcache"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 183
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 185
    if-nez p2, :cond_a1

    .line 186
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    :cond_a1
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->e()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 191
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->f()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 192
    return-void
.end method

.method static synthetic a(Lcom/google/commerce/wireless/topiary/HybridWebView;Lcom/google/commerce/wireless/topiary/S;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b(Lcom/google/commerce/wireless/topiary/S;)V

    return-void
.end method

.method static synthetic a(Lcom/google/commerce/wireless/topiary/HybridWebView;Lcom/google/commerce/wireless/topiary/S;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(Lcom/google/commerce/wireless/topiary/S;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/commerce/wireless/topiary/HybridWebView;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/commerce/wireless/topiary/HybridWebView;ZILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(ZILjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/google/commerce/wireless/topiary/S;)V
    .registers 8
    .parameter

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting authentication for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/S;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(I)V

    .line 430
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->g:Lcom/google/commerce/wireless/topiary/S;

    .line 431
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->g:Lcom/google/commerce/wireless/topiary/S;

    .line 432
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->f:Lcom/google/commerce/wireless/topiary/f;

    invoke-virtual {v1, p1, v0}, Lcom/google/commerce/wireless/topiary/f;->a(Lcom/google/commerce/wireless/topiary/S;Lcom/google/commerce/wireless/topiary/S;)V

    .line 434
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->e:Lcom/google/commerce/wireless/topiary/D;

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/D;->d()Lcom/google/commerce/wireless/topiary/a;

    move-result-object v2

    .line 435
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->f:Lcom/google/commerce/wireless/topiary/f;

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/f;->a()Landroid/accounts/Account;

    move-result-object v3

    .line 436
    iget-object v5, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->l:Landroid/os/Handler;

    .line 438
    new-instance v0, Lcom/google/commerce/wireless/topiary/p;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/commerce/wireless/topiary/p;-><init>(Lcom/google/commerce/wireless/topiary/HybridWebView;Lcom/google/commerce/wireless/topiary/a;Landroid/accounts/Account;Lcom/google/commerce/wireless/topiary/S;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/p;->b()V

    .line 463
    return-void
.end method

.method private a(Lcom/google/commerce/wireless/topiary/S;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 473
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->f:Lcom/google/commerce/wireless/topiary/f;

    if-eqz v0, :cond_c

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 491
    :cond_c
    :goto_c
    return-void

    .line 476
    :cond_d
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing token for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/S;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    if-nez p2, :cond_46

    .line 478
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(I)V

    .line 479
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->f:Lcom/google/commerce/wireless/topiary/f;

    invoke-virtual {v0, p1, v3}, Lcom/google/commerce/wireless/topiary/f;->a(Lcom/google/commerce/wireless/topiary/S;Z)V

    .line 480
    const/4 v0, 0x2

    const-string v1, ""

    invoke-direct {p0, v0, v1, v3}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(ILjava/lang/String;I)V

    goto :goto_c

    .line 481
    :cond_46
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->g:Lcom/google/commerce/wireless/topiary/S;

    if-ne v0, p1, :cond_5e

    .line 482
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->f:Lcom/google/commerce/wireless/topiary/f;

    invoke-virtual {v0, p1}, Lcom/google/commerce/wireless/topiary/f;->b(Lcom/google/commerce/wireless/topiary/S;)V

    .line 483
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    const-string v1, "Loading token into web view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(I)V

    .line 485
    invoke-virtual {p0, p2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_c

    .line 487
    :cond_5e
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not loading token since pending service is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->g:Lcom/google/commerce/wireless/topiary/S;

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->g:Lcom/google/commerce/wireless/topiary/S;

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/S;->b()Ljava/lang/String;

    move-result-object v0

    :goto_75
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_81
    const-string v0, "null"

    goto :goto_75
.end method

.method private a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 592
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_e
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->g:Lcom/google/commerce/wireless/topiary/S;

    if-eqz v0, :cond_1c

    .line 594
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->g:Lcom/google/commerce/wireless/topiary/S;

    .line 595
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->g:Lcom/google/commerce/wireless/topiary/S;

    .line 596
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->f:Lcom/google/commerce/wireless/topiary/f;

    invoke-virtual {v1, v0, p1}, Lcom/google/commerce/wireless/topiary/f;->a(Lcom/google/commerce/wireless/topiary/S;Z)V

    .line 598
    :cond_1c
    return-void
.end method

.method private a(ZILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->k:Z

    if-nez v0, :cond_b

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 337
    :cond_b
    :goto_b
    return-void

    .line 334
    :cond_c
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->a:Lcom/google/commerce/wireless/topiary/v;

    if-eqz v0, :cond_b

    .line 335
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->a:Lcom/google/commerce/wireless/topiary/v;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/google/commerce/wireless/topiary/v;->a(Lcom/google/commerce/wireless/topiary/HybridWebView;ZILjava/lang/String;)V

    goto :goto_b
.end method

.method private a(Ljava/lang/String;Z)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 563
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b(I)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 564
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->g:Lcom/google/commerce/wireless/topiary/S;

    invoke-virtual {v2, p1}, Lcom/google/commerce/wireless/topiary/S;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->g:Lcom/google/commerce/wireless/topiary/S;

    iget-boolean v2, v2, Lcom/google/commerce/wireless/topiary/S;->c:Z

    if-eqz v2, :cond_19

    if-eqz p2, :cond_78

    :cond_19
    move v3, v0

    .line 567
    :goto_1a
    if-eqz p2, :cond_7a

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/commerce/wireless/topiary/h;->c(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_7a

    move v2, v0

    .line 569
    :goto_27
    if-eqz v2, :cond_41

    .line 570
    iget-object v4, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auth speeedbump detected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_41
    if-nez v3, :cond_45

    if-eqz v2, :cond_7c

    .line 573
    :cond_45
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected auth completion for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->g:Lcom/google/commerce/wireless/topiary/S;

    invoke-virtual {v3}, Lcom/google/commerce/wireless/topiary/S;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->l:Landroid/os/Handler;

    new-instance v2, Lcom/google/commerce/wireless/topiary/r;

    invoke-direct {v2, p0}, Lcom/google/commerce/wireless/topiary/r;-><init>(Lcom/google/commerce/wireless/topiary/HybridWebView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 584
    :goto_77
    return v0

    :cond_78
    move v3, v1

    .line 564
    goto :goto_1a

    :cond_7a
    move v2, v1

    .line 567
    goto :goto_27

    .line 583
    :cond_7c
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not an auth completion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 584
    goto :goto_77
.end method

.method private b(Lcom/google/commerce/wireless/topiary/S;)V
    .registers 6
    .parameter

    .prologue
    .line 645
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/S;->b()Ljava/lang/String;

    move-result-object v0

    .line 646
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->h:Ljava/lang/String;

    if-eqz v1, :cond_36

    .line 647
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auth ok for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Now loading "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(I)V

    .line 649
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->loadUrl(Ljava/lang/String;)V

    .line 655
    :goto_35
    return-void

    .line 651
    :cond_36
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auth ok for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". No url to load, so done."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->d(I)V

    .line 653
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(ZILjava/lang/String;)V

    goto :goto_35
.end method

.method private d(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 816
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    const-string v1, "Cleanup pending state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(Z)V

    .line 818
    invoke-virtual {p0, p1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(I)V

    .line 819
    iput-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->g:Lcom/google/commerce/wireless/topiary/S;

    .line 820
    iput-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->i:Lcom/google/commerce/wireless/topiary/S;

    .line 821
    iput-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->h:Ljava/lang/String;

    .line 822
    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 667
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->f:Lcom/google/commerce/wireless/topiary/f;

    if-nez v2, :cond_1f

    .line 668
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No account so can\'t do auth redirects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :goto_1e
    return v0

    .line 671
    :cond_1f
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 672
    invoke-static {v3}, Lcom/google/commerce/wireless/topiary/h;->b(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 673
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not an auth redirect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 676
    :cond_42
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Potential auth redirect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b(I)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 678
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    const-string v2, "We are in the middle of auth - let redirects happen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 684
    :cond_69
    const-string v2, "passive"

    invoke-virtual {v3, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 685
    if-eqz v2, :cond_7f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7f

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_12d

    :cond_7f
    move v2, v0

    .line 688
    :goto_80
    if-eqz v2, :cond_96

    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->f:Lcom/google/commerce/wireless/topiary/f;

    if-eqz v2, :cond_96

    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->f:Lcom/google/commerce/wireless/topiary/f;

    invoke-virtual {v2}, Lcom/google/commerce/wireless/topiary/f;->c()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 689
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    const-string v2, "Passive ServiceLogin likely to succeed - letting it proceed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 693
    :cond_96
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to process auth redirect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const-string v2, "service"

    invoke-virtual {v3, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 695
    iget-object v3, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->i:Lcom/google/commerce/wireless/topiary/S;

    if-nez v3, :cond_d8

    .line 696
    iget-object v3, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No service specified - picking one based on param "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v3, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->f:Lcom/google/commerce/wireless/topiary/f;

    invoke-virtual {v3, v2}, Lcom/google/commerce/wireless/topiary/f;->a(Ljava/lang/String;)Lcom/google/commerce/wireless/topiary/S;

    move-result-object v2

    iput-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->i:Lcom/google/commerce/wireless/topiary/S;

    .line 699
    :cond_d8
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->i:Lcom/google/commerce/wireless/topiary/S;

    if-nez v2, :cond_e5

    .line 700
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    const-string v2, "No service found for auth - letting redirect happen..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 703
    :cond_e5
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Will do auth for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->i:Lcom/google/commerce/wireless/topiary/S;

    invoke-virtual {v3}, Lcom/google/commerce/wireless/topiary/S;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->h:Ljava/lang/String;

    if-nez v0, :cond_10b

    .line 705
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->h:Ljava/lang/String;

    .line 707
    :cond_10b
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After auth will load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->i:Lcom/google/commerce/wireless/topiary/S;

    invoke-direct {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(Lcom/google/commerce/wireless/topiary/S;)V

    move v0, v1

    .line 709
    goto/16 :goto_1e

    :cond_12d
    move v2, v1

    goto/16 :goto_80
.end method

.method private e(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 856
    sget-object v0, Lcom/google/commerce/wireless/topiary/HybridWebView;->o:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_f

    .line 858
    :try_start_4
    sget-object v0, Lcom/google/commerce/wireless/topiary/HybridWebView;->o:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_f} :catch_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_f} :catch_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_f} :catch_10

    .line 870
    :cond_f
    :goto_f
    return-void

    .line 866
    :catch_10
    move-exception v0

    goto :goto_f

    .line 864
    :catch_12
    move-exception v0

    goto :goto_f

    .line 859
    :catch_14
    move-exception v0

    goto :goto_f
.end method

.method private i()Z
    .registers 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->c:[I

    iget v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->d:I

    aget v0, v0, v1

    .line 319
    if-eqz v0, :cond_c

    const/16 v1, 0x64

    if-lt v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method a(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 258
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->c:[I

    iget v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->d:I

    aget v0, v0, v1

    if-ne v0, p1, :cond_a

    .line 279
    :goto_9
    return-void

    .line 262
    :cond_a
    invoke-direct {p0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->i()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 263
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->c:[I

    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->c:[I

    iget v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->d:I

    aget v1, v1, v2

    aput v1, v0, v3

    .line 264
    iput v3, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->d:I

    .line 269
    :cond_1c
    iget v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->d:I

    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->c:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2f

    .line 270
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    const-string v1, "State history too long"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->d:I

    .line 275
    :cond_2f
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->c:[I

    iget v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->d:I

    aput p1, v0, v1

    .line 278
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x3

    .line 779
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceivedError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    packed-switch p1, :pswitch_data_34

    .line 806
    :goto_26
    :pswitch_26
    const/16 v1, 0x65

    invoke-direct {p0, v1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->d(I)V

    .line 808
    invoke-direct {p0, v0, p2, p1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(ILjava/lang/String;I)V

    .line 809
    return-void

    .line 792
    :pswitch_2f
    const/4 v0, 0x1

    .line 793
    goto :goto_26

    .line 796
    :pswitch_31
    const/4 v0, 0x2

    .line 797
    goto :goto_26

    .line 782
    nop

    :pswitch_data_34
    .packed-switch -0xe
        :pswitch_2f
        :pswitch_26
        :pswitch_26
        :pswitch_2f
        :pswitch_26
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_31
        :pswitch_26
        :pswitch_2f
        :pswitch_2f
    .end packed-switch
.end method

.method a(Lcom/google/commerce/wireless/topiary/D;Landroid/accounts/Account;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->e:Lcom/google/commerce/wireless/topiary/D;

    .line 226
    invoke-virtual {p1, p2}, Lcom/google/commerce/wireless/topiary/D;->a(Landroid/accounts/Account;)Lcom/google/commerce/wireless/topiary/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->f:Lcom/google/commerce/wireless/topiary/f;

    .line 227
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->f:Lcom/google/commerce/wireless/topiary/f;

    invoke-virtual {v0, p0}, Lcom/google/commerce/wireless/topiary/f;->a(Lcom/google/commerce/wireless/topiary/g;)V

    .line 228
    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/commerce/wireless/topiary/m;->a(ZLjava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {p0, v3}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 501
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->j:Ljava/lang/String;

    .line 502
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(I)V

    .line 504
    :cond_3b
    iput-boolean v3, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->n:Z

    .line 505
    const/4 v0, -0x1

    invoke-direct {p0, v3, v0, p1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(ZILjava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->a:Lcom/google/commerce/wireless/topiary/v;

    if-eqz v0, :cond_4a

    .line 507
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->a:Lcom/google/commerce/wireless/topiary/v;

    invoke-interface {v0, p0, p1}, Lcom/google/commerce/wireless/topiary/v;->b(Lcom/google/commerce/wireless/topiary/HybridWebView;Ljava/lang/String;)V

    .line 509
    :cond_4a
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/commerce/wireless/topiary/S;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 385
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->f:Lcom/google/commerce/wireless/topiary/f;

    if-eqz v0, :cond_7

    if-nez p2, :cond_b

    .line 386
    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->loadUrl(Ljava/lang/String;)V

    .line 419
    :goto_a
    return-void

    .line 389
    :cond_b
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrlAuthenticated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/commerce/wireless/topiary/S;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrlAuthenticated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/commerce/wireless/topiary/S;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/commerce/wireless/topiary/m;->a(ZLjava/lang/String;)V

    .line 392
    invoke-direct {p0, v3}, Lcom/google/commerce/wireless/topiary/HybridWebView;->d(I)V

    .line 393
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->h:Ljava/lang/String;

    .line 394
    iput-object p2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->i:Lcom/google/commerce/wireless/topiary/S;

    .line 396
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->f:Lcom/google/commerce/wireless/topiary/f;

    invoke-virtual {v0, p2}, Lcom/google/commerce/wireless/topiary/f;->a(Lcom/google/commerce/wireless/topiary/S;)Lcom/google/commerce/wireless/topiary/V;

    move-result-object v0

    .line 397
    sget-object v1, Lcom/google/commerce/wireless/topiary/u;->a:[I

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/V;->a()Lcom/google/commerce/wireless/topiary/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/W;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_114

    goto :goto_a

    .line 399
    :pswitch_73
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->f:Lcom/google/commerce/wireless/topiary/f;

    invoke-virtual {v0, p2, p1}, Lcom/google/commerce/wireless/topiary/f;->a(Lcom/google/commerce/wireless/topiary/S;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 400
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "will do auth for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/commerce/wireless/topiary/S;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-direct {p0, p2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(Lcom/google/commerce/wireless/topiary/S;)V

    goto/16 :goto_a

    .line 403
    :cond_9c
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decided not to do auth for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/commerce/wireless/topiary/S;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", policy was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/google/commerce/wireless/topiary/S;->e:Lcom/google/commerce/wireless/topiary/U;

    invoke-virtual {v2}, Lcom/google/commerce/wireless/topiary/U;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-direct {p0, p2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b(Lcom/google/commerce/wireless/topiary/S;)V

    goto/16 :goto_a

    .line 409
    :pswitch_cd
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(I)V

    .line 410
    const/4 v0, -0x1

    invoke-direct {p0, v3, v0, p1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(ZILjava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auth in progress for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/commerce/wireless/topiary/S;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 415
    :pswitch_f3
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already authenticated for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/commerce/wireless/topiary/S;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-direct {p0, p2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b(Lcom/google/commerce/wireless/topiary/S;)V

    goto/16 :goto_a

    .line 397
    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_73
        :pswitch_cd
        :pswitch_f3
    .end packed-switch
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->k:Z

    return v0
.end method

.method public a(Lcom/google/commerce/wireless/topiary/S;ZZ)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 611
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b(I)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {p0, v4}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b(I)Z

    move-result v2

    if-eqz v2, :cond_32

    :cond_10
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->i:Lcom/google/commerce/wireless/topiary/S;

    invoke-virtual {v2}, Lcom/google/commerce/wireless/topiary/S;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/S;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 613
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a()Z

    move-result v2

    if-eqz v2, :cond_33

    if-eqz p3, :cond_33

    .line 614
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    const-string v2, "Preloading view is abandoning load"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-direct {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->d(I)V

    .line 638
    :cond_32
    :goto_32
    return v0

    .line 618
    :cond_33
    if-eqz p2, :cond_5b

    .line 619
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got auth, will now load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->l:Landroid/os/Handler;

    new-instance v2, Lcom/google/commerce/wireless/topiary/s;

    invoke-direct {v2, p0, p1}, Lcom/google/commerce/wireless/topiary/s;-><init>(Lcom/google/commerce/wireless/topiary/HybridWebView;Lcom/google/commerce/wireless/topiary/S;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    .line 626
    goto :goto_32

    .line 628
    :cond_5b
    invoke-virtual {p0, v4}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b(I)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 629
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auth failed or cancelled, will re-load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(Ljava/lang/String;Lcom/google/commerce/wireless/topiary/S;)V

    move v0, v1

    .line 634
    goto :goto_32

    .line 636
    :cond_82
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    const-string v2, "Auth failed or cancelled in this web view - exiting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 845
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->m:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 847
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 4

    .prologue
    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x1e

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 284
    const/4 v0, 0x0

    :goto_8
    iget v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->d:I

    if-gt v0, v2, :cond_1d

    .line 285
    if-lez v0, :cond_13

    .line 286
    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_13
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->c:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 290
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Z
    .registers 3
    .parameter

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->c()I

    move-result v0

    if-ne v0, p1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method b(Ljava/lang/String;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 521
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShouldOverride?: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->a:Lcom/google/commerce/wireless/topiary/v;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->a:Lcom/google/commerce/wireless/topiary/v;

    invoke-interface {v2, p0, p1}, Lcom/google/commerce/wireless/topiary/v;->a(Lcom/google/commerce/wireless/topiary/HybridWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 543
    :goto_26
    return v0

    .line 525
    :cond_27
    invoke-direct {p0, p1, v1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-direct {p0, p1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 526
    :cond_33
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overriding loading of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 529
    :cond_4c
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b(I)Z

    move-result v2

    if-eqz v2, :cond_89

    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->f:Lcom/google/commerce/wireless/topiary/f;

    if-eqz v2, :cond_89

    .line 530
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->e:Lcom/google/commerce/wireless/topiary/D;

    invoke-virtual {v2, p1}, Lcom/google/commerce/wireless/topiary/D;->a(Ljava/lang/String;)Lcom/google/commerce/wireless/topiary/S;

    move-result-object v2

    .line 531
    if-eqz v2, :cond_89

    .line 532
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overrideing load of : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " will do auth load for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/commerce/wireless/topiary/S;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {p0, p1, v2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(Ljava/lang/String;Lcom/google/commerce/wireless/topiary/S;)V

    goto :goto_26

    .line 538
    :cond_89
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 539
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected non auth redirect, setting desiredUrl to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->h:Ljava/lang/String;

    .line 542
    :cond_aa
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProceedingToLoad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 543
    goto/16 :goto_26
.end method

.method public c()I
    .registers 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->c:[I

    iget v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->d:I

    aget v0, v0, v1

    return v0
.end method

.method c(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 719
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/commerce/wireless/topiary/m;->a(ZLjava/lang/String;)V

    .line 721
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 722
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished - detected auth completion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_4e
    :goto_4e
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->a:Lcom/google/commerce/wireless/topiary/v;

    if-eqz v0, :cond_57

    .line 739
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->a:Lcom/google/commerce/wireless/topiary/v;

    invoke-interface {v0, p0, p1}, Lcom/google/commerce/wireless/topiary/v;->c(Lcom/google/commerce/wireless/topiary/HybridWebView;Ljava/lang/String;)V

    .line 741
    :cond_57
    return-void

    .line 724
    :cond_58
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->h:Ljava/lang/String;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->h:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/commerce/wireless/topiary/S;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 726
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing pending load for : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->h:Ljava/lang/String;

    .line 731
    :goto_88
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->h:Ljava/lang/String;

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->g:Lcom/google/commerce/wireless/topiary/S;

    if-nez v0, :cond_4e

    .line 732
    invoke-direct {p0, v3}, Lcom/google/commerce/wireless/topiary/HybridWebView;->d(I)V

    .line 733
    iget-boolean v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->n:Z

    if-eqz v0, :cond_4e

    .line 734
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->g()V

    goto :goto_4e

    .line 729
    :cond_9b
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT clearing pending load for : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", desired = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88
.end method

.method public c(I)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 308
    move v0, v1

    :goto_2
    iget v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->d:I

    if-gt v0, v2, :cond_d

    .line 309
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->c:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_e

    .line 310
    const/4 v1, 0x1

    .line 313
    :cond_d
    return v1

    .line 308
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public d()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b(I)Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b(I)Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->c(I)Z

    move-result v1

    if-nez v1, :cond_1d

    :cond_1c
    const/4 v0, 0x1

    :cond_1d
    return v0
.end method

.method public destroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x6

    .line 202
    invoke-virtual {p0, v2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 218
    :goto_8
    return-void

    .line 205
    :cond_9
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    const-string v1, "Destroying..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->stopLoading()V

    .line 207
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->h()V

    .line 208
    invoke-direct {p0, v2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->d(I)V

    .line 209
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->freeMemory()V

    .line 210
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->destroyDrawingCache()V

    .line 211
    iput-object v3, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->a:Lcom/google/commerce/wireless/topiary/v;

    .line 212
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->f:Lcom/google/commerce/wireless/topiary/f;

    if-eqz v0, :cond_2a

    .line 213
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->f:Lcom/google/commerce/wireless/topiary/f;

    invoke-virtual {v0, p0}, Lcom/google/commerce/wireless/topiary/f;->b(Lcom/google/commerce/wireless/topiary/g;)V

    .line 215
    :cond_2a
    iput-object v3, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->l:Landroid/os/Handler;

    .line 216
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 217
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    const-string v1, "Destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method protected e()Landroid/webkit/WebViewClient;
    .registers 2

    .prologue
    .line 357
    new-instance v0, Lcom/google/commerce/wireless/topiary/w;

    invoke-direct {v0, p0}, Lcom/google/commerce/wireless/topiary/w;-><init>(Lcom/google/commerce/wireless/topiary/HybridWebView;)V

    return-object v0
.end method

.method protected f()Landroid/webkit/WebChromeClient;
    .registers 2

    .prologue
    .line 367
    new-instance v0, Lcom/google/commerce/wireless/topiary/o;

    invoke-direct {v0, p0}, Lcom/google/commerce/wireless/topiary/o;-><init>(Lcom/google/commerce/wireless/topiary/HybridWebView;)V

    return-object v0
.end method

.method g()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 749
    invoke-virtual {p0, v2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 750
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    const-string v1, "Load finished - showing WebView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iput-boolean v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->n:Z

    .line 754
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 755
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->clearHistory()V

    .line 758
    :cond_1a
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 759
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->l:Landroid/os/Handler;

    new-instance v2, Lcom/google/commerce/wireless/topiary/t;

    invoke-direct {v2, p0, v0}, Lcom/google/commerce/wireless/topiary/t;-><init>(Lcom/google/commerce/wireless/topiary/HybridWebView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 771
    :goto_28
    return-void

    .line 766
    :cond_29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->n:Z

    .line 767
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring progress done "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->g:Lcom/google/commerce/wireless/topiary/S;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->g:Lcom/google/commerce/wireless/topiary/S;

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/S;->b()Ljava/lang/String;

    move-result-object v0

    :goto_4f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_5b
    const-string v0, " no service"

    goto :goto_4f
.end method

.method h()V
    .registers 3

    .prologue
    .line 874
    sget-object v0, Lcom/google/commerce/wireless/topiary/HybridWebView;->o:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1e

    .line 875
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->m:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 876
    invoke-direct {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->e(Ljava/lang/String;)V

    goto :goto_e

    .line 879
    :cond_1e
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->m:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 880
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->m:Ljava/util/Hashtable;

    .line 881
    return-void
.end method

.method public setHybridWebViewUiClient(Lcom/google/commerce/wireless/topiary/v;)V
    .registers 2
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->a:Lcom/google/commerce/wireless/topiary/v;

    .line 233
    return-void
.end method

.method public setPreloading(Z)V
    .registers 3
    .parameter

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/google/commerce/wireless/topiary/HybridWebView;->k:Z

    .line 248
    if-eqz p1, :cond_9

    const/4 v0, 0x4

    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->setVisibility(I)V

    .line 249
    return-void

    .line 248
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
