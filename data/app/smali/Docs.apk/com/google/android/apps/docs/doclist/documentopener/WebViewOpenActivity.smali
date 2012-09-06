.class public Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;
.super Lcom/google/android/apps/docs/app/BaseActivity;
.source "WebViewOpenActivity.java"


# instance fields
.field public a:LFX;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LIG;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LJP;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LLz;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:Landroid/webkit/WebChromeClient;

.field private a:Landroid/webkit/WebSettings;

.field private a:Landroid/webkit/WebView;

.field public a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LeZ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Ljava/lang/Class;
    .annotation runtime Lanr;
    .end annotation

    .annotation runtime Laqa;
        value = "DocListActivity"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/lang/String;

.field private a:LnQ;

.field private a:LrB;

.field private a:Lry;

.field private final a:Lrz;

.field private final b:Landroid/os/Handler;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;-><init>()V

    .line 112
    new-instance v0, LrG;

    invoke-direct {v0, p0}, LrG;-><init>(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Lrz;

    .line 158
    new-instance v0, LrH;

    invoke-direct {v0, p0}, LrH;-><init>(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebChromeClient;

    .line 226
    iput-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LnQ;

    .line 230
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->b:Landroid/os/Handler;

    .line 231
    iput-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LrB;

    .line 499
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 465
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;LkU;)Landroid/content/Intent;

    move-result-object v0

    .line 467
    const-class v1, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 468
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 473
    invoke-static {p4}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 475
    const-string v1, "javascriptCode"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;)Landroid/webkit/WebView;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;LnQ;)LnQ;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LnQ;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;)Lry;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Lry;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 403
    const-string v0, "WebViewOpenActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v0, "present"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 406
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lkg;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 409
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebSettings;

    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LJP;

    invoke-interface {v1}, LJP;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 417
    :goto_35
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LrB;

    invoke-virtual {v0, p1}, LrB;->a(Ljava/lang/String;)V

    .line 418
    return-void

    .line 411
    :cond_3b
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebSettings;

    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_35

    .line 414
    :cond_43
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebSettings;

    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_35
.end method

