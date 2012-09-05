.class public Lcom/samsung/avrcp/AvrcpService;
.super Landroid/app/Service;
.source "AvrcpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;
    }
.end annotation


# instance fields
.field private final AVRCP_REPEAT_ALL:I

.field private final AVRCP_REPEAT_CURRENT:I

.field private final AVRCP_REPEAT_NONE:I

.field private final AVRCP_SHUFFLE_AUTO:I

.field private final AVRCP_SHUFFLE_NONE:I

.field private final AVRCP_SHUFFLE_NORMAL:I

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private db1:Landroid/database/sqlite/SQLiteDatabase;

.field private mAction:Ljava/lang/String;

.field private mActualTrack:J

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mAudioId:J

.field private mDuration:J

.field private mElementAttrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/ElementAttributeParcel;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPlaying:Z

.field private mMediaMountedCount:I

.field private mMediaNumber:I

.field private mPlayStatus:B

.field private mPlayerSettings:Landroid/os/PlayerSettingsParcel;

.field private mPosition:J

.field private mPrevPlayStatus:B

.field private mRepeatMode:I

.field private mRepeatVal:B

.field public mRepeatValue:I

.field private mShuffleMode:I

.field private mShuffleVal:B

.field public mShuffleValue:I

.field private mTrackName:Ljava/lang/String;

.field private proxy:Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;

.field private sdb:Lcom/samsung/avrcp/AudioDBHelper;


# direct methods
.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    iput-byte v1, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    .line 74
    iput-byte v6, p0, Lcom/samsung/avrcp/AvrcpService;->mPrevPlayStatus:B

    .line 77
    iput-wide v4, p0, Lcom/samsung/avrcp/AvrcpService;->mActualTrack:J

    .line 83
    iput-byte v3, p0, Lcom/samsung/avrcp/AvrcpService;->mRepeatVal:B

    .line 84
    iput-byte v3, p0, Lcom/samsung/avrcp/AvrcpService;->mShuffleVal:B

    .line 94
    iput v1, p0, Lcom/samsung/avrcp/AvrcpService;->AVRCP_SHUFFLE_NONE:I

    .line 95
    iput v3, p0, Lcom/samsung/avrcp/AvrcpService;->AVRCP_SHUFFLE_NORMAL:I

    .line 96
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/avrcp/AvrcpService;->AVRCP_SHUFFLE_AUTO:I

    .line 97
    iput v1, p0, Lcom/samsung/avrcp/AvrcpService;->AVRCP_REPEAT_NONE:I

    .line 98
    iput v3, p0, Lcom/samsung/avrcp/AvrcpService;->AVRCP_REPEAT_CURRENT:I

    .line 99
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/avrcp/AvrcpService;->AVRCP_REPEAT_ALL:I

    .line 102
    iput-object v2, p0, Lcom/samsung/avrcp/AvrcpService;->mAction:Ljava/lang/String;

    .line 103
    iput-object v2, p0, Lcom/samsung/avrcp/AvrcpService;->mArtistName:Ljava/lang/String;

    .line 104
    iput-object v2, p0, Lcom/samsung/avrcp/AvrcpService;->mTrackName:Ljava/lang/String;

    .line 105
    iput-object v2, p0, Lcom/samsung/avrcp/AvrcpService;->mAlbumName:Ljava/lang/String;

    .line 106
    iput-boolean v1, p0, Lcom/samsung/avrcp/AvrcpService;->mIsPlaying:Z

    .line 107
    iput-wide v4, p0, Lcom/samsung/avrcp/AvrcpService;->mDuration:J

    .line 108
    iput-wide v4, p0, Lcom/samsung/avrcp/AvrcpService;->mPosition:J

    .line 109
    iput v1, p0, Lcom/samsung/avrcp/AvrcpService;->mShuffleMode:I

    .line 110
    iput-wide v4, p0, Lcom/samsung/avrcp/AvrcpService;->mAudioId:J

    .line 111
    iput v1, p0, Lcom/samsung/avrcp/AvrcpService;->mRepeatMode:I

    .line 112
    iput v1, p0, Lcom/samsung/avrcp/AvrcpService;->mMediaNumber:I

    .line 113
    iput v1, p0, Lcom/samsung/avrcp/AvrcpService;->mMediaMountedCount:I

    .line 114
    iput-object v2, p0, Lcom/samsung/avrcp/AvrcpService;->sdb:Lcom/samsung/avrcp/AudioDBHelper;

    .line 115
    iput-object v2, p0, Lcom/samsung/avrcp/AvrcpService;->db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v2, p0, Lcom/samsung/avrcp/AvrcpService;->db1:Landroid/database/sqlite/SQLiteDatabase;

    .line 117
    iput-object v2, p0, Lcom/samsung/avrcp/AvrcpService;->proxy:Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;

    .line 119
    iput v6, p0, Lcom/samsung/avrcp/AvrcpService;->mShuffleValue:I

    .line 120
    iput v6, p0, Lcom/samsung/avrcp/AvrcpService;->mRepeatValue:I

    .line 134
    const-string v0, "AvrcpService() constructor call"

    invoke-static {v0}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-static {p0}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/avrcp/AvrcpService;)Landroid/os/PlayStatusParcel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/samsung/avrcp/AvrcpService;->getPlayStatus()Landroid/os/PlayStatusParcel;

    move-result-object v0

    return-object v0
.end method

.method private checkValue(I)I
    .registers 2
    .parameter "in"

    .prologue
    .line 916
    if-gez p1, :cond_3

    const/4 p1, 0x0

    .line 917
    .end local p1
    :cond_3
    return p1
.end method

