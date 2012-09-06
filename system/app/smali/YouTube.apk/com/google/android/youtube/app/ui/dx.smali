.class final Lcom/google/android/youtube/app/ui/dx;
.super Lcom/google/android/youtube/core/ui/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/dm;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/dm;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dx;->a:Lcom/google/android/youtube/app/ui/dm;

    .line 394
    invoke-static {p1}, Lcom/google/android/youtube/app/ui/dm;->b(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/e;-><init>(Lcom/google/android/youtube/core/d;)V

    .line 395
    iput-boolean p2, p0, Lcom/google/android/youtube/app/ui/dx;->b:Z

    .line 396
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dx;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->c(Lcom/google/android/youtube/app/ui/dm;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 400
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dx;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dx;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/dm;->c(Lcom/google/android/youtube/app/ui/dm;)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/youtube/app/ui/dx;->b:Z

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/app/ui/dm;->a(Lcom/google/android/youtube/app/ui/dm;Landroid/view/View;Z)V

    .line 401
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dx;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dx;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->d(Lcom/google/android/youtube/app/ui/dm;)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/dx;->b:Z

    if-nez v0, :cond_4a

    const/4 v0, 0x1

    :goto_22
    invoke-static {v1, v2, v0}, Lcom/google/android/youtube/app/ui/dm;->a(Lcom/google/android/youtube/app/ui/dm;Landroid/view/View;Z)V

    .line 403
    :cond_25
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dx;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->e(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    .line 404
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dx;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->e(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dx;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/dm;->f(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/youtube/app/ui/dx;->b:Z

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/dx;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v3, v3, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    invoke-static {v3, p0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/google/android/youtube/core/b/ae;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;ZLcom/google/android/youtube/core/async/l;)V

    .line 405
    return-void

    .line 401
    :cond_4a
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 388
    const-string v0, "Error rating"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dx;->c:Lcom/google/android/youtube/core/d;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dx;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->c(Lcom/google/android/youtube/app/ui/dm;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dx;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dx;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/dm;->c(Lcom/google/android/youtube/app/ui/dm;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/app/ui/dm;->a(Lcom/google/android/youtube/app/ui/dm;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dx;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dx;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/dm;->d(Lcom/google/android/youtube/app/ui/dm;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/app/ui/dm;->a(Lcom/google/android/youtube/app/ui/dm;Landroid/view/View;Z)V

    :cond_29
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 388
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dx;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/dx;->b:Z

    if-eqz v0, :cond_18

    const v0, 0x7f0b01b3

    :goto_9
    invoke-static {v1, v0}, Lcom/google/android/youtube/app/ui/dm;->a(Lcom/google/android/youtube/app/ui/dm;I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dx;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->g(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/app/ui/ep;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/app/ui/dx;->b:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/ep;->a(Z)V

    return-void

    :cond_18
    const v0, 0x7f0b01b4

    goto :goto_9
.end method