.method private b(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcY;->error_opening_document_for_html:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 454
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->b:Ljava/lang/String;

    .line 455
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LXJ;

    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, LXJ;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 456
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LrB;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LrB;

    invoke-virtual {v0}, LrB;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v13, 0x0

    const/4 v3, 0x1

    .line 237
    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->requestWindowFeature(I)Z

    .line 239
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 241
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LdE;

    invoke-virtual {v0}, LdE;->a()V

    .line 243
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 244
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LdE;

    const-string v1, "/webOpen"

    invoke-virtual {v0, v1, v11}, LdE;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 246
    sget v0, LcU;->web_view_open:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->setContentView(I)V

    .line 248
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a()Lx;

    move-result-object v0

    .line 249
    sget v1, LcS;->webview:I

    invoke-virtual {v0, v1}, Lx;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/fragment/WebViewFragment;

    .line 250
    invoke-virtual {v0}, Lcom/google/android/apps/docs/fragment/WebViewFragment;->b()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebView;

    .line 253
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 255
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 257
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebSettings;

    .line 258
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 260
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 261
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 262
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v13}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 263
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v13}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 264
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 265
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v13}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 266
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 267
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebView;

    new-instance v1, LrK;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LrK;-><init>(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;LrG;)V

    const-string v2, "mkxNativeWrapperApi"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appcache"

    invoke-virtual {v0, v1, v13}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebSettings;

    const-wide/32 v1, 0x400000

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 282
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setClipToPadding(Z)V

    .line 285
    const-string v0, "accountName"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 286
    const-string v0, "docListTitle"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 288
    new-instance v0, LrI;

    iget-object v3, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Lrz;

    iget-object v5, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LFX;

    iget-object v6, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Ljava/lang/Class;

    iget-object v7, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LLz;

    const-string v1, "webview"

    invoke-virtual {p0, v1, v13}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LIG;

    iget-object v10, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->b:Landroid/os/Handler;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v10}, LrI;-><init>(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;Landroid/content/Context;Lrz;Ljava/lang/String;LFX;Ljava/lang/Class;LLz;Landroid/content/SharedPreferences;LIG;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LrB;

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LrB;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 298
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 300
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LJP;

    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LJP;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Ljava/lang/String;

    .line 302
    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 303
    if-nez v0, :cond_f6

    .line 304
    const-string v0, "WebViewOpenActivity"

    const-string v1, "URL to load is not specified."

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->finish()V

    .line 322
    :goto_f5
    return-void

    .line 309
    :cond_f6
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LLz;

    invoke-interface {v1, p0, v0}, LLz;->a(Landroid/content/Context;Landroid/net/Uri;)LLC;

    move-result-object v1

    .line 311
    sget-object v2, LkU;->c:LkU;

    invoke-virtual {v1}, LLC;->a()LkU;

    move-result-object v3

    invoke-virtual {v2, v3}, LkU;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_112

    .line 315
    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v2, v13}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 316
    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v2, v13}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 319
    :cond_112
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    new-instance v2, Lry;

    invoke-direct {v2, v0, v12, v1}, Lry;-><init>(Ljava/lang/String;Ljava/lang/String;LLC;)V

    iput-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Lry;

    .line 321
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a(Ljava/lang/String;)V

    goto :goto_f5
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 422
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 423
    const/16 v0, 0x64

    if-ne p1, v0, :cond_17

    .line 424
    new-instance v0, Lnc;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a()Lans;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2}, Lnc;-><init>(Lans;Landroid/content/Context;I)V

    .line 426
    invoke-virtual {v0, v2}, Lnc;->setCancelable(Z)V

    .line 429
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 350
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 351
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 352
    sget v3, LcV;->menu_webview:I

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 357
    sget v0, LcS;->menu_comments:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 359
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LeZ;

    sget-object v4, LeV;->b:LeV;

    invoke-interface {v0, v4}, LeZ;->a(LeV;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LLz;

    iget-object v4, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Lry;

    invoke-virtual {v4}, Lry;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v0, v4}, LLz;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_57

    move v0, v1

    .line 361
    :goto_33
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 363
    sget v0, LcS;->menu_sharing:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 364
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lkg;->a(Landroid/content/res/Resources;)Z

    move-result v3

    if-nez v3, :cond_53

    iget-object v3, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Lry;

    invoke-virtual {v3}, Lry;->a()LLC;

    move-result-object v3

    invoke-virtual {v3}, LLC;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_53

    move v2, v1

    .line 366
    :cond_53
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 368
    return v1

    :cond_57
    move v0, v2

    .line 359
    goto :goto_33
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Lry;

    .line 328
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LdE;

    invoke-virtual {v0}, LdE;->b()V

    .line 329
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onDestroy()V

    .line 330
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 373
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Lck;

    invoke-interface {v1, p0}, Lck;->a(Landroid/content/Context;)V

    .line 374
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, LcS;->menu_comments:I

    if-ne v1, v2, :cond_32

    .line 375
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Lry;

    invoke-virtual {v2}, Lry;->a()LLC;

    move-result-object v2

    invoke-virtual {v2}, LLC;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lld;->a(Ljava/lang/String;Ljava/lang/String;)Lld;

    move-result-object v1

    .line 377
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Lry;

    invoke-virtual {v3}, Lry;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a(Landroid/content/Context;Lld;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 379
    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->startActivity(Landroid/content/Intent;)V

    .line 398
    :goto_31
    return v0

    .line 381
    :cond_32
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, LcS;->menu_refresh:I

    if-ne v1, v2, :cond_4b

    .line 383
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LrB;

    invoke-virtual {v1}, LrB;->a()V

    .line 384
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Lry;

    invoke-virtual {v2}, Lry;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_31

    .line 386
    :cond_4b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, LcS;->menu_sharing:I

    if-ne v1, v2, :cond_73

    .line 387
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Lry;

    invoke-virtual {v2}, Lry;->a()LLC;

    move-result-object v2

    invoke-virtual {v2}, LLC;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Lry;

    invoke-virtual {v3}, Lry;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 390
    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_31

    .line 392
    :cond_73
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, LcS;->menu_send_feedback:I

    if-ne v1, v2, :cond_86

    .line 393
    new-instance v1, LXM;

    const-string v2, "android_docs"

    invoke-direct {v1, p0, v2}, LXM;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v1}, LXM;->a()V

    goto :goto_31

    .line 398
    :cond_86
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_31
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 342
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LdE;

    const-string v1, "/webOpen"

    invoke-virtual {v0, p0, v1}, LdE;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 344
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 345
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onPause()V

    .line 346
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 435
    const/16 v0, 0x64

    if-ne p1, v0, :cond_23

    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LnQ;

    if-eqz v0, :cond_23

    .line 436
    check-cast p2, Lnc;

    .line 438
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LnQ;

    invoke-interface {v0}, LnQ;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnc;->a(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LnQ;

    invoke-virtual {p2, v0}, Lnc;->a(LnQ;)V

    .line 440
    invoke-virtual {p2}, Lnc;->a()V

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LnQ;

    .line 443
    :cond_23
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 334
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onResume()V

    .line 335
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:LdE;

    invoke-virtual {v0, p0}, LdE;->a(Ljava/lang/Object;)V

    .line 336
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 337
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 448
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onStop()V

    .line 449
    return-void
.end method
