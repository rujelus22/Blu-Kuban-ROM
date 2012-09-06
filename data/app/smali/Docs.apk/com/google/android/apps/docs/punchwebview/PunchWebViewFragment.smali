.class public Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;
.super Lcom/google/android/apps/docs/fragment/WebViewFragment;
.source "PunchWebViewFragment.java"

# interfaces
.implements LNU;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private a:J

.field public a:LFX;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LIG;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LJR;

.field public a:LLz;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LMA;

.field public a:LNJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LNq;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LNy;

.field public a:LXP;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:Landroid/webkit/WebChromeClient;

.field private a:Landroid/webkit/WebSettings;

.field private a:Landroid/widget/ProgressBar;

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

.field private a:Lld;

.field private a:Lnb;

.field private a:LrA;

.field private final a:Lrz;

.field private a:Z

.field private b:J

.field private b:Landroid/webkit/WebView;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 182
    const-class v0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/WebViewFragment;-><init>()V

    .line 353
    new-instance v0, LND;

    invoke-direct {v0, p0}, LND;-><init>(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lrz;

    .line 403
    new-instance v0, LNE;

    invoke-direct {v0, p0}, LNE;-><init>(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebChromeClient;

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LrA;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)J
    .registers 3
    .parameter

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:J

    return-wide v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Landroid/webkit/WebView;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lck;

    return-object v0
.end method

.method public static a(Landroid/net/Uri;Lld;Ljava/lang/String;)Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    const-string v1, "url"

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "resId"

    iget-object v2, p1, Lld;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "accountName"

    iget-object v2, p1, Lld;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v1, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-direct {v1}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;-><init>()V

    .line 91
    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->d(Landroid/os/Bundle;)V

    .line 92
    return-object v1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lnb;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lnb;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;Lnb;)Lnb;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lnb;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)LrA;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LrA;

    return-object v0
.end method

.method private a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 96
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, LcY;->ouch_button_close_alert:I

    new-instance v2, LNC;

    invoke-direct {v2, p0}, LNC;-><init>(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 110
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)V
    .registers 1
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->s()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b(Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;)V

    return-void
.end method

