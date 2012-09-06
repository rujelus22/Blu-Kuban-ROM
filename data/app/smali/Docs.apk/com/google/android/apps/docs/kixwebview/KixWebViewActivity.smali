.class public Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;
.super Lcom/google/android/apps/docs/app/BaseActivity;
.source "KixWebViewActivity.java"

# interfaces
.implements LKB;


# instance fields
.field private a:I

.field public a:LFX;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LIG;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LJR;

.field private a:LJT;

.field private a:LJW;

.field private final a:LKE;

.field private final a:LKF;

.field private final a:LKG;

.field public a:LLz;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lck;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Landroid/view/View$OnLayoutChangeListener;

.field private a:Landroid/view/View;

.field private final a:Landroid/webkit/WebChromeClient;

.field private a:Landroid/webkit/WebSettings;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/ProgressBar;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

.field private a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

.field private a:Lcom/google/android/apps/docs/view/TitleBar;

.field public a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:LdY;

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

.field private a:Ljava/lang/Object;

.field private a:Ljava/lang/String;

.field private a:Lld;

.field private a:LnQ;

.field private a:LrA;

.field private final a:Lrz;

.field private final a:Ly;

.field private final b:I

.field public b:Landroid/os/Handler;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private b:Landroid/widget/ImageView;

.field private b:Ljava/lang/Object;

.field private b:Ljava/lang/String;

.field private final c:I

.field private c:Ljava/lang/Object;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;-><init>()V

    .line 182
    new-instance v0, LKi;

    invoke-direct {v0, p0}, LKi;-><init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKG;

    .line 196
    new-instance v0, LKn;

    invoke-direct {v0, p0}, LKn;-><init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LdY;

    .line 255
    new-instance v0, LKp;

    invoke-direct {v0, p0}, LKp;-><init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lrz;

    .line 295
    new-instance v0, LKq;

    invoke-direct {v0, p0}, LKq;-><init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/webkit/WebChromeClient;

    .line 305
    new-instance v0, LKr;

    invoke-direct {v0, p0}, LKr;-><init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/view/View$OnLayoutChangeListener;

    .line 323
    new-instance v0, LKt;

    invoke-direct {v0, p0}, LKt;-><init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKE;

    .line 343
    new-instance v0, LKu;

    invoke-direct {v0, p0}, LKu;-><init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Ly;

    .line 362
    new-instance v0, LKd;

    invoke-direct {v0}, LKd;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKF;

    .line 364
    iput-boolean v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->i:Z

    .line 366
    iput-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LnQ;

    .line 413
    iput-boolean v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->j:Z

    .line 414
    iput-boolean v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->k:Z

    .line 418
    const-string v0, "#EBEBEB"

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b:Ljava/lang/String;

    .line 419
    iput v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b:I

    .line 420
    iput v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->c:I

    .line 422
    iput-boolean v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->l:Z

    .line 424
    iput-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LrA;

    .line 427
    iput-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Ljava/lang/Object;

    .line 428
    iput-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b:Ljava/lang/Object;

    .line 429
    iput-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->c:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)LKF;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKF;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 437
    sget-object v0, LkU;->a:LkU;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;LkU;)Landroid/content/Intent;

    move-result-object v0

    .line 439
    const-class v1, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 440
    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)Lcom/google/android/apps/docs/kixwebview/KixWebView;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)Lld;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lld;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;LnQ;)LnQ;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LnQ;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)LrA;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LrA;

    return-object v0
.end method

