.class public Lcom/google/android/youtube/app/honeycomb/Shell$HomeActivity;
.super Lcom/google/android/youtube/app/honeycomb/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 66
    const-class v0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;

    return-object v0
.end method

.method protected final b()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 61
    const-class v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;

    return-object v0
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/f;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method