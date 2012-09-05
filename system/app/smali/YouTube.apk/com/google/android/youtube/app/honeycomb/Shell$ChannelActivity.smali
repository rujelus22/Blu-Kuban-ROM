.class public Lcom/google/android/youtube/app/honeycomb/Shell$ChannelActivity;
.super Lcom/google/android/youtube/app/honeycomb/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 94
    const-class v0, Lcom/google/android/youtube/app/honeycomb/tablet/ChannelActivity;

    return-object v0
.end method

.method protected final b()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 89
    const-class v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    return-object v0
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/f;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
