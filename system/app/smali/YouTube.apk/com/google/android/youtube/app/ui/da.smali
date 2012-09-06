.class final Lcom/google/android/youtube/app/ui/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/SubscribeHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/SubscribeHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/da;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/SubscribeHelper;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/da;-><init>(Lcom/google/android/youtube/app/ui/SubscribeHelper;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->i(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->h(Lcom/google/android/youtube/app/ui/SubscribeHelper;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 294
    check-cast p2, Lcom/google/android/youtube/core/async/Optional;

    invoke-interface {p2}, Lcom/google/android/youtube/core/async/Optional;->get()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription;

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->i(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    const v1, 0x7f0b0174

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/d;->a(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    sget-object v1, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->NOT_SUBSCRIBED:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;)V

    :goto_23
    return-void

    :cond_24
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/da;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->editUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/da;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v1, v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Lcom/google/android/youtube/core/model/Subscription;)Lcom/google/android/youtube/core/model/Subscription;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->c(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/da;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->j(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/da;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->k(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/da;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->g(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/google/android/youtube/app/ui/cz;

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/da;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/android/youtube/app/ui/cz;-><init>(Lcom/google/android/youtube/app/ui/SubscribeHelper;B)V

    invoke-static {v3, v4}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/ae;->g(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_23
.end method
