.class Lcom/google/android/music/athome/AtHomeDevicePlayback$5;
.super Ljava/lang/Object;
.source "AtHomeDevicePlayback.java"

# interfaces
.implements Lcom/google/android/music/athome/api/MusicConnector$OnGetPlayState;


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
    .line 1585
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$5;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPlayState(Lcom/google/android/music/athome/api/AtHomePlayState;)V
    .registers 3
    .parameter "playState"

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$5;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->processPlayStateUpdate(Lcom/google/android/music/athome/api/AtHomePlayState;)V
    invoke-static {v0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$6400(Lcom/google/android/music/athome/AtHomeDevicePlayback;Lcom/google/android/music/athome/api/AtHomePlayState;)V

    .line 1589
    return-void
.end method
