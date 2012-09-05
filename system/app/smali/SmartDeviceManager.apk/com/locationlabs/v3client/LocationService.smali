.class public Lcom/locationlabs/v3client/LocationService;
.super Landroid/app/IntentService;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/locationlabs/v3client/LocationService$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 62
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "v3client"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "//"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/locationlabs/v3client/LocationService;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 102
    const-string v0, "LocationService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method private a()Landroid/app/PendingIntent;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.ACTION_GOT_GPS"

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ldu;)Landroid/net/Uri;
    .registers 6
    .parameter

    .prologue
    .line 187
    sget-object v0, Lcom/locationlabs/v3client/LocationService;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Ldu;->b:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "error"

    iget-object v2, p0, Ldu;->a:Ldv;

    invoke-virtual {v2}, Ldv;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/net/Uri;)Ldu;
    .registers 6
    .parameter

    .prologue
    .line 180
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 183
    :goto_3
    return-object v0

    .line 181
    :cond_4
    const-string v0, "time"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 182
    const-string v1, "error"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    new-instance v2, Ldu;

    invoke-static {v1}, Ldv;->valueOf(Ljava/lang/String;)Ldv;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v1, v3, v4}, Ldu;-><init>(Ldv;J)V

    move-object v0, v2

    goto :goto_3
.end method

.method private a(J)V
    .registers 4
    .parameter

    .prologue
    .line 123
    new-instance v0, Lcom/locationlabs/v3client/LocationService$a;

    invoke-direct {v0, p0}, Lcom/locationlabs/v3client/LocationService$a;-><init>(Lcom/locationlabs/v3client/LocationService;)V

    invoke-virtual {v0, p1, p2}, Lcom/locationlabs/v3client/LocationService$a;->a(J)V

    .line 124
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.locationlabs.v3client.action.ACTION_UPDATE_NOW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/locationlabs/v3client/LocationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 108
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.locationlabs.v3client.action.ACTION_GET_GPS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/locationlabs/v3client/LocationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.extra.EXTRA_SEND_ERROR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 114
    return-void
.end method

