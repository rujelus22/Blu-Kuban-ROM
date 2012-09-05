.class final Lcom/google/android/youtube/app/ui/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/ch;

.field private final b:Lcom/google/android/youtube/core/ui/PagedListView;

.field private final c:Lcom/google/android/youtube/app/a/o;

.field private final d:Lcom/google/android/youtube/core/async/a;

.field private final e:Ljava/util/Timer;

.field private f:Ljava/util/List;

.field private g:Ljava/util/TimerTask;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/ch;)V
    .registers 3
    .parameter

    .prologue
    .line 472
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/ui/cm;-><init>(Lcom/google/android/youtube/app/ui/ch;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/ui/ch;B)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    new-instance v0, Lcom/google/android/youtube/app/a/o;

    iget-object v1, p1, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/app/a/o;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->c:Lcom/google/android/youtube/app/a/o;

    .line 486
    iget-object v0, p1, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040010

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/PagedListView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->b:Lcom/google/android/youtube/core/ui/PagedListView;

    .line 490
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->b:Lcom/google/android/youtube/core/ui/PagedListView;

    new-instance v1, Lcom/google/android/youtube/app/ui/cn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/ui/cn;-><init>(Lcom/google/android/youtube/app/ui/cm;Lcom/google/android/youtube/app/ui/ch;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedListView;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 511
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->b:Lcom/google/android/youtube/core/ui/PagedListView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cm;->c:Lcom/google/android/youtube/app/a/o;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedListView;->a(Lcom/google/android/youtube/core/a/a;)V

    .line 512
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->f:Ljava/util/List;

    .line 514
    iget-object v0, p1, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/youtube/app/ui/co;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/ui/co;-><init>(Lcom/google/android/youtube/app/ui/cm;Lcom/google/android/youtube/app/ui/ch;)V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->d:Lcom/google/android/youtube/core/async/a;

    .line 536
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Refresh available screens"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->e:Ljava/util/Timer;

    .line 537
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/cm;)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 472
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a01b2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cm;->b:Lcom/google/android/youtube/core/ui/PagedListView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/cm;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cm;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/cm;)V
    .registers 3
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->b:Lcom/google/android/youtube/core/ui/PagedListView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/PagedListView;->h()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->o(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/u;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cm;->d:Lcom/google/android/youtube/core/async/a;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/u;->a(Lcom/google/android/youtube/core/async/g;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/cm;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/ui/cm;)Lcom/google/android/youtube/app/a/o;
    .registers 2
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->c:Lcom/google/android/youtube/app/a/o;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/ui/cm;)Lcom/google/android/youtube/core/ui/PagedListView;
    .registers 2
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->b:Lcom/google/android/youtube/core/ui/PagedListView;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/ui/cm;)Lcom/google/android/youtube/core/async/a;
    .registers 2
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->d:Lcom/google/android/youtube/core/async/a;

    return-object v0
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->g:Ljava/util/TimerTask;

    if-eqz v0, :cond_c

    .line 556
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->g:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 557
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->g:Ljava/util/TimerTask;

    .line 559
    :cond_c
    return-void
.end method

.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 8
    .parameter

    .prologue
    .line 562
    new-instance v0, Lcom/google/android/youtube/app/ui/cp;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/cp;-><init>(Lcom/google/android/youtube/app/ui/cm;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->g:Ljava/util/TimerTask;

    .line 568
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->e:Ljava/util/Timer;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cm;->g:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 570
    return-void
.end method