.method private a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->i:Z

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b()Z

    move-result v0

    if-nez v0, :cond_32

    .line 644
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LJR;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.DOCS_WEBVIEWCONTROL_updateVisiblePages("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LJR;->a(Ljava/lang/String;)V

    .line 647
    :cond_32
    return-void
.end method

.method private a(Landroid/view/Menu;ILjava/lang/Runnable;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 770
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 772
    if-nez v0, :cond_1f

    .line 773
    const-string v0, "KixWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Menu layout does not contain requested item id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :goto_1e
    return-void

    .line 777
    :cond_1f
    new-instance v1, LKj;

    invoke-direct {v1, p0, p3}, LKj;-><init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1e
.end method

.method private a(Landroid/view/MenuItem;)V
    .registers 3
    .parameter

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->k:Z

    if-eqz v0, :cond_1b

    sget v0, LcY;->menu_hide_live_editing:I

    :goto_6
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 790
    iget-boolean v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->k:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 791
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->f()V

    .line 795
    :goto_1a
    return-void

    .line 788
    :cond_1b
    sget v0, LcY;->menu_show_live_editing:I

    goto :goto_6

    .line 793
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->e()V

    goto :goto_1a
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->l()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;II)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(II)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;Landroid/view/MenuItem;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Landroid/view/MenuItem;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 874
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcY;->error_opening_document_for_html:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 876
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 877
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LXJ;

    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, LXJ;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 878
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b()Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->i:Z

    return p1
.end method

.method private b(I)V
    .registers 5
    .parameter

    .prologue
    .line 637
    iget-boolean v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->i:Z

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b()Z

    move-result v0

    if-nez v0, :cond_28

    .line 638
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LJR;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.DOCS_WEBVIEWCONTROL_setPageMargin("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LJR;->a(Ljava/lang/String;)V

    .line 640
    :cond_28
    return-void
.end method

.method private b(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 657
    :goto_6
    return-void

    .line 653
    :cond_7
    const-string v0, "KixWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Body Resized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LJR;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "document.body.style.width=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px\';"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "document.body.style.height=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px\';"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "document.body.style.background=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\';"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LJR;->a(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->o()V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->i:Z

    return v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->l:Z

    return p1
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->n()V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->k:Z

    return v0
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->k:Z

    return p1
.end method

.method public static synthetic d(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->k()V

    return-void
.end method

.method public static synthetic d(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b()Z

    move-result v0

    return v0
.end method

.method public static synthetic e(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->q()V

    return-void
.end method

.method public static synthetic e(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b()Z

    move-result v0

    return v0
.end method

.method public static synthetic f(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->j:Z

    return v0
.end method

.method private i()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 509
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->setVerticalScrollBarEnabled(Z)V

    .line 510
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 511
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->setInitialScale(I)V

    .line 512
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/webkit/WebSettings;

    .line 513
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 514
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 515
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 516
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 517
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 518
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 519
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 520
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 521
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 522
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 523
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 524
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 528
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/webkit/WebSettings;

    const-string v1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/14.0.835.126 Safari/535.1"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 530
    new-instance v0, LJS;

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-direct {v0, v1}, LJS;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LJR;

    .line 531
    return-void
.end method

.method private j()V
    .registers 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LJR;

    const-string v1, "window.parent.DOCS_WEBVIEW_onApiExported = function(){window.WebViewApi.DOCS_WEBVIEW_onApiExported();};window.parent.DOCS_WEBVIEW_onInitialRedrawCompleted = function(){window.WebViewApi.DOCS_WEBVIEW_onInitialRedrawCompleted();};window.parent.DOCS_WEBVIEW_onPageCountChanged = function(pages){window.WebViewApi.DOCS_WEBVIEW_onPageCountChanged(pages);};window.parent.DOCS_WEBVIEW_onPageSizeChanged = function(x, y){window.WebViewApi.DOCS_WEBVIEW_onPageSizeChanged(x, y);};window.parent.DOCS_WEBVIEW_onDocoClicked = function(){window.WebViewApi.DOCS_WEBVIEW_onDocoClicked();};"

    invoke-interface {v0, v1}, LJR;->a(Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method private k()V
    .registers 3

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LJR;

    const-string v1, "var tag = document.createElement(\'meta\');tag.name = \'viewport\';tag.content = \'target-densitydpi=device-dpi\';document.getElementsByTagName(\'head\')[0].appendChild(tag);"

    invoke-interface {v0, v1}, LJR;->a(Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method private l()V
    .registers 3

    .prologue
    .line 660
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b:Landroid/os/Handler;

    new-instance v1, LKv;

    invoke-direct {v1, p0}, LKv;-><init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 681
    return-void
.end method

.method private m()V
    .registers 4

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKF;

    invoke-interface {v0}, LKF;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKF;

    invoke-interface {v1}, LKF;->f()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKF;

    invoke-interface {v1}, LKF;->c()I

    move-result v1

    mul-int/2addr v0, v1

    .line 686
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKF;

    invoke-interface {v1}, LKF;->b()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKF;

    invoke-interface {v2}, LKF;->g()I

    move-result v2

    add-int/2addr v1, v2

    .line 687
    if-nez v0, :cond_25

    if-eqz v1, :cond_28

    .line 688
    :cond_25
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b(II)V

    .line 690
    :cond_28
    return-void
.end method

.method private n()V
    .registers 3

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKF;

    invoke-interface {v0}, LKF;->c()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_19

    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKF;

    invoke-interface {v0}, LKF;->a()I

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKF;

    invoke-interface {v0}, LKF;->b()I

    move-result v0

    if-nez v0, :cond_1a

    .line 699
    :cond_19
    :goto_19
    return-void

    .line 697
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKF;

    invoke-interface {v0}, LKF;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b(I)V

    .line 698
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->m()V

    goto :goto_19
.end method

.method private o()V
    .registers 12

    .prologue
    const/high16 v9, 0x4000

    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 702
    const-string v1, "KixWebViewActivity"

    const-string v2, "Page size update"

    invoke-static {v1, v2}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKF;

    invoke-interface {v1}, LKF;->a()I

    move-result v1

    .line 704
    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKF;

    invoke-interface {v2}, LKF;->b()I

    move-result v2

    .line 705
    iget-object v3, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v3

    .line 706
    iget-object v4, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v4

    .line 707
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->p()V

    .line 708
    if-le v3, v4, :cond_9d

    .line 709
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b:Ljava/lang/Object;

    .line 710
    iget-object v5, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LdE;

    iget-object v6, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b:Ljava/lang/Object;

    invoke-virtual {v5, v6}, LdE;->a(Ljava/lang/Object;)V

    .line 715
    :goto_36
    int-to-float v5, v3

    add-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 716
    iget-object v6, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    add-int/lit8 v7, v2, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 717
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 720
    cmpl-float v5, v5, v6

    if-lez v5, :cond_ac

    .line 721
    int-to-float v2, v3

    div-float/2addr v2, v7

    int-to-float v1, v1

    sub-float v1, v2, v1

    div-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 722
    int-to-float v2, v1

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 723
    iget-object v3, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LJW;

    invoke-virtual {v3, v2, v2}, LJW;->a(II)V

    .line 728
    :goto_63
    const-string v2, "KixWebViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New scale "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->m()V

    .line 730
    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-virtual {v2, v8}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->setPivotX(F)V

    .line 731
    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-virtual {v2, v8}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->setPivotY(F)V

    .line 732
    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-virtual {v2, v7}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->setScaleX(F)V

    .line 733
    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-virtual {v2, v7}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->setScaleY(F)V

    .line 734
    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->requestLayout()V

    .line 735
    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKF;

    invoke-interface {v2, v1, v0}, LKF;->b(II)V

    .line 736
    return-void

    .line 712
    :cond_9d
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->c:Ljava/lang/Object;

    .line 713
    iget-object v5, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LdE;

    iget-object v6, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->c:Ljava/lang/Object;

    invoke-virtual {v5, v6}, LdE;->a(Ljava/lang/Object;)V

    goto :goto_36

    .line 725
    :cond_ac
    int-to-float v1, v4

    div-float/2addr v1, v7

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 726
    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LJW;

    invoke-virtual {v2, v0, v0}, LJW;->a(II)V

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_63
.end method

.method private p()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 739
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b:Ljava/lang/Object;

    if-eqz v0, :cond_10

    .line 740
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LdE;

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b:Ljava/lang/Object;

    const-string v2, "webViewLandscapeDuration"

    invoke-virtual {v0, v1, v2}, LdE;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 741
    iput-object v3, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b:Ljava/lang/Object;

    .line 743
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1f

    .line 744
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LdE;

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->c:Ljava/lang/Object;

    const-string v2, "webViewPortraitDuration"

    invoke-virtual {v0, v1, v2}, LdE;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 745
    iput-object v3, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->c:Ljava/lang/Object;

    .line 747
    :cond_1f
    return-void
.end method

.method private q()V
    .registers 4

    .prologue
    .line 854
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lld;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(Landroid/content/Context;Lld;Z)Landroid/content/Intent;

    move-result-object v0

    .line 856
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 857
    if-eqz v1, :cond_18

    .line 858
    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 860
    :cond_18
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 861
    return-void
.end method


# virtual methods
.method protected final a()LIC;
    .registers 3

    .prologue
    .line 751
    new-instance v1, Lej;

    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    invoke-direct {v1, p0, v0}, Lej;-><init>(Landroid/app/Activity;LdL;)V

    .line 752
    new-instance v0, LKw;

    invoke-direct {v0, p0, v1}, LKw;-><init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;LIC;)V

    .line 759
    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 241
    const-class v0, LdY;

    if-ne p1, v0, :cond_7

    .line 242
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LdY;

    .line 244
    :goto_6
    return-object v0

    :cond_7
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/docs/app/BaseActivity;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 498
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->c()V

    .line 500
    sget v0, LcS;->activity_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/view/View;

    .line 501
    sget v0, LcS;->webviewparentlayout:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/widget/RelativeLayout;

    .line 502
    sget v0, LcS;->title_bar:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/view/TitleBar;

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    .line 503
    sget v0, LcS;->left_curtain:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/widget/ImageView;

    .line 504
    sget v0, LcS;->right_curtain:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b:Landroid/widget/ImageView;

    .line 505
    sget v0, LcS;->loading_spinner:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/widget/ProgressBar;

    .line 506
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->i:Z

    if-eqz v0, :cond_12

    .line 574
    const-string v0, "KixWebViewActivity"

    const-string v1, "Kix paused"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LJR;

    const-string v1, "window.DOCS_WEBVIEWCONTROL_pause();"

    invoke-interface {v0, v1}, LJR;->a(Ljava/lang/String;)V

    .line 577
    :cond_12
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->i:Z

    if-eqz v0, :cond_12

    .line 584
    const-string v0, "KixWebViewActivity"

    const-string v1, "Kix resumed"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LJR;

    const-string v1, "window.DOCS_WEBVIEWCONTROL_resume();"

    invoke-interface {v0, v1}, LJR;->a(Ljava/lang/String;)V

    .line 587
    :cond_12
    return-void
.end method

.method public g()V
    .registers 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->e()V

    .line 592
    return-void
.end method

.method public h()V
    .registers 2

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->k:Z

    if-eqz v0, :cond_8

    .line 597
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->f()V

    .line 601
    :goto_7
    return-void

    .line 599
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->e()V

    goto :goto_7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter

    .prologue
    const/16 v10, 0x400

    const/4 v9, 0x0

    .line 445
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 446
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 448
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LdE;

    invoke-virtual {v0}, LdE;->a()V

    .line 449
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LdE;

    const-string v1, "/hiFiWebView"

    invoke-virtual {v0, v1, v7}, LdE;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 450
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Ljava/lang/Object;

    .line 451
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LdE;

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, LdE;->a(Ljava/lang/Object;)V

    .line 453
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 454
    sget v0, LcU;->kix_web_view_open:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->setContentView(I)V

    .line 456
    new-instance v0, LKQ;

    invoke-direct {v0}, LKQ;-><init>()V

    .line 457
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a()LIi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    invoke-interface {v0, v1}, LIi;->a(LIB;)V

    .line 458
    new-instance v0, LJW;

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2}, LJW;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LJW;

    .line 459
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a()Lx;

    move-result-object v2

    .line 460
    sget v0, LcS;->kix_web_view:I

    invoke-virtual {v2, v0}, Lx;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/kixwebview/KixWebViewFragment;

    .line 462
    invoke-virtual {v0, p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewFragment;->a(LKB;)V

    .line 463
    invoke-virtual {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewFragment;->a()Lcom/google/android/apps/docs/kixwebview/KixWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    .line 464
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcP;->kix_webview_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:I

    .line 465
    const-string v0, "#%06X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b:Ljava/lang/String;

    .line 466
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    iget v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->setBackgroundColor(I)V

    .line 467
    sget v0, LcS;->page_scrubber:I

    invoke-virtual {v2, v0}, Lx;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    .line 468
    new-instance v8, LKC;

    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-direct {v8, v0, v1}, LKC;-><init>(LKD;Lcom/google/android/apps/docs/kixwebview/PageScrubber;)V

    .line 469
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKF;

    invoke-interface {v0, v8}, LKF;->a(LKG;)V

    .line 470
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKF;

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKG;

    invoke-interface {v0, v1}, LKF;->a(LKG;)V

    .line 471
    new-instance v0, LJT;

    iget-object v3, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    iget-object v5, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b:Landroid/os/Handler;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, LJT;-><init>(Landroid/app/Activity;Lx;Landroid/view/View;Lcom/google/android/apps/docs/kixwebview/PageScrubber;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LJT;

    .line 473
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKF;

    iget-object v3, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LJW;

    iget-object v5, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LJT;

    iget-object v6, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKE;

    move-object v2, v8

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(LKF;LKI;Landroid/os/Handler;LJW;LJV;LKE;)V

    .line 475
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LJT;

    invoke-virtual {v0, v8, v1}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a(LKI;LJV;)V

    .line 476
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->i()V

    .line 477
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 478
    invoke-static {v7}, Lld;->a(Landroid/content/Intent;)Lld;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lld;

    .line 479
    new-instance v0, LKx;

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lrz;

    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lld;

    iget-object v2, v2, Lld;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, LKx;-><init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;Lrz;Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 481
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Ljava/lang/String;

    .line 482
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a()LIi;

    move-result-object v1

    sget v2, LcY;->loading_document:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, LIi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    new-instance v2, LKy;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, LKy;-><init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;LKi;)V

    const-string v3, "WebViewApi"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->j()V

    .line 485
    const-string v1, "docListTitle"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 486
    new-instance v2, Lry;

    iget-object v3, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LLz;

    iget-object v5, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, p0, v5}, LLz;->a(Landroid/content/Context;Landroid/net/Uri;)LLC;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lry;-><init>(Ljava/lang/String;Ljava/lang/String;LLC;)V

    iput-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LrA;

    .line 487
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LKx;->a(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 490
    const-string v0, "userCanEdit"

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->j:Z

    .line 492
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a()Lx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Ly;

    invoke-virtual {v0, v1}, Lx;->a(Ly;)V

    .line 493
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKF;

    invoke-interface {v0, v10, v10}, LKF;->a(II)V

    .line 494
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 882
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 883
    const/16 v0, 0x64

    if-ne p1, v0, :cond_17

    .line 884
    new-instance v0, Lnc;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a()Lans;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2}, Lnc;-><init>(Lans;Landroid/content/Context;I)V

    .line 886
    invoke-virtual {v0, v2}, Lnc;->setCancelable(Z)V

    .line 889
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    .line 799
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 800
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, LcV;->menu_kix_webview:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 801
    sget v0, LcS;->menu_show_live_editing:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 803
    sget v1, LcS;->menu_edit_icon:I

    new-instance v2, LKk;

    invoke-direct {v2, p0, v0}, LKk;-><init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;Landroid/view/MenuItem;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Landroid/view/Menu;ILjava/lang/Runnable;)V

    .line 816
    sget v1, LcS;->menu_show_live_editing:I

    new-instance v2, LKl;

    invoke-direct {v2, p0, v0}, LKl;-><init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;Landroid/view/MenuItem;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Landroid/view/Menu;ILjava/lang/Runnable;)V

    .line 825
    sget v0, LcS;->menu_comments:I

    new-instance v1, LKm;

    invoke-direct {v1, p0}, LKm;-><init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Landroid/view/Menu;ILjava/lang/Runnable;)V

    .line 846
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LFX;

    const-string v1, "enableKixWebViewComments"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 848
    sget v1, LcS;->menu_comments:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 850
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 535
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 536
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->p()V

    .line 537
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 539
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LdE;

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, LdE;->b(Ljava/lang/Object;)V

    .line 540
    iput-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Ljava/lang/Object;

    .line 542
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LdE;

    invoke-virtual {v0}, LdE;->b()V

    .line 543
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a()Lx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Ly;

    invoke-virtual {v0, v1}, Lx;->b(Ly;)V

    .line 544
    iput-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LrA;

    .line 545
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onDestroy()V

    .line 546
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 551
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LJT;

    invoke-virtual {v0}, LJT;->b()V

    .line 552
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKF;

    invoke-interface {v0}, LKF;->a()V

    .line 553
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LdE;

    const-string v1, "/hiFiWebView"

    invoke-virtual {v0, p0, v1}, LdE;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onPause()V

    .line 555
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 894
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 895
    const/16 v0, 0x64

    if-ne p1, v0, :cond_23

    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LnQ;

    if-eqz v0, :cond_23

    .line 896
    check-cast p2, Lnc;

    .line 898
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LnQ;

    invoke-interface {v0}, LnQ;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnc;->a(Ljava/lang/String;)V

    .line 899
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LnQ;

    invoke-virtual {p2, v0}, Lnc;->a(LnQ;)V

    .line 900
    invoke-virtual {p2}, Lnc;->a()V

    .line 901
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LnQ;

    .line 903
    :cond_23
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    .line 865
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 866
    sget v1, LcS;->menu_edit_icon:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 867
    if-eqz v1, :cond_11

    .line 868
    iget-boolean v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->j:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 870
    :cond_11
    return v0
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 560
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LdE;

    invoke-virtual {v0, p0}, LdE;->a(Ljava/lang/Object;)V

    .line 561
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LJT;

    invoke-virtual {v0}, LJT;->c()V

    .line 562
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onResume()V

    .line 563
    iget-boolean v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->l:Z

    if-eqz v0, :cond_1d

    .line 564
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 566
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LKF;

    invoke-interface {v0}, LKF;->b()V

    .line 567
    return-void
.end method