.method private a(Landroid/location/Location;Ldu;Z)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 373
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 375
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    .line 376
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/locationlabs/v3client/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 379
    invoke-static {}, Lcom/locationlabs/v3client/RadioSignalService;->a()Landroid/telephony/SignalStrength;

    move-result-object v3

    .line 380
    if-eqz v3, :cond_f3

    .line 381
    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 382
    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 384
    :goto_2f
    new-instance v5, Led;

    invoke-direct {v5}, Led;-><init>()V

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v2, v5, Led;->a:Landroid/telephony/CellLocation;

    iput-wide v6, v5, Led;->b:J

    iput-object v4, v5, Led;->c:Ljava/lang/Integer;

    iput-object v3, v5, Led;->d:Ljava/lang/Integer;

    iput-object v8, v5, Led;->e:Ljava/util/List;

    iput-object v0, v5, Led;->h:Ljava/lang/String;

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-object v1, v5, Led;->f:Landroid/net/wifi/WifiInfo;

    iput-wide v2, v5, Led;->g:J

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    if-eqz p1, :cond_67

    new-instance v0, Lbz;

    invoke-direct {v0, p1}, Lbz;-><init>(Landroid/location/Location;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_67
    iget-object v0, v5, Led;->e:Ljava/util/List;

    if-eqz v0, :cond_95

    iget-object v0, v5, Led;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_71
    :goto_71
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_71

    new-instance v6, Lca;

    invoke-direct {v6, v0, v5}, Lca;-><init>(Landroid/telephony/NeighboringCellInfo;Led;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v0}, Lca;->setIsBase(Ljava/lang/Boolean;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    :cond_95
    iget-object v0, v5, Led;->a:Landroid/telephony/CellLocation;

    if-eqz v0, :cond_b4

    iget-object v0, v5, Led;->a:Landroid/telephony/CellLocation;

    instance-of v4, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v4, :cond_e4

    new-instance v4, Lbs;

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v4, v0, v5}, Lbs;-><init>(Landroid/telephony/cdma/CdmaCellLocation;Led;)V

    move-object v0, v4

    :goto_a7
    if-eqz v0, :cond_b4

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbu;->setIsBase(Ljava/lang/Boolean;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b4
    iget-object v0, v5, Led;->f:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_c8

    iget-object v0, v5, Led;->f:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c8

    new-instance v0, Lck;

    invoke-direct {v0, v5}, Lck;-><init>(Led;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c8
    if-eqz p2, :cond_d2

    new-instance v0, Lcc;

    invoke-direct {v0, p2}, Lcc;-><init>(Ldu;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d2
    new-instance v0, Lcg;

    invoke-direct {v0}, Lcg;-><init>()V

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lcg;->setTime(J)V

    invoke-virtual {v0, v3}, Lcg;->mergeLocationNotifications(Ljava/util/Collection;)V

    .line 388
    invoke-static {p0, v0, p3}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    .line 389
    return-void

    .line 387
    :cond_e4
    instance-of v4, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v4, :cond_f1

    new-instance v4, Lca;

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v4, v0, v5}, Lca;-><init>(Landroid/telephony/gsm/GsmCellLocation;Led;)V

    move-object v0, v4

    goto :goto_a7

    :cond_f1
    move-object v0, v9

    goto :goto_a7

    :cond_f3
    move-object v3, v9

    move-object v4, v9

    goto/16 :goto_2f
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 262
    const-string v0, "UpdateServicePrefs"

    invoke-virtual {p0, v0, v5}, Lcom/locationlabs/v3client/LocationService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 263
    invoke-interface {v0, p1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 264
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_71

    move v1, v5

    .line 269
    :goto_11
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 270
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "stopaction"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "timeoutval"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 271
    const-string v2, "stopvalue"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 273
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p2, v0, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 275
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/locationlabs/v3client/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 276
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 277
    return-void

    .line 267
    :cond_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method private b()Landroid/app/PendingIntent;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.ACTION_GOT_NETWORK"

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private b(Ldu;)Landroid/app/PendingIntent;
    .registers 6
    .parameter

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.ACTION_GOT_NETWORK_FOR_GPS_ERROR"

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    invoke-static {p1}, Lcom/locationlabs/v3client/LocationService;->a(Ldu;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 195
    const/4 v1, 0x0

    const/high16 v2, 0x4000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.locationlabs.v3client.action.ACTION_GET_NETWORK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/locationlabs/v3client/LocationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.extra.EXTRA_SEND_ERROR"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 120
    return-void
.end method

.method private b(Landroid/net/Uri;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 460
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 461
    const-string v1, "timeoutval"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 463
    const-string v2, "UpdateServicePrefs"

    invoke-virtual {p0, v2, v3}, Lcom/locationlabs/v3client/LocationService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 464
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 465
    if-eq v0, v1, :cond_26

    move v0, v3

    .line 470
    :goto_25
    return v0

    :cond_26
    move v0, v4

    goto :goto_25
.end method

.method private c(Ldu;)Landroid/app/PendingIntent;
    .registers 6
    .parameter

    .prologue
    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.ACTION_STOP_NETWORK_FOR_GPS_ERROR"

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    invoke-static {p1}, Lcom/locationlabs/v3client/LocationService;->a(Ldu;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 201
    const/4 v1, 0x0

    const/high16 v2, 0x4000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static c(Landroid/content/Context;)V
    .registers 1
    .parameter

    .prologue
    .line 392
    invoke-static {p0}, Lcom/locationlabs/v3client/LocationService;->d(Landroid/content/Context;)V

    .line 393
    return-void
.end method

.method static d(Landroid/content/Context;)V
    .registers 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 396
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    .line 398
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.locationlabs.v3client.action.ACTION_GOT_NETWORK_FEED"

    const/4 v3, 0x0

    const-class v4, Lcom/locationlabs/v3client/LocationService;

    invoke-direct {v0, v2, v3, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 399
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 401
    sget-object v2, Ldg;->c:Ldg;

    invoke-interface {v1, v2}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3d

    .line 402
    const-string v1, "scheduling location feed now"

    invoke-static {v1}, Li;->c(Ljava/lang/String;)V

    .line 403
    const-string v1, "network"

    const-string v2, "NETWORK_FEED_UPDATE_INTERVAL_MILLIS"

    const-wide/32 v3, 0x493e0

    invoke-static {v2, v3, v4}, Ln;->a(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    .line 411
    :goto_3c
    return-void

    .line 408
    :cond_3d
    const-string v1, "stopping scheduling feed now"

    invoke-static {v1}, Li;->c(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    goto :goto_3c
.end method

.method private d(Ldu;)V
    .registers 8
    .parameter

    .prologue
    .line 251
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 252
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 253
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/locationlabs/v3client/LocationService;->a(Landroid/location/Location;Ldu;Z)V

    .line 259
    :goto_15
    return-void

    .line 256
    :cond_16
    const-string v1, "network"

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/locationlabs/v3client/LocationService;->b(Ldu;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    .line 257
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 258
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3a98

    add-long/2addr v2, v4

    invoke-direct {p0, p1}, Lcom/locationlabs/v3client/LocationService;->c(Ldu;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_15
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 14
    .parameter

    .prologue
    const-wide/16 v2, 0x2710

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 130
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 157
    :cond_c
    :goto_c
    return-void

    .line 132
    :cond_d
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.action.ACTION_GET_GPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 133
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.extra.EXTRA_SEND_ERROR"

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 134
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v5, "gps"

    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_44

    if-eqz v1, :cond_c

    new-instance v0, Ldu;

    sget-object v1, Ldv;->a:Ldv;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Ldu;-><init>(Ldv;J)V

    invoke-direct {p0, v0}, Lcom/locationlabs/v3client/LocationService;->d(Ldu;)V

    goto :goto_c

    :cond_44
    if-eqz v1, :cond_4d

    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    invoke-interface {v1, v10}, Lw;->b(Z)V

    :cond_4d
    :try_start_4d
    invoke-static {p0}, Lal;->c(Landroid/content/Context;)Ldd;

    move-result-object v1

    const-string v5, "LocateGpses"

    invoke-interface {v1, v5}, Ldd;->a(Ljava/lang/String;)J

    invoke-static {p0}, Lal;->c(Landroid/content/Context;)Ldd;

    move-result-object v1

    const-string v5, "LocateGpses"

    invoke-static {v5}, Ly;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ldd;->a(Ljava/lang/String;)J
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_63} :catch_84

    :goto_63
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    invoke-interface {v1, v9}, Lw;->d(Z)V

    const-string v1, "GPS_TIMEOUT_KEY"

    const-string v5, "com.locationlabs.v3client.action.ACTION_STOP_GPS"

    const-string v6, "GPS_LOCATION_TIMEOUT_MILLIS"

    const-wide/32 v7, 0xea60

    invoke-static {v6, v7, v8}, Ln;->a(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-direct {p0, v1, v5, v6, v7}, Lcom/locationlabs/v3client/LocationService;->a(Ljava/lang/String;Ljava/lang/String;J)V

    const-string v1, "gps"

    invoke-direct {p0}, Lcom/locationlabs/v3client/LocationService;->a()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    goto :goto_c

    :catch_84
    move-exception v1

    const-string v5, "LocationService unable to update debug data getting GPS"

    invoke-static {v5, v1}, Li;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_63

    .line 135
    :cond_8b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.action.ACTION_GET_NETWORK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_104

    .line 136
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.extra.EXTRA_SEND_ERROR"

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 137
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v5, "network"

    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c3

    if-eqz v1, :cond_c

    new-instance v0, Ldu;

    sget-object v1, Ldv;->d:Ldv;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Ldu;-><init>(Ldv;J)V

    invoke-direct {p0, v11, v0, v10}, Lcom/locationlabs/v3client/LocationService;->a(Landroid/location/Location;Ldu;Z)V

    goto/16 :goto_c

    :cond_c3
    if-eqz v1, :cond_cc

    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    invoke-interface {v1, v10}, Lw;->c(Z)V

    :cond_cc
    :try_start_cc
    invoke-static {p0}, Lal;->c(Landroid/content/Context;)Ldd;

    move-result-object v1

    const-string v5, "LocateNetworks"

    invoke-interface {v1, v5}, Ldd;->a(Ljava/lang/String;)J

    invoke-static {p0}, Lal;->c(Landroid/content/Context;)Ldd;

    move-result-object v1

    const-string v5, "LocateNetworks"

    invoke-static {v5}, Ly;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ldd;->a(Ljava/lang/String;)J
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_e2} :catch_fd

    :goto_e2
    const-string v1, "NETWORK_TIMEOUT_KEY"

    const-string v5, "com.locationlabs.v3client.action.ACTION_STOP_NETWORK"

    const-string v6, "NETWORK_LOCATION_TIMEOUT_MILLIS"

    const-wide/32 v7, 0xea60

    invoke-static {v6, v7, v8}, Ln;->a(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-direct {p0, v1, v5, v6, v7}, Lcom/locationlabs/v3client/LocationService;->a(Ljava/lang/String;Ljava/lang/String;J)V

    const-string v1, "network"

    invoke-direct {p0}, Lcom/locationlabs/v3client/LocationService;->b()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    goto/16 :goto_c

    :catch_fd
    move-exception v1

    const-string v5, "LocationService unable to update debug data getting network"

    invoke-static {v5, v1}, Li;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e2

    .line 138
    :cond_104
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.action.ACTION_GOT_GPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_189

    .line 139
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    if-eqz v0, :cond_180

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v1, v1

    const-string v3, "GPS_LOCATION_MAX_ACCEPTABLE_UNCERTAINTY_METERS"

    invoke-static {v3}, Ln;->f(Ljava/lang/String;)D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_c

    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v2

    invoke-interface {v2}, Lw;->l()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_154

    invoke-virtual {v1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    float-to-double v3, v3

    const-string v5, "IN_MOTION_MIN_TRAVEL_DISTANCE_METERS"

    invoke-static {v5}, Ln;->f(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    add-float/2addr v1, v7

    float-to-double v7, v1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-lez v1, :cond_15e

    :cond_154
    invoke-interface {v2, v0}, Lw;->a(Landroid/location/Location;)V

    invoke-interface {v2}, Lw;->B()Lac;

    move-result-object v1

    invoke-virtual {v1}, Lac;->a()V

    :cond_15e
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/locationlabs/v3client/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-direct {p0}, Lcom/locationlabs/v3client/LocationService;->a()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    new-instance v1, Lcom/locationlabs/v3client/LocationService$a;

    invoke-direct {v1, p0}, Lcom/locationlabs/v3client/LocationService$a;-><init>(Lcom/locationlabs/v3client/LocationService;)V

    invoke-virtual {v1}, Lcom/locationlabs/v3client/LocationService$a;->d()V

    invoke-interface {v2, v9}, Lw;->b(Z)V

    invoke-interface {v2, v9}, Lw;->d(Z)V

    invoke-direct {p0, v0, v11, v10}, Lcom/locationlabs/v3client/LocationService;->a(Landroid/location/Location;Ldu;Z)V

    goto/16 :goto_c

    :cond_180
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    invoke-interface {v0, v10}, Lw;->d(Z)V

    goto/16 :goto_c

    .line 140
    :cond_189
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.action.ACTION_GOT_NETWORK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1be

    .line 141
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    if-eqz v0, :cond_c

    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/locationlabs/v3client/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-direct {p0}, Lcom/locationlabs/v3client/LocationService;->b()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    invoke-interface {v1, v9}, Lw;->c(Z)V

    invoke-direct {p0, v0, v11, v10}, Lcom/locationlabs/v3client/LocationService;->a(Landroid/location/Location;Ldu;Z)V

    goto/16 :goto_c

    .line 142
    :cond_1be
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.action.ACTION_GOT_NETWORK_FEED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_278

    .line 143
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    if-eqz v0, :cond_c

    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    invoke-interface {v1}, Lw;->B()Lac;

    move-result-object v2

    if-nez v0, :cond_23e

    move v3, v9

    :goto_1e3
    if-nez v3, :cond_c

    iget-object v3, v2, Lac;->a:Landroid/content/Context;

    iget-object v2, v2, Lac;->b:Ljava/lang/String;

    invoke-virtual {v3, v2, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v0}, Lac;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v1}, Lw;->l()Landroid/location/Location;

    move-result-object v2

    if-nez v2, :cond_24f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/locationlabs/v3client/LocationService;->a(J)V

    :cond_20b
    :goto_20b
    invoke-interface {v1}, Lw;->k()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_227

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "NETWORK_LOCATION_MIN_UPDATE_INTERVAL_MILLIS"

    const-wide/32 v7, 0xdbba0

    invoke-static {v6, v7, v8}, Ln;->a(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_c

    :cond_227
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v2

    invoke-interface {v2, v9}, Lw;->c(Z)V

    invoke-direct {p0, v0, v11, v9}, Lcom/locationlabs/v3client/LocationService;->a(Landroid/location/Location;Ldu;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Lw;->c(Ljava/lang/Long;)V

    goto/16 :goto_c

    :cond_23e
    iget-object v3, v2, Lac;->a:Landroid/content/Context;

    iget-object v4, v2, Lac;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v0}, Lac;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1e3

    :cond_24f
    invoke-virtual {v2, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    float-to-double v3, v3

    const-string v5, "IN_MOTION_MIN_TRAVEL_DISTANCE_METERS"

    invoke-static {v5}, Ln;->f(Ljava/lang/String;)D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_20b

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-string v4, "GPS_LOCATION_MIN_UPDATE_INTERVAL_MILLIS"

    const-wide/32 v5, 0x1d4c0

    invoke-static {v4, v5, v6}, Ln;->a(Ljava/lang/String;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/locationlabs/v3client/LocationService;->a(J)V

    goto :goto_20b

    .line 144
    :cond_278
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.action.ACTION_GOT_NETWORK_FOR_GPS_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bd

    .line 145
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/locationlabs/v3client/LocationService;->a(Landroid/net/Uri;)Ldu;

    move-result-object v3

    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/locationlabs/v3client/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    const-string v2, "location"

    invoke-virtual {p0, v2}, Lcom/locationlabs/v3client/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {p0, v3}, Lcom/locationlabs/v3client/LocationService;->b(Ldu;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    invoke-direct {p0, v3}, Lcom/locationlabs/v3client/LocationService;->c(Ldu;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-direct {p0, v0, v3, v10}, Lcom/locationlabs/v3client/LocationService;->a(Landroid/location/Location;Ldu;Z)V

    goto/16 :goto_c

    .line 146
    :cond_2bd
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.action.ACTION_STOP_GPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_331

    .line 147
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/locationlabs/v3client/LocationService;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {p0}, Lcom/locationlabs/v3client/LocationService;->a()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    :try_start_2e2
    invoke-static {p0}, Lal;->c(Landroid/content/Context;)Ldd;

    move-result-object v0

    const-string v1, "GpsTimeouts"

    invoke-interface {v0, v1}, Ldd;->a(Ljava/lang/String;)J

    invoke-static {p0}, Lal;->c(Landroid/content/Context;)Ldd;

    move-result-object v0

    const-string v1, "GpsTimeouts"

    invoke-static {v1}, Ly;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldd;->a(Ljava/lang/String;)J
    :try_end_2f8
    .catch Ljava/io/IOException; {:try_start_2e2 .. :try_end_2f8} :catch_31e

    :goto_2f8
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    invoke-interface {v0}, Lw;->q()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Lw;->C()Z

    move-result v1

    if-eqz v1, :cond_325

    new-instance v1, Ldu;

    sget-object v2, Ldv;->c:Ldv;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Ldu;-><init>(Ldv;J)V

    :goto_313
    invoke-interface {v0, v9}, Lw;->b(Z)V

    invoke-interface {v0, v9}, Lw;->d(Z)V

    invoke-direct {p0, v1}, Lcom/locationlabs/v3client/LocationService;->d(Ldu;)V

    goto/16 :goto_c

    :catch_31e
    move-exception v0

    const-string v1, "LocationService unable to update debug data stopping GPS"

    invoke-static {v1, v0}, Li;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f8

    :cond_325
    new-instance v1, Ldu;

    sget-object v2, Ldv;->b:Ldv;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Ldu;-><init>(Ldv;J)V

    goto :goto_313

    .line 148
    :cond_331
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.action.ACTION_STOP_NETWORK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_390

    .line 149
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/locationlabs/v3client/LocationService;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {p0}, Lcom/locationlabs/v3client/LocationService;->b()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    :try_start_356
    invoke-static {p0}, Lal;->c(Landroid/content/Context;)Ldd;

    move-result-object v0

    const-string v1, "NetworkTimeouts"

    invoke-interface {v0, v1}, Ldd;->a(Ljava/lang/String;)J

    invoke-static {p0}, Lal;->c(Landroid/content/Context;)Ldd;

    move-result-object v0

    const-string v1, "NetworkTimeouts"

    invoke-static {v1}, Ly;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldd;->a(Ljava/lang/String;)J
    :try_end_36c
    .catch Ljava/io/IOException; {:try_start_356 .. :try_end_36c} :catch_389

    :goto_36c
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    invoke-interface {v0}, Lw;->r()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0, v9}, Lw;->c(Z)V

    new-instance v0, Ldu;

    sget-object v1, Ldv;->e:Ldv;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Ldu;-><init>(Ldv;J)V

    invoke-direct {p0, v11, v0, v10}, Lcom/locationlabs/v3client/LocationService;->a(Landroid/location/Location;Ldu;Z)V

    goto/16 :goto_c

    :catch_389
    move-exception v0

    const-string v1, "LocationService unable to update debug data stopping network"

    invoke-static {v1, v0}, Li;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_36c

    .line 150
    :cond_390
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.action.ACTION_STOP_NETWORK_FOR_GPS_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c7

    .line 151
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/locationlabs/v3client/LocationService;->a(Landroid/net/Uri;)Ldu;

    move-result-object v2

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/locationlabs/v3client/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-direct {p0, v2}, Lcom/locationlabs/v3client/LocationService;->b(Ldu;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    invoke-direct {p0, v2}, Lcom/locationlabs/v3client/LocationService;->c(Ldu;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-direct {p0, v11, v2, v10}, Lcom/locationlabs/v3client/LocationService;->a(Landroid/location/Location;Ldu;Z)V

    goto/16 :goto_c

    .line 152
    :cond_3c7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.action.ACTION_UPDATE_NOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f5

    .line 153
    :try_start_3d3
    invoke-static {p0}, Lal;->c(Landroid/content/Context;)Ldd;

    move-result-object v0

    const-string v1, "UpdateNows"

    invoke-interface {v0, v1}, Ldd;->a(Ljava/lang/String;)J

    invoke-static {p0}, Lal;->c(Landroid/content/Context;)Ldd;

    move-result-object v0

    const-string v1, "UpdateNows"

    invoke-static {v1}, Ly;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldd;->a(Ljava/lang/String;)J
    :try_end_3e9
    .catch Ljava/io/IOException; {:try_start_3d3 .. :try_end_3e9} :catch_3ee

    :goto_3e9
    invoke-direct {p0, v11, v11, v10}, Lcom/locationlabs/v3client/LocationService;->a(Landroid/location/Location;Ldu;Z)V

    goto/16 :goto_c

    :catch_3ee
    move-exception v0

    const-string v1, "LocationService unable to update debug data updating now"

    invoke-static {v1, v0}, Li;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3e9

    .line 154
    :cond_3f5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.action.ACTION_TRY_FUTURE_GPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 155
    new-instance v0, Lcom/locationlabs/v3client/LocationService$a;

    invoke-direct {v0, p0}, Lcom/locationlabs/v3client/LocationService$a;-><init>(Lcom/locationlabs/v3client/LocationService;)V

    invoke-virtual {v0}, Lcom/locationlabs/v3client/LocationService$a;->e()V

    goto/16 :goto_c
.end method
