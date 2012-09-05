.class public Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;
.super Ljava/lang/Thread;
.source "ReportPostService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/delivery/ReportPostService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReportPostThread"
.end annotation


# static fields
.field private static final JSON_FIELD_DELIVERY_ID:Ljava/lang/String; = "id"

.field private static final JSON_FIELD_DELIVERY_STATUS:Ljava/lang/String; = "s"

.field private static final JSON_FIELD_DEVICE_BRAND:Ljava/lang/String; = "db"

.field private static final JSON_FIELD_DEVICE_FIRMWARE:Ljava/lang/String; = "df"

.field private static final JSON_FIELD_DEVICE_MDN:Ljava/lang/String; = "m"

.field private static final JSON_FIELD_DEVICE_MODEL:Ljava/lang/String; = "dm"

.field private static final JSON_FIELD_ERROR_MSG:Ljava/lang/String; = "e"

.field private static final JSON_FIELD_LATITUDE:Ljava/lang/String; = "lt"

.field private static final JSON_FIELD_LONGITUDE:Ljava/lang/String; = "lg"

.field private static final JSON_FIELD_PACK_AUTHOR:Ljava/lang/String; = "a"

.field private static final JSON_FIELD_PACK_ID:Ljava/lang/String; = "i"

.field private static final JSON_FIELD_PACK_VERSION:Ljava/lang/String; = "v"

.field private static final JSON_FIELD_PACK_VERSION_CODE:Ljava/lang/String; = "vc"

.field private static final JSON_FIELD_W_VERSION:Ljava/lang/String; = "w"


# instance fields
.field context:Landroid/content/Context;

.field mStartId:I

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field sendOverride:Z

.field final synthetic this$0:Lcom/sprint/w/installer/delivery/ReportPostService;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/delivery/ReportPostService;Landroid/content/Context;IZ)V
    .registers 9
    .parameter
    .parameter "context"
    .parameter "startId"
    .parameter "sendOverride"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;->this$0:Lcom/sprint/w/installer/delivery/ReportPostService;

    .line 69
    const-string v1, "ReportPostService"

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 65
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;->sendOverride:Z

    .line 70
    iput-object p2, p0, Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;->context:Landroid/content/Context;

    .line 71
    iput p3, p0, Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;->mStartId:I

    .line 72
    iput-boolean p4, p0, Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;->sendOverride:Z

    .line 73
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/sprint/w/installer/delivery/ReportPostService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 74
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sprint/id/logger/Logger;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 75
    return-void
.end method