.method private a(Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;)V
    .registers 4
    .parameter

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LMA;

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->b(Z)V

    .line 523
    new-instance v0, LNF;

    invoke-direct {v0, p0, p1}, LNF;-><init>(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LMA;

    .line 529
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNq;

    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LMA;

    invoke-virtual {v0, v1}, LNq;->a(LNo;)V

    .line 530
    return-void

    .line 522
    :cond_17
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)J
    .registers 3
    .parameter

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b:J

    return-wide v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->c:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;)V
    .registers 4
    .parameter

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNq;

    invoke-virtual {v0}, LNq;->a()I

    move-result v0

    .line 540
    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNq;

    invoke-virtual {v1}, LNq;->b()I

    move-result v1

    .line 541
    if-lez v1, :cond_14

    .line 542
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 543
    invoke-virtual {p1, v0}, Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;->setAspect(F)V

    .line 545
    :cond_14
    return-void
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic d(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic d(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic e(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic e(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic f(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic g(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic h(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic i(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic j(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic k(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic l(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic m(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic n(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic o(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lck;

    return-object v0
.end method

.method private s()V
    .registers 3

    .prologue
    .line 413
    sget v0, LcY;->punch_open_failed:I

    sget v1, LcY;->punch_open_failed_expanded:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a(II)V

    .line 414
    return-void
.end method

.method private t()V
    .registers 3

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LMA;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNq;

    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LMA;

    invoke-virtual {v0, v1}, LNq;->b(LNo;)V

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LMA;

    .line 536
    return-void
.end method

.method private u()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 548
    sget-object v0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->c:Ljava/lang/String;

    const-string v1, "in configureWebView"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 550
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 551
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, LcP;->punch_grey_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 552
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebSettings;

    .line 553
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 554
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 555
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 556
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 557
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 558
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 559
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 560
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 561
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 562
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 563
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 565
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebSettings;

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 566
    invoke-static {}, Lkg;->b()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 567
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 568
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 573
    :cond_79
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebSettings;

    const-string v1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/14.0.835.126 Safari/535.1"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 575
    new-instance v0, LJS;

    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, LJS;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LJR;

    .line 576
    return-void
.end method

.method private v()V
    .registers 5

    .prologue
    .line 619
    sget-object v0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->c:Ljava/lang/String;

    const-string v1, "in loadJavascriptBridge"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "javascript/punch/webview/PunchNativeMessagingBridge.js"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 624
    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LXP;

    invoke-interface {v1, v0}, LXP;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 625
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_20} :catch_26

    .line 630
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LJR;

    invoke-interface {v0, v1}, LJR;->a(Ljava/lang/String;)V

    .line 631
    return-void

    .line 626
    :catch_26
    move-exception v0

    .line 627
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load Punch javascript bridge: ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private w()V
    .registers 4

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 688
    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-string v1, "url"

    invoke-static {v0, v1}, LXx;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->d:Ljava/lang/String;

    .line 690
    const-string v1, "resId"

    invoke-static {v0, v1}, LXx;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 691
    const-string v2, "accountName"

    invoke-static {v0, v2}, LXx;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 692
    invoke-static {v2, v1}, Lld;->a(Ljava/lang/String;Ljava/lang/String;)Lld;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lld;

    .line 693
    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNq;

    const-string v2, "title"

    invoke-static {v0, v2}, LXx;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, LNq;->a(Ljava/lang/String;)V

    .line 694
    return-void
.end method

.method private x()V
    .registers 6

    .prologue
    .line 697
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, LNG;

    invoke-direct {v1, p0}, LNG;-><init>(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 732
    new-instance v1, LNL;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LNL;-><init>(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;LNC;)V

    .line 734
    new-instance v2, LFM;

    invoke-direct {v2, v1}, LFM;-><init>(LFN;)V

    .line 737
    iget-object v3, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebView;

    new-instance v4, LNH;

    invoke-direct {v4, p0, v2, v1, v0}, LNH;-><init>(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;LFM;LNL;Landroid/view/GestureDetector;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 754
    return-void
.end method

.method private y()V
    .registers 3

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNq;

    new-instance v1, LNI;

    invoke-direct {v1, p0}, LNI;-><init>(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)V

    invoke-virtual {v0, v1}, LNq;->a(LNr;)V

    .line 773
    return-void
.end method


# virtual methods
.method public a()LNy;
    .registers 3

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Z

    if-nez v0, :cond_18

    .line 667
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/view/View;

    move-result-object v0

    sget v1, LcS;->punch_web_view_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 669
    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNy;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 670
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Z

    .line 672
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNy;

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 469
    sget-object v0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->c:Ljava/lang/String;

    const-string v1, "in onCreateView"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/os/Handler;

    .line 471
    sget v0, LcU;->punch_web_view_fragment:I

    invoke-virtual {p1, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 473
    sget v0, LcS;->loading_spinner:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/widget/ProgressBar;

    .line 478
    sget v0, LcS;->punch_web_view_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 479
    iget-object v2, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b:Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebView;

    .line 480
    iget-object v2, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebView;

    if-nez v2, :cond_c6

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:J

    .line 482
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Z

    .line 484
    new-instance v2, LNy;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v10}, LNy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNy;

    .line 485
    iget-object v2, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNy;

    iput-object v2, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebView;

    .line 486
    iget-object v2, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    iget-object v2, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b:Landroid/webkit/WebView;

    .line 490
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->x()V

    .line 491
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->u()V

    .line 492
    iget-object v2, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebChromeClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 493
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->y()V

    .line 494
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->w()V

    .line 495
    new-instance v2, LNK;

    iget-object v3, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lrz;

    iget-object v4, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lld;

    iget-object v4, v4, Lld;->a:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, LNK;-><init>(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;Lrz;Ljava/lang/String;)V

    .line 497
    iget-object v3, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 498
    new-instance v3, Lry;

    iget-object v4, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNq;

    invoke-virtual {v5}, LNq;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LLz;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->d:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-interface {v6, v7, v8}, LLz;->a(Landroid/content/Context;Landroid/net/Uri;)LLC;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lry;-><init>(Ljava/lang/String;Ljava/lang/String;LLC;)V

    iput-object v3, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LrA;

    .line 500
    iget-object v3, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebView;

    new-instance v4, LNN;

    invoke-direct {v4, p0, v10}, LNN;-><init>(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;LNC;)V

    const-string v5, "WebViewApi"

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->v()V

    .line 502
    iget-object v3, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, LNK;->a(Ljava/lang/String;)V

    .line 504
    iget-object v2, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNy;

    invoke-direct {p0, v2}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a(Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;)V

    .line 505
    iget-object v2, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNq;

    invoke-virtual {v2}, LNq;->a()I

    move-result v2

    if-eq v2, v9, :cond_c6

    iget-object v2, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNq;

    invoke-virtual {v2}, LNq;->b()I

    move-result v2

    if-eq v2, v9, :cond_c6

    .line 506
    iget-object v2, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNy;

    invoke-direct {p0, v2}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b(Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;)V

    .line 510
    :cond_c6
    iget-boolean v2, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Z

    if-nez v2, :cond_cf

    .line 511
    iget-object v2, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 514
    :cond_cf
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNq;

    invoke-virtual {v0}, LNq;->a()Z

    move-result v0

    if-eqz v0, :cond_de

    .line 515
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 518
    :cond_de
    return-object v1
.end method

.method public a(LNy;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 677
    iget-boolean v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Z

    if-eqz v0, :cond_1c

    .line 678
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNy;

    if-ne v0, p1, :cond_1f

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, LafQ;->b(Z)V

    .line 679
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/view/View;

    move-result-object v0

    sget v2, LcS;->punch_web_view_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 681
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 683
    :cond_1c
    iput-boolean v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Z

    .line 684
    return-void

    :cond_1f
    move v0, v1

    .line 678
    goto :goto_a
.end method

.method public b(I)V
    .registers 5
    .parameter

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNq;

    invoke-virtual {v0}, LNq;->c()I

    move-result v0

    if-nez v0, :cond_9

    .line 645
    :goto_8
    return-void

    .line 642
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNq;

    invoke-virtual {v0}, LNq;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, LafQ;->b(II)I

    .line 643
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b:J

    .line 644
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LJR;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.PUNCH_WEBVIEW_CONTROL_API.gotoSlide("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LJR;->a(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public f_()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 580
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 581
    sget-object v0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->c:Ljava/lang/String;

    const-string v1, "in onDestroyView"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/view/View;

    move-result-object v0

    sget v1, LcS;->punch_web_view_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 586
    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 587
    iput-object v2, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebView;

    .line 589
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lnb;

    if-eqz v0, :cond_2f

    .line 590
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lnb;

    invoke-virtual {v0}, Lnb;->a()V

    .line 591
    iput-object v2, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Lnb;

    .line 594
    :cond_2f
    iput-object v2, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LrA;

    .line 595
    invoke-super {p0}, Lcom/google/android/apps/docs/fragment/WebViewFragment;->f_()V

    .line 596
    return-void
.end method

.method public p()V
    .registers 3

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b:Landroid/webkit/WebView;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebView;

    .line 602
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->t()V

    .line 606
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_19

    .line 607
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:Landroid/webkit/WebView;

    const-string v1, "WebViewApi"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 610
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()V

    .line 611
    return-void
.end method

.method public q()V
    .registers 3

    .prologue
    .line 648
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNq;

    invoke-virtual {v0}, LNq;->c()I

    move-result v0

    if-nez v0, :cond_9

    .line 654
    :goto_8
    return-void

    .line 652
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b:J

    .line 653
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LJR;

    const-string v1, "window.PUNCH_WEBVIEW_CONTROL_API.goNext();"

    invoke-interface {v0, v1}, LJR;->a(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public r()V
    .registers 3

    .prologue
    .line 657
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNq;

    invoke-virtual {v0}, LNq;->c()I

    move-result v0

    if-nez v0, :cond_9

    .line 662
    :goto_8
    return-void

    .line 660
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b:J

    .line 661
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LJR;

    const-string v1, "window.PUNCH_WEBVIEW_CONTROL_API.goPrev();"

    invoke-interface {v0, v1}, LJR;->a(Ljava/lang/String;)V

    goto :goto_8
.end method
