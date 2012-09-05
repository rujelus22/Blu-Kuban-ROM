.class final Lcom/google/android/youtube/app/honeycomb/phone/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/l;->a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/l;->b:Ljava/lang/String;

    .line 358
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 349
    instance-of v0, p2, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_25

    move-object v0, p2

    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/l;->a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    const v1, 0x7f0a0126

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/l;->a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/google/android/youtube/core/utils/Util;->b(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_1e
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/l;->a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;Z)Z

    return-void

    :cond_25
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/l;->a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    const/16 v1, 0x3f9

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/l;->a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->c(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)Lcom/google/android/youtube/core/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/e;->b(Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/l;->a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/l;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->b(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/l;->a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;Z)Z

    return-void
.end method
