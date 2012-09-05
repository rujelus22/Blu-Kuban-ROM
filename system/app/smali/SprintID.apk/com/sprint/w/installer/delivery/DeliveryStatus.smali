.class public Lcom/sprint/w/installer/delivery/DeliveryStatus;
.super Ljava/lang/Object;
.source "DeliveryStatus.java"


# static fields
.field private static log:Lcom/sprint/id/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/sprint/w/installer/delivery/DeliveryStatus;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/delivery/DeliveryStatus;->log:Lcom/sprint/id/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->isDeliveryIdAround(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->createRecord(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Lcom/sprint/id/logger/Logger;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/sprint/w/installer/delivery/DeliveryStatus;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method

.method private static createRecord(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .parameter "context"
    .parameter "deliveryId"

    .prologue
    const/4 v6, 0x0

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 36
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/sprint/w/installer/ContentProvider;->URI_DELIVERY:Landroid/net/Uri;

    const-string v4, "deliveryId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 40
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 41
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "deliveryId"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v3, "status"

    sget-object v4, Lcom/sprint/w/installer/DeliveryState;->NEW_RECORD:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v4}, Lcom/sprint/w/installer/DeliveryState;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    const-string v3, "timeUpdated"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 44
    const-string v3, "flagSend"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 49
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getCdmaBaseStationLocation()Landroid/location/Location;

    move-result-object v1

    .line 50
    .local v1, location:Landroid/location/Location;
    if-eqz v1, :cond_83

    .line 51
    const-string v3, "latitude"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v3, "longitude"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_83
    sget-object v3, Lcom/sprint/w/installer/ContentProvider;->URI_DELIVERY:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 55
    return-void
.end method

.method private static isDeliveryIdAround(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11
    .parameter "context"
    .parameter "deliveryId"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 131
    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "deliveryId"

    aput-object v0, v2, v8

    .line 134
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI_DELIVERY:Landroid/net/Uri;

    const-string v3, "deliveryId=?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 137
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v7

    .line 141
    :goto_20
    return v0

    .line 140
    :cond_21
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 141
    goto :goto_20
.end method

.method public static updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 23
    .parameter "context"
    .parameter "deliveryId"
    .parameter "statusIn"
    .parameter "errMsg"
    .parameter "packID"
    .parameter "packAuthor"
    .parameter "packVersion"
    .parameter "packVersionCode"
    .parameter "markToSend"

    .prologue
    .line 88
    new-instance v13, Ljava/lang/Thread;

    new-instance v0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;

    move-object v1, p1

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v13, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 118
    if-nez p8, :cond_40

    .line 121
    new-instance v12, Landroid/content/Intent;

    const-class v0, Lcom/sprint/w/installer/delivery/ReportPostService;

    invoke-direct {v12, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v12, reportIntent:Landroid/content/Intent;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v12, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 123
    .local v11, pendingIntent:Landroid/app/PendingIntent;
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager;

    .line 124
    .local v10, am:Landroid/app/AlarmManager;
    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xdbba0

    add-long/2addr v1, v3

    invoke-virtual {v10, v0, v1, v2, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 128
    .end local v10           #am:Landroid/app/AlarmManager;
    .end local v11           #pendingIntent:Landroid/app/PendingIntent;
    .end local v12           #reportIntent:Landroid/content/Intent;
    :cond_40
    return-void
.end method

.method public static updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V
    .registers 14
    .parameter "context"
    .parameter "deliveryId"
    .parameter "statusIn"
    .parameter "errMsg"
    .parameter "markToSend"

    .prologue
    const/4 v4, 0x0

    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    return-void
.end method
