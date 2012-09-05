.class public Lcom/vlingo/client/android/core/location/AndroidLocationUtils;
.super Lcom/vlingo/client/core/location/LocationUtils;
.source "AndroidLocationUtils.java"


# static fields
.field private static log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field private lastLat:D

.field private lastLong:D

.field private lastMCC:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 22
    invoke-direct {p0}, Lcom/vlingo/client/core/location/LocationUtils;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;->lastMCC:Ljava/lang/String;

    .line 27
    iput-wide v1, p0, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;->lastLong:D

    .line 28
    iput-wide v1, p0, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;->lastLat:D

    return-void
.end method

.method private getCurrentContext()Landroid/content/Context;
    .registers 3

    .prologue
    .line 31
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplication()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 32
    .local v0, app:Landroid/app/Application;
    if-eqz v0, :cond_11

    .line 33
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 35
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method


# virtual methods
.method protected _getCellTowerInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;->_getCellTowerInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected _getCellTowerInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 18
    .parameter "context"

    .prologue
    .line 70
    if-eqz p1, :cond_185

    .line 71
    const-string v13, "location"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationManager;

    .line 72
    .local v5, lm:Landroid/location/LocationManager;
    new-instance v3, Landroid/location/Criteria;

    invoke-direct {v3}, Landroid/location/Criteria;-><init>()V

    .line 73
    .local v3, cr:Landroid/location/Criteria;
    const/4 v13, 0x2

    invoke-virtual {v3, v13}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 74
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 75
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 76
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 77
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 79
    new-instance v8, Ljava/lang/StringBuffer;

    const/16 v13, 0x32

    invoke-direct {v8, v13}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 81
    .local v8, locationStringBuffer:Ljava/lang/StringBuffer;
    const/4 v13, 0x1

    invoke-virtual {v5, v3, v13}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v11

    .line 84
    .local v11, provider:Ljava/lang/String;
    if-eqz v11, :cond_7f

    .line 85
    invoke-virtual {v5, v11}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 86
    .local v6, loc:Landroid/location/Location;
    if-eqz v6, :cond_7f

    .line 87
    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;->lastLat:D

    .line 88
    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;->lastLong:D

    .line 89
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Lat="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;->lastLat:D

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";Long="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;->lastLong:D

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";Alt="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Landroid/location/Location;->getAltitude()D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    .end local v6           #loc:Landroid/location/Location;
    :cond_7f
    const-string v13, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 93
    .local v12, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    .line 94
    .local v2, cloc:Landroid/telephony/CellLocation;
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, networkInfo:Ljava/lang/String;
    if-nez v9, :cond_109

    .line 97
    const-string v9, "0000"

    .line 111
    :goto_95
    instance-of v13, v2, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v13, :cond_11d

    move-object v1, v2

    .line 112
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 114
    .local v1, cdmaloc:Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-lez v13, :cond_a7

    const/16 v13, 0x3b

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 115
    :cond_a7
    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;->lastMCC:Ljava/lang/String;

    .line 116
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CDMA_MCC="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;->lastMCC:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";CDMA_MNC="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x3

    invoke-virtual {v9, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";BID="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";SID="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";NID="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    .end local v1           #cdmaloc:Landroid/telephony/cdma/CdmaCellLocation;
    :cond_104
    :goto_104
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 141
    .end local v2           #cloc:Landroid/telephony/CellLocation;
    .end local v3           #cr:Landroid/location/Criteria;
    .end local v5           #lm:Landroid/location/LocationManager;
    .end local v8           #locationStringBuffer:Ljava/lang/StringBuffer;
    .end local v9           #networkInfo:Ljava/lang/String;
    .end local v11           #provider:Ljava/lang/String;
    .end local v12           #tm:Landroid/telephony/TelephonyManager;
    :goto_108
    return-object v7

    .line 100
    .restart local v2       #cloc:Landroid/telephony/CellLocation;
    .restart local v3       #cr:Landroid/location/Criteria;
    .restart local v5       #lm:Landroid/location/LocationManager;
    .restart local v8       #locationStringBuffer:Ljava/lang/StringBuffer;
    .restart local v9       #networkInfo:Ljava/lang/String;
    .restart local v11       #provider:Ljava/lang/String;
    .restart local v12       #tm:Landroid/telephony/TelephonyManager;
    :cond_109
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x4

    if-ge v13, v14, :cond_113

    .line 101
    const-string v9, "0000"

    goto :goto_95

    .line 104
    :cond_113
    :try_start_113
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_116
    .catch Ljava/lang/NumberFormatException; {:try_start_113 .. :try_end_116} :catch_118

    goto/16 :goto_95

    .line 105
    :catch_118
    move-exception v10

    .line 106
    .local v10, numForEx:Ljava/lang/NumberFormatException;
    const-string v9, "0000"

    goto/16 :goto_95

    .line 122
    .end local v10           #numForEx:Ljava/lang/NumberFormatException;
    :cond_11d
    instance-of v13, v2, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v13, :cond_104

    move-object v4, v2

    .line 123
    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 125
    .local v4, gsmloc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-lez v13, :cond_12f

    const/16 v13, 0x3b

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 126
    :cond_12f
    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;->lastMCC:Ljava/lang/String;

    .line 127
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GSM_MCC="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;->lastMCC:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";GSM_MNC="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x3

    invoke-virtual {v9, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";CID="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";LAC="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";RAC=0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_104

    .line 141
    .end local v2           #cloc:Landroid/telephony/CellLocation;
    .end local v3           #cr:Landroid/location/Criteria;
    .end local v4           #gsmloc:Landroid/telephony/gsm/GsmCellLocation;
    .end local v5           #lm:Landroid/location/LocationManager;
    .end local v8           #locationStringBuffer:Ljava/lang/StringBuffer;
    .end local v9           #networkInfo:Ljava/lang/String;
    .end local v11           #provider:Ljava/lang/String;
    .end local v12           #tm:Landroid/telephony/TelephonyManager;
    :cond_185
    const-string v7, ""

    goto :goto_108
.end method

.method public _getLastLat()D
    .registers 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;->_getMCC()Ljava/lang/String;

    .line 56
    iget-wide v0, p0, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;->lastLat:D

    return-wide v0
.end method

.method public _getLastLong()D
    .registers 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;->_getMCC()Ljava/lang/String;

    .line 62
    iget-wide v0, p0, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;->lastLong:D

    return-wide v0
.end method

.method protected _getMCC()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;->lastMCC:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 43
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;->_getCellTowerInfo()Ljava/lang/String;

    .line 45
    :cond_7
    iget-object v0, p0, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;->lastMCC:Ljava/lang/String;

    return-object v0
.end method