# virtual methods
.method public run()V
    .registers 29

    .prologue
    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/sprint/w/installer/util/Util;->isAnyDataNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_186

    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sprint/w/installer/ContentProvider;->URI_DELIVERY:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 82
    .local v7, cur:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_186

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;->context:Landroid/content/Context;

    const v3, 0x7f060104

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, url:Ljava/lang/String;
    const-string v2, "deliveryId"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 85
    .local v15, idxId:I
    const-string v2, "status"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 86
    .local v22, idxStatus:I
    const-string v2, "timeUpdated"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 87
    .local v23, idxTime:I
    const-string v2, "errMsg"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 88
    .local v13, idxErr:I
    const-string v2, "packId"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 89
    .local v19, idxPid:I
    const-string v2, "author"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 90
    .local v18, idxPauth:I
    const-string v2, "verName"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 91
    .local v21, idxPvn:I
    const-string v2, "verCode"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 92
    .local v20, idxPvc:I
    const-string v2, "latitude"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 93
    .local v16, idxLatitude:I
    const-string v2, "longitude"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 94
    .local v17, idxLongitude:I
    const-string v2, "flagSend"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 96
    .local v14, idxFlagSend:I
    :cond_6f
    const/16 v26, 0x0

    .line 97
    .local v26, serverResponse:Ljava/lang/String;
    const/16 v25, 0x0

    .line 100
    .local v25, readySend:Z
    :try_start_73
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;->sendOverride:Z

    if-nez v2, :cond_1bf

    .line 103
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a3

    .line 104
    const/16 v25, 0x1

    .line 120
    :cond_82
    :goto_82
    if-eqz v25, :cond_180

    .line 121
    new-instance v24, Lorg/json/JSONObject;

    invoke-direct/range {v24 .. v24}, Lorg/json/JSONObject;-><init>()V

    .line 122
    .local v24, json:Lorg/json/JSONObject;
    const-string v2, "id"

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v2, "s"

    move/from16 v0, v22

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v2, "i"

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v2, "v"

    move/from16 v0, v21

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v2, "vc"

    move/from16 v0, v20

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v2, "a"

    move/from16 v0, v18

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v2, "e"

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v2, "lt"

    move/from16 v0, v16

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v2, "lg"

    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v2, "m"

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getMdn()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v2, "db"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;->context:Landroid/content/Context;

    const v4, 0x7f060100

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v2, "dm"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v2, "df"

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v2, "w"

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;->context:Landroid/content/Context;

    const v4, 0x7f060105

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/sprint/w/installer/util/HttpUtil;->executeHttpPostWithHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v26

    .line 138
    const-string v2, "1"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_180

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sprint/w/installer/ContentProvider;->URI_DELIVERY:Landroid/net/Uri;

    const-string v4, "deliveryId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_180} :catch_1c3

    .line 148
    .end local v24           #json:Lorg/json/JSONObject;
    :cond_180
    :goto_180
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 151
    .end local v1           #url:Ljava/lang/String;
    .end local v7           #cur:Landroid/database/Cursor;
    .end local v13           #idxErr:I
    .end local v14           #idxFlagSend:I
    .end local v15           #idxId:I
    .end local v16           #idxLatitude:I
    .end local v17           #idxLongitude:I
    .end local v18           #idxPauth:I
    .end local v19           #idxPid:I
    .end local v20           #idxPvc:I
    .end local v21           #idxPvn:I
    .end local v22           #idxStatus:I
    .end local v23           #idxTime:I
    .end local v25           #readySend:Z
    .end local v26           #serverResponse:Ljava/lang/String;
    :cond_186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_197

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 154
    :cond_197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;->this$0:Lcom/sprint/w/installer/delivery/ReportPostService;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;->mStartId:I

    invoke-virtual {v2, v3}, Lcom/sprint/w/installer/delivery/ReportPostService;->stopSelf(I)V

    .line 155
    return-void

    .line 108
    .restart local v1       #url:Ljava/lang/String;
    .restart local v7       #cur:Landroid/database/Cursor;
    .restart local v13       #idxErr:I
    .restart local v14       #idxFlagSend:I
    .restart local v15       #idxId:I
    .restart local v16       #idxLatitude:I
    .restart local v17       #idxLongitude:I
    .restart local v18       #idxPauth:I
    .restart local v19       #idxPid:I
    .restart local v20       #idxPvc:I
    .restart local v21       #idxPvn:I
    .restart local v22       #idxStatus:I
    .restart local v23       #idxTime:I
    .restart local v25       #readySend:Z
    .restart local v26       #serverResponse:Ljava/lang/String;
    :cond_1a3
    :try_start_1a3
    move/from16 v0, v23

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 109
    .local v10, dateRecord:J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_1b1
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1b1} :catch_1c3

    move-result-wide v8

    .line 112
    .local v8, dateNow:J
    sub-long v2, v8, v10

    const-wide/32 v4, 0xdbba0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_82

    .line 113
    const/16 v25, 0x1

    goto/16 :goto_82

    .line 118
    .end local v8           #dateNow:J
    .end local v10           #dateRecord:J
    :cond_1bf
    const/16 v25, 0x1

    goto/16 :goto_82

    .line 145
    :catch_1c3
    move-exception v12

    .line 146
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_180
.end method
