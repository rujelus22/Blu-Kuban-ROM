.class final Lcom/google/android/youtube/app/ui/dv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/dm;

.field final synthetic b:Lcom/google/android/youtube/app/ui/du;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/du;Lcom/google/android/youtube/app/ui/dm;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 589
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dv;->b:Lcom/google/android/youtube/app/ui/du;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/dv;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dv;->b:Lcom/google/android/youtube/app/ui/du;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/du;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 592
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dv;->b:Lcom/google/android/youtube/app/ui/du;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/du;->a(Lcom/google/android/youtube/app/ui/du;)Lcom/google/android/youtube/app/adapter/as;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/app/adapter/as;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist;

    .line 593
    if-nez v0, :cond_9f

    .line 594
    if-nez p3, :cond_43

    .line 595
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dv;->b:Lcom/google/android/youtube/app/ui/du;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/du;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->h(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "WatchLater"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dv;->b:Lcom/google/android/youtube/app/ui/du;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/du;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->a(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dv;->b:Lcom/google/android/youtube/app/ui/du;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/du;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/dy;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/dv;->b:Lcom/google/android/youtube/app/ui/du;

    iget-object v3, v3, Lcom/google/android/youtube/app/ui/du;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-direct {v2, v3}, Lcom/google/android/youtube/app/ui/dy;-><init>(Lcom/google/android/youtube/app/ui/dm;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    .line 619
    :cond_42
    :goto_42
    return-void

    .line 597
    :cond_43
    const/4 v0, 0x1

    if-ne p3, v0, :cond_70

    .line 598
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dv;->b:Lcom/google/android/youtube/app/ui/du;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/du;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->k(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/app/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dv;->b:Lcom/google/android/youtube/app/ui/du;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/du;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/dp;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/dv;->b:Lcom/google/android/youtube/app/ui/du;

    iget-object v3, v3, Lcom/google/android/youtube/app/ui/du;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-direct {v2, v3}, Lcom/google/android/youtube/app/ui/dp;-><init>(Lcom/google/android/youtube/app/ui/dm;)V

    const v3, 0x7f0b019b

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/dv;->b:Lcom/google/android/youtube/app/ui/du;

    iget-object v4, v4, Lcom/google/android/youtube/app/ui/du;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v4}, Lcom/google/android/youtube/app/ui/dm;->j(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/app/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/youtube/app/k;->c()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/app/g;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;IZ)V

    goto :goto_42

    .line 603
    :cond_70
    const/4 v0, 0x2

    if-ne p3, v0, :cond_42

    .line 604
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dv;->b:Lcom/google/android/youtube/app/ui/du;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/du;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->k(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/app/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dv;->b:Lcom/google/android/youtube/app/ui/du;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/du;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/dw;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/dv;->b:Lcom/google/android/youtube/app/ui/du;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/du;->b(Lcom/google/android/youtube/app/ui/du;)Lcom/google/android/youtube/core/d;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/google/android/youtube/app/ui/dw;-><init>(Lcom/google/android/youtube/app/ui/dv;Lcom/google/android/youtube/core/d;)V

    const v3, 0x7f0b019a

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/dv;->b:Lcom/google/android/youtube/app/ui/du;

    iget-object v4, v4, Lcom/google/android/youtube/app/ui/du;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v4}, Lcom/google/android/youtube/app/ui/dm;->j(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/app/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/youtube/app/k;->b()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/app/g;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;IZ)V

    goto :goto_42

    .line 616
    :cond_9f
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dv;->b:Lcom/google/android/youtube/app/ui/du;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/du;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/dm;->h(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    const-string v2, "SaveToPlaylist"

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 617
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dv;->b:Lcom/google/android/youtube/app/ui/du;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/du;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/dm;->a(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dv;->b:Lcom/google/android/youtube/app/ui/du;

    iget-object v2, v2, Lcom/google/android/youtube/app/ui/du;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v2, v2, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    new-instance v3, Lcom/google/android/youtube/app/ui/dr;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/dv;->b:Lcom/google/android/youtube/app/ui/du;

    iget-object v4, v4, Lcom/google/android/youtube/app/ui/du;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-direct {v3, v4, v0}, Lcom/google/android/youtube/app/ui/dr;-><init>(Lcom/google/android/youtube/app/ui/dm;Lcom/google/android/youtube/core/model/Playlist;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    goto/16 :goto_42
.end method
