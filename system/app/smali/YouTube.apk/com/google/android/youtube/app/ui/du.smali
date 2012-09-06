.class final Lcom/google/android/youtube/app/ui/du;
.super Lcom/google/android/youtube/core/ui/e;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/dm;

.field private final b:Lcom/google/android/youtube/app/adapter/as;

.field private final d:Lcom/google/android/youtube/core/ui/j;

.field private final e:Lcom/google/android/youtube/core/ui/PagedListView;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/dm;)V
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 574
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/du;->a:Lcom/google/android/youtube/app/ui/dm;

    .line 575
    invoke-static {p1}, Lcom/google/android/youtube/app/ui/dm;->b(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/e;-><init>(Lcom/google/android/youtube/core/d;)V

    .line 577
    new-instance v0, Lcom/google/android/youtube/app/adapter/aj;

    iget-object v1, p1, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    const v2, 0x7f04005b

    const/4 v3, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/android/youtube/app/adapter/aj;-><init>(Landroid/content/Context;Lcom/google/android/youtube/app/ui/ToolbarHelper;IZ)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/du;->b:Lcom/google/android/youtube/app/adapter/as;

    .line 579
    iget-object v0, p1, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/PagedListView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/du;->e:Lcom/google/android/youtube/core/ui/PagedListView;

    .line 581
    new-instance v0, Lcom/google/android/youtube/core/ui/j;

    iget-object v1, p1, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/du;->e:Lcom/google/android/youtube/core/ui/PagedListView;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/du;->b:Lcom/google/android/youtube/app/adapter/as;

    invoke-static {p1}, Lcom/google/android/youtube/app/ui/dm;->i(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/async/ar;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/du;->c:Lcom/google/android/youtube/core/d;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/ui/j;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/du;->d:Lcom/google/android/youtube/core/ui/j;

    .line 588
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/du;->e:Lcom/google/android/youtube/core/ui/PagedListView;

    new-instance v1, Lcom/google/android/youtube/app/ui/dv;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/ui/dv;-><init>(Lcom/google/android/youtube/app/ui/du;Lcom/google/android/youtube/app/ui/dm;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 621
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/du;)Lcom/google/android/youtube/app/adapter/as;
    .registers 2
    .parameter

    .prologue
    .line 568
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/du;->b:Lcom/google/android/youtube/app/adapter/as;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/du;)Lcom/google/android/youtube/core/d;
    .registers 2
    .parameter

    .prologue
    .line 568
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/du;->c:Lcom/google/android/youtube/core/d;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/du;->d:Lcom/google/android/youtube/core/ui/j;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/du;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/dm;->e(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->h(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/j;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 625
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/du;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 626
    return-void
.end method

.method public final b()Landroid/app/Dialog;
    .registers 3

    .prologue
    .line 629
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/du;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01c1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/du;->e:Lcom/google/android/youtube/core/ui/PagedListView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
