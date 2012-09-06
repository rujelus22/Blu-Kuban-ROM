.class final Lcom/google/android/youtube/app/ui/dz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Lcom/google/android/youtube/app/remote/ar;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/dm;

.field private final b:Lcom/google/android/youtube/core/ui/PagedListView;

.field private final c:Lcom/google/android/youtube/app/adapter/bg;

.field private d:Ljava/util/List;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/dm;)V
    .registers 6
    .parameter

    .prologue
    .line 671
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dz;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->d:Ljava/util/List;

    .line 672
    iget-object v0, p1, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/bg;->a(Landroid/app/Activity;)Lcom/google/android/youtube/app/adapter/bg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->c:Lcom/google/android/youtube/app/adapter/bg;

    .line 673
    iget-object v0, p1, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04001c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/PagedListView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->b:Lcom/google/android/youtube/core/ui/PagedListView;

    .line 677
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->b:Lcom/google/android/youtube/core/ui/PagedListView;

    new-instance v1, Lcom/google/android/youtube/app/ui/ea;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/ui/ea;-><init>(Lcom/google/android/youtube/app/ui/dz;Lcom/google/android/youtube/app/ui/dm;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 690
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->b:Lcom/google/android/youtube/core/ui/PagedListView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dz;->c:Lcom/google/android/youtube/app/adapter/bg;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 692
    new-instance v0, Lcom/google/android/youtube/app/ui/eb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/app/ui/eb;-><init>(Lcom/google/android/youtube/app/ui/dz;Lcom/google/android/youtube/app/ui/dm;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->e:Ljava/lang/Runnable;

    .line 697
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/dm;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 663
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/dz;-><init>(Lcom/google/android/youtube/app/ui/dm;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/dz;)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 663
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dz;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0207

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dz;->b:Lcom/google/android/youtube/core/ui/PagedListView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->c:Lcom/google/android/youtube/app/adapter/bg;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dz;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/bg;->a(Ljava/util/List;)V

    .line 735
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->n(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/app/remote/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/at;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->OFFLINE:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-ne v0, v1, :cond_2b

    .line 736
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->c:Lcom/google/android/youtube/app/adapter/bg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/bg;->a(Lcom/google/android/youtube/app/remote/ap;)V

    .line 740
    :goto_20
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->c:Lcom/google/android/youtube/app/adapter/bg;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/adapter/bg;->notifyDataSetChanged()V

    .line 741
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->b:Lcom/google/android/youtube/core/ui/PagedListView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/PagedListView;->a()V

    .line 742
    return-void

    .line 738
    :cond_2b
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->c:Lcom/google/android/youtube/app/adapter/bg;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dz;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/dm;->n(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/app/remote/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/at;->u()Lcom/google/android/youtube/app/remote/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/bg;->a(Lcom/google/android/youtube/app/remote/ap;)V

    goto :goto_20
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/dz;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 663
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/dz;)V
    .registers 1
    .parameter

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/dz;->a()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/youtube/app/remote/ap;)V
    .registers 4
    .parameter

    .prologue
    .line 663
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->m(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/app/remote/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/bd;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dz;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic b(Lcom/google/android/youtube/app/remote/ap;)V
    .registers 4
    .parameter

    .prologue
    .line 663
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->m(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/app/remote/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/bd;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dz;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 709
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->m(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/app/remote/bd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/remote/bd;->b(Lcom/google/android/youtube/app/remote/ar;)V

    .line 710
    return-void
.end method

.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 700
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->m(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/app/remote/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/bd;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->d:Ljava/util/List;

    .line 701
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 702
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->b:Lcom/google/android/youtube/core/ui/PagedListView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/PagedListView;->f()V

    .line 704
    :cond_19
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dz;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->m(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/app/remote/bd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/remote/bd;->a(Lcom/google/android/youtube/app/remote/ar;)V

    .line 705
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/dz;->a()V

    .line 706
    return-void
.end method
