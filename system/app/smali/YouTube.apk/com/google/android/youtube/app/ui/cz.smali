.class final Lcom/google/android/youtube/app/ui/cz;
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
    .line 319
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cz;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/SubscribeHelper;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/cz;-><init>(Lcom/google/android/youtube/app/ui/SubscribeHelper;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 319
    instance-of v0, p2, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_29

    move-object v0, p2

    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_29

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cz;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->i(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    const v1, 0x7f0b0174

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/d;->a(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cz;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cz;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    sget-object v1, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->NOT_SUBSCRIBED:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;)V

    :goto_28
    return-void

    :cond_29
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cz;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->i(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cz;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->h(Lcom/google/android/youtube/app/ui/SubscribeHelper;)V

    goto :goto_28
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cz;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cz;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    sget-object v1, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->NOT_SUBSCRIBED:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;)V

    return-void
.end method
