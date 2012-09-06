.class Lcom/google/android/music/athome/AtHomeDevicePlayback$8;
.super Ljava/lang/Object;
.source "AtHomeDevicePlayback.java"

# interfaces
.implements Lcom/google/android/music/athome/api/MusicConnector$OnMoveSong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V
    .registers 2
    .parameter

    .prologue
    .line 1609
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$8;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveSong(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V
    .registers 3
    .parameter "modificationResult"

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$8;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->processModificationResult(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V
    invoke-static {v0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$6500(Lcom/google/android/music/athome/AtHomeDevicePlayback;Lcom/google/android/music/athome/api/AtHomeModificationResult;)V

    .line 1613
    return-void
.end method
