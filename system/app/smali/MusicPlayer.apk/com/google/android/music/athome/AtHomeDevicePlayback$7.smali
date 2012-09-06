.class Lcom/google/android/music/athome/AtHomeDevicePlayback$7;
.super Ljava/lang/Object;
.source "AtHomeDevicePlayback.java"

# interfaces
.implements Lcom/google/android/music/athome/api/MusicConnector$OnRemoveSong;


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
    .line 1601
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$7;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveSong(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V
    .registers 3
    .parameter "modificationResult"

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$7;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->processModificationResult(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V
    invoke-static {v0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$6500(Lcom/google/android/music/athome/AtHomeDevicePlayback;Lcom/google/android/music/athome/api/AtHomeModificationResult;)V

    .line 1605
    return-void
.end method
