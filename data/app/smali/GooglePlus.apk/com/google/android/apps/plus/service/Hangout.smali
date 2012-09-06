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
        Lcom/google/android/apps/plus/service/Hangout$Info;,
        Lcom/google/android/apps/plus/service/Hangout$LaunchSource;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CONSUMER_HANGOUT_DOMAIN:Ljava/lang/String;

.field private static final HANGOUT_URL_PATTERN:Ljava/util/regex/Pattern;

.field private static sAccountForCachedStatus:Lcom/google/android/apps/plus/content/EsAccount;

.field private static sCachedIsCreationSupported:Z

.field private static sCachedStatus:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

.field private static sHangoutCreationSupportCacheIsDirty:Z

.field private static sHangoutSupportStatusCacheIsDirty:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 30
    const-class v0, Lcom/google/android/apps/plus/service/Hangout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1d

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/google/android/apps/plus/service/Hangout;->$assertionsDisabled:Z

    .line 140
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout;->CONSUMER_HANGOUT_DOMAIN:Ljava/lang/String;

    .line 149
    const-string v0, "http s? ://plus.google.com/hangouts/(    \\p{Alnum}+)"

    const/4 v2, 0x6

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout;->HANGOUT_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 156
    sput-boolean v1, Lcom/google/android/apps/plus/service/Hangout;->sHangoutCreationSupportCacheIsDirty:Z

    .line 157
    sput-boolean v1, Lcom/google/android/apps/plus/service/Hangout;->sHangoutSupportStatusCacheIsDirty:Z

    return-void

    .line 30
    :cond_1d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    return-void
.end method

