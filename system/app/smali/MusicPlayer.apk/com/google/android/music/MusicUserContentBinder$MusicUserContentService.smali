.class public Lcom/google/android/music/MusicUserContentBinder$MusicUserContentService;
.super Landroid/app/Service;
.source "MusicUserContentBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicUserContentBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicUserContentService"
.end annotation


# instance fields
.field private mBinder:Lcom/google/android/music/MusicUserContentBinder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 260
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/music/MusicUserContentBinder$MusicUserContentService;->mBinder:Lcom/google/android/music/MusicUserContentBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 266
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 267
    new-instance v0, Lcom/google/android/music/MusicUserContentBinder;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicUserContentBinder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/music/MusicUserContentBinder$MusicUserContentService;->mBinder:Lcom/google/android/music/MusicUserContentBinder;

    .line 268
    return-void
.end method
