.class public Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;
.super Landroid/content/BroadcastReceiver;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/locationlabs/v3client/feature/drivedetect/CellPoller$a;
    }
.end annotation


# static fields
.field private static a:Landroid/app/PendingIntent;

.field private static b:Ljava/lang/String;

.field private static c:J

.field private static d:Lcom/locationlabs/v3client/feature/drivedetect/CellPoller$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->a:Landroid/app/PendingIntent;

    .line 111
    const-string v0, ""

    sput-object v0, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->b:Ljava/lang/String;

    .line 112
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->c:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 180
    return-void
.end method

.method static synthetic a()Landroid/app/PendingIntent;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->a:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 67
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 69
    invoke-static {p0}, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->b(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 71
    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 73
    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->d:Lcom/locationlabs/v3client/feature/drivedetect/CellPoller$a;

    if-eqz v0, :cond_24

    .line 74
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 75
    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->d:Lcom/locationlabs/v3client/feature/drivedetect/CellPoller$a;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 79
    :cond_24
    const/4 v0, 0x0

    sput-object v0, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->a:Landroid/app/PendingIntent;

    .line 81
    return-void
.end method

.method public static a(Landroid/content/Context;JLandroid/app/PendingIntent;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    sput-object p3, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->a:Landroid/app/PendingIntent;

    .line 45
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 47
    invoke-static {p0}, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->b(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 49
    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 51
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_2a

    .line 55
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-static {p0}, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->b(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 61
    :cond_2a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.SETUP_CELL_LISTENER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, La;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 63
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 103
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 104
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_11

    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 107
    :cond_11
    invoke-static {p0, v0, p1}, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->a(Landroid/content/Context;Landroid/telephony/CellLocation;Landroid/app/PendingIntent;)V

    .line 109
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/telephony/CellLocation;Landroid/app/PendingIntent;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, -0x1

    const-wide v5, 0x41612a8800000000L

    const-wide v3, 0x4083880000000000L

    .line 116
    const-string v0, ""

    .line 118
    if-nez p1, :cond_2e

    .line 119
    const-string v0, "NULL CellLocation?"

    .line 151
    :cond_11
    :goto_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 153
    sget-wide v3, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->c:J

    sub-long v3, v1, v3

    const-string v5, "DWD_CELL_DUPE_LIMIT_MSEC"

    const-wide/16 v6, 0x1388

    invoke-static {v5, v6, v7}, Ln;->a(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_de

    sget-object v3, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 178
    :cond_2d
    :goto_2d
    return-void

    .line 122
    :cond_2e
    instance-of v1, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_7f

    .line 123
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 124
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 125
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GSM Cell location  cid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne v0, v7, :cond_62

    const-string v0, "UNKNOWN_CID"

    :goto_4b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  lac: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-ne v1, v7, :cond_7a

    const-string v1, "UNKNOWN_LAC"

    :goto_59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    :cond_7a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_59

    .line 133
    :cond_7f
    instance-of v1, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_11

    .line 134
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 136
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v3

    div-double/2addr v0, v5

    double-to-float v0, v0

    .line 137
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v3

    div-double/2addr v1, v5

    double-to-float v1, v1

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nid,sid,bid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  lat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  lon: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11

    .line 162
    :cond_de
    sput-object v0, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->b:Ljava/lang/String;

    .line 163
    sput-wide v1, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->c:J

    .line 165
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 166
    const-string v2, "com.locationlabs.extra.CELL_STRING"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    if-eqz p2, :cond_2d

    const/4 v0, 0x0

    :try_start_ef
    invoke-virtual {p2, p0, v0, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_f2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_ef .. :try_end_f2} :catch_f4

    goto/16 :goto_2d

    .line 175
    :catch_f4
    move-exception v0

    const-string v0, "Cxld PI CellPoll?"

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto/16 :goto_2d
.end method

.method private static b(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.POLL_CELL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 36
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, "com.locationlabs.v3client.POLL_CELL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 91
    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->a:Landroid/app/PendingIntent;

    invoke-static {p1, v0}, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->a(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 97
    :cond_11
    :goto_11
    return-void

    .line 93
    :cond_12
    const-string v1, "com.locationlabs.v3client.SETUP_CELL_LISTENER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 94
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->d:Lcom/locationlabs/v3client/feature/drivedetect/CellPoller$a;

    if-nez v0, :cond_31

    new-instance v0, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller$a;

    invoke-direct {v0}, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller$a;-><init>()V

    sput-object v0, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->d:Lcom/locationlabs/v3client/feature/drivedetect/CellPoller$a;

    :cond_31
    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->d:Lcom/locationlabs/v3client/feature/drivedetect/CellPoller$a;

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_11
.end method