.method public static determineIsHangoutCreationSupported(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Z
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "hangoutData"

    .prologue
    const/4 v6, 0x0

    .line 326
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/service/Hangout;->getSupportedStatus(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v7

    sget-object v8, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    if-eq v7, v8, :cond_a

    .line 342
    :cond_9
    :goto_9
    return v6

    .line 331
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 332
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v2

    .line 333
    .local v2, featureInfos:[Landroid/content/pm/FeatureInfo;
    if-eqz v2, :cond_9

    .line 337
    move-object v0, v2

    .local v0, arr$:[Landroid/content/pm/FeatureInfo;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_17
    if-ge v3, v4, :cond_9

    aget-object v1, v0, v3

    .line 338
    .local v1, featureInfo:Landroid/content/pm/FeatureInfo;
    const-string v7, "android.hardware.camera.front"

    iget-object v8, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 339
    const/4 v6, 0x1

    goto :goto_9

    .line 337
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_17
.end method

.method public static determineSupportedStatus(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/service/Hangout$SupportStatus;
    .registers 12
    .parameter "context"
    .parameter "account"

    .prologue
    .line 278
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x8

    if-ge v8, v9, :cond_9

    .line 279
    sget-object v8, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->OS_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    .line 306
    :goto_8
    return-object v8

    .line 282
    :cond_9
    const/4 v3, 0x0

    .line 284
    .local v3, hasGLES20:Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 285
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v2

    .line 286
    .local v2, featureInfos:[Landroid/content/pm/FeatureInfo;
    if-eqz v2, :cond_30

    array-length v8, v2

    if-lez v8, :cond_30

    .line 287
    move-object v0, v2

    .local v0, arr$:[Landroid/content/pm/FeatureInfo;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1a
    if-ge v4, v5, :cond_30

    aget-object v1, v0, v4

    .line 288
    .local v1, featureInfo:Landroid/content/pm/FeatureInfo;
    iget-object v8, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v8, :cond_2b

    .line 292
    iget v8, v1, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    shr-int/lit8 v8, v8, 0x10

    int-to-short v6, v8

    .line 293
    .local v6, major:S
    const/4 v8, 0x2

    if-lt v6, v8, :cond_2e

    const/4 v3, 0x1

    .line 287
    .end local v6           #major:S
    :cond_2b
    :goto_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 293
    .restart local v6       #major:S
    :cond_2e
    const/4 v3, 0x0

    goto :goto_2b

    .line 298
    .end local v0           #arr$:[Landroid/content/pm/FeatureInfo;
    .end local v1           #featureInfo:Landroid/content/pm/FeatureInfo;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #major:S
    :cond_30
    sget-object v8, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v9, "armeabi-v7a"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3c

    if-nez v3, :cond_3f

    .line 299
    :cond_3c
    sget-object v8, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->DEVICE_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    goto :goto_8

    .line 302
    :cond_3f
    if-eqz p1, :cond_47

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4a

    .line 303
    :cond_47
    sget-object v8, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->ACCOUNT_NOT_CONFIGURED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    goto :goto_8

    .line 306
    :cond_4a
    sget-object v8, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    goto :goto_8
.end method

.method public static enterGreenRoomFromStream(Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)V
    .registers 27
    .parameter "account"
    .parameter "context"
    .parameter "inviterId"
    .parameter "inviterName"
    .parameter "hangoutData"

    .prologue
    .line 428
    sget-boolean v2, Lcom/google/android/apps/plus/service/Hangout;->$assertionsDisabled:Z

    if-nez v2, :cond_10

    invoke-static/range {p4 .. p4}, Lcom/google/android/apps/plus/service/Hangout;->isInProgress(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Z

    move-result v2

    if-nez v2, :cond_10

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 429
    :cond_10
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v12, participants:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "g:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Lcom/google/android/apps/plus/service/Hangout;->getFirstNameFromFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    invoke-virtual/range {p4 .. p4}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getOccupantList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_4f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;

    .line 439
    .local v20, occupant:Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;
    invoke-virtual/range {v20 .. v20}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->getObfuscatedGaiaId()Ljava/lang/String;

    move-result-object v14

    .line 440
    .local v14, gaiaId:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->getName()Ljava/lang/String;

    move-result-object v13

    .line 441
    .local v13, fullName:Ljava/lang/String;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "g:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v2

    invoke-static {v13}, Lcom/google/android/apps/plus/service/Hangout;->getFirstNameFromFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v21

    .line 446
    .local v21, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 449
    .end local v13           #fullName:Ljava/lang/String;
    .end local v14           #gaiaId:Ljava/lang/String;
    .end local v20           #occupant:Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;
    .end local v21           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_94
    invoke-static/range {p4 .. p4}, Lcom/google/android/apps/plus/service/Hangout$RoomType;->fromHangoutData(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/android/apps/plus/service/Hangout$RoomType;

    move-result-object v4

    .line 450
    .local v4, roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;
    invoke-virtual/range {p4 .. p4}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->hasRoomDomain()Z

    move-result v2

    if-eqz v2, :cond_125

    invoke-virtual/range {p4 .. p4}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getRoomDomain()Ljava/lang/String;

    move-result-object v5

    .line 451
    .local v5, roomDomain:Ljava/lang/String;
    :goto_a2
    const-string v2, "Hangout"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 452
    const-string v2, "Hangout"

    const-string v3, "Launching for HangoutData:\nroomId=%s\nroomDomain=%s\nurl=%s\ntype=%s\nsubject=%s\nbroadcastId=%s"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getRoomId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    const/4 v7, 0x2

    invoke-virtual/range {p4 .. p4}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getUrl()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v4, v6, v7

    const/4 v7, 0x4

    invoke-virtual/range {p4 .. p4}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getSubject()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-virtual/range {p4 .. p4}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getBroadcastId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_db
    const/4 v6, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getRoomId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Stream:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v12}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/Hangout$LaunchSource;ZZLjava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v18

    .line 464
    .local v18, intent:Landroid/content/Intent;
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v15

    .line 465
    .local v15, gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-virtual {v15}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangout()Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 466
    invoke-virtual {v15}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommService()Lcom/google/android/apps/plus/hangout/GCommService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommService;->getNotificationIntent()Landroid/content/Intent;

    move-result-object v19

    .line 467
    .local v19, notificationIntent:Landroid/content/Intent;
    if-eqz v19, :cond_11d

    .line 468
    const-string v2, "hangout_info"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v16

    check-cast v16, Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 470
    .local v16, hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    if-eqz v16, :cond_11d

    #getter for: Lcom/google/android/apps/plus/service/Hangout$Info;->id:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/google/android/apps/plus/service/Hangout$Info;->access$000(Lcom/google/android/apps/plus/service/Hangout$Info;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 471
    move-object/from16 v18, v19

    .line 475
    .end local v16           #hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    .end local v19           #notificationIntent:Landroid/content/Intent;
    :cond_11d
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 476
    return-void

    .line 450
    .end local v5           #roomDomain:Ljava/lang/String;
    .end local v15           #gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;
    .end local v18           #intent:Landroid/content/Intent;
    :cond_125
    const/4 v5, 0x0

    goto/16 :goto_a2
.end method

.method public static getFirstNameFromFullName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "fullName"

    .prologue
    .line 410
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 411
    .local v0, indexOfSpace:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 414
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

.method public static getSupportedStatus(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/android/apps/plus/service/Hangout$SupportStatus;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "hangoutData"

    .prologue
    .line 248
    invoke-static {p1}, Lcom/google/android/apps/plus/service/Hangout;->updateCacheDirtyFlags(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 249
    sget-boolean v1, Lcom/google/android/apps/plus/service/Hangout;->sHangoutSupportStatusCacheIsDirty:Z

    if-eqz v1, :cond_10

    .line 250
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/Hangout;->determineSupportedStatus(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/service/Hangout;->sCachedStatus:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    .line 251
    const/4 v1, 0x0

    sput-boolean v1, Lcom/google/android/apps/plus/service/Hangout;->sHangoutSupportStatusCacheIsDirty:Z

    .line 254
    :cond_10
    if-eqz p2, :cond_2c

    .line 255
    invoke-static {p2}, Lcom/google/android/apps/plus/service/Hangout$RoomType;->fromHangoutData(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/android/apps/plus/service/Hangout$RoomType;

    move-result-object v0

    .line 256
    .local v0, roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;
    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$RoomType;->UNKNOWN:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    if-ne v0, v1, :cond_1d

    .line 257
    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->TYPE_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    .line 267
    .end local v0           #roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;
    :goto_1c
    return-object v1

    .line 260
    .restart local v0       #roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;
    :cond_1d
    invoke-static {p2}, Lcom/google/android/apps/plus/service/Hangout;->isViewOnlyHangoutOnAir(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Z

    move-result v1

    if-eqz v1, :cond_2c

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_2c

    .line 263
    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->TYPE_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    goto :goto_1c

    .line 267
    .end local v0           #roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;
    :cond_2c
    sget-object v1, Lcom/google/android/apps/plus/service/Hangout;->sCachedStatus:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    goto :goto_1c
.end method

.method public static isHangoutCreationSupported(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Z
    .registers 4
    .parameter "context"
    .parameter "account"
    .parameter "hangoutData"

    .prologue
    .line 311
    invoke-static {p1}, Lcom/google/android/apps/plus/service/Hangout;->updateCacheDirtyFlags(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 312
    sget-boolean v0, Lcom/google/android/apps/plus/service/Hangout;->sHangoutCreationSupportCacheIsDirty:Z

    if-eqz v0, :cond_10

    .line 313
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/service/Hangout;->determineIsHangoutCreationSupported(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/plus/service/Hangout;->sCachedIsCreationSupported:Z

    .line 315
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/plus/service/Hangout;->sHangoutCreationSupportCacheIsDirty:Z

    .line 318
    :cond_10
    sget-boolean v0, Lcom/google/android/apps/plus/service/Hangout;->sCachedIsCreationSupported:Z

    return v0
.end method

.method public static isHangoutOnAir(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Z
    .registers 3
    .parameter "hangoutData"

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getType()Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    move-result-object v0

    .line 484
    .local v0, type:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;
    sget-object v1, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->OPEN_BROADCAST:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    if-eq v0, v1, :cond_c

    sget-object v1, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->BROADCAST:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static isInProgress(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Z
    .registers 2
    .parameter "hangoutData"

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getUrl()Ljava/lang/String;

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

.method public static isViewOnlyHangoutOnAir(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Z
    .registers 3
    .parameter "hangoutData"

    .prologue
    .line 492
    invoke-static {p0}, Lcom/google/android/apps/plus/service/Hangout;->isHangoutOnAir(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getBroadcastDetails()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->getYoutubeLiveId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getIsViewOnly()Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v0, 0x1

    .line 497
    .local v0, viewOnlyHangout:Z
    :goto_25
    return v0

    .line 492
    .end local v0           #viewOnlyHangout:Z
    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private static updateCacheDirtyFlags(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "account"

    .prologue
    const/4 v1, 0x1

    .line 349
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout;->sAccountForCachedStatus:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/apps/plus/service/Hangout;->sAccountForCachedStatus:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/content/EsAccount;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 351
    :cond_d
    sput-boolean v1, Lcom/google/android/apps/plus/service/Hangout;->sHangoutCreationSupportCacheIsDirty:Z

    .line 352
    sput-boolean v1, Lcom/google/android/apps/plus/service/Hangout;->sHangoutSupportStatusCacheIsDirty:Z

    .line 355
    sput-object p0, Lcom/google/android/apps/plus/service/Hangout;->sAccountForCachedStatus:Lcom/google/android/apps/plus/content/EsAccount;

    .line 357
    :cond_13
    return-void
.end method
