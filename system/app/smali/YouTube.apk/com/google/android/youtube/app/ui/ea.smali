.class final Lcom/google/android/youtube/app/ui/ea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/dm;

.field final synthetic b:Lcom/google/android/youtube/app/ui/dz;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/dz;Lcom/google/android/youtube/app/ui/dm;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 677
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ea;->b:Lcom/google/android/youtube/app/ui/dz;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/ea;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 680
    if-nez p3, :cond_15

    .line 681
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ea;->b:Lcom/google/android/youtube/app/ui/dz;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/dz;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->l(Lcom/google/android/youtube/app/ui/dm;)V

    .line 686
    :cond_9
    :goto_9
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ea;->b:Lcom/google/android/youtube/app/ui/dz;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/dz;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    const/16 v1, 0x3f7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 687
    return-void

    .line 682
    :cond_15
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ea;->b:Lcom/google/android/youtube/app/ui/dz;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dz;->b(Lcom/google/android/youtube/app/ui/dz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p3, v0, :cond_9

    .line 683
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ea;->b:Lcom/google/android/youtube/app/ui/dz;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dz;->b(Lcom/google/android/youtube/app/ui/dz;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/bb;

    .line 684
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ea;->b:Lcom/google/android/youtube/app/ui/dz;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/dz;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v1, v0}, Lcom/google/android/youtube/app/ui/dm;->a(Lcom/google/android/youtube/app/ui/dm;Lcom/google/android/youtube/app/remote/bb;)V

    goto :goto_9
.end method
