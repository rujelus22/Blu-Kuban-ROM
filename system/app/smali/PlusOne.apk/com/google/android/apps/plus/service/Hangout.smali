.class public Lcom/google/android/apps/plus/service/Hangout;
.super Ljava/lang/Object;
.source "Hangout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/service/Hangout$1;,
        Lcom/google/android/apps/plus/service/Hangout$SupportStatus;,
        Lcom/google/android/apps/plus/service/Hangout$RoomType;,
        Lcom/google/android/apps/plus/service/Hangout$ApplicationEventListener;,
        Lcom/google/android/apps/plus/service/Hangout$Info;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final HANGOUT_URL_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28
    const-class v0, Lcom/google/android/apps/plus/service/Hangout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/service/Hangout;->$assertionsDisabled:Z

    .line 147
    const-string v0, "http s? ://plus.google.com/hangouts/(    \\p{Alnum}+)"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout;->HANGOUT_URL_PATTERN:Ljava/util/regex/Pattern;

    return-void

    .line 28
    :cond_15
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method

.method public static enterGreenRoom(Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Context;JLjava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)V
    .registers 21
    .parameter "account"
    .parameter "context"
    .parameter "inviterId"
    .parameter "inviterName"
    .parameter "hangoutData"

    .prologue
    .line 353
    sget-boolean v2, Lcom/google/android/apps/plus/service/Hangout;->$assertionsDisabled:Z

    if-nez v2, :cond_10

    invoke-static/range {p5 .. p5}, Lcom/google/android/apps/plus/service/Hangout;->isInProgress(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Z

    move-result v2

    if-nez v2, :cond_10

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 354
    :cond_10
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v7, participants:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "g:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Lcom/google/android/apps/plus/service/Hangout;->getFirstNameFromFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->getActiveOccupantList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_4f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    .line 364
    .local v13, occupant:Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;
    invoke-virtual {v13}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getName()Ljava/lang/String;

    move-result-object v10

    .line 365
    .local v10, fullName:Ljava/lang/String;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "g:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getGaiaId()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v2

    invoke-static {v10}, Lcom/google/android/apps/plus/service/Hangout;->getFirstNameFromFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v14

    .line 370
    .local v14, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 373
    .end local v10           #fullName:Ljava/lang/String;
    .end local v13           #occupant:Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;
    .end local v14           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_92
    invoke-static/range {p5 .. p5}, Lcom/google/android/apps/plus/service/Hangout;->getRoomTypeFromHangoutData(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/android/apps/plus/service/Hangout$RoomType;

    move-result-object v4

    .line 374
    .local v4, roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->hasRoomDomain()Z

    move-result v2

    if-eqz v2, :cond_ec

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->getRoomDomain()Ljava/lang/String;

    move-result-object v5

    .line 375
    .local v5, roomDomain:Ljava/lang/String;
    :goto_a0
    const-string v2, "Hangout"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 376
    const-string v2, "Hangout"

    const-string v3, "Launching for HangoutData:\nroomId=%s\nroomDomain=%s\nurl=%s\ntype=%s\nsubject=%s\nbroadcastId=%s"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->getRoomId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    aput-object v5, v6, v8

    const/4 v8, 0x2

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->getUrl()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x3

    aput-object v4, v6, v8

    const/4 v8, 0x4

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->getSubject()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x5

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->getBroadcastId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_d9
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->getRoomId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZ)Landroid/content/Intent;

    move-result-object v12

    .line 384
    .local v12, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 385
    return-void

    .line 374
    .end local v5           #roomDomain:Ljava/lang/String;
    .end local v12           #intent:Landroid/content/Intent;
    :cond_ec
    const/4 v5, 0x0

    goto :goto_a0
.end method

.method public static getFirstNameFromFullName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "fullName"

    .prologue
    .line 316
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 317
    .local v0, indexOfSpace:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 320
    .end local p0
    :goto_9
    return-object p0

    .restart local p0
    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_9
.end method

.method public static getRoomTypeFromHangoutData(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/android/apps/plus/service/Hangout$RoomType;
    .registers 5
    .parameter "hangoutData"

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->hasBroadcastId()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 330
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->getBroadcastId()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, broadcastId:Ljava/lang/String;
    if-eqz v0, :cond_15

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 332
    sget-object v2, Lcom/google/android/apps/plus/service/Hangout$RoomType;->UNKNOWN:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    .line 343
    .end local v0           #broadcastId:Ljava/lang/String;
    :goto_14
    return-object v2

    .line 336
    :cond_15
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->getType()Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;

    move-result-object v1

    .line 337
    .local v1, hangoutType:Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;
    sget-object v2, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$HangoutData$HangoutType:[I

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2e

    .line 343
    sget-object v2, Lcom/google/android/apps/plus/service/Hangout$RoomType;->UNKNOWN:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    goto :goto_14

    .line 339
    :pswitch_27
    sget-object v2, Lcom/google/android/apps/plus/service/Hangout$RoomType;->CONSUMER:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    goto :goto_14

    .line 341
    :pswitch_2a
    sget-object v2, Lcom/google/android/apps/plus/service/Hangout$RoomType;->WITH_EXTRAS:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    goto :goto_14

    .line 337
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method

.method public static getSupportedStatus(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/android/apps/plus/service/Hangout$SupportStatus;
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "hangoutData"

    .prologue
    .line 216
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x9

    if-ge v10, v11, :cond_9

    .line 217
    sget-object v10, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->OS_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    .line 262
    :goto_8
    return-object v10

    .line 220
    :cond_9
    const/4 v3, 0x0

    .line 221
    .local v3, hasFrontFacingCamera:Z
    const/4 v4, 0x0

    .line 223
    .local v4, hasGLES20:Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 224
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v2

    .line 225
    .local v2, featureInfos:[Landroid/content/pm/FeatureInfo;
    if-eqz v2, :cond_3d

    array-length v10, v2

    if-lez v10, :cond_3d

    .line 226
    move-object v0, v2

    .local v0, arr$:[Landroid/content/pm/FeatureInfo;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1b
    if-ge v5, v6, :cond_3d

    aget-object v1, v0, v5

    .line 227
    .local v1, featureInfo:Landroid/content/pm/FeatureInfo;
    iget-object v10, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v10, :cond_31

    .line 231
    iget v10, v1, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    shr-int/lit8 v10, v10, 0x10

    int-to-short v7, v10

    .line 232
    .local v7, major:S
    const/4 v10, 0x2

    if-lt v7, v10, :cond_2f

    const/4 v4, 0x1

    .line 226
    .end local v7           #major:S
    :cond_2c
    :goto_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 232
    .restart local v7       #major:S
    :cond_2f
    const/4 v4, 0x0

    goto :goto_2c

    .line 233
    .end local v7           #major:S
    :cond_31
    iget-object v10, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const-string v11, "android.hardware.camera.front"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    .line 234
    const/4 v3, 0x1

    goto :goto_2c

    .line 239
    .end local v0           #arr$:[Landroid/content/pm/FeatureInfo;
    .end local v1           #featureInfo:Landroid/content/pm/FeatureInfo;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_3d
    sget-object v10, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v11, "armeabi-v7a"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_49

    if-nez v4, :cond_4c

    .line 240
    :cond_49
    sget-object v10, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->DEVICE_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    goto :goto_8

    .line 243
    :cond_4c
    if-nez v3, :cond_51

    .line 244
    sget-object v10, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->NO_FRONT_FACING_CAMERA:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    goto :goto_8

    .line 247
    :cond_51
    if-eqz p1, :cond_59

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5c

    .line 248
    :cond_59
    sget-object v10, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->ACCOUNT_NOT_CONFIGURED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    goto :goto_8

    .line 251
    :cond_5c
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->isChild()Z

    move-result v10

    if-eqz v10, :cond_65

    .line 252
    sget-object v10, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->CHILD_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    goto :goto_8

    .line 255
    :cond_65
    if-eqz p2, :cond_72

    .line 256
    invoke-static {p2}, Lcom/google/android/apps/plus/service/Hangout;->getRoomTypeFromHangoutData(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/android/apps/plus/service/Hangout$RoomType;

    move-result-object v9

    .line 257
    .local v9, roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;
    sget-object v10, Lcom/google/android/apps/plus/service/Hangout$RoomType;->UNKNOWN:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    if-ne v9, v10, :cond_72

    .line 258
    sget-object v10, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->TYPE_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    goto :goto_8

    .line 262
    .end local v9           #roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;
    :cond_72
    sget-object v10, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    goto :goto_8
.end method

.method public static isInProgress(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Z
    .registers 2
    .parameter "hangoutData"

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
