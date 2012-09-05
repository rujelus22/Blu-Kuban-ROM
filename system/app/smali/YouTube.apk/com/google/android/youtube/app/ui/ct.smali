.class final Lcom/google/android/youtube/app/ui/ct;
.super Lcom/google/android/youtube/core/ui/f;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/ch;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/ch;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/ch;

    .line 281
    invoke-static {p1}, Lcom/google/android/youtube/app/ui/ch;->b(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/f;-><init>(Lcom/google/android/youtube/core/e;)V

    .line 282
    iput-boolean p2, p0, Lcom/google/android/youtube/app/ui/ct;->b:Z

    .line 283
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->c(Lcom/google/android/youtube/app/ui/ch;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 287
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/ch;->c(Lcom/google/android/youtube/app/ui/ch;)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/youtube/app/ui/ct;->b:Z

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/app/ui/ch;->a(Lcom/google/android/youtube/app/ui/ch;Landroid/view/View;Z)V

    .line 288
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->d(Lcom/google/android/youtube/app/ui/ch;)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/ct;->b:Z

    if-nez v0, :cond_4a

    const/4 v0, 0x1

    :goto_22
    invoke-static {v1, v2, v0}, Lcom/google/android/youtube/app/ui/ch;->a(Lcom/google/android/youtube/app/ui/ch;Landroid/view/View;Z)V

    .line 290
    :cond_25
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->e(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    .line 291
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->e(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/ch;->f(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/youtube/app/ui/ct;->b:Z

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v3, v3, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    invoke-static {v3, p0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/google/android/youtube/core/client/ad;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;ZLcom/google/android/youtube/core/async/g;)V

    .line 292
    return-void

    .line 288
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

    .line 275
    const-string v0, "Error rating"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ct;->c:Lcom/google/android/youtube/core/e;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/e;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->c(Lcom/google/android/youtube/app/ui/ch;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/ch;->c(Lcom/google/android/youtube/app/ui/ch;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/app/ui/ch;->a(Lcom/google/android/youtube/app/ui/ch;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/ch;->d(Lcom/google/android/youtube/app/ui/ch;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/app/ui/ch;->a(Lcom/google/android/youtube/app/ui/ch;Landroid/view/View;Z)V

    :cond_29
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 275
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/ct;->b:Z

    if-eqz v0, :cond_18

    const v0, 0x7f0a015e

    :goto_9
    invoke-static {v1, v0}, Lcom/google/android/youtube/app/ui/ch;->a(Lcom/google/android/youtube/app/ui/ch;I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->g(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/ui/dh;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/app/ui/ct;->b:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/dh;->a(Z)V

    return-void

    :cond_18
    const v0, 0x7f0a015f

    goto :goto_9
.end method
