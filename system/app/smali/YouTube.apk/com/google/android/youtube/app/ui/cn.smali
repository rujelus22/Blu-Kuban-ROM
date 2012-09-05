.class final Lcom/google/android/youtube/app/ui/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/ch;

.field final synthetic b:Lcom/google/android/youtube/app/ui/cm;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/cm;Lcom/google/android/youtube/app/ui/ch;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cn;->b:Lcom/google/android/youtube/app/ui/cm;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/cn;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 493
    if-nez p3, :cond_44

    .line 494
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cn;->b:Lcom/google/android/youtube/app/ui/cm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->h(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "RemoteDisconnect"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cn;->b:Lcom/google/android/youtube/app/ui/cm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->l(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/p;->a()V

    .line 496
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cn;->b:Lcom/google/android/youtube/app/ui/cm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->m(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/ui/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/at;->a()V

    .line 497
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cn;->b:Lcom/google/android/youtube/app/ui/cm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->l(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cn;->b:Lcom/google/android/youtube/app/ui/cm;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/ch;->m(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/ui/at;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/p;->c(Lcom/google/android/youtube/app/r;)Z

    .line 507
    :goto_38
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cn;->b:Lcom/google/android/youtube/app/ui/cm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    const/16 v1, 0x3f7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 508
    return-void

    .line 498
    :cond_44
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cn;->b:Lcom/google/android/youtube/app/ui/cm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cm;->c(Lcom/google/android/youtube/app/ui/cm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p3, v0, :cond_9f

    .line 499
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cn;->b:Lcom/google/android/youtube/app/ui/cm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->h(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "RemoteConnect"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cn;->b:Lcom/google/android/youtube/app/ui/cm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->l(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/p;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cn;->b:Lcom/google/android/youtube/app/ui/cm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cm;->c(Lcom/google/android/youtube/app/ui/cm;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/cn;->b:Lcom/google/android/youtube/app/ui/cm;

    iget-object v2, v2, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/ch;->f(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/app/p;->a(Lcom/google/android/a/e/c;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cn;->b:Lcom/google/android/youtube/app/ui/cm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->m(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/ui/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/at;->a()V

    .line 502
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cn;->b:Lcom/google/android/youtube/app/ui/cm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->l(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cn;->b:Lcom/google/android/youtube/app/ui/cm;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/ch;->m(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/ui/at;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/p;->a(Lcom/google/android/youtube/app/r;)Z

    goto :goto_38

    .line 504
    :cond_9f
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cn;->b:Lcom/google/android/youtube/app/ui/cm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->h(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "RemoteAddScreen"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cn;->b:Lcom/google/android/youtube/app/ui/cm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->n(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cn;->b:Lcom/google/android/youtube/app/ui/cm;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/ch;->f(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/o;->c(Ljava/lang/String;)V

    goto/16 :goto_38
.end method
