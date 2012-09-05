.class final Lcom/google/android/youtube/app/honeycomb/phone/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 379
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/honeycomb/phone/m;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/m;->a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/m;->a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->c(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)Lcom/google/android/youtube/core/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/e;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/m;->a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;Z)Z

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/m;->a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    const v1, 0x7f0a0127

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/m;->a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/m;->a:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;Z)Z

    return-void
.end method
