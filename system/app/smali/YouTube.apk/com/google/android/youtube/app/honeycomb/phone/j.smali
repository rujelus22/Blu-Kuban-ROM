.class final Lcom/google/android/youtube/app/honeycomb/phone/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/j;->a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/j;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 380
    const-string v0, "Error retrieving user profile"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v0, p2, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_26

    move-object v0, p2

    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/j;->a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->d(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    const v1, 0x7f0b0191

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/d;->a(I)V

    :goto_20
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/j;->a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->finish()V

    return-void

    :cond_26
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/j;->a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->d(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 380
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/j;->a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)Lcom/google/android/youtube/app/ui/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/app/ui/i;->a(Lcom/google/android/youtube/core/model/UserProfile;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/j;->a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)Lcom/google/android/youtube/app/ui/SubscribeHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/core/model/UserProfile;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/j;->a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->c(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)V

    return-void
.end method
