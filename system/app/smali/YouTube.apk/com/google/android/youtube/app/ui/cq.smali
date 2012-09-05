.class final Lcom/google/android/youtube/app/ui/cq;
.super Lcom/google/android/youtube/core/ui/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/ch;

.field private final b:Lcom/google/android/youtube/app/a/l;

.field private final d:Lcom/google/android/youtube/core/ui/k;

.field private final e:Lcom/google/android/youtube/core/ui/PagedListView;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/ch;)V
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 383
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/ch;

    .line 384
    invoke-static {p1}, Lcom/google/android/youtube/app/ui/ch;->b(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/f;-><init>(Lcom/google/android/youtube/core/e;)V

    .line 386
    new-instance v0, Lcom/google/android/youtube/app/a/h;

    iget-object v1, p1, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    const v2, 0x7f040037

    const/4 v3, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/android/youtube/app/a/h;-><init>(Landroid/content/Context;Lcom/google/android/youtube/app/ui/ToolbarHelper;IZ)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cq;->b:Lcom/google/android/youtube/app/a/l;

    .line 388
    iget-object v0, p1, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/PagedListView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cq;->e:Lcom/google/android/youtube/core/ui/PagedListView;

    .line 390
    new-instance v0, Lcom/google/android/youtube/core/ui/k;

    iget-object v1, p1, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/cq;->e:Lcom/google/android/youtube/core/ui/PagedListView;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/cq;->b:Lcom/google/android/youtube/app/a/l;

    invoke-static {p1}, Lcom/google/android/youtube/app/ui/ch;->i(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/async/ad;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/cq;->c:Lcom/google/android/youtube/core/e;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/ui/k;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cq;->d:Lcom/google/android/youtube/core/ui/k;

    .line 397
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cq;->e:Lcom/google/android/youtube/core/ui/PagedListView;

    new-instance v1, Lcom/google/android/youtube/app/ui/cr;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/ui/cr;-><init>(Lcom/google/android/youtube/app/ui/cq;Lcom/google/android/youtube/app/ui/ch;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedListView;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 430
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/cq;)Lcom/google/android/youtube/app/a/l;
    .registers 2
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cq;->b:Lcom/google/android/youtube/app/a/l;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/cq;)Lcom/google/android/youtube/core/e;
    .registers 2
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cq;->c:Lcom/google/android/youtube/core/e;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cq;->d:Lcom/google/android/youtube/core/ui/k;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/ch;->e(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/client/ad;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->g(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/k;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 434
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 435
    return-void
.end method

.method public final b()Landroid/app/Dialog;
    .registers 3

    .prologue
    .line 438
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0167

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cq;->e:Lcom/google/android/youtube/core/ui/PagedListView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
