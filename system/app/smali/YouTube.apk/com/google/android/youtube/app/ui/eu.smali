.class final Lcom/google/android/youtube/app/ui/eu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/ep;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/ep;)V
    .registers 2
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/eu;->a:Lcom/google/android/youtube/app/ui/ep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/ep;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/eu;-><init>(Lcom/google/android/youtube/app/ui/ep;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 371
    const-string v0, "Error retrieving user profile"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eu;->a:Lcom/google/android/youtube/app/ui/ep;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ep;->g(Lcom/google/android/youtube/app/ui/ep;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eu;->a:Lcom/google/android/youtube/app/ui/ep;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ep;->g(Lcom/google/android/youtube/app/ui/ep;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eu;->a:Lcom/google/android/youtube/app/ui/ep;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ep;->h(Lcom/google/android/youtube/app/ui/ep;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 371
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v0, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eu;->a:Lcom/google/android/youtube/app/ui/ep;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ep;->e(Lcom/google/android/youtube/app/ui/ep;)Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/eu;->a:Lcom/google/android/youtube/app/ui/ep;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/ep;->c(Lcom/google/android/youtube/app/ui/ep;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/eu;->a:Lcom/google/android/youtube/app/ui/ep;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/ep;->d(Lcom/google/android/youtube/app/ui/ep;)Lcom/google/android/youtube/app/ui/et;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ag;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    :cond_21
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eu;->a:Lcom/google/android/youtube/app/ui/ep;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ep;->f(Lcom/google/android/youtube/app/ui/ep;)Lcom/google/android/youtube/app/ui/SubscribeHelper;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eu;->a:Lcom/google/android/youtube/app/ui/ep;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ep;->f(Lcom/google/android/youtube/app/ui/ep;)Lcom/google/android/youtube/app/ui/SubscribeHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/core/model/UserProfile;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eu;->a:Lcom/google/android/youtube/app/ui/ep;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ep;->g(Lcom/google/android/youtube/app/ui/ep;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eu;->a:Lcom/google/android/youtube/app/ui/ep;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ep;->g(Lcom/google/android/youtube/app/ui/ep;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_44
    return-void
.end method
