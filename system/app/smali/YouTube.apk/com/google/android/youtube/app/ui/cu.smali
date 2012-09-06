.class final Lcom/google/android/youtube/app/ui/cu;
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
    .line 188
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cu;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/SubscribeHelper;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/cu;-><init>(Lcom/google/android/youtube/app/ui/SubscribeHelper;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cu;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    sget-object v1, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->ERROR:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 188
    check-cast p2, Lcom/google/android/youtube/core/async/Optional;

    invoke-interface {p2}, Lcom/google/android/youtube/core/async/Optional;->get()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cu;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    sget-object v1, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->NOT_SUBSCRIBED:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;)V

    :goto_11
    return-void

    :cond_12
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cu;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->editUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cu;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v1, v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Lcom/google/android/youtube/core/model/Subscription;)Lcom/google/android/youtube/core/model/Subscription;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cu;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    sget-object v1, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->SUBSCRIBED:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;)V

    goto :goto_11
.end method
