.class Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper$1;
.super Landroid/database/ContentObserver;
.source "LocalDevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 922
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8
    .parameter "selfChange"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 925
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    #calls: Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->refresh()I
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->access$3000(Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;)I

    move-result v2

    .line 926
    .local v2, refreshResult:I
    if-ne v2, v4, :cond_5c

    .line 927
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v3}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I

    move-result v0

    .line 928
    .local v0, listLength:I
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    iget-object v3, v3, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v3}, Lcom/google/android/music/LocalDevicePlayback;->isPlaying()Z

    move-result v1

    .line 929
    .local v1, play:Z
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    iget-object v3, v3, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$1600(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v3

    if-ltz v3, :cond_34

    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    iget-object v3, v3, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$1600(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v3

    if-ge v3, v0, :cond_34

    .line 943
    :goto_2c
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    iget-object v3, v3, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->openCurrentAndNext(ZZZ)V
    invoke-static {v3, v5, v1, v5}, Lcom/google/android/music/LocalDevicePlayback;->access$1500(Lcom/google/android/music/LocalDevicePlayback;ZZZ)V

    .line 950
    .end local v0           #listLength:I
    .end local v1           #play:Z
    :cond_33
    :goto_33
    return-void

    .line 931
    .restart local v0       #listLength:I
    .restart local v1       #play:Z
    :cond_34
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    iget-object v3, v3, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mRepeatMode:I
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$2400(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v3

    if-ne v3, v4, :cond_46

    .line 934
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    iget-object v3, v3, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v3, v5}, Lcom/google/android/music/LocalDevicePlayback;->access$1602(Lcom/google/android/music/LocalDevicePlayback;I)I

    goto :goto_2c

    .line 935
    :cond_46
    if-lez v0, :cond_53

    .line 937
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    iget-object v3, v3, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    add-int/lit8 v4, v0, -0x1

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v3, v4}, Lcom/google/android/music/LocalDevicePlayback;->access$1602(Lcom/google/android/music/LocalDevicePlayback;I)I

    .line 938
    const/4 v1, 0x0

    goto :goto_2c

    .line 940
    :cond_53
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    iget-object v3, v3, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v3, v5}, Lcom/google/android/music/LocalDevicePlayback;->access$1602(Lcom/google/android/music/LocalDevicePlayback;I)I

    .line 941
    const/4 v1, 0x0

    goto :goto_2c

    .line 944
    .end local v0           #listLength:I
    .end local v1           #play:Z
    :cond_5c
    const/4 v3, 0x1

    if-ne v2, v3, :cond_33

    .line 946
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    iget-object v3, v3, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$2800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 947
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    iget-object v3, v3, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iget-object v4, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    iget-object v4, v4, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v4}, Lcom/google/android/music/LocalDevicePlayback;->access$2800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v4

    #calls: Lcom/google/android/music/LocalDevicePlayback;->refreshCursor(Lcom/google/android/music/dl/ContentIdentifier;)Z
    invoke-static {v3, v4}, Lcom/google/android/music/LocalDevicePlayback;->access$2100(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/dl/ContentIdentifier;)Z

    goto :goto_33
.end method