.method private getAudioId()J
    .registers 3

    .prologue
    .line 832
    iget-wide v0, p0, Lcom/samsung/avrcp/AvrcpService;->mAudioId:J

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/samsung/avrcp/AvrcpService;->checkValue(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private getMediaNumber()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 905
    iget v0, p0, Lcom/samsung/avrcp/AvrcpService;->mMediaNumber:I

    invoke-direct {p0, v0}, Lcom/samsung/avrcp/AvrcpService;->checkValue(I)I

    move-result v0

    return v0
.end method

.method private getMediaTotal()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 909
    iget v2, p0, Lcom/samsung/avrcp/AvrcpService;->mMediaMountedCount:I

    invoke-direct {p0, v2}, Lcom/samsung/avrcp/AvrcpService;->checkValue(I)I

    move-result v1

    .line 910
    .local v1, total:I
    invoke-direct {p0}, Lcom/samsung/avrcp/AvrcpService;->getMediaNumber()I

    move-result v0

    .line 911
    .local v0, num:I
    if-ge v1, v0, :cond_d

    move v1, v0

    .line 912
    :cond_d
    return v1
.end method

.method private getPlayStatus()Landroid/os/PlayStatusParcel;
    .registers 7

    .prologue
    .line 727
    const/4 v2, 0x0

    .line 728
    .local v2, status:Landroid/os/PlayStatusParcel;
    const/4 v1, -0x1

    .line 730
    .local v1, playPosNotSupported:I
    :try_start_2
    new-instance v3, Landroid/os/PlayStatusParcel;

    invoke-direct {p0}, Lcom/samsung/avrcp/AvrcpService;->getTrackLength()J

    move-result-wide v4

    long-to-int v4, v4

    iget-byte v5, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    invoke-direct {v3, v4, v1, v5}, Landroid/os/PlayStatusParcel;-><init>(IIB)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_10

    .end local v2           #status:Landroid/os/PlayStatusParcel;
    .local v3, status:Landroid/os/PlayStatusParcel;
    move-object v2, v3

    .line 735
    .end local v3           #status:Landroid/os/PlayStatusParcel;
    .restart local v2       #status:Landroid/os/PlayStatusParcel;
    :goto_f
    return-object v2

    .line 732
    :catch_10
    move-exception v0

    .line 733
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method private getRepeatMode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 870
    iget v0, p0, Lcom/samsung/avrcp/AvrcpService;->mRepeatMode:I

    .line 871
    .local v0, val:I
    packed-switch v0, :pswitch_data_c

    .line 874
    const/4 v0, 0x1

    .line 883
    :goto_6
    return v0

    .line 877
    :pswitch_7
    const/4 v0, 0x2

    .line 878
    goto :goto_6

    .line 880
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_6

    .line 871
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method private getShuffleMode()I
    .registers 2

    .prologue
    .line 836
    iget v0, p0, Lcom/samsung/avrcp/AvrcpService;->mShuffleMode:I

    .line 837
    .local v0, val:I
    packed-switch v0, :pswitch_data_c

    .line 840
    const/4 v0, 0x1

    .line 849
    :goto_6
    return v0

    .line 843
    :pswitch_7
    const/4 v0, 0x2

    .line 844
    goto :goto_6

    .line 846
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_6

    .line 837
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method private getTrackLength()J
    .registers 3

    .prologue
    .line 824
    iget-wide v0, p0, Lcom/samsung/avrcp/AvrcpService;->mDuration:J

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/samsung/avrcp/AvrcpService;->checkValue(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private handleAction(Landroid/content/Intent;)V
    .registers 13
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 533
    const-string v5, "handleAction entered"

    invoke-static {v5}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 534
    const-string v5, "AvrcpService"

    const-string v6, "from"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 670
    :cond_17
    :goto_17
    return-void

    .line 538
    :cond_18
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, action:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleAction action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 540
    if-eqz v0, :cond_17

    .line 541
    const-string v5, "handleAction action is not null"

    invoke-static {v5}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 543
    const-string v5, "com.android.music.playbackcomplete"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 544
    iget-byte v5, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    if-eq v5, v8, :cond_17

    .line 550
    const-string v5, "Music Playback has completed!"

    invoke-static {v5}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 551
    invoke-direct {p0, p1}, Lcom/samsung/avrcp/AvrcpService;->populateElementList(Landroid/content/Intent;)V

    .line 553
    const/4 v5, 0x0

    :try_start_4e
    iput-byte v5, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    .line 554
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handling action for com.android.music.playbackcomplete mPlayStatus ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 555
    iget-object v5, p0, Lcom/samsung/avrcp/AvrcpService;->proxy:Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;

    iget-byte v6, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    invoke-virtual {v5, v6}, Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;->playbackStatusChangeEvent(B)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_6f} :catch_70

    goto :goto_17

    .line 556
    :catch_70
    move-exception v1

    .line 557
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17

    .line 560
    .end local v1           #e:Ljava/lang/Exception;
    :cond_75
    const-string v5, "com.android.music.metachanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 561
    const-string v5, "Music meta data has changed!"

    invoke-static {v5}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 563
    invoke-direct {p0, p1}, Lcom/samsung/avrcp/AvrcpService;->populateElementList(Landroid/content/Intent;)V

    .line 565
    :try_start_85
    invoke-direct {p0}, Lcom/samsung/avrcp/AvrcpService;->getAudioId()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/avrcp/AvrcpService;->mActualTrack:J

    .line 566
    iget-object v5, p0, Lcom/samsung/avrcp/AvrcpService;->proxy:Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;

    iget-wide v6, p0, Lcom/samsung/avrcp/AvrcpService;->mActualTrack:J

    invoke-virtual {v5, v6, v7}, Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;->trackChangeEvent(J)V

    .line 568
    iget-byte v5, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    if-nez v5, :cond_17

    .line 569
    invoke-direct {p0}, Lcom/samsung/avrcp/AvrcpService;->playStatus()Z

    move-result v5

    if-ne v5, v8, :cond_cb

    .line 570
    const-string v5, "com.android.music.metachanged , playstatus = PLAY_STATUS_PLAYING"

    invoke-static {v5}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 571
    const/4 v5, 0x1

    iput-byte v5, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    .line 576
    :goto_a4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "metachanged calling playbackStatusChangeEvent with mPlayStatus"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 577
    iget-object v5, p0, Lcom/samsung/avrcp/AvrcpService;->proxy:Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;

    iget-byte v6, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    invoke-virtual {v5, v6}, Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;->playbackStatusChangeEvent(B)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_c3} :catch_c5

    goto/16 :goto_17

    .line 579
    :catch_c5
    move-exception v1

    .line 580
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_17

    .line 573
    .end local v1           #e:Ljava/lang/Exception;
    :cond_cb
    :try_start_cb
    const-string v5, "com.android.music.metachanged , playstatus = PLAY_STATUS_PAUSED"

    invoke-static {v5}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 574
    const/4 v5, 0x2

    iput-byte v5, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d3} :catch_c5

    goto :goto_a4

    .line 582
    :cond_d4
    const-string v5, "com.android.music.playstatechanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_133

    .line 583
    const-string v5, "Play status has changed!"

    invoke-static {v5}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 584
    invoke-direct {p0, p1}, Lcom/samsung/avrcp/AvrcpService;->populateElementList(Landroid/content/Intent;)V

    .line 586
    :try_start_e4
    iget-byte v5, p0, Lcom/samsung/avrcp/AvrcpService;->mPrevPlayStatus:B

    if-eq v5, v9, :cond_11b

    .line 587
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.android.music.playstatechanged, mPlayStatus ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mPrevPlayStatus ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lcom/samsung/avrcp/AvrcpService;->mPrevPlayStatus:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 596
    :goto_10c
    iget-object v5, p0, Lcom/samsung/avrcp/AvrcpService;->proxy:Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;

    iget-byte v6, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    invoke-virtual {v5, v6}, Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;->playbackStatusChangeEvent(B)V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_113} :catch_115

    goto/16 :goto_17

    .line 597
    :catch_115
    move-exception v1

    .line 598
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_17

    .line 589
    .end local v1           #e:Ljava/lang/Exception;
    :cond_11b
    :try_start_11b
    invoke-direct {p0}, Lcom/samsung/avrcp/AvrcpService;->playStatus()Z

    move-result v5

    if-ne v5, v8, :cond_12a

    .line 590
    const-string v5, "com.android.music.playstatechanged, playstatus = PLAY_STATUS_PLAYING"

    invoke-static {v5}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 591
    const/4 v5, 0x1

    iput-byte v5, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    goto :goto_10c

    .line 593
    :cond_12a
    const-string v5, "com.android.music.playstatechanged, playstatus = PLAY_STATUS_PAUSED"

    invoke-static {v5}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 594
    const/4 v5, 0x2

    iput-byte v5, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_132} :catch_115

    goto :goto_10c

    .line 600
    :cond_133
    const-string v5, "com.android.music.queuechanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_145

    .line 601
    invoke-direct {p0, p1}, Lcom/samsung/avrcp/AvrcpService;->populateElementList(Landroid/content/Intent;)V

    .line 602
    const-string v5, "Play queue has changed!"

    invoke-static {v5}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 603
    :cond_145
    const-string v5, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_189

    .line 605
    const-string v5, "a2dp.profile.action.PLAYING_STATE_CHANGED!"

    invoke-static {v5}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 606
    const-string v5, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 607
    .local v4, state:I
    const-string v5, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 608
    .local v3, prevstate:I
    const/4 v2, 0x1

    .line 610
    .local v2, isChanged:Z
    if-eq v4, v3, :cond_17

    .line 611
    const/16 v5, 0xa

    if-ne v4, v5, :cond_17f

    .line 612
    :try_start_165
    iget-byte v5, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    if-ne v5, v8, :cond_17b

    .line 613
    const/4 v2, 0x0

    .line 625
    :goto_16a
    if-eqz v2, :cond_17

    .line 626
    iget-object v5, p0, Lcom/samsung/avrcp/AvrcpService;->proxy:Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;

    iget-byte v6, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    invoke-virtual {v5, v6}, Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;->playbackStatusChangeEvent(B)V
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_173} :catch_175

    goto/16 :goto_17

    .line 629
    :catch_175
    move-exception v1

    .line 630
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_17

    .line 615
    .end local v1           #e:Ljava/lang/Exception;
    :cond_17b
    const/4 v5, 0x1

    :try_start_17c
    iput-byte v5, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    goto :goto_16a

    .line 618
    :cond_17f
    iget-byte v5, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    if-ne v5, v7, :cond_185

    .line 619
    const/4 v2, 0x0

    goto :goto_16a

    .line 621
    :cond_185
    const/4 v5, 0x2

    iput-byte v5, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_188} :catch_175

    goto :goto_16a

    .line 632
    .end local v2           #isChanged:Z
    .end local v3           #prevstate:I
    .end local v4           #state:I
    :cond_189
    const-string v5, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1bd

    .line 633
    const-string v5, "Recevied BluetoothA2dp.ACTION_CONNECTION_STATE_CHANGED"

    invoke-static {v5}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 634
    const-string v5, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p1, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 635
    .restart local v4       #state:I
    const-string v5, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 636
    .restart local v3       #prevstate:I
    if-eq v4, v3, :cond_17

    .line 637
    const/4 v5, 0x3

    if-ne v4, v5, :cond_17

    .line 639
    :try_start_1a7
    iget-byte v5, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    if-ne v5, v8, :cond_17

    .line 640
    const/4 v5, 0x2

    iput-byte v5, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    .line 641
    iget-object v5, p0, Lcom/samsung/avrcp/AvrcpService;->proxy:Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;

    iget-byte v6, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    invoke-virtual {v5, v6}, Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;->playbackStatusChangeEvent(B)V
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_1a7 .. :try_end_1b5} :catch_1b7

    goto/16 :goto_17

    .line 643
    :catch_1b7
    move-exception v1

    .line 644
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_17

    .line 648
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #prevstate:I
    .end local v4           #state:I
    :cond_1bd
    const-string v5, "com.android.music.settingchanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e9

    .line 649
    const-string v5, "handleAction action=SETTING_CHANGED"

    invoke-static {v5}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 650
    const-string v5, "Music Setting changed"

    invoke-static {v5}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 651
    invoke-direct {p0, p1}, Lcom/samsung/avrcp/AvrcpService;->populateElementList(Landroid/content/Intent;)V

    .line 653
    :try_start_1d2
    iget-object v5, p0, Lcom/samsung/avrcp/AvrcpService;->proxy:Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;

    invoke-direct {p0}, Lcom/samsung/avrcp/AvrcpService;->getShuffleMode()I

    move-result v6

    int-to-byte v6, v6

    invoke-direct {p0}, Lcom/samsung/avrcp/AvrcpService;->getRepeatMode()I

    move-result v7

    int-to-byte v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;->applicationSettingsChangeEvent(BB)V
    :try_end_1e1
    .catch Landroid/os/RemoteException; {:try_start_1d2 .. :try_end_1e1} :catch_1e3

    goto/16 :goto_17

    .line 654
    :catch_1e3
    move-exception v1

    .line 655
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_17

    .line 657
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1e9
    const-string v5, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 658
    const-string v5, "handleAction action=SEEK_CHANGED"

    invoke-static {v5}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 659
    const-string v5, "musicservicecommand"

    invoke-static {v5}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 660
    invoke-direct {p0, p1}, Lcom/samsung/avrcp/AvrcpService;->populateElementList(Landroid/content/Intent;)V

    .line 662
    :try_start_1fe
    const-string v5, "handleAction calling playbackStatusChangeEvent"

    invoke-static {v5}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 663
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PlaybackStatusChanged = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 664
    iget-object v5, p0, Lcom/samsung/avrcp/AvrcpService;->proxy:Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;

    iget-byte v6, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    invoke-virtual {v5, v6}, Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;->playbackStatusChangeEvent(B)V
    :try_end_222
    .catch Ljava/lang/Exception; {:try_start_1fe .. :try_end_222} :catch_224

    goto/16 :goto_17

    .line 665
    :catch_224
    move-exception v1

    .line 666
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_17
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 138
    const-string v0, "AvrcpService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method private playStatus()Z
    .registers 2

    .prologue
    .line 808
    iget-boolean v0, p0, Lcom/samsung/avrcp/AvrcpService;->mIsPlaying:Z

    return v0
