.class public Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
.super Ljava/lang/Object;
.source "BluetoothOppShareInfo.java"


# instance fields
.field public mConfirm:I

.field public mCurrentBytes:J

.field public mDestination:Ljava/lang/String;

.field public mDirection:I

.field public mFilename:Ljava/lang/String;

.field public mHint:Ljava/lang/String;

.field public mId:I

.field public mMediaScanned:Z

.field public mMimetype:Ljava/lang/String;

.field public mStatus:I

.field public mTimestamp:J

.field public mTotalBytes:J

.field public mUri:Ljava/lang/String;

.field public mVisibility:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIJJJZ)V
    .registers 20
    .parameter "id"
    .parameter "uri"
    .parameter "hint"
    .parameter "filename"
    .parameter "mimetype"
    .parameter "direction"
    .parameter "destination"
    .parameter "visibility"
    .parameter "confirm"
    .parameter "status"
    .parameter "totalBytes"
    .parameter "currentBytes"
    .parameter "timestamp"
    .parameter "mediaScanned"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 82
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 85
    iput-object p5, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 86
    iput p6, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    .line 87
    iput-object p7, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    .line 88
    iput p8, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    .line 89
    iput p9, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    .line 90
    iput p10, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 91
    iput-wide p11, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    .line 92
    iput-wide p13, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    .line 93
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    .line 94
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMediaScanned:Z

    .line 95
    return-void
.end method


# virtual methods
.method public hasCompletionNotification()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 116
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 122
    :cond_9
    :goto_9
    return v0

    .line 119
    :cond_a
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    if-nez v1, :cond_9

    .line 120
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isObsolete()Z
    .registers 3

    .prologue
    .line 129
    const/16 v0, 0xc0

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ne v0, v1, :cond_8

    .line 130
    const/4 v0, 0x1

    .line 132
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isReadyToStart()Z
    .registers 4

    .prologue
    const/16 v2, 0xbe

    const/4 v0, 0x1

    .line 102
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v1, :cond_10

    .line 103
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ne v1, v2, :cond_18

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 112
    :cond_f
    :goto_f
    return v0

    .line 106
    :cond_10
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-ne v1, v0, :cond_18

    .line 107
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-eq v1, v2, :cond_f

    .line 112
    :cond_18
    const/4 v0, 0x0

    goto :goto_f
.end method
