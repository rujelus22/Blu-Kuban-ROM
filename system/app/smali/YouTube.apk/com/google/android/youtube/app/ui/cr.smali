.class final Lcom/google/android/youtube/app/ui/cr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/ch;

.field final synthetic b:Lcom/google/android/youtube/app/ui/cq;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/cq;Lcom/google/android/youtube/app/ui/ch;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/cr;->a:Lcom/google/android/youtube/app/ui/ch;

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
    .line 400
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 401
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cq;->a(Lcom/google/android/youtube/app/ui/cq;)Lcom/google/android/youtube/app/a/l;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/app/a/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist;

    .line 402
    if-nez v0, :cond_9f

    .line 403
    if-nez p3, :cond_43

    .line 404
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->h(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "WatchLater"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->a(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/cu;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    iget-object v3, v3, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-direct {v2, v3}, Lcom/google/android/youtube/app/ui/cu;-><init>(Lcom/google/android/youtube/app/ui/ch;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 428
    :cond_42
    :goto_42
    return-void

    .line 406
    :cond_43
    const/4 v0, 0x1

    if-ne p3, v0, :cond_70

    .line 407
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->k(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/ck;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    iget-object v3, v3, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-direct {v2, v3}, Lcom/google/android/youtube/app/ui/ck;-><init>(Lcom/google/android/youtube/app/ui/ch;)V

    const v3, 0x7f0a014d

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    iget-object v4, v4, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v4}, Lcom/google/android/youtube/app/ui/ch;->j(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/ae;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/youtube/app/ae;->c()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/app/aa;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;IZ)V

    goto :goto_42

    .line 412
    :cond_70
    const/4 v0, 0x2

    if-ne p3, v0, :cond_42

    .line 413
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->k(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/cs;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/cq;->b(Lcom/google/android/youtube/app/ui/cq;)Lcom/google/android/youtube/core/e;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/google/android/youtube/app/ui/cs;-><init>(Lcom/google/android/youtube/app/ui/cr;Lcom/google/android/youtube/core/e;)V

    const v3, 0x7f0a014c

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    iget-object v4, v4, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v4}, Lcom/google/android/youtube/app/ui/ch;->j(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/ae;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/youtube/app/ae;->b()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/app/aa;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;IZ)V

    goto :goto_42

    .line 425
    :cond_9f
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/ch;->h(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    const-string v2, "SaveToPlaylist"

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/ch;->a(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    iget-object v2, v2, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v2, v2, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    new-instance v3, Lcom/google/android/youtube/app/ui/cl;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    iget-object v4, v4, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-direct {v3, v4, v0}, Lcom/google/android/youtube/app/ui/cl;-><init>(Lcom/google/android/youtube/app/ui/ch;Lcom/google/android/youtube/core/model/Playlist;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    goto/16 :goto_42
.end method