.end method

.method private populateElementList(Landroid/content/Intent;)V
    .registers 18
    .parameter "intent"

    .prologue
    .line 248
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13}, Ljava/lang/String;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/avrcp/AvrcpService;->mArtistName:Ljava/lang/String;

    .line 249
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13}, Ljava/lang/String;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/avrcp/AvrcpService;->mTrackName:Ljava/lang/String;

    .line 250
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13}, Ljava/lang/String;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/avrcp/AvrcpService;->mAlbumName:Ljava/lang/String;

    .line 254
    if-nez p1, :cond_115

    .line 255
    :try_start_1d
    const-string v13, "populateElementList"

    const-string v14, "Intent is null"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_152

    .line 310
    :goto_24
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/avrcp/AvrcpService;->mElementAttrList:Ljava/util/ArrayList;

    .line 312
    new-instance v3, Landroid/os/ElementAttributeParcel;

    invoke-direct {v3}, Landroid/os/ElementAttributeParcel;-><init>()V

    .line 313
    .local v3, artist:Landroid/os/ElementAttributeParcel;
    const/4 v13, 0x2

    iput v13, v3, Landroid/os/ElementAttributeParcel;->mAttr:I

    .line 314
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/avrcp/AvrcpService;->mArtistName:Ljava/lang/String;

    if-eqz v13, :cond_2e5

    .line 315
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/avrcp/AvrcpService;->mArtistName:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    int-to-short v13, v13

    iput-short v13, v3, Landroid/os/ElementAttributeParcel;->mLen:S

    .line 316
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/avrcp/AvrcpService;->mArtistName:Ljava/lang/String;

    iput-object v13, v3, Landroid/os/ElementAttributeParcel;->mValue:Ljava/lang/String;

    .line 320
    :goto_4d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/avrcp/AvrcpService;->mElementAttrList:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    new-instance v11, Landroid/os/ElementAttributeParcel;

    invoke-direct {v11}, Landroid/os/ElementAttributeParcel;-><init>()V

    .line 323
    .local v11, track:Landroid/os/ElementAttributeParcel;
    const/4 v13, 0x1

    iput v13, v11, Landroid/os/ElementAttributeParcel;->mAttr:I

    .line 324
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/avrcp/AvrcpService;->mTrackName:Ljava/lang/String;

    if-eqz v13, :cond_2ea

    .line 325
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/avrcp/AvrcpService;->mTrackName:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    int-to-short v13, v13

    iput-short v13, v11, Landroid/os/ElementAttributeParcel;->mLen:S

    .line 326
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/avrcp/AvrcpService;->mTrackName:Ljava/lang/String;

    iput-object v13, v11, Landroid/os/ElementAttributeParcel;->mValue:Ljava/lang/String;

    .line 330
    :goto_74
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/avrcp/AvrcpService;->mElementAttrList:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v2, Landroid/os/ElementAttributeParcel;

    invoke-direct {v2}, Landroid/os/ElementAttributeParcel;-><init>()V

    .line 333
    .local v2, album:Landroid/os/ElementAttributeParcel;
    const/4 v13, 0x3

    iput v13, v2, Landroid/os/ElementAttributeParcel;->mAttr:I

    .line 334
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/avrcp/AvrcpService;->mAlbumName:Ljava/lang/String;

    if-eqz v13, :cond_2ef

    .line 335
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/avrcp/AvrcpService;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    int-to-short v13, v13

    iput-short v13, v2, Landroid/os/ElementAttributeParcel;->mLen:S

    .line 336
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/avrcp/AvrcpService;->mAlbumName:Ljava/lang/String;

    iput-object v13, v2, Landroid/os/ElementAttributeParcel;->mValue:Ljava/lang/String;

    .line 340
    :goto_9b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/avrcp/AvrcpService;->mElementAttrList:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :try_start_a2
    new-instance v6, Landroid/os/ElementAttributeParcel;

    invoke-direct {v6}, Landroid/os/ElementAttributeParcel;-><init>()V

    .line 345
    .local v6, element:Landroid/os/ElementAttributeParcel;
    if-nez p1, :cond_2f4

    .line 346
    invoke-direct/range {p0 .. p0}, Lcom/samsung/avrcp/AvrcpService;->getMediaNumber()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 351
    .local v7, mediaNumber:Ljava/lang/String;
    :goto_b5
    const/4 v13, 0x4

    iput v13, v6, Landroid/os/ElementAttributeParcel;->mAttr:I

    .line 352
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    int-to-short v13, v13

    iput-short v13, v6, Landroid/os/ElementAttributeParcel;->mLen:S

    .line 353
    iput-object v7, v6, Landroid/os/ElementAttributeParcel;->mValue:Ljava/lang/String;

    .line 354
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/avrcp/AvrcpService;->mElementAttrList:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_c8} :catch_315

    .line 361
    .end local v6           #element:Landroid/os/ElementAttributeParcel;
    .end local v7           #mediaNumber:Ljava/lang/String;
    :goto_c8
    :try_start_c8
    new-instance v6, Landroid/os/ElementAttributeParcel;

    invoke-direct {v6}, Landroid/os/ElementAttributeParcel;-><init>()V

    .line 362
    .restart local v6       #element:Landroid/os/ElementAttributeParcel;
    if-nez p1, :cond_31b

    .line 363
    invoke-direct/range {p0 .. p0}, Lcom/samsung/avrcp/AvrcpService;->getMediaTotal()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 374
    .local v8, mediaTotal:Ljava/lang/String;
    :goto_db
    const/4 v13, 0x5

    iput v13, v6, Landroid/os/ElementAttributeParcel;->mAttr:I

    .line 375
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    int-to-short v13, v13

    iput-short v13, v6, Landroid/os/ElementAttributeParcel;->mLen:S

    .line 376
    iput-object v8, v6, Landroid/os/ElementAttributeParcel;->mValue:Ljava/lang/String;

    .line 377
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/avrcp/AvrcpService;->mElementAttrList:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ee
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_ee} :catch_34e

    .line 384
    .end local v6           #element:Landroid/os/ElementAttributeParcel;
    .end local v8           #mediaTotal:Ljava/lang/String;
    :goto_ee
    :try_start_ee
    new-instance v6, Landroid/os/ElementAttributeParcel;

    invoke-direct {v6}, Landroid/os/ElementAttributeParcel;-><init>()V

    .line 385
    .restart local v6       #element:Landroid/os/ElementAttributeParcel;
    if-nez p1, :cond_354

    .line 386
    invoke-direct/range {p0 .. p0}, Lcom/samsung/avrcp/AvrcpService;->getTrackLength()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 391
    .local v12, trackLength:Ljava/lang/String;
    :goto_101
    const/4 v13, 0x7

    iput v13, v6, Landroid/os/ElementAttributeParcel;->mAttr:I

    .line 392
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    int-to-short v13, v13

    iput-short v13, v6, Landroid/os/ElementAttributeParcel;->mLen:S

    .line 393
    iput-object v12, v6, Landroid/os/ElementAttributeParcel;->mValue:Ljava/lang/String;

    .line 394
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/avrcp/AvrcpService;->mElementAttrList:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_114} :catch_370

    .line 399
    .end local v2           #album:Landroid/os/ElementAttributeParcel;
    .end local v3           #artist:Landroid/os/ElementAttributeParcel;
    .end local v6           #element:Landroid/os/ElementAttributeParcel;
    .end local v11           #track:Landroid/os/ElementAttributeParcel;
    .end local v12           #trackLength:Ljava/lang/String;
    :cond_114
    :goto_114
    return-void

    .line 257
    :cond_115
    :try_start_115
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, action:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "populateElementList action="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 259
    const-string v13, "com.android.music.settingchanged"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_158

    .line 260
    const-string v13, "shuffle"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/avrcp/AvrcpService;->mShuffleMode:I

    .line 261
    const-string v13, "repeat"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/avrcp/AvrcpService;->mRepeatMode:I
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_151} :catch_152

    goto :goto_114

    .line 305
    .end local v1           #action:Ljava/lang/String;
    :catch_152
    move-exception v5

    .line 306
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_24

    .line 263
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v1       #action:Ljava/lang/String;
    :cond_158
    :try_start_158
    const-string v13, "com.android.music.musicservicecommand"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25e

    .line 264
    const-string v13, "command"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, cmd:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "populateElementList action=SEEK_CHANGED cmd="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 266
    const-string v13, "fastforward_down"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b6

    .line 267
    move-object/from16 v0, p0

    iget-byte v13, v0, Lcom/samsung/avrcp/AvrcpService;->mPrevPlayStatus:B

    const/4 v14, -0x1

    if-ne v13, v14, :cond_1af

    .line 268
    move-object/from16 v0, p0

    iget-byte v13, v0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    move-object/from16 v0, p0

    iput-byte v13, v0, Lcom/samsung/avrcp/AvrcpService;->mPrevPlayStatus:B

    .line 269
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Save prevPlayStatus: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-byte v14, v0, Lcom/samsung/avrcp/AvrcpService;->mPrevPlayStatus:B

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 271
    :cond_1af
    const/4 v13, 0x3

    move-object/from16 v0, p0

    iput-byte v13, v0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    goto/16 :goto_114

    .line 272
    :cond_1b6
    const-string v13, "rewind_down"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1ee

    .line 273
    move-object/from16 v0, p0

    iget-byte v13, v0, Lcom/samsung/avrcp/AvrcpService;->mPrevPlayStatus:B

    const/4 v14, -0x1

    if-ne v13, v14, :cond_1e7

    .line 274
    move-object/from16 v0, p0

    iget-byte v13, v0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    move-object/from16 v0, p0

    iput-byte v13, v0, Lcom/samsung/avrcp/AvrcpService;->mPrevPlayStatus:B

    .line 275
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Save prevPlayStatus: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-byte v14, v0, Lcom/samsung/avrcp/AvrcpService;->mPrevPlayStatus:B

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 277
    :cond_1e7
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput-byte v13, v0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    goto/16 :goto_114

    .line 278
    :cond_1ee
    const-string v13, "fastforward_up"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_226

    .line 279
    move-object/from16 v0, p0

    iget-byte v13, v0, Lcom/samsung/avrcp/AvrcpService;->mPrevPlayStatus:B

    const/4 v14, -0x1

    if-eq v13, v14, :cond_114

    .line 280
    move-object/from16 v0, p0

    iget-byte v13, v0, Lcom/samsung/avrcp/AvrcpService;->mPrevPlayStatus:B

    move-object/from16 v0, p0

    iput-byte v13, v0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    .line 281
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Restore prevPlayStatus, PlaybackStatusChanged = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-byte v14, v0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 282
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput-byte v13, v0, Lcom/samsung/avrcp/AvrcpService;->mPrevPlayStatus:B

    goto/16 :goto_114

    .line 284
    :cond_226
    const-string v13, "rewind_up"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_114

    .line 285
    move-object/from16 v0, p0

    iget-byte v13, v0, Lcom/samsung/avrcp/AvrcpService;->mPrevPlayStatus:B

    const/4 v14, -0x1

    if-eq v13, v14, :cond_114

    .line 286
    move-object/from16 v0, p0

    iget-byte v13, v0, Lcom/samsung/avrcp/AvrcpService;->mPrevPlayStatus:B

    move-object/from16 v0, p0

    iput-byte v13, v0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    .line 287
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Restore prevPlayStatus, PlaybackStatusChanged = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-byte v14, v0, Lcom/samsung/avrcp/AvrcpService;->mPlayStatus:B

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 288
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput-byte v13, v0, Lcom/samsung/avrcp/AvrcpService;->mPrevPlayStatus:B

    goto/16 :goto_114

    .line 292
    .end local v4           #cmd:Ljava/lang/String;
    :cond_25e
    const-string v13, "artist"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_27c

    const-string v13, "track"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_27c

    const-string v13, "album"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_114

    .line 295
    :cond_27c
    const-string v13, "artist"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/avrcp/AvrcpService;->mArtistName:Ljava/lang/String;

    .line 296
    const-string v13, "track"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/avrcp/AvrcpService;->mTrackName:Ljava/lang/String;

    .line 297
    const-string v13, "album"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/avrcp/AvrcpService;->mAlbumName:Ljava/lang/String;

    .line 298
    const-string v13, "playing"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/avrcp/AvrcpService;->mIsPlaying:Z

    .line 299
    const-string v13, "position"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/samsung/avrcp/AvrcpService;->mPosition:J

    .line 300
    const-string v13, "shuffle"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/avrcp/AvrcpService;->mShuffleMode:I

    .line 301
    const-string v13, "repeat"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/avrcp/AvrcpService;->mRepeatMode:I

    .line 303
    const-string v13, "id"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/samsung/avrcp/AvrcpService;->mAudioId:J
    :try_end_2e3
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_2e3} :catch_152

    goto/16 :goto_24

    .line 318
    .end local v1           #action:Ljava/lang/String;
    .restart local v3       #artist:Landroid/os/ElementAttributeParcel;
    :cond_2e5
    const/4 v13, 0x0

    iput-short v13, v3, Landroid/os/ElementAttributeParcel;->mLen:S

    goto/16 :goto_4d

    .line 328
    .restart local v11       #track:Landroid/os/ElementAttributeParcel;
    :cond_2ea
    const/4 v13, 0x0

    iput-short v13, v11, Landroid/os/ElementAttributeParcel;->mLen:S

    goto/16 :goto_74

    .line 338
    .restart local v2       #album:Landroid/os/ElementAttributeParcel;
    :cond_2ef
    const/4 v13, 0x0

    iput-short v13, v2, Landroid/os/ElementAttributeParcel;->mLen:S

    goto/16 :goto_9b

    .line 348
    .restart local v6       #element:Landroid/os/ElementAttributeParcel;
    :cond_2f4
    :try_start_2f4
    const-string v13, "listpos"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/avrcp/AvrcpService;->mMediaNumber:I

    .line 349
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/avrcp/AvrcpService;->mMediaNumber:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/avrcp/AvrcpService;->checkValue(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_312
    .catch Landroid/os/RemoteException; {:try_start_2f4 .. :try_end_312} :catch_315

    move-result-object v7

    .restart local v7       #mediaNumber:Ljava/lang/String;
    goto/16 :goto_b5

    .line 355
    .end local v6           #element:Landroid/os/ElementAttributeParcel;
    .end local v7           #mediaNumber:Ljava/lang/String;
    :catch_315
    move-exception v5

    .line 356
    .local v5, e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_c8

    .line 365
    .end local v5           #e:Landroid/os/RemoteException;
    .restart local v6       #element:Landroid/os/ElementAttributeParcel;
    :cond_31b
    :try_start_31b
    const-string v13, "mediaCount"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/avrcp/AvrcpService;->mMediaMountedCount:I

    .line 366
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/avrcp/AvrcpService;->mMediaMountedCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/avrcp/AvrcpService;->checkValue(I)I

    move-result v10

    .line 367
    .local v10, total:I
    const-string v13, "listpos"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/avrcp/AvrcpService;->checkValue(I)I

    move-result v9

    .line 369
    .local v9, num:I
    if-ge v10, v9, :cond_344

    .line 370
    move v10, v9

    .line 372
    :cond_344
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_34b
    .catch Landroid/os/RemoteException; {:try_start_31b .. :try_end_34b} :catch_34e

    move-result-object v8

    .restart local v8       #mediaTotal:Ljava/lang/String;
    goto/16 :goto_db

    .line 378
    .end local v6           #element:Landroid/os/ElementAttributeParcel;
    .end local v8           #mediaTotal:Ljava/lang/String;
    .end local v9           #num:I
    .end local v10           #total:I
    :catch_34e
    move-exception v5

    .line 379
    .restart local v5       #e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_ee

    .line 388
    .end local v5           #e:Landroid/os/RemoteException;
    .restart local v6       #element:Landroid/os/ElementAttributeParcel;
    :cond_354
    :try_start_354
    const-string v13, "trackLength"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/samsung/avrcp/AvrcpService;->mDuration:J

    .line 389
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/samsung/avrcp/AvrcpService;->mDuration:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_36d
    .catch Ljava/lang/Exception; {:try_start_354 .. :try_end_36d} :catch_370

    move-result-object v12

    .restart local v12       #trackLength:Ljava/lang/String;
    goto/16 :goto_101

    .line 395
    .end local v6           #element:Landroid/os/ElementAttributeParcel;
    .end local v12           #trackLength:Ljava/lang/String;
    :catch_370
    move-exception v5

    .line 396
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_114
.end method

.method private setRepeatMode(I)V
    .registers 3
    .parameter "repeat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 887
    packed-switch p1, :pswitch_data_14

    .line 890
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/avrcp/AvrcpService;->mRepeatValue:I

    .line 901
    :goto_6
    iget v0, p0, Lcom/samsung/avrcp/AvrcpService;->mRepeatValue:I

    iput v0, p0, Lcom/samsung/avrcp/AvrcpService;->mRepeatMode:I

    .line 902
    return-void

    .line 893
    :pswitch_b
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/avrcp/AvrcpService;->mRepeatValue:I

    goto :goto_6

    .line 897
    :pswitch_f
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/avrcp/AvrcpService;->mRepeatValue:I

    goto :goto_6

    .line 887
    nop

    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_b
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method private setShuffleMode(I)V
    .registers 3
    .parameter "shuffle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 853
    packed-switch p1, :pswitch_data_14

    .line 856
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/avrcp/AvrcpService;->mShuffleValue:I

    .line 866
    :goto_6
    iget v0, p0, Lcom/samsung/avrcp/AvrcpService;->mShuffleValue:I

    iput v0, p0, Lcom/samsung/avrcp/AvrcpService;->mShuffleMode:I

    .line 867
    return-void

    .line 859
    :pswitch_b
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/avrcp/AvrcpService;->mShuffleValue:I

    goto :goto_6

    .line 862
    :pswitch_f
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/avrcp/AvrcpService;->mShuffleValue:I

    goto :goto_6

    .line 853
    nop

    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public getElementAttributes()[Landroid/os/ElementAttributeParcel;
    .registers 4

    .prologue
    .line 744
    iget-object v2, p0, Lcom/samsung/avrcp/AvrcpService;->mElementAttrList:Ljava/util/ArrayList;

    if-eqz v2, :cond_17

    .line 745
    iget-object v2, p0, Lcom/samsung/avrcp/AvrcpService;->mElementAttrList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 747
    .local v0, attrCount:I
    if-lez v0, :cond_17

    .line 748
    new-array v1, v0, [Landroid/os/ElementAttributeParcel;

    .line 749
    .local v1, elementArray:[Landroid/os/ElementAttributeParcel;
    iget-object v2, p0, Lcom/samsung/avrcp/AvrcpService;->mElementAttrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1           #elementArray:[Landroid/os/ElementAttributeParcel;
    check-cast v1, [Landroid/os/ElementAttributeParcel;

    .line 753
    .end local v0           #attrCount:I
    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public getPlayerSettingVal()Landroid/os/PlayerSettingsParcel;
    .registers 5

    .prologue
    .line 767
    :try_start_0
    iget-object v1, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayerSettings:Landroid/os/PlayerSettingsParcel;

    invoke-direct {p0}, Lcom/samsung/avrcp/AvrcpService;->getShuffleMode()I

    move-result v2

    invoke-direct {p0}, Lcom/samsung/avrcp/AvrcpService;->getRepeatMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/PlayerSettingsParcel;->getCurrent(II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_10

    .line 771
    :goto_d
    iget-object v1, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayerSettings:Landroid/os/PlayerSettingsParcel;

    return-object v1

    .line 768
    :catch_10
    move-exception v0

    .line 769
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method

.method public getSupportedEvents()Landroid/os/SupportedEventsParcel;
    .registers 2

    .prologue
    .line 739
    new-instance v0, Landroid/os/SupportedEventsParcel;

    invoke-direct {v0}, Landroid/os/SupportedEventsParcel;-><init>()V

    .line 740
    .local v0, events:Landroid/os/SupportedEventsParcel;
    return-object v0
.end method

.method public listPlayerSettingAttrs()Landroid/os/PlayerSettingsParcel;
    .registers 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayerSettings:Landroid/os/PlayerSettingsParcel;

    return-object v0
.end method

.method public listPlayerSettingVals(B)Landroid/os/PlayerSettingsParcel;
    .registers 3
    .parameter "attrId"

    .prologue
    .line 761
    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayerSettings:Landroid/os/PlayerSettingsParcel;

    invoke-virtual {v0, p1}, Landroid/os/PlayerSettingsParcel;->getAvailable(B)V

    .line 762
    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayerSettings:Landroid/os/PlayerSettingsParcel;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 144
    const-string v0, "onCreate() call change!"

    invoke-static {v0}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/samsung/avrcp/AudioDBHelper;

    invoke-virtual {p0}, Lcom/samsung/avrcp/AvrcpService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/avrcp/AudioDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->sdb:Lcom/samsung/avrcp/AudioDBHelper;

    .line 147
    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->sdb:Lcom/samsung/avrcp/AudioDBHelper;

    invoke-virtual {v0}, Lcom/samsung/avrcp/AudioDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 150
    const-string v0, "content://com.samsung.avrcp/Audio"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 151
    .local v9, u:Landroid/net/Uri;
    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "AUDIO"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 152
    .local v8, cur1:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_38

    .line 153
    invoke-direct {p0, v2}, Lcom/samsung/avrcp/AvrcpService;->populateElementList(Landroid/content/Intent;)V

    .line 164
    :cond_38
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 166
    new-instance v0, Landroid/os/PlayerSettingsParcel;

    invoke-direct {v0}, Landroid/os/PlayerSettingsParcel;-><init>()V

    iput-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayerSettings:Landroid/os/PlayerSettingsParcel;

    .line 168
    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->proxy:Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;

    if-nez v0, :cond_52

    .line 169
    new-instance v0, Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;

    invoke-direct {v0, p0}, Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;-><init>(Lcom/samsung/avrcp/AvrcpService;)V

    iput-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->proxy:Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;

    .line 170
    const-string v0, "Creating Avrcp proxy connection"

    invoke-static {v0}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 173
    :cond_52
    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->proxy:Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;

    invoke-virtual {v0}, Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;->startAvrcp()V

    .line 174
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 180
    const-string v0, "onDestroy() call!"

    invoke-static {v0}, Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 182
    :cond_11
    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->proxy:Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->proxy:Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;

    invoke-virtual {v0}, Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;->stopAvrcp()V

    .line 183
    :cond_1a
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 16
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 187
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 192
    const/4 v8, 0x0

    .line 193
    .local v8, action:Ljava/lang/String;
    const/4 v9, 0x0

    .line 194
    .local v9, btState:I
    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "AUDIO"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 195
    .local v10, cur1:Landroid/database/Cursor;
    if-eqz p1, :cond_29

    .line 196
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 197
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 198
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x8000

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 202
    :cond_29
    if-eqz p1, :cond_2f

    const/16 v0, 0xc

    if-ne v9, v0, :cond_138

    :cond_2f
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_138

    .line 203
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 204
    const-string v0, "action"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->mAction:Ljava/lang/String;

    .line 205
    const-string v0, "album"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->mAlbumName:Ljava/lang/String;

    .line 206
    const-string v0, "artist"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->mArtistName:Ljava/lang/String;

    .line 207
    const-string v0, "duration"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/avrcp/AvrcpService;->mDuration:J

    .line 208
    const-string v0, "_display_name"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->mTrackName:Ljava/lang/String;

    .line 209
    const-string v0, "isplaying"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 210
    .local v11, isPlaying:I
    const/4 v0, 0x1

    if-ne v11, v0, :cond_133

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/avrcp/AvrcpService;->mIsPlaying:Z

    .line 215
    :goto_87
    const-string v0, "position"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/avrcp/AvrcpService;->mPosition:J

    .line 216
    const-string v0, "mediaNumber"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/avrcp/AvrcpService;->mMediaNumber:I

    .line 217
    const-string v0, "mediaTotal"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/avrcp/AvrcpService;->mMediaMountedCount:I

    .line 218
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/avrcp/AvrcpService;->mAudioId:J

    .line 219
    const-string v0, "shuffle"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/avrcp/AvrcpService;->mShuffleMode:I

    .line 220
    const-string v0, "repeat"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/avrcp/AvrcpService;->mRepeatMode:I

    .line 221
    new-instance v12, Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->mAction:Ljava/lang/String;

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v12, mediaIntent:Landroid/content/Intent;
    const-string v0, "id"

    iget-wide v1, p0, Lcom/samsung/avrcp/AvrcpService;->mAudioId:J

    invoke-virtual {v12, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 223
    const-string v0, "artist"

    iget-object v1, p0, Lcom/samsung/avrcp/AvrcpService;->mArtistName:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v0, "album"

    iget-object v1, p0, Lcom/samsung/avrcp/AvrcpService;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v0, "track"

    iget-object v1, p0, Lcom/samsung/avrcp/AvrcpService;->mTrackName:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v0, "playing"

    iget-boolean v1, p0, Lcom/samsung/avrcp/AvrcpService;->mIsPlaying:Z

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    const-string v0, "mediaCount"

    iget v1, p0, Lcom/samsung/avrcp/AvrcpService;->mMediaMountedCount:I

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const-string v0, "listpos"

    iget v1, p0, Lcom/samsung/avrcp/AvrcpService;->mMediaNumber:I

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    const-string v0, "trackLength"

    iget-wide v1, p0, Lcom/samsung/avrcp/AvrcpService;->mDuration:J

    invoke-virtual {v12, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 230
    const-string v0, "position"

    iget-wide v1, p0, Lcom/samsung/avrcp/AvrcpService;->mPosition:J

    invoke-virtual {v12, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 231
    const-string v0, "id"

    iget-wide v1, p0, Lcom/samsung/avrcp/AvrcpService;->mAudioId:J

    invoke-virtual {v12, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 232
    const-string v0, "shuffle"

    iget v1, p0, Lcom/samsung/avrcp/AvrcpService;->mShuffleMode:I

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    const-string v0, "repeat"

    iget v1, p0, Lcom/samsung/avrcp/AvrcpService;->mRepeatMode:I

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    invoke-direct {p0, v12}, Lcom/samsung/avrcp/AvrcpService;->handleAction(Landroid/content/Intent;)V

    .line 239
    .end local v11           #isPlaying:I
    .end local v12           #mediaIntent:Landroid/content/Intent;
    :cond_12f
    :goto_12f
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 240
    return-void

    .line 213
    .restart local v11       #isPlaying:I
    :cond_133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/avrcp/AvrcpService;->mIsPlaying:Z

    goto/16 :goto_87

    .line 236
    .end local v11           #isPlaying:I
    :cond_138
    if-eqz p1, :cond_12f

    .line 237
    invoke-direct {p0, p1}, Lcom/samsung/avrcp/AvrcpService;->handleAction(Landroid/content/Intent;)V

    goto :goto_12f
.end method

.method public setPlayerSettingVal(BB)V
    .registers 4
    .parameter "attr"
    .parameter "val"

    .prologue
    .line 779
    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 780
    const/4 p1, 0x0

    .line 781
    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayerSettings:Landroid/os/PlayerSettingsParcel;

    iget-object v0, v0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    aput-byte p2, v0, p1

    .line 786
    :cond_a
    :goto_a
    return-void

    .line 782
    :cond_b
    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    .line 783
    const/4 p1, 0x1

    .line 784
    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayerSettings:Landroid/os/PlayerSettingsParcel;

    iget-object v0, v0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    aput-byte p2, v0, p1

    goto :goto_a
.end method

.method public updatePlayerSettingVals()Z
    .registers 6

    .prologue
    .line 789
    const/4 v2, 0x0

    .line 791
    .local v2, status:Z
    :try_start_1
    iget-object v3, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayerSettings:Landroid/os/PlayerSettingsParcel;

    invoke-virtual {v3}, Landroid/os/PlayerSettingsParcel;->checkRange()Z

    move-result v2

    .line 792
    const/4 v3, 0x1

    if-ne v2, v3, :cond_34

    .line 793
    iget-object v3, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayerSettings:Landroid/os/PlayerSettingsParcel;

    invoke-virtual {v3}, Landroid/os/PlayerSettingsParcel;->getShuffle()B

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/avrcp/AvrcpService;->setShuffleMode(I)V

    .line 794
    iget-object v3, p0, Lcom/samsung/avrcp/AvrcpService;->mPlayerSettings:Landroid/os/PlayerSettingsParcel;

    invoke-virtual {v3}, Landroid/os/PlayerSettingsParcel;->getRepeat()B

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/avrcp/AvrcpService;->setRepeatMode(I)V

    .line 795
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.music.settingchanged"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 796
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "repeat"

    iget v4, p0, Lcom/samsung/avrcp/AvrcpService;->mRepeatValue:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 797
    const-string v3, "shuffle"

    iget v4, p0, Lcom/samsung/avrcp/AvrcpService;->mShuffleValue:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 798
    invoke-virtual {p0, v1}, Lcom/samsung/avrcp/AvrcpService;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_34} :catch_35

    .line 803
    .end local v1           #intent:Landroid/content/Intent;
    :cond_34
    :goto_34
    return v2

    .line 800
    :catch_35
    move-exception v0

    .line 801
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_34
.end method
