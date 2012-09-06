.class final Lcom/google/android/music/MusicUserContentBinder$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicUserContentBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicUserContentBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 56
    invoke-static {p1}, Lcom/google/android/music/MusicUserContentBinder;->notifyContentChanged(Landroid/content/Context;)V

    .line 57
    return-void
.end method
