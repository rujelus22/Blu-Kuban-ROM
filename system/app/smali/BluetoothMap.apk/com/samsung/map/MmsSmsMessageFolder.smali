.class public Lcom/samsung/map/MmsSmsMessageFolder;
.super Lcom/samsung/map/MessageFolder;
.source "MmsSmsMessageFolder.java"


# static fields
.field private static smsMmsHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private content:Landroid/content/ContentResolver;

.field private deletedMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/map/DeletedSmsMms;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalPhoneName:Ljava/lang/String;

.field private mLocalPhoneNumber:Ljava/lang/String;

.field private messagesListingBuilder:Lcom/samsung/map/MessagesListingBuilder;

.field private sentPI:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 184
    invoke-direct {p0}, Lcom/samsung/map/MessageFolder;-><init>()V

    .line 163
    iput-object v2, p0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    .line 173
    iput-object v2, p0, Lcom/samsung/map/MmsSmsMessageFolder;->sentPI:Landroid/app/PendingIntent;

    .line 179
    iput-object v2, p0, Lcom/samsung/map/MmsSmsMessageFolder;->mLocalPhoneName:Ljava/lang/String;

    .line 181
    iput-object v2, p0, Lcom/samsung/map/MmsSmsMessageFolder;->mLocalPhoneNumber:Ljava/lang/String;

    .line 789
    iput-object v2, p0, Lcom/samsung/map/MmsSmsMessageFolder;->messagesListingBuilder:Lcom/samsung/map/MessagesListingBuilder;

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/map/MmsSmsMessageFolder;->deletedMessages:Ljava/util/ArrayList;

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/samsung/map/MmsSmsMessageFolder;->smsMmsHandlers:Ljava/util/ArrayList;

    .line 188
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 189
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_5d

    .line 190
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/map/MmsSmsMessageFolder;->mLocalPhoneName:Ljava/lang/String;

    .line 191
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/map/MmsSmsMessageFolder;->mLocalPhoneNumber:Ljava/lang/String;

    .line 192
    iget-object v2, p0, Lcom/samsung/map/MmsSmsMessageFolder;->mLocalPhoneName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 194
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 195
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_5e

    .line 196
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/map/MmsSmsMessageFolder;->mLocalPhoneName:Ljava/lang/String;

    .line 201
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_4c
    :goto_4c
    iget-object v2, p0, Lcom/samsung/map/MmsSmsMessageFolder;->mLocalPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 202
    const v2, 0x7f020001

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/map/MmsSmsMessageFolder;->mLocalPhoneNumber:Ljava/lang/String;

    .line 207
    :cond_5d
    return-void

    .line 198
    .restart local v0       #adapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_5e
    const-string v2, "MmsSmsMessageFolder"

    const-string v3, "device does not have BT or device is not ready"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method

.method static synthetic access$000(Lcom/samsung/map/MmsSmsMessageFolder;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static checkHandlers(Ljava/lang/Integer;)Z
    .registers 5
    .parameter "handle"

    .prologue
    const/4 v2, 0x0

    .line 286
    sget-object v3, Lcom/samsung/map/MmsSmsMessageFolder;->smsMmsHandlers:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 297
    :cond_5
    :goto_5
    return v2

    .line 290
    :cond_6
    sget-object v3, Lcom/samsung/map/MmsSmsMessageFolder;->smsMmsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 291
    .local v0, h:Ljava/lang/Integer;
    invoke-virtual {p0, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 292
    sget-object v2, Lcom/samsung/map/MmsSmsMessageFolder;->smsMmsHandlers:Ljava/util/ArrayList;

    sget-object v3, Lcom/samsung/map/MmsSmsMessageFolder;->smsMmsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 293
    const/4 v2, 0x1

    goto :goto_5
.end method

.method private getSMSDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 35
    .parameter "smsBody"
    .parameter "dateTime"
    .parameter "address"

    .prologue
    .line 978
    new-instance v26, Landroid/text/format/Time;

    invoke-direct/range {v26 .. v26}, Landroid/text/format/Time;-><init>()V

    .line 979
    .local v26, time:Landroid/text/format/Time;
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 981
    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v27

    .line 984
    .local v27, timeStr:Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v29, 0x2

    const/16 v30, 0x4

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x5

    const/16 v30, 0x7

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x8

    const/16 v30, 0xa

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0xb

    const/16 v30, 0xd

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0xe

    const/16 v30, 0x10

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x11

    const/16 v30, 0x13

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 991
    .local v25, tempTimeStr:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x6

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 992
    .local v23, tZoneStr:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x2

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 993
    .local v24, tempInt:I
    div-int/lit8 v22, v24, 0xf

    .line 995
    .local v22, tZone15offset:I
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x5

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x3

    move-object/from16 v0, v23

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    mul-int/lit8 v28, v28, 0x4

    add-int v22, v22, v28

    .line 996
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x6

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->charAt(I)C

    move-result v28

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_ef

    .line 997
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    .line 1000
    :cond_ef
    const-string v21, ""

    .line 1003
    .local v21, tZone15OffsetHexStr:Ljava/lang/String;
    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    const/16 v29, 0x10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_116

    .line 1004
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "0"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1006
    :cond_116
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1008
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1011
    const-string v9, ""

    .line 1012
    .local v9, encodedTimeStr:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_14b
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_194

    .line 1013
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    add-int/lit8 v29, v10, 0x1

    add-int/lit8 v30, v10, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1014
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    add-int/lit8 v29, v10, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1012
    add-int/lit8 v10, v10, 0x2

    goto :goto_14b

    .line 1017
    :cond_194
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 1020
    .local v7, byteAddress:[B
    const-string v16, "0681000000000004"

    .line 1023
    .local v16, smsPdu:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1024
    .local v18, strbufAddress:Ljava/lang/StringBuffer;
    const/4 v10, 0x0

    :goto_1aa
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_1de

    .line 1026
    aget-byte v28, v7, v10

    const/16 v29, 0x30

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_1db

    aget-byte v28, v7, v10

    const/16 v29, 0x39

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_1db

    .line 1027
    add-int/lit8 v28, v10, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1024
    :cond_1db
    add-int/lit8 v10, v10, 0x1

    goto :goto_1aa

    .line 1030
    :cond_1de
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 1032
    .local v5, addressLength:I
    const-string v6, ""

    .line 1034
    .local v6, addressLengthStr:Ljava/lang/String;
    and-int/lit16 v0, v5, 0xff

    move/from16 v28, v0

    const/16 v29, 0x10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_205

    .line 1035
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "0"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1037
    :cond_205
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1039
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1040
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "81"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1042
    new-instance v17, Ljava/lang/String;

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 1044
    .local v17, strAddress:Ljava/lang/String;
    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v11, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 1045
    .local v11, msg:[B
    const/16 v28, 0x2

    aget-byte v28, v11, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1046
    .local v4, addLength:I
    rem-int/lit8 v28, v4, 0x2

    if-eqz v28, :cond_275

    .line 1047
    add-int/lit8 v4, v4, 0x1

    .line 1049
    :cond_275
    div-int/lit8 v4, v4, 0x2

    .line 1052
    add-int/lit8 v13, v4, 0x7

    .line 1053
    .local v13, msgOffset:I
    array-length v0, v11

    move/from16 v28, v0

    sub-int v12, v28, v13

    .line 1055
    .local v12, msgLength:I
    new-instance v20, Ljava/lang/StringBuffer;

    mul-int/lit8 v28, v12, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1058
    .local v20, strbufMessage:Ljava/lang/StringBuffer;
    move v10, v13

    :goto_28a
    add-int v28, v12, v13

    move/from16 v0, v28

    if-ge v10, v0, :cond_2c6

    .line 1059
    aget-byte v28, v11, v10

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    const/16 v29, 0x10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_2a9

    .line 1060
    const-string v28, "0"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1062
    :cond_2a9
    aget-byte v28, v11, v10

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const/16 v30, 0x10

    invoke-static/range {v28 .. v30}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1058
    add-int/lit8 v10, v10, 0x1

    goto :goto_28a

    .line 1065
    :cond_2c6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v28

    div-int/lit8 v8, v28, 0x2

    .line 1066
    .local v8, encodedAddressLength:I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v28

    rem-int/lit8 v28, v28, 0x2

    if-eqz v28, :cond_2d6

    .line 1067
    add-int/lit8 v8, v8, 0x1

    .line 1070
    :cond_2d6
    new-instance v19, Ljava/lang/StringBuffer;

    mul-int/lit8 v28, v12, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1073
    .local v19, strbufAddress1:Ljava/lang/StringBuffer;
    const/4 v10, 0x4

    :goto_2e2
    add-int/lit8 v28, v8, 0x4

    move/from16 v0, v28

    if-ge v10, v0, :cond_31e

    .line 1074
    aget-byte v28, v11, v10

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    const/16 v29, 0x10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_301

    .line 1075
    const-string v28, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1077
    :cond_301
    aget-byte v28, v11, v10

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const/16 v30, 0x10

    invoke-static/range {v28 .. v30}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1073
    add-int/lit8 v10, v10, 0x1

    goto :goto_2e2

    .line 1080
    :cond_31e
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1081
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "0000"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1082
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1084
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    .line 1085
    .local v14, smsBodyLength:I
    const-string v15, ""

    .line 1087
    .local v15, smsMessageTextLengthStr:Ljava/lang/String;
    and-int/lit16 v0, v14, 0xff

    move/from16 v28, v0

    const/16 v29, 0x10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_38c

    .line 1088
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "0"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1090
    :cond_38c
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1092
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1093
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1094
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    .line 1095
    return-object v16
.end method

.method public static hexStringToPdu(Ljava/lang/String;)[B
    .registers 7
    .parameter "s"

    .prologue
    const/16 v5, 0x10

    .line 1827
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-array v2, v3, [B

    .line 1828
    .local v2, pdu:[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 1829
    .local v1, o:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v3, v2

    if-ge v0, v3, :cond_32

    .line 1830
    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 1829
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1833
    :cond_32
    return-object v2
.end method

.method private parseSubmitCDMAPdu([B)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    .line 2204
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2205
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2207
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 2208
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 2211
    :try_start_14
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 2212
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 2213
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 2215
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 2216
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 2217
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 2218
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 2220
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 2221
    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 2222
    new-array v4, v0, [B

    iput-object v4, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 2223
    iget-object v4, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Ljava/io/DataInputStream;->read([BII)I

    .line 2225
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 2227
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 2228
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 2229
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    .line 2232
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 2233
    new-array v4, v0, [B

    iput-object v4, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 2234
    iget-object v4, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Ljava/io/DataInputStream;->read([BII)I

    .line 2235
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_77} :catch_a1

    .line 2243
    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 2244
    const-string v0, ""

    .line 2246
    iget-object v1, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v1

    .line 2247
    if-eqz v1, :cond_a0

    .line 2250
    iget v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 2253
    iget-object v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v2, :cond_95

    .line 2254
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 2255
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 2256
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 2259
    :cond_95
    if-eqz v3, :cond_a0

    .line 2260
    new-instance v1, Ljava/lang/String;

    iget-object v2, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v3, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 2271
    :cond_a0
    :goto_a0
    return-object v0

    .line 2236
    :catch_a1
    move-exception v0

    .line 2237
    const-string v1, "MmsSmsMessageFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdma conversion from byte array to object failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    const/4 v0, 0x0

    goto :goto_a0
.end method

.method private parseSubmitGSMPdu([B)Ljava/lang/String;
    .registers 19
    .parameter "pdu"

    .prologue
    .line 2118
    new-instance v7, Lcom/samsung/map/SubmitPduGsmParser;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/samsung/map/SubmitPduGsmParser;-><init>([B)V

    .line 2120
    .local v7, p:Lcom/samsung/map/SubmitPduGsmParser;
    invoke-virtual {v7}, Lcom/samsung/map/SubmitPduGsmParser;->getSCAddress()Ljava/lang/String;

    move-result-object v10

    .line 2122
    .local v10, scAddress:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/samsung/map/SubmitPduGsmParser;->getByte()I

    move-result v4

    .line 2123
    .local v4, firstByte:I
    and-int/lit8 v15, v4, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_19

    .line 2124
    const/4 v5, 0x0

    .line 2200
    :goto_18
    return-object v5

    .line 2128
    :cond_19
    invoke-virtual {v7}, Lcom/samsung/map/SubmitPduGsmParser;->getByte()I

    move-result v6

    .line 2130
    .local v6, messageRef:I
    invoke-virtual {v7}, Lcom/samsung/map/SubmitPduGsmParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v8

    .line 2133
    .local v8, phone:Lcom/android/internal/telephony/SmsAddress;
    invoke-virtual {v7}, Lcom/samsung/map/SubmitPduGsmParser;->getByte()I

    move-result v9

    .line 2135
    .local v9, protocolId:I
    invoke-virtual {v7}, Lcom/samsung/map/SubmitPduGsmParser;->getByte()I

    move-result v2

    .line 2136
    .local v2, dataCodingScheme:I
    invoke-virtual {v7}, Lcom/samsung/map/SubmitPduGsmParser;->getByte()I

    move-result v14

    .line 2138
    .local v14, validity:I
    or-int/lit8 v2, v2, 0x13

    .line 2140
    const/4 v12, 0x0

    .line 2141
    .local v12, userDataCompressed:Z
    const/4 v3, 0x0

    .line 2143
    .local v3, encodingType:I
    and-int/lit16 v15, v2, 0x80

    if-nez v15, :cond_70

    .line 2144
    and-int/lit8 v15, v2, 0x20

    if-eqz v15, :cond_3e

    const/4 v12, 0x1

    .line 2146
    :goto_3a
    if-eqz v12, :cond_40

    .line 2147
    const/4 v5, 0x0

    goto :goto_18

    .line 2144
    :cond_3e
    const/4 v12, 0x0

    goto :goto_3a

    .line 2149
    :cond_40
    shr-int/lit8 v15, v2, 0x2

    and-int/lit8 v15, v15, 0x3

    packed-switch v15, :pswitch_data_b6

    .line 2179
    :cond_47
    :goto_47
    :pswitch_47
    and-int/lit8 v15, v4, 0x40

    const/16 v16, 0x40

    move/from16 v0, v16

    if-ne v15, v0, :cond_a4

    const/4 v15, 0x1

    move/from16 v16, v15

    :goto_52
    const/4 v15, 0x1

    if-ne v3, v15, :cond_a8

    const/4 v15, 0x1

    :goto_56
    move/from16 v0, v16

    invoke-virtual {v7, v0, v15}, Lcom/samsung/map/SubmitPduGsmParser;->constructUserData(ZZ)I

    move-result v1

    .line 2181
    .local v1, count:I
    invoke-virtual {v7}, Lcom/samsung/map/SubmitPduGsmParser;->getUserData()[B

    move-result-object v11

    .line 2182
    .local v11, userData:[B
    invoke-virtual {v7}, Lcom/samsung/map/SubmitPduGsmParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v13

    .line 2184
    .local v13, userDataHeader:Lcom/android/internal/telephony/SmsHeader;
    const-string v5, ""

    .line 2185
    .local v5, messageBody:Ljava/lang/String;
    packed-switch v3, :pswitch_data_c0

    goto :goto_18

    .line 2188
    :pswitch_6a
    const/4 v5, 0x0

    .line 2189
    goto :goto_18

    .line 2151
    .end local v1           #count:I
    .end local v5           #messageBody:Ljava/lang/String;
    .end local v11           #userData:[B
    .end local v13           #userDataHeader:Lcom/android/internal/telephony/SmsHeader;
    :pswitch_6c
    const/4 v3, 0x1

    .line 2152
    goto :goto_47

    .line 2154
    :pswitch_6e
    const/4 v3, 0x3

    .line 2155
    goto :goto_47

    .line 2161
    :cond_70
    and-int/lit16 v15, v2, 0xf0

    const/16 v16, 0xf0

    move/from16 v0, v16

    if-ne v15, v0, :cond_80

    .line 2162
    and-int/lit8 v15, v2, 0x4

    if-nez v15, :cond_7e

    .line 2164
    const/4 v3, 0x1

    goto :goto_47

    .line 2167
    :cond_7e
    const/4 v3, 0x2

    goto :goto_47

    .line 2169
    :cond_80
    and-int/lit16 v15, v2, 0xf0

    const/16 v16, 0xc0

    move/from16 v0, v16

    if-eq v15, v0, :cond_98

    and-int/lit16 v15, v2, 0xf0

    const/16 v16, 0xd0

    move/from16 v0, v16

    if-eq v15, v0, :cond_98

    and-int/lit16 v15, v2, 0xf0

    const/16 v16, 0xe0

    move/from16 v0, v16

    if-ne v15, v0, :cond_47

    .line 2171
    :cond_98
    and-int/lit16 v15, v2, 0xf0

    const/16 v16, 0xe0

    move/from16 v0, v16

    if-ne v15, v0, :cond_a2

    .line 2172
    const/4 v3, 0x3

    goto :goto_47

    .line 2174
    :cond_a2
    const/4 v3, 0x0

    goto :goto_47

    .line 2179
    :cond_a4
    const/4 v15, 0x0

    move/from16 v16, v15

    goto :goto_52

    :cond_a8
    const/4 v15, 0x0

    goto :goto_56

    .line 2191
    .restart local v1       #count:I
    .restart local v5       #messageBody:Ljava/lang/String;
    .restart local v11       #userData:[B
    .restart local v13       #userDataHeader:Lcom/android/internal/telephony/SmsHeader;
    :pswitch_aa
    invoke-virtual {v7, v1}, Lcom/samsung/map/SubmitPduGsmParser;->getUserDataGSM7Bit(I)Ljava/lang/String;

    move-result-object v5

    .line 2192
    goto/16 :goto_18

    .line 2194
    :pswitch_b0
    invoke-virtual {v7, v1}, Lcom/samsung/map/SubmitPduGsmParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_18

    .line 2149
    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_47
        :pswitch_6e
    .end packed-switch

    .line 2185
    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_aa
        :pswitch_6a
        :pswitch_b0
    .end packed-switch
.end method


# virtual methods
.method public GetMessage(IZII)Lcom/samsung/map/MessageFolder$GetMessageResponse;
    .registers 9
    .parameter "Handle"
    .parameter "Attachment"
    .parameter "Charset"
    .parameter "FractionRequest"

    .prologue
    .line 1344
    new-instance v1, Lcom/samsung/map/MessageFolder$GetMessageResponse;

    invoke-direct {v1, p0}, Lcom/samsung/map/MessageFolder$GetMessageResponse;-><init>(Lcom/samsung/map/MessageFolder;)V

    .line 1348
    .local v1, ret:Lcom/samsung/map/MessageFolder$GetMessageResponse;
    const/4 v3, -0x1

    if-eq p4, v3, :cond_b

    .line 1349
    const/4 v3, 0x1

    iput v3, v1, Lcom/samsung/map/MessageFolder$GetMessageResponse;->FractionDeliver:I

    .line 1352
    :cond_b
    invoke-static {p1}, Lcom/samsung/map/MmsSmsMessageFolder;->getMsgType(I)I

    move-result v2

    .line 1353
    .local v2, type:I
    invoke-static {p1}, Lcom/samsung/map/MmsSmsMessageFolder;->mapIdToBase(I)I

    move-result v0

    .line 1355
    .local v0, msg_id:I
    const/16 v3, 0x8

    if-ne v2, v3, :cond_1c

    .line 1356
    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/map/MmsSmsMessageFolder;->getMmsMessage(IZI)Lcom/samsung/map/MessageFolder$GetMessageResponse;

    move-result-object v1

    .line 1361
    :goto_1b
    return-object v1

    .line 1358
    :cond_1c
    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/map/MmsSmsMessageFolder;->getSmsMessage(IZI)Lcom/samsung/map/MessageFolder$GetMessageResponse;

    move-result-object v1

    goto :goto_1b
.end method

.method public PushMessage(Ljava/lang/String;ZZILcom/samsung/map/bmessage/BMessage;)Lcom/samsung/map/MessageFolder$PushMessageResponse;
    .registers 15
    .parameter "folder"
    .parameter "Transparent"
    .parameter "Retry"
    .parameter "Charset"
    .parameter "msg"

    .prologue
    const/16 v2, 0xc0

    .line 1800
    iget-object v0, p0, Lcom/samsung/map/MessageFolder;->currentFolder:Lcom/samsung/map/FolderEntry;

    invoke-virtual {v0, p1}, Lcom/samsung/map/FolderEntry;->cd(Ljava/lang/String;)Lcom/samsung/map/FolderEntry;

    move-result-object v6

    .line 1802
    .local v6, Folder:Lcom/samsung/map/FolderEntry;
    if-nez v6, :cond_14

    .line 1803
    new-instance v7, Lcom/samsung/map/MessageFolder$PushMessageResponse;

    invoke-direct {v7, p0}, Lcom/samsung/map/MessageFolder$PushMessageResponse;-><init>(Lcom/samsung/map/MessageFolder;)V

    .line 1804
    .local v7, mr:Lcom/samsung/map/MessageFolder$PushMessageResponse;
    const/16 v0, 0xc4

    iput v0, v7, Lcom/samsung/map/MessageFolder$PushMessageResponse;->status:I

    .line 1822
    .end local v7           #mr:Lcom/samsung/map/MessageFolder$PushMessageResponse;
    :goto_13
    return-object v7

    .line 1808
    :cond_14
    invoke-virtual {p0, v6}, Lcom/samsung/map/MmsSmsMessageFolder;->getSmsFolderID(Lcom/samsung/map/FolderEntry;)I

    move-result v0

    if-ltz v0, :cond_20

    invoke-virtual {p0, v6}, Lcom/samsung/map/MmsSmsMessageFolder;->getMmsFolderID(Lcom/samsung/map/FolderEntry;)I

    move-result v0

    if-gez v0, :cond_26

    .line 1809
    :cond_20
    new-instance v7, Lcom/samsung/map/MessageFolder$PushMessageResponse;

    invoke-direct {v7, p0, v2}, Lcom/samsung/map/MessageFolder$PushMessageResponse;-><init>(Lcom/samsung/map/MessageFolder;I)V

    goto :goto_13

    .line 1812
    :cond_26
    invoke-virtual {v6}, Lcom/samsung/map/FolderEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1815
    .local v8, subfolder:Ljava/lang/String;
    iget-object v0, p5, Lcom/samsung/map/bmessage/BMessage;->property:Lcom/samsung/map/bmessage/BMessageProperty;

    iget v0, v0, Lcom/samsung/map/bmessage/BMessageProperty;->Type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_38

    iget-object v0, p5, Lcom/samsung/map/bmessage/BMessage;->property:Lcom/samsung/map/bmessage/BMessageProperty;

    iget v0, v0, Lcom/samsung/map/bmessage/BMessageProperty;->Type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_46

    .line 1817
    :cond_38
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/map/MmsSmsMessageFolder;->pushSmsMessage(Ljava/lang/String;ZZILcom/samsung/map/bmessage/BMessage;)Lcom/samsung/map/MessageFolder$PushMessageResponse;

    move-result-object v7

    goto :goto_13

    .line 1818
    :cond_46
    iget-object v0, p5, Lcom/samsung/map/bmessage/BMessage;->property:Lcom/samsung/map/bmessage/BMessageProperty;

    iget v0, v0, Lcom/samsung/map/bmessage/BMessageProperty;->Type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5c

    .line 1819
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/map/MmsSmsMessageFolder;->pushMmsMessage(Ljava/lang/String;ZZILcom/samsung/map/bmessage/BMessage;)Lcom/samsung/map/MessageFolder$PushMessageResponse;

    move-result-object v7

    goto :goto_13

    .line 1822
    :cond_5c
    new-instance v7, Lcom/samsung/map/MessageFolder$PushMessageResponse;

    invoke-direct {v7, p0, v2}, Lcom/samsung/map/MessageFolder$PushMessageResponse;-><init>(Lcom/samsung/map/MessageFolder;I)V

    goto :goto_13
.end method

.method public SetStatus(III)I
    .registers 18
    .parameter "handle"
    .parameter "StatusIndicator"
    .parameter "StatusValue"

    .prologue
    .line 1366
    invoke-static {p1}, Lcom/samsung/map/MmsSmsMessageFolder;->getMsgType(I)I

    move-result v12

    .line 1367
    .local v12, type:I
    invoke-static {p1}, Lcom/samsung/map/MmsSmsMessageFolder;->mapIdToBase(I)I

    move-result v11

    .line 1369
    .local v11, msg_id:I
    const/16 v0, 0x8

    if-ne v12, v0, :cond_c2

    .line 1370
    const/4 v6, 0x0

    .line 1371
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mms/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1372
    .local v13, uriStr:Ljava/lang/String;
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1374
    .local v1, uri:Landroid/net/Uri;
    :try_start_24
    iget-object v0, p0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_33

    move-result-object v6

    .line 1387
    :cond_2e
    :goto_2e
    if-nez v6, :cond_5d

    .line 1388
    const/16 v0, 0xc4

    .line 1472
    :goto_32
    return v0

    .line 1375
    :catch_33
    move-exception v8

    .line 1376
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "MmsSmsMessageFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exeption = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    if-eqz v6, :cond_2e

    .line 1379
    :try_start_52
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_5a
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_57

    .line 1382
    const/4 v6, 0x0

    .line 1383
    goto :goto_2e

    .line 1380
    :catch_57
    move-exception v0

    .line 1382
    const/4 v6, 0x0

    .line 1383
    goto :goto_2e

    .line 1382
    :catchall_5a
    move-exception v0

    const/4 v6, 0x0

    throw v0

    .line 1391
    .end local v8           #e:Ljava/lang/Exception;
    :cond_5d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_69

    .line 1392
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1393
    const/16 v0, 0xc4

    goto :goto_32

    .line 1396
    :cond_69
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1398
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_8a

    .line 1399
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1400
    .local v7, cv:Landroid/content/ContentValues;
    const-string v0, "read_status"

    and-int/lit8 v2, p3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1401
    iget-object v0, p0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1419
    .end local v7           #cv:Landroid/content/ContentValues;
    :goto_87
    const/16 v0, 0xa0

    goto :goto_32

    .line 1403
    :cond_8a
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_be

    .line 1404
    new-instance v10, Lcom/samsung/map/DeletedSmsMms;

    invoke-direct {v10}, Lcom/samsung/map/DeletedSmsMms;-><init>()V

    .line 1405
    .local v10, msg:Lcom/samsung/map/DeletedSmsMms;
    invoke-virtual {p0, v1, v10}, Lcom/samsung/map/MmsSmsMessageFolder;->buildDeletedMMS(Landroid/net/Uri;Lcom/samsung/map/DeletedSmsMms;)V

    .line 1406
    iget-object v0, p0, Lcom/samsung/map/MmsSmsMessageFolder;->deletedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1407
    invoke-static {}, Lcom/samsung/map/MmsObserver;->lockObserver()V

    .line 1408
    iget-object v0, p0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1409
    sget-object v0, Lcom/samsung/map/MmsSmsMessageFolder;->smsMmsHandlers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1410
    invoke-static {}, Lcom/samsung/map/MmsObserver;->unlockObserver()V

    .line 1411
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.samsung.map.intent.action.MNS_CHECKMSG"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1412
    .local v9, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/samsung/map/MessageFolder;->context:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_87

    .line 1415
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #msg:Lcom/samsung/map/DeletedSmsMms;
    :cond_be
    const/16 v0, 0xc4

    goto/16 :goto_32

    .line 1421
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v13           #uriStr:Ljava/lang/String;
    :cond_c2
    const/4 v6, 0x0

    .line 1422
    .restart local v6       #cursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://sms/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1423
    .restart local v13       #uriStr:Ljava/lang/String;
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1425
    .restart local v1       #uri:Landroid/net/Uri;
    :try_start_da
    iget-object v0, p0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e3} :catch_f1

    move-result-object v6

    .line 1438
    :cond_e4
    :goto_e4
    if-nez v6, :cond_11b

    .line 1439
    const-string v0, "mmssmsmessagefolder"

    const-string v2, "null cursor"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    const/16 v0, 0xc4

    goto/16 :goto_32

    .line 1426
    :catch_f1
    move-exception v8

    .line 1427
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v0, "MmsSmsMessageFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exeption = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    if-eqz v6, :cond_e4

    .line 1430
    :try_start_110
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_113
    .catchall {:try_start_110 .. :try_end_113} :catchall_118
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_113} :catch_115

    .line 1433
    const/4 v6, 0x0

    .line 1434
    goto :goto_e4

    .line 1431
    :catch_115
    move-exception v0

    .line 1433
    const/4 v6, 0x0

    .line 1434
    goto :goto_e4

    .line 1433
    :catchall_118
    move-exception v0

    const/4 v6, 0x0

    throw v0

    .line 1443
    .end local v8           #e:Ljava/lang/Exception;
    :cond_11b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_12f

    .line 1444
    const-string v0, "mmssmsmessagefolder"

    const-string v2, "null rows"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1446
    const/16 v0, 0xc4

    goto/16 :goto_32

    .line 1449
    :cond_12f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1451
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_151

    .line 1452
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1453
    .restart local v7       #cv:Landroid/content/ContentValues;
    const-string v0, "read"

    and-int/lit8 v2, p3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1454
    iget-object v0, p0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1472
    .end local v7           #cv:Landroid/content/ContentValues;
    :goto_14d
    const/16 v0, 0xa0

    goto/16 :goto_32

    .line 1456
    :cond_151
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_185

    .line 1457
    new-instance v10, Lcom/samsung/map/DeletedSmsMms;

    invoke-direct {v10}, Lcom/samsung/map/DeletedSmsMms;-><init>()V

    .line 1458
    .restart local v10       #msg:Lcom/samsung/map/DeletedSmsMms;
    invoke-virtual {p0, v1, v10}, Lcom/samsung/map/MmsSmsMessageFolder;->buildDeletedSMS(Landroid/net/Uri;Lcom/samsung/map/DeletedSmsMms;)V

    .line 1459
    iget-object v0, p0, Lcom/samsung/map/MmsSmsMessageFolder;->deletedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1460
    invoke-static {}, Lcom/samsung/map/SmsObserver;->lockObserver()V

    .line 1461
    iget-object v0, p0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1462
    sget-object v0, Lcom/samsung/map/MmsSmsMessageFolder;->smsMmsHandlers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1463
    invoke-static {}, Lcom/samsung/map/SmsObserver;->unlockObserver()V

    .line 1464
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.samsung.map.intent.action.MNS_CHECKMSG"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1465
    .restart local v9       #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/samsung/map/MessageFolder;->context:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_14d

    .line 1468
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #msg:Lcom/samsung/map/DeletedSmsMms;
    :cond_185
    const/16 v0, 0xc4

    goto/16 :goto_32
.end method

.method buildDeletedMMS(Landroid/net/Uri;Lcom/samsung/map/DeletedSmsMms;)V
    .registers 45
    .parameter "uri"
    .parameter "msg"

    .prologue
    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 464
    .local v26, cursor:Landroid/database/Cursor;
    if-eqz v26, :cond_2c4

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2c4

    .line 465
    const-string v2, "_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 466
    .local v34, msg_id:I
    const-string v2, "sub"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 467
    .local v41, subject:Ljava/lang/String;
    new-instance v31, Ljava/util/Date;

    const-string v2, "date"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    move-object/from16 v0, v31

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 468
    .local v31, date_time:Ljava/util/Date;
    const/16 v40, 0x0

    .line 469
    .local v40, sender_name:Ljava/lang/String;
    const/16 v39, 0x0

    .line 470
    .local v39, sender_addressing:Ljava/lang/String;
    const/4 v9, 0x0

    .line 471
    .local v9, recipient_name:Ljava/lang/String;
    const/4 v10, 0x0

    .line 474
    .local v10, recipient_addressing:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/addr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "type"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "address"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 479
    .local v20, addrCursor:Landroid/database/Cursor;
    if-eqz v20, :cond_13f

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_13f

    .line 480
    const-string v2, "type"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 481
    .local v23, col_type:I
    const-string v2, "address"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 484
    .local v22, col_address:I
    :cond_9f
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 485
    .local v11, type:I
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 486
    .local v21, address:Ljava/lang/String;
    const-string v35, ""

    .line 488
    .local v35, name:Ljava/lang/String;
    const-string v2, "insert-address-token"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 489
    const-string v21, ""

    .line 492
    :cond_c5
    invoke-static/range {v21 .. v21}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d1

    invoke-static/range {v21 .. v21}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d3

    .line 493
    :cond_d1
    const-string v21, ""

    .line 496
    :cond_d3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_136

    invoke-static/range {v21 .. v21}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_136

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "display_name"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v38

    .line 504
    .local v38, phones:Landroid/database/Cursor;
    if-eqz v38, :cond_131

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_131

    .line 506
    :cond_115
    const-string v2, "display_name"

    move-object/from16 v0, v38

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v38

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 509
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_131

    const-string v2, ""

    move-object/from16 v0, v35

    if-eq v0, v2, :cond_115

    if-eqz v35, :cond_115

    .line 512
    :cond_131
    if-eqz v38, :cond_136

    .line 513
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    .line 517
    .end local v38           #phones:Landroid/database/Cursor;
    :cond_136
    sparse-switch v11, :sswitch_data_2d2

    .line 528
    :goto_139
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_9f

    .line 531
    .end local v11           #type:I
    .end local v21           #address:Ljava/lang/String;
    .end local v22           #col_address:I
    .end local v23           #col_type:I
    .end local v35           #name:Ljava/lang/String;
    :cond_13f
    if-eqz v20, :cond_144

    .line 532
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 535
    :cond_144
    const/16 v19, 0x0

    .line 536
    .local v19, protect:Z
    const/4 v13, 0x0

    .line 537
    .local v13, text:Z
    const-string v2, "msg_box"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, -0x6

    if-ne v2, v4, :cond_1e7

    const/16 v18, 0x1

    .line 538
    .local v18, sent:Z
    :goto_15a
    const-string v2, "read_status"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1eb

    const/16 v17, 0x1

    .line 539
    .local v17, read:Z
    :goto_16c
    const-string v2, "pri"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v4, 0x82

    if-ne v2, v4, :cond_1ef

    const/16 v16, 0x1

    .line 540
    .local v16, priority:Z
    :goto_180
    const/4 v15, 0x0

    .line 541
    .local v15, attachment_size:I
    const/4 v14, 0x0

    .line 542
    .local v14, reception_status:I
    const-string v2, "m_size"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 543
    .local v12, size:I
    const-string v2, "ct_t"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 545
    .local v24, content_type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ct"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "_data"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 550
    .local v36, parts:Landroid/database/Cursor;
    if-nez v24, :cond_1f2

    .line 551
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 616
    .end local v9           #recipient_name:Ljava/lang/String;
    .end local v10           #recipient_addressing:Ljava/lang/String;
    .end local v12           #size:I
    .end local v13           #text:Z
    .end local v14           #reception_status:I
    .end local v15           #attachment_size:I
    .end local v16           #priority:Z
    .end local v17           #read:Z
    .end local v18           #sent:Z
    .end local v19           #protect:Z
    .end local v20           #addrCursor:Landroid/database/Cursor;
    .end local v24           #content_type:Ljava/lang/String;
    .end local v31           #date_time:Ljava/util/Date;
    .end local v34           #msg_id:I
    .end local v36           #parts:Landroid/database/Cursor;
    .end local v39           #sender_addressing:Ljava/lang/String;
    .end local v40           #sender_name:Ljava/lang/String;
    .end local v41           #subject:Ljava/lang/String;
    :cond_1da
    :goto_1da
    return-void

    .line 519
    .restart local v9       #recipient_name:Ljava/lang/String;
    .restart local v10       #recipient_addressing:Ljava/lang/String;
    .restart local v11       #type:I
    .restart local v20       #addrCursor:Landroid/database/Cursor;
    .restart local v21       #address:Ljava/lang/String;
    .restart local v22       #col_address:I
    .restart local v23       #col_type:I
    .restart local v31       #date_time:Ljava/util/Date;
    .restart local v34       #msg_id:I
    .restart local v35       #name:Ljava/lang/String;
    .restart local v39       #sender_addressing:Ljava/lang/String;
    .restart local v40       #sender_name:Ljava/lang/String;
    .restart local v41       #subject:Ljava/lang/String;
    :sswitch_1db
    move-object/from16 v10, v21

    .line 520
    move-object/from16 v9, v35

    .line 521
    goto/16 :goto_139

    .line 523
    :sswitch_1e1
    move-object/from16 v39, v21

    .line 524
    move-object/from16 v40, v35

    goto/16 :goto_139

    .line 537
    .end local v11           #type:I
    .end local v21           #address:Ljava/lang/String;
    .end local v22           #col_address:I
    .end local v23           #col_type:I
    .end local v35           #name:Ljava/lang/String;
    .restart local v13       #text:Z
    .restart local v19       #protect:Z
    :cond_1e7
    const/16 v18, 0x0

    goto/16 :goto_15a

    .line 538
    .restart local v18       #sent:Z
    :cond_1eb
    const/16 v17, 0x0

    goto/16 :goto_16c

    .line 539
    .restart local v17       #read:Z
    :cond_1ef
    const/16 v16, 0x0

    goto :goto_180

    .line 555
    .restart local v12       #size:I
    .restart local v14       #reception_status:I
    .restart local v15       #attachment_size:I
    .restart local v16       #priority:Z
    .restart local v24       #content_type:Ljava/lang/String;
    .restart local v36       #parts:Landroid/database/Cursor;
    :cond_1f2
    const-string v2, "text/plain"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23b

    .line 556
    const/4 v13, 0x1

    .line 569
    :cond_1fd
    :goto_1fd
    if-eqz v36, :cond_2a9

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2a9

    .line 570
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v37

    .line 571
    .local v37, parts_count:I
    const-string v2, "_data"

    move-object/from16 v0, v36

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 572
    .local v29, data_col:I
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v30, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v27, 0x0

    .local v27, d:I
    :goto_218
    move/from16 v0, v27

    move/from16 v1, v37

    if-ge v0, v1, :cond_26c

    .line 575
    move-object/from16 v0, v36

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_235

    .line 576
    move-object/from16 v0, v36

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    :cond_235
    add-int/lit8 v27, v27, 0x1

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_218

    .line 557
    .end local v27           #d:I
    .end local v29           #data_col:I
    .end local v30           #datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v37           #parts_count:I
    :cond_23b
    const-string v2, "multipart"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1fd

    .line 559
    if-eqz v36, :cond_1fd

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1fd

    .line 560
    const-string v2, "ct"

    move-object/from16 v0, v36

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 563
    .local v25, ct_column:I
    :cond_255
    move-object/from16 v0, v36

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/plain"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 564
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1fd

    if-eqz v13, :cond_255

    goto :goto_1fd

    .line 579
    .end local v25           #ct_column:I
    .restart local v27       #d:I
    .restart local v29       #data_col:I
    .restart local v30       #datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v37       #parts_count:I
    :cond_26c
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2a9

    .line 580
    const/16 v32, 0x0

    .line 581
    .local v32, drm:Landroid/database/Cursor;
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, i$:Ljava/util/Iterator;
    :cond_278
    :goto_278
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a9

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 582
    .local v28, dat:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    const-string v4, "content://mms/drm/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_data =?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v28, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 586
    if-eqz v32, :cond_2cb

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2cb

    .line 587
    const/16 v19, 0x1

    .line 588
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 598
    .end local v27           #d:I
    .end local v28           #dat:Ljava/lang/String;
    .end local v29           #data_col:I
    .end local v30           #datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v32           #drm:Landroid/database/Cursor;
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v37           #parts_count:I
    :cond_2a9
    if-eqz v36, :cond_2ae

    .line 599
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 605
    :cond_2ae
    const/16 v11, 0x8

    .line 606
    .restart local v11       #type:I
    move/from16 v0, v34

    invoke-static {v0, v11}, Lcom/samsung/map/MmsSmsMessageFolder;->baseToMapID(II)I

    move-result v3

    .line 608
    .local v3, handle:I
    const/4 v8, 0x0

    move-object/from16 v2, p2

    move-object/from16 v4, v41

    move-object/from16 v5, v31

    move-object/from16 v6, v40

    move-object/from16 v7, v39

    invoke-virtual/range {v2 .. v19}, Lcom/samsung/map/DeletedSmsMms;->add(ILjava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIIZZZZ)V

    .line 613
    .end local v3           #handle:I
    .end local v9           #recipient_name:Ljava/lang/String;
    .end local v10           #recipient_addressing:Ljava/lang/String;
    .end local v11           #type:I
    .end local v12           #size:I
    .end local v13           #text:Z
    .end local v14           #reception_status:I
    .end local v15           #attachment_size:I
    .end local v16           #priority:Z
    .end local v17           #read:Z
    .end local v18           #sent:Z
    .end local v19           #protect:Z
    .end local v20           #addrCursor:Landroid/database/Cursor;
    .end local v24           #content_type:Ljava/lang/String;
    .end local v31           #date_time:Ljava/util/Date;
    .end local v34           #msg_id:I
    .end local v36           #parts:Landroid/database/Cursor;
    .end local v39           #sender_addressing:Ljava/lang/String;
    .end local v40           #sender_name:Ljava/lang/String;
    .end local v41           #subject:Ljava/lang/String;
    :cond_2c4
    if-eqz v26, :cond_1da

    .line 614
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1da

    .line 591
    .restart local v9       #recipient_name:Ljava/lang/String;
    .restart local v10       #recipient_addressing:Ljava/lang/String;
    .restart local v12       #size:I
    .restart local v13       #text:Z
    .restart local v14       #reception_status:I
    .restart local v15       #attachment_size:I
    .restart local v16       #priority:Z
    .restart local v17       #read:Z
    .restart local v18       #sent:Z
    .restart local v19       #protect:Z
    .restart local v20       #addrCursor:Landroid/database/Cursor;
    .restart local v24       #content_type:Ljava/lang/String;
    .restart local v27       #d:I
    .restart local v28       #dat:Ljava/lang/String;
    .restart local v29       #data_col:I
    .restart local v30       #datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v31       #date_time:Ljava/util/Date;
    .restart local v32       #drm:Landroid/database/Cursor;
    .restart local v33       #i$:Ljava/util/Iterator;
    .restart local v34       #msg_id:I
    .restart local v36       #parts:Landroid/database/Cursor;
    .restart local v37       #parts_count:I
    .restart local v39       #sender_addressing:Ljava/lang/String;
    .restart local v40       #sender_name:Ljava/lang/String;
    .restart local v41       #subject:Ljava/lang/String;
    :cond_2cb
    if-eqz v32, :cond_278

    .line 592
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    goto :goto_278

    .line 517
    nop

    :sswitch_data_2d2
    .sparse-switch
        0x89 -> :sswitch_1e1
        0x97 -> :sswitch_1db
    .end sparse-switch
.end method

.method buildDeletedSMS(Landroid/net/Uri;Lcom/samsung/map/DeletedSmsMms;)V
    .registers 32
    .parameter "uri"
    .parameter "msg"

    .prologue
    .line 394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 396
    .local v22, cursor:Landroid/database/Cursor;
    if-eqz v22, :cond_105

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_105

    .line 397
    const-string v1, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 398
    .local v23, msg_id:I
    const-string v1, "subject"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 400
    .local v28, subject:Ljava/lang/String;
    new-instance v19, Ljava/util/Date;

    const-string v1, "date"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 402
    .local v19, DateTime:Ljava/util/Date;
    const/16 v27, 0x0

    .line 403
    .local v27, sender_name:Ljava/lang/String;
    const/16 v26, 0x0

    .line 404
    .local v26, sender_addressing:Ljava/lang/String;
    const/4 v8, 0x0

    .line 405
    .local v8, recipient_name:Ljava/lang/String;
    const-string v9, ""

    .line 406
    .local v9, recipient_addressing:Ljava/lang/String;
    const-string v1, "address"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 407
    .local v20, address:Ljava/lang/String;
    const/16 v24, 0x0

    .line 409
    .local v24, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "data1"

    aput-object v7, v3, v4

    const/4 v4, 0x1

    const-string v7, "display_name"

    aput-object v7, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 417
    .local v25, phones:Landroid/database/Cursor;
    if-eqz v25, :cond_9c

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 419
    :cond_80
    const-string v1, "display_name"

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 421
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9c

    const-string v1, ""

    move-object/from16 v0, v24

    if-eq v0, v1, :cond_80

    if-eqz v24, :cond_80

    .line 424
    :cond_9c
    if-eqz v25, :cond_a1

    .line 425
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 428
    :cond_a1
    const-string v1, "type"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 429
    .local v21, box:I
    const/4 v1, -0x4

    move/from16 v0, v21

    if-ne v0, v1, :cond_10b

    .line 430
    move-object/from16 v5, v24

    .line 431
    .end local v27           #sender_name:Ljava/lang/String;
    .local v5, sender_name:Ljava/lang/String;
    move-object/from16 v6, v20

    .line 437
    .end local v26           #sender_addressing:Ljava/lang/String;
    .local v6, sender_addressing:Ljava/lang/String;
    :goto_b8
    const/16 v18, 0x0

    .line 438
    .local v18, protect:Z
    const/4 v1, -0x6

    move/from16 v0, v21

    if-ne v0, v1, :cond_114

    const/16 v17, 0x1

    .line 439
    .local v17, sent:Z
    :goto_c1
    const-string v1, "read"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_117

    const/16 v16, 0x1

    .line 440
    .local v16, read:Z
    :goto_d3
    const/4 v15, 0x0

    .line 441
    .local v15, priority:Z
    const/4 v14, 0x0

    .line 443
    .local v14, attachment_size:I
    const/4 v13, 0x0

    .line 444
    .local v13, reception_status:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_11a

    const/4 v10, 0x2

    .line 446
    .local v10, type:I
    :goto_e2
    move/from16 v0, v23

    invoke-static {v0, v10}, Lcom/samsung/map/MmsSmsMessageFolder;->baseToMapID(II)I

    move-result v2

    .line 447
    .local v2, handle:I
    const-string v1, "body"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    .line 448
    .local v11, size:I
    const/4 v12, 0x1

    .line 450
    .local v12, text:Z
    const/4 v7, 0x0

    move-object/from16 v1, p2

    move-object/from16 v3, v28

    move-object/from16 v4, v19

    invoke-virtual/range {v1 .. v18}, Lcom/samsung/map/DeletedSmsMms;->add(ILjava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIIZZZZ)V

    .line 455
    .end local v2           #handle:I
    .end local v5           #sender_name:Ljava/lang/String;
    .end local v6           #sender_addressing:Ljava/lang/String;
    .end local v8           #recipient_name:Ljava/lang/String;
    .end local v9           #recipient_addressing:Ljava/lang/String;
    .end local v10           #type:I
    .end local v11           #size:I
    .end local v12           #text:Z
    .end local v13           #reception_status:I
    .end local v14           #attachment_size:I
    .end local v15           #priority:Z
    .end local v16           #read:Z
    .end local v17           #sent:Z
    .end local v18           #protect:Z
    .end local v19           #DateTime:Ljava/util/Date;
    .end local v20           #address:Ljava/lang/String;
    .end local v21           #box:I
    .end local v23           #msg_id:I
    .end local v24           #name:Ljava/lang/String;
    .end local v25           #phones:Landroid/database/Cursor;
    .end local v28           #subject:Ljava/lang/String;
    :cond_105
    if-eqz v22, :cond_10a

    .line 456
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 458
    :cond_10a
    return-void

    .line 433
    .restart local v8       #recipient_name:Ljava/lang/String;
    .restart local v9       #recipient_addressing:Ljava/lang/String;
    .restart local v19       #DateTime:Ljava/util/Date;
    .restart local v20       #address:Ljava/lang/String;
    .restart local v21       #box:I
    .restart local v23       #msg_id:I
    .restart local v24       #name:Ljava/lang/String;
    .restart local v25       #phones:Landroid/database/Cursor;
    .restart local v26       #sender_addressing:Ljava/lang/String;
    .restart local v27       #sender_name:Ljava/lang/String;
    .restart local v28       #subject:Ljava/lang/String;
    :cond_10b
    move-object/from16 v8, v24

    .line 434
    move-object/from16 v9, v20

    move-object/from16 v6, v26

    .end local v26           #sender_addressing:Ljava/lang/String;
    .restart local v6       #sender_addressing:Ljava/lang/String;
    move-object/from16 v5, v27

    .end local v27           #sender_name:Ljava/lang/String;
    .restart local v5       #sender_name:Ljava/lang/String;
    goto :goto_b8

    .line 438
    .restart local v18       #protect:Z
    :cond_114
    const/16 v17, 0x0

    goto :goto_c1

    .line 439
    .restart local v17       #sent:Z
    :cond_117
    const/16 v16, 0x0

    goto :goto_d3

    .line 444
    .restart local v13       #reception_status:I
    .restart local v14       #attachment_size:I
    .restart local v15       #priority:Z
    .restart local v16       #read:Z
    :cond_11a
    const/4 v10, 0x1

    goto :goto_e2
.end method

.method checkSmsFolder(ILcom/samsung/map/FolderEntry;)Z
    .registers 7
    .parameter "type"
    .parameter "fe"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 215
    invoke-virtual {p2}, Lcom/samsung/map/FolderEntry;->getId()I

    move-result v0

    .line 216
    .local v0, ret:I
    if-gez v0, :cond_b

    .line 217
    packed-switch v0, :pswitch_data_2a

    :cond_b
    move v1, v2

    .line 231
    :cond_c
    :goto_c
    return v1

    .line 219
    :pswitch_d
    if-eq p1, v1, :cond_c

    move v1, v2

    goto :goto_c

    :pswitch_11
    move v1, v2

    .line 221
    goto :goto_c

    .line 223
    :pswitch_13
    const/4 v3, 0x3

    if-eq p1, v3, :cond_c

    move v1, v2

    goto :goto_c

    .line 225
    :pswitch_18
    const/4 v3, 0x4

    if-eq p1, v3, :cond_21

    const/4 v3, 0x6

    if-eq p1, v3, :cond_21

    const/4 v3, 0x5

    if-ne p1, v3, :cond_22

    :cond_21
    move v2, v1

    :cond_22
    move v1, v2

    goto :goto_c

    .line 228
    :pswitch_24
    const/4 v3, 0x2

    if-eq p1, v3, :cond_c

    move v1, v2

    goto :goto_c

    .line 217
    nop

    :pswitch_data_2a
    .packed-switch -0x8
        :pswitch_13
        :pswitch_11
        :pswitch_24
        :pswitch_18
        :pswitch_d
    .end packed-switch
.end method

.method public getMessageListing(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/samsung/map/MessageFolder$MessageListingResponse;
    .registers 40
    .parameter "folder"
    .parameter "MaxListCount"
    .parameter "ListStartOffset"
    .parameter "SubjectLength"
    .parameter "ParameterMask"
    .parameter "FilterMessageType"
    .parameter "FilterPeriodBegin"
    .parameter "FilterPeriodEnd"
    .parameter "FilterReadStatus"
    .parameter "FilterRecipient"
    .parameter "FilterOriginator"
    .parameter "FilterPriority"

    .prologue
    .line 800
    new-instance v22, Lcom/samsung/map/MessageFolder$MessageListingResponse;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/map/MessageFolder$MessageListingResponse;-><init>(Lcom/samsung/map/MessageFolder;)V

    .line 803
    .local v22, mlr:Lcom/samsung/map/MessageFolder$MessageListingResponse;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/MmsSmsMessageFolder;->messagesListingBuilder:Lcom/samsung/map/MessagesListingBuilder;

    if-nez v3, :cond_3d

    .line 804
    new-instance v2, Lcom/samsung/map/MessagesListingBuilder;

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v2 .. v13}, Lcom/samsung/map/MessagesListingBuilder;-><init>(IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 811
    .local v2, mlb:Lcom/samsung/map/MessagesListingBuilder;
    :goto_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/MessageFolder;->currentFolder:Lcom/samsung/map/FolderEntry;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/map/FolderEntry;->cd(Ljava/lang/String;)Lcom/samsung/map/FolderEntry;

    move-result-object v20

    .line 813
    .local v20, Folder:Lcom/samsung/map/FolderEntry;
    if-nez v20, :cond_42

    .line 814
    const/16 v3, 0xc4

    move-object/from16 v0, v22

    iput v3, v0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->status:I

    .line 843
    :goto_3c
    return-object v22

    .line 808
    .end local v2           #mlb:Lcom/samsung/map/MessagesListingBuilder;
    .end local v20           #Folder:Lcom/samsung/map/FolderEntry;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/MmsSmsMessageFolder;->messagesListingBuilder:Lcom/samsung/map/MessagesListingBuilder;

    .restart local v2       #mlb:Lcom/samsung/map/MessagesListingBuilder;
    goto :goto_2a

    .line 817
    .restart local v20       #Folder:Lcom/samsung/map/FolderEntry;
    :cond_42
    const/16 v25, 0x0

    .local v25, sms_count:I
    const/16 v23, 0x0

    .line 818
    .local v23, mms_count:I
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/map/FolderEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v26

    .line 819
    .local v26, src:Ljava/lang/String;
    const-string v3, "deleted"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 820
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/MmsSmsMessageFolder;->deletedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :goto_60
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/map/DeletedSmsMms;

    .line 821
    .local v24, msg:Lcom/samsung/map/DeletedSmsMms;
    move-object/from16 v0, v24

    iget v3, v0, Lcom/samsung/map/DeletedSmsMms;->Handle:I

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/samsung/map/DeletedSmsMms;->subject:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/samsung/map/DeletedSmsMms;->DateTime:Ljava/util/Date;

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/samsung/map/DeletedSmsMms;->senderName:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/samsung/map/DeletedSmsMms;->senderAddressing:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/samsung/map/DeletedSmsMms;->replaytoAddressing:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/samsung/map/DeletedSmsMms;->recipientName:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/samsung/map/DeletedSmsMms;->recipientAddressing:Ljava/lang/String;

    move-object/from16 v0, v24

    iget v11, v0, Lcom/samsung/map/DeletedSmsMms;->type:I

    move-object/from16 v0, v24

    iget v12, v0, Lcom/samsung/map/DeletedSmsMms;->size:I

    move-object/from16 v0, v24

    iget-boolean v13, v0, Lcom/samsung/map/DeletedSmsMms;->text:Z

    move-object/from16 v0, v24

    iget v14, v0, Lcom/samsung/map/DeletedSmsMms;->receptionStatus:I

    move-object/from16 v0, v24

    iget v15, v0, Lcom/samsung/map/DeletedSmsMms;->attachmentSize:I

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/samsung/map/DeletedSmsMms;->priority:Z

    move/from16 v16, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/samsung/map/DeletedSmsMms;->read:Z

    move/from16 v17, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/samsung/map/DeletedSmsMms;->sent:Z

    move/from16 v18, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/samsung/map/DeletedSmsMms;->protect:Z

    move/from16 v19, v0

    invoke-virtual/range {v2 .. v19}, Lcom/samsung/map/MessagesListingBuilder;->addMessage(ILjava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIIZZZZ)Z

    goto :goto_60

    .line 827
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v24           #msg:Lcom/samsung/map/DeletedSmsMms;
    :cond_bc
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/map/MmsSmsMessageFolder;->getSmsMessageListing(Lcom/samsung/map/FolderEntry;Lcom/samsung/map/MessagesListingBuilder;)I

    move-result v25

    .line 831
    :cond_c4
    if-nez p2, :cond_e2

    .line 832
    add-int v3, v25, v23

    move-object/from16 v0, v22

    iput v3, v0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->MessageListingSize:I

    .line 836
    :goto_cc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/MmsSmsMessageFolder;->messagesListingBuilder:Lcom/samsung/map/MessagesListingBuilder;

    if-nez v3, :cond_da

    .line 837
    invoke-virtual {v2}, Lcom/samsung/map/MessagesListingBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->listing:Ljava/lang/String;

    .line 841
    :cond_da
    const/16 v3, 0xa0

    move-object/from16 v0, v22

    iput v3, v0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->status:I

    goto/16 :goto_3c

    .line 834
    :cond_e2
    invoke-virtual {v2}, Lcom/samsung/map/MessagesListingBuilder;->getSize()I

    move-result v3

    move-object/from16 v0, v22

    iput v3, v0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->MessageListingSize:I

    goto :goto_cc
.end method

.method getMmsFolderID(Lcom/samsung/map/FolderEntry;)I
    .registers 3
    .parameter "fe"

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/samsung/map/FolderEntry;->getId()I

    move-result v0

    .line 262
    .local v0, ret:I
    if-gez v0, :cond_9

    .line 263
    packed-switch v0, :pswitch_data_14

    .line 281
    :cond_9
    :goto_9
    return v0

    .line 265
    :pswitch_a
    const/4 v0, 0x1

    .line 266
    goto :goto_9

    .line 268
    :pswitch_c
    const/4 v0, -0x1

    .line 269
    goto :goto_9

    .line 271
    :pswitch_e
    const/4 v0, 0x3

    .line 272
    goto :goto_9

    .line 274
    :pswitch_10
    const/4 v0, 0x4

    .line 275
    goto :goto_9

    .line 277
    :pswitch_12
    const/4 v0, 0x2

    goto :goto_9

    .line 263
    :pswitch_data_14
    .packed-switch -0x8
        :pswitch_e
        :pswitch_c
        :pswitch_12
        :pswitch_10
        :pswitch_a
    .end packed-switch
.end method

.method getMmsMessage(IZI)Lcom/samsung/map/MessageFolder$GetMessageResponse;
    .registers 6
    .parameter "MsgId"
    .parameter "Attachment"
    .parameter "Charset"

    .prologue
    .line 1099
    new-instance v0, Lcom/samsung/map/MessageFolder$GetMessageResponse;

    invoke-direct {v0, p0}, Lcom/samsung/map/MessageFolder$GetMessageResponse;-><init>(Lcom/samsung/map/MessageFolder;)V

    .line 1101
    .local v0, response:Lcom/samsung/map/MessageFolder$GetMessageResponse;
    const/16 v1, 0xc4

    iput v1, v0, Lcom/samsung/map/MessageFolder$GetMessageResponse;->status:I

    .line 1102
    return-object v0
.end method

.method getMmsMessageListing(Lcom/samsung/map/FolderEntry;Lcom/samsung/map/MessagesListingBuilder;)I
    .registers 48
    .parameter "Folder"
    .parameter "mlb"

    .prologue
    .line 620
    const/16 v27, 0x0

    .line 622
    .local v27, count:I
    const-string v2, "content://mms/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 623
    .local v3, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const-string v5, "msg_box=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/map/MmsSmsMessageFolder;->getMmsFolderID(Lcom/samsung/map/FolderEntry;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 627
    .local v29, cursor:Landroid/database/Cursor;
    if-eqz v29, :cond_1e9

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1e9

    .line 629
    :cond_2a
    const-string v2, "_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 630
    .local v37, msg_id:I
    const-string v2, "sub"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 631
    .local v44, subject:Ljava/lang/String;
    new-instance v34, Ljava/util/Date;

    const-string v2, "date"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    move-object/from16 v0, v34

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 632
    .local v34, date_time:Ljava/util/Date;
    const/16 v43, 0x0

    .line 633
    .local v43, sender_name:Ljava/lang/String;
    const/16 v42, 0x0

    .line 634
    .local v42, sender_addressing:Ljava/lang/String;
    const/4 v11, 0x0

    .line 635
    .local v11, recipient_name:Ljava/lang/String;
    const/4 v12, 0x0

    .line 638
    .local v12, recipient_addressing:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/addr"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "type"

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const-string v7, "address"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 643
    .local v22, addrCursor:Landroid/database/Cursor;
    if-eqz v22, :cond_153

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_153

    .line 644
    const-string v2, "type"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 645
    .local v25, col_type:I
    const-string v2, "address"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 648
    .local v24, col_address:I
    :cond_b3
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 649
    .local v13, type:I
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 650
    .local v23, address:Ljava/lang/String;
    const-string v38, ""

    .line 652
    .local v38, name:Ljava/lang/String;
    const-string v2, "insert-address-token"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 653
    const-string v23, ""

    .line 656
    :cond_d9
    invoke-static/range {v23 .. v23}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e7

    invoke-static/range {v23 .. v23}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e7

    .line 657
    const-string v23, ""

    .line 660
    :cond_e7
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_14a

    invoke-static/range {v23 .. v23}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14a

    .line 661
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "data1"

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const-string v7, "display_name"

    aput-object v7, v6, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data1 = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v41

    .line 669
    .local v41, phones:Landroid/database/Cursor;
    if-eqz v41, :cond_145

    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_145

    .line 671
    :cond_129
    const-string v2, "display_name"

    move-object/from16 v0, v41

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v41

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 674
    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_145

    const-string v2, ""

    move-object/from16 v0, v38

    if-eq v0, v2, :cond_129

    if-eqz v38, :cond_129

    .line 677
    :cond_145
    if-eqz v41, :cond_14a

    .line 678
    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->close()V

    .line 682
    .end local v41           #phones:Landroid/database/Cursor;
    :cond_14a
    sparse-switch v13, :sswitch_data_2e6

    .line 693
    :goto_14d
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_b3

    .line 696
    .end local v13           #type:I
    .end local v23           #address:Ljava/lang/String;
    .end local v24           #col_address:I
    .end local v25           #col_type:I
    .end local v38           #name:Ljava/lang/String;
    :cond_153
    if-eqz v22, :cond_158

    .line 697
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 700
    :cond_158
    const/16 v21, 0x0

    .line 701
    .local v21, protect:Z
    const/4 v15, 0x0

    .line 702
    .local v15, text:Z
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/map/FolderEntry;->getId()I

    move-result v2

    const/4 v4, -0x6

    if-ne v2, v4, :cond_1fb

    const/16 v20, 0x1

    .line 703
    .local v20, sent:Z
    :goto_164
    const-string v2, "read_status"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1ff

    const/16 v19, 0x1

    .line 704
    .local v19, read:Z
    :goto_176
    const-string v2, "pri"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v4, 0x82

    if-ne v2, v4, :cond_203

    const/16 v18, 0x1

    .line 705
    .local v18, priority:Z
    :goto_18a
    const/16 v17, 0x0

    .line 706
    .local v17, attachment_size:I
    const/16 v16, 0x0

    .line 707
    .local v16, reception_status:I
    const-string v2, "m_size"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 708
    .local v14, size:I
    const-string v2, "ct_t"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 710
    .local v26, content_type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/part"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "ct"

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const-string v7, "_data"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    .line 715
    .local v39, parts:Landroid/database/Cursor;
    if-nez v26, :cond_206

    .line 779
    :cond_1e3
    :goto_1e3
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 782
    .end local v11           #recipient_name:Ljava/lang/String;
    .end local v12           #recipient_addressing:Ljava/lang/String;
    .end local v14           #size:I
    .end local v15           #text:Z
    .end local v16           #reception_status:I
    .end local v17           #attachment_size:I
    .end local v18           #priority:Z
    .end local v19           #read:Z
    .end local v20           #sent:Z
    .end local v21           #protect:Z
    .end local v22           #addrCursor:Landroid/database/Cursor;
    .end local v26           #content_type:Ljava/lang/String;
    .end local v34           #date_time:Ljava/util/Date;
    .end local v37           #msg_id:I
    .end local v39           #parts:Landroid/database/Cursor;
    .end local v42           #sender_addressing:Ljava/lang/String;
    .end local v43           #sender_name:Ljava/lang/String;
    .end local v44           #subject:Ljava/lang/String;
    :cond_1e9
    if-eqz v29, :cond_1ee

    .line 783
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 786
    :cond_1ee
    return v27

    .line 684
    .restart local v11       #recipient_name:Ljava/lang/String;
    .restart local v12       #recipient_addressing:Ljava/lang/String;
    .restart local v13       #type:I
    .restart local v22       #addrCursor:Landroid/database/Cursor;
    .restart local v23       #address:Ljava/lang/String;
    .restart local v24       #col_address:I
    .restart local v25       #col_type:I
    .restart local v34       #date_time:Ljava/util/Date;
    .restart local v37       #msg_id:I
    .restart local v38       #name:Ljava/lang/String;
    .restart local v42       #sender_addressing:Ljava/lang/String;
    .restart local v43       #sender_name:Ljava/lang/String;
    .restart local v44       #subject:Ljava/lang/String;
    :sswitch_1ef
    move-object/from16 v12, v23

    .line 685
    move-object/from16 v11, v38

    .line 686
    goto/16 :goto_14d

    .line 688
    :sswitch_1f5
    move-object/from16 v42, v23

    .line 689
    move-object/from16 v43, v38

    goto/16 :goto_14d

    .line 702
    .end local v13           #type:I
    .end local v23           #address:Ljava/lang/String;
    .end local v24           #col_address:I
    .end local v25           #col_type:I
    .end local v38           #name:Ljava/lang/String;
    .restart local v15       #text:Z
    .restart local v21       #protect:Z
    :cond_1fb
    const/16 v20, 0x0

    goto/16 :goto_164

    .line 703
    .restart local v20       #sent:Z
    :cond_1ff
    const/16 v19, 0x0

    goto/16 :goto_176

    .line 704
    .restart local v19       #read:Z
    :cond_203
    const/16 v18, 0x0

    goto :goto_18a

    .line 719
    .restart local v14       #size:I
    .restart local v16       #reception_status:I
    .restart local v17       #attachment_size:I
    .restart local v18       #priority:Z
    .restart local v26       #content_type:Ljava/lang/String;
    .restart local v39       #parts:Landroid/database/Cursor;
    :cond_206
    const-string v2, "text/plain"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24f

    .line 720
    const/4 v15, 0x1

    .line 733
    :cond_211
    :goto_211
    if-eqz v39, :cond_2bd

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2bd

    .line 734
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->getCount()I

    move-result v40

    .line 735
    .local v40, parts_count:I
    const-string v2, "_data"

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 736
    .local v32, data_col:I
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .local v33, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v30, 0x0

    .local v30, d:I
    :goto_22c
    move/from16 v0, v30

    move/from16 v1, v40

    if-ge v0, v1, :cond_280

    .line 739
    move-object/from16 v0, v39

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_249

    .line 740
    move-object/from16 v0, v39

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    :cond_249
    add-int/lit8 v30, v30, 0x1

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_22c

    .line 721
    .end local v30           #d:I
    .end local v32           #data_col:I
    .end local v33           #datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v40           #parts_count:I
    :cond_24f
    const-string v2, "multipart"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_211

    .line 723
    if-eqz v39, :cond_211

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_211

    .line 724
    const-string v2, "ct"

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 727
    .local v28, ct_column:I
    :cond_269
    move-object/from16 v0, v39

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/plain"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 728
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_211

    if-eqz v15, :cond_269

    goto :goto_211

    .line 744
    .end local v28           #ct_column:I
    .restart local v30       #d:I
    .restart local v32       #data_col:I
    .restart local v33       #datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v40       #parts_count:I
    :cond_280
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2bd

    .line 745
    const/16 v35, 0x0

    .line 746
    .local v35, drm:Landroid/database/Cursor;
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    .local v36, i$:Ljava/util/Iterator;
    :cond_28c
    :goto_28c
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2bd

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 747
    .local v31, dat:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    const-string v2, "content://mms/drm/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "_data =?"

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v31, v8, v2

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 751
    if-eqz v35, :cond_2df

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2df

    .line 752
    const/16 v21, 0x1

    .line 753
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    .line 764
    .end local v30           #d:I
    .end local v31           #dat:Ljava/lang/String;
    .end local v32           #data_col:I
    .end local v33           #datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v35           #drm:Landroid/database/Cursor;
    .end local v36           #i$:Ljava/util/Iterator;
    .end local v40           #parts_count:I
    :cond_2bd
    if-eqz v39, :cond_2c2

    .line 765
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    .line 771
    :cond_2c2
    const/16 v13, 0x8

    .line 772
    .restart local v13       #type:I
    move/from16 v0, v37

    invoke-static {v0, v13}, Lcom/samsung/map/MmsSmsMessageFolder;->baseToMapID(II)I

    move-result v5

    .line 774
    .local v5, handle:I
    const/4 v10, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, v44

    move-object/from16 v7, v34

    move-object/from16 v8, v43

    move-object/from16 v9, v42

    invoke-virtual/range {v4 .. v21}, Lcom/samsung/map/MessagesListingBuilder;->addMessage(ILjava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIIZZZZ)Z

    move-result v2

    if-eqz v2, :cond_1e3

    .line 777
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_1e3

    .line 757
    .end local v5           #handle:I
    .end local v13           #type:I
    .restart local v30       #d:I
    .restart local v31       #dat:Ljava/lang/String;
    .restart local v32       #data_col:I
    .restart local v33       #datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v35       #drm:Landroid/database/Cursor;
    .restart local v36       #i$:Ljava/util/Iterator;
    .restart local v40       #parts_count:I
    :cond_2df
    if-eqz v35, :cond_28c

    .line 758
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    goto :goto_28c

    .line 682
    nop

    :sswitch_data_2e6
    .sparse-switch
        0x89 -> :sswitch_1f5
        0x97 -> :sswitch_1ef
    .end sparse-switch
.end method

.method getSmsFolderID(Lcom/samsung/map/FolderEntry;)I
    .registers 3
    .parameter "fe"

    .prologue
    .line 236
    invoke-virtual {p1}, Lcom/samsung/map/FolderEntry;->getId()I

    move-result v0

    .line 237
    .local v0, ret:I
    if-gez v0, :cond_9

    .line 238
    packed-switch v0, :pswitch_data_14

    .line 256
    :cond_9
    :goto_9
    return v0

    .line 240
    :pswitch_a
    const/4 v0, 0x1

    .line 241
    goto :goto_9

    .line 243
    :pswitch_c
    const/4 v0, -0x1

    .line 244
    goto :goto_9

    .line 246
    :pswitch_e
    const/4 v0, 0x3

    .line 247
    goto :goto_9

    .line 249
    :pswitch_10
    const/4 v0, 0x4

    .line 250
    goto :goto_9

    .line 252
    :pswitch_12
    const/4 v0, 0x2

    goto :goto_9

    .line 238
    :pswitch_data_14
    .packed-switch -0x8
        :pswitch_e
        :pswitch_c
        :pswitch_12
        :pswitch_10
        :pswitch_a
    .end packed-switch
.end method

.method getSmsMessage(IZI)Lcom/samsung/map/MessageFolder$GetMessageResponse;
    .registers 27
    .parameter "MsgId"
    .parameter "Attachment"
    .parameter "Charset"

    .prologue
    .line 847
    new-instance v21, Lcom/samsung/map/MessageFolder$GetMessageResponse;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/map/MessageFolder$GetMessageResponse;-><init>(Lcom/samsung/map/MessageFolder;)V

    .line 848
    .local v21, response:Lcom/samsung/map/MessageFolder$GetMessageResponse;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 849
    .local v3, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 853
    .local v11, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_3d

    .line 854
    const/16 v2, 0xc4

    move-object/from16 v0, v21

    iput v2, v0, Lcom/samsung/map/MessageFolder$GetMessageResponse;->status:I

    .line 971
    :goto_3c
    return-object v21

    .line 858
    :cond_3d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 859
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 860
    const/16 v2, 0xc4

    move-object/from16 v0, v21

    iput v2, v0, Lcom/samsung/map/MessageFolder$GetMessageResponse;->status:I

    goto :goto_3c

    .line 864
    :cond_4d
    const-string v12, "TELECOM/MSG/"

    .line 875
    .local v12, folder:Ljava/lang/String;
    const-string v2, "type"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 878
    .local v13, folderType:I
    packed-switch v13, :pswitch_data_200

    .line 895
    :goto_5c
    :pswitch_5c
    const-string v2, "address"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 896
    .local v10, address:Ljava/lang/String;
    const-string v18, ""

    .line 897
    .local v18, name:Ljava/lang/String;
    const-string v2, "read"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1a0

    const/16 v20, 0x1

    .line 904
    .local v20, read_status:Z
    :goto_77
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1a4

    const/16 v22, 0x2

    .line 906
    .local v22, type:I
    :goto_84
    new-instance v15, Lcom/samsung/map/bMessageBuilder;

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-direct {v15, v0, v1, v12}, Lcom/samsung/map/bMessageBuilder;-><init>(ZILjava/lang/String;)V

    .line 908
    .local v15, mb:Lcom/samsung/map/bMessageBuilder;
    invoke-static {v10}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 909
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "data1"

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const-string v7, "display_name"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 915
    .local v19, phones:Landroid/database/Cursor;
    if-eqz v19, :cond_f7

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 917
    :cond_b5
    const-string v2, "data1"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 919
    .local v14, laddress:Ljava/lang/String;
    if-eqz v14, :cond_e9

    .line 920
    const-string v2, " "

    const-string v4, ""

    invoke-virtual {v14, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 921
    const-string v2, "-"

    const-string v4, ""

    invoke-virtual {v14, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 922
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 923
    const-string v2, "display_name"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 927
    :cond_e9
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_f7

    const-string v2, ""

    move-object/from16 v0, v18

    if-eq v0, v2, :cond_b5

    if-eqz v18, :cond_b5

    .line 930
    .end local v14           #laddress:Ljava/lang/String;
    :cond_f7
    if-eqz v19, :cond_fc

    .line 931
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 941
    :cond_fc
    const-string v2, "TELECOM/MSG/INBOX"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10c

    const-string v2, "TELECOM/MSG/SENT"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    .line 944
    :cond_10c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/MmsSmsMessageFolder;->mLocalPhoneName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/map/MmsSmsMessageFolder;->mLocalPhoneNumber:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v15, v2, v4, v5}, Lcom/samsung/map/bMessageBuilder;->addRecipientVcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v10, v2}, Lcom/samsung/map/bMessageBuilder;->addOriginatorVcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    .end local v19           #phones:Landroid/database/Cursor;
    :cond_11e
    :goto_11e
    const-string v2, "body"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 953
    .local v16, msg_body:Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_1bc

    .line 954
    const-string v2, ""

    const-string v4, "UTF-8"

    const-string v5, ""

    move-object/from16 v0, v16

    invoke-virtual {v15, v2, v4, v5, v0}, Lcom/samsung/map/bMessageBuilder;->addBodyPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    :cond_138
    :goto_138
    invoke-virtual {v15}, Lcom/samsung/map/bMessageBuilder;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/map/MessageFolder$GetMessageResponse;->appendBytes([B)V

    .line 967
    const/16 v2, 0xa0

    move-object/from16 v0, v21

    iput v2, v0, Lcom/samsung/map/MessageFolder$GetMessageResponse;->status:I

    .line 969
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3c

    .line 881
    .end local v10           #address:Ljava/lang/String;
    .end local v15           #mb:Lcom/samsung/map/bMessageBuilder;
    .end local v16           #msg_body:Ljava/lang/String;
    .end local v18           #name:Ljava/lang/String;
    .end local v20           #read_status:Z
    .end local v22           #type:I
    :pswitch_14c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "DRAFT"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 882
    goto/16 :goto_5c

    .line 884
    :pswitch_161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "SENT"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 885
    goto/16 :goto_5c

    .line 887
    :pswitch_176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "INBOX"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 888
    goto/16 :goto_5c

    .line 891
    :pswitch_18b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "OUTBOX"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5c

    .line 897
    .restart local v10       #address:Ljava/lang/String;
    .restart local v18       #name:Ljava/lang/String;
    :cond_1a0
    const/16 v20, 0x0

    goto/16 :goto_77

    .line 904
    .restart local v20       #read_status:Z
    :cond_1a4
    const/16 v22, 0x1

    goto/16 :goto_84

    .line 947
    .restart local v15       #mb:Lcom/samsung/map/bMessageBuilder;
    .restart local v19       #phones:Landroid/database/Cursor;
    .restart local v22       #type:I
    :cond_1a8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/MmsSmsMessageFolder;->mLocalPhoneName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/map/MmsSmsMessageFolder;->mLocalPhoneNumber:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v15, v2, v4, v5}, Lcom/samsung/map/bMessageBuilder;->addOriginatorVcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v10, v2}, Lcom/samsung/map/bMessageBuilder;->addRecipientVcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11e

    .line 955
    .end local v19           #phones:Landroid/database/Cursor;
    .restart local v16       #msg_body:Ljava/lang/String;
    :cond_1bc
    if-nez p3, :cond_1ec

    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_1ec

    .line 957
    const-string v2, "date"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "address"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/map/MmsSmsMessageFolder;->getSMSDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 960
    .local v17, msgbody:Ljava/lang/String;
    const-string v2, "G-7BIT"

    const-string v4, "native"

    const-string v5, ""

    move-object/from16 v0, v17

    invoke-virtual {v15, v2, v4, v5, v0}, Lcom/samsung/map/bMessageBuilder;->addBodyPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_138

    .line 961
    .end local v17           #msgbody:Ljava/lang/String;
    :cond_1ec
    if-nez p3, :cond_138

    const/4 v2, 0x2

    move/from16 v0, v22

    if-ne v0, v2, :cond_138

    .line 963
    const-string v2, "C-UNICODE"

    const-string v4, "native"

    const-string v5, ""

    move-object/from16 v0, v16

    invoke-virtual {v15, v2, v4, v5, v0}, Lcom/samsung/map/bMessageBuilder;->addBodyPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_138

    .line 878
    :pswitch_data_200
    .packed-switch -0x8
        :pswitch_14c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_176
        :pswitch_161
        :pswitch_14c
        :pswitch_18b
        :pswitch_18b
    .end packed-switch
.end method

.method getSmsMessageListing(Lcom/samsung/map/FolderEntry;Lcom/samsung/map/MessagesListingBuilder;)I
    .registers 36
    .parameter "Folder"
    .parameter "mlb"

    .prologue
    .line 302
    const/16 v26, 0x0

    .line 304
    .local v26, count:I
    const-string v3, "content://sms/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 305
    .local v4, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 307
    .local v27, cursor:Landroid/database/Cursor;
    if-eqz v27, :cond_4a

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 309
    :cond_1c
    const-string v3, "_id"

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 310
    .local v29, msg_id:I
    const-string v3, "type"

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 311
    .local v25, box:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/map/MmsSmsMessageFolder;->checkSmsFolder(ILcom/samsung/map/FolderEntry;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 382
    :cond_44
    :goto_44
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 385
    .end local v25           #box:I
    .end local v29           #msg_id:I
    :cond_4a
    if-eqz v27, :cond_4f

    .line 386
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 389
    :cond_4f
    return v26

    .line 314
    .restart local v25       #box:I
    .restart local v29       #msg_id:I
    :cond_50
    const-string v3, "subject"

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 316
    .local v32, subject:Ljava/lang/String;
    new-instance v23, Ljava/util/Date;

    const-string v3, "date"

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move-object/from16 v0, v23

    invoke-direct {v0, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 318
    .local v23, DateTime:Ljava/util/Date;
    const/4 v9, 0x0

    .line 319
    .local v9, sender_name:Ljava/lang/String;
    const/4 v10, 0x0

    .line 320
    .local v10, sender_addressing:Ljava/lang/String;
    const/4 v12, 0x0

    .line 321
    .local v12, recipient_name:Ljava/lang/String;
    const/4 v13, 0x0

    .line 322
    .local v13, recipient_addressing:Ljava/lang/String;
    const-string v3, "address"

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 323
    .local v24, address:Ljava/lang/String;
    const/16 v30, 0x0

    .line 325
    .local v30, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "data1"

    aput-object v8, v7, v3

    const/4 v3, 0x1

    const-string v8, "display_name"

    aput-object v8, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v9           #sender_name:Ljava/lang/String;
    .end local v10           #sender_addressing:Ljava/lang/String;
    move-result-object v31

    .line 333
    .local v31, phones:Landroid/database/Cursor;
    if-eqz v31, :cond_f3

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_f3

    .line 335
    :cond_a9
    const-string v3, "data1"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 337
    .local v28, laddress:Ljava/lang/String;
    if-eqz v28, :cond_e5

    .line 338
    const-string v3, " "

    const-string v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 339
    const-string v3, "-"

    const-string v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 340
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 341
    const-string v3, "display_name"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 345
    :cond_e5
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_f3

    const-string v3, ""

    move-object/from16 v0, v30

    if-eq v0, v3, :cond_a9

    if-eqz v30, :cond_a9

    .line 348
    .end local v28           #laddress:Ljava/lang/String;
    :cond_f3
    if-eqz v31, :cond_f8

    .line 349
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 352
    :cond_f8
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/map/FolderEntry;->getId()I

    move-result v3

    const/4 v5, -0x4

    if-ne v3, v5, :cond_165

    .line 353
    move-object/from16 v9, v30

    .line 354
    .restart local v9       #sender_name:Ljava/lang/String;
    move-object/from16 v10, v24

    .line 355
    .restart local v10       #sender_addressing:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/map/MmsSmsMessageFolder;->mLocalPhoneName:Ljava/lang/String;

    .line 356
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/map/MmsSmsMessageFolder;->mLocalPhoneNumber:Ljava/lang/String;

    .line 364
    :goto_10b
    const/16 v22, 0x0

    .line 365
    .local v22, protect:Z
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/map/FolderEntry;->getId()I

    move-result v3

    const/4 v5, -0x6

    if-ne v3, v5, :cond_172

    const/16 v21, 0x1

    .line 366
    .local v21, sent:Z
    :goto_116
    const-string v3, "read"

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_175

    const/16 v20, 0x1

    .line 367
    .local v20, read:Z
    :goto_128
    const/16 v19, 0x0

    .line 368
    .local v19, priority:Z
    const/16 v18, 0x0

    .line 370
    .local v18, attachment_size:I
    const/16 v17, 0x0

    .line 371
    .local v17, reception_status:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_178

    const/4 v14, 0x2

    .line 373
    .local v14, type:I
    :goto_13a
    move/from16 v0, v29

    invoke-static {v0, v14}, Lcom/samsung/map/MmsSmsMessageFolder;->baseToMapID(II)I

    move-result v6

    .line 374
    .local v6, handle:I
    const-string v3, "body"

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    .line 375
    .local v15, size:I
    const/16 v16, 0x1

    .line 377
    .local v16, text:Z
    const/4 v11, 0x0

    move-object/from16 v5, p2

    move-object/from16 v7, v32

    move-object/from16 v8, v23

    invoke-virtual/range {v5 .. v22}, Lcom/samsung/map/MessagesListingBuilder;->addMessage(ILjava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIIZZZZ)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 380
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_44

    .line 358
    .end local v6           #handle:I
    .end local v9           #sender_name:Ljava/lang/String;
    .end local v10           #sender_addressing:Ljava/lang/String;
    .end local v14           #type:I
    .end local v15           #size:I
    .end local v16           #text:Z
    .end local v17           #reception_status:I
    .end local v18           #attachment_size:I
    .end local v19           #priority:Z
    .end local v20           #read:Z
    .end local v21           #sent:Z
    .end local v22           #protect:Z
    :cond_165
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/map/MmsSmsMessageFolder;->mLocalPhoneName:Ljava/lang/String;

    .line 359
    .restart local v9       #sender_name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/map/MmsSmsMessageFolder;->mLocalPhoneNumber:Ljava/lang/String;

    .line 360
    .restart local v10       #sender_addressing:Ljava/lang/String;
    move-object/from16 v12, v30

    .line 361
    move-object/from16 v13, v24

    goto :goto_10b

    .line 365
    .restart local v22       #protect:Z
    :cond_172
    const/16 v21, 0x0

    goto :goto_116

    .line 366
    .restart local v21       #sent:Z
    :cond_175
    const/16 v20, 0x0

    goto :goto_128

    .line 371
    .restart local v17       #reception_status:I
    .restart local v18       #attachment_size:I
    .restart local v19       #priority:Z
    .restart local v20       #read:Z
    :cond_178
    const/4 v14, 0x1

    goto :goto_13a
.end method

.method pushMmsMessage(Ljava/lang/String;ZZILcom/samsung/map/bmessage/BMessage;)Lcom/samsung/map/MessageFolder$PushMessageResponse;
    .registers 8
    .parameter "folder"
    .parameter "Transparent"
    .parameter "Retry"
    .parameter "Charset"
    .parameter "msg"

    .prologue
    .line 1715
    new-instance v0, Lcom/samsung/map/MessageFolder$PushMessageResponse;

    const/16 v1, 0xc0

    invoke-direct {v0, p0, v1}, Lcom/samsung/map/MessageFolder$PushMessageResponse;-><init>(Lcom/samsung/map/MessageFolder;I)V

    return-object v0
.end method

.method public pushSmsMessage(Ljava/lang/String;ZZILcom/samsung/map/bmessage/BMessage;)Lcom/samsung/map/MessageFolder$PushMessageResponse;
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1479
    const/4 v2, -0x1

    .line 1480
    const/4 v1, 0x0

    .line 1483
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1484
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1485
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/samsung/map/bmessage/BMessage;->envelope:Lcom/samsung/map/bmessage/BMessageEnvelope;

    iget-object v4, v4, Lcom/samsung/map/bmessage/BMessageEnvelope;->content:Lcom/samsung/map/bmessage/BMessageContent;

    if-nez v4, :cond_61

    .line 1488
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/samsung/map/bmessage/BMessage;->envelope:Lcom/samsung/map/bmessage/BMessageEnvelope;

    iget-object v4, v4, Lcom/samsung/map/bmessage/BMessageEnvelope;->envelope:Lcom/samsung/map/bmessage/BMessageEnvelope;

    if-eqz v4, :cond_4e

    .line 1489
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/samsung/map/bmessage/BMessage;->envelope:Lcom/samsung/map/bmessage/BMessageEnvelope;

    iget-object v4, v4, Lcom/samsung/map/bmessage/BMessageEnvelope;->envelope:Lcom/samsung/map/bmessage/BMessageEnvelope;

    iget-object v4, v4, Lcom/samsung/map/bmessage/BMessageEnvelope;->content:Lcom/samsung/map/bmessage/BMessageContent;

    if-nez v4, :cond_58

    .line 1491
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/samsung/map/bmessage/BMessage;->envelope:Lcom/samsung/map/bmessage/BMessageEnvelope;

    iget-object v4, v4, Lcom/samsung/map/bmessage/BMessageEnvelope;->envelope:Lcom/samsung/map/bmessage/BMessageEnvelope;

    iget-object v4, v4, Lcom/samsung/map/bmessage/BMessageEnvelope;->envelope:Lcom/samsung/map/bmessage/BMessageEnvelope;

    if-eqz v4, :cond_4e

    .line 1492
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/samsung/map/bmessage/BMessage;->envelope:Lcom/samsung/map/bmessage/BMessageEnvelope;

    iget-object v1, v1, Lcom/samsung/map/bmessage/BMessageEnvelope;->envelope:Lcom/samsung/map/bmessage/BMessageEnvelope;

    iget-object v1, v1, Lcom/samsung/map/bmessage/BMessageEnvelope;->envelope:Lcom/samsung/map/bmessage/BMessageEnvelope;

    iget-object v1, v1, Lcom/samsung/map/bmessage/BMessageEnvelope;->content:Lcom/samsung/map/bmessage/BMessageContent;

    if-nez v1, :cond_44

    .line 1493
    new-instance v1, Lcom/samsung/map/MessageFolder$PushMessageResponse;

    const/16 v2, 0xcc

    invoke-direct {v1, p0, v2}, Lcom/samsung/map/MessageFolder$PushMessageResponse;-><init>(Lcom/samsung/map/MessageFolder;I)V

    .line 1710
    :goto_43
    return-object v1

    .line 1495
    :cond_44
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/samsung/map/bmessage/BMessage;->envelope:Lcom/samsung/map/bmessage/BMessageEnvelope;

    iget-object v1, v1, Lcom/samsung/map/bmessage/BMessageEnvelope;->envelope:Lcom/samsung/map/bmessage/BMessageEnvelope;

    iget-object v1, v1, Lcom/samsung/map/bmessage/BMessageEnvelope;->envelope:Lcom/samsung/map/bmessage/BMessageEnvelope;

    iget-object v1, v1, Lcom/samsung/map/bmessage/BMessageEnvelope;->content:Lcom/samsung/map/bmessage/BMessageContent;

    .line 1506
    :cond_4e
    :goto_4e
    if-nez v1, :cond_68

    .line 1508
    new-instance v1, Lcom/samsung/map/MessageFolder$PushMessageResponse;

    const/16 v2, 0xcc

    invoke-direct {v1, p0, v2}, Lcom/samsung/map/MessageFolder$PushMessageResponse;-><init>(Lcom/samsung/map/MessageFolder;I)V

    goto :goto_43

    .line 1499
    :cond_58
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/samsung/map/bmessage/BMessage;->envelope:Lcom/samsung/map/bmessage/BMessageEnvelope;

    iget-object v1, v1, Lcom/samsung/map/bmessage/BMessageEnvelope;->envelope:Lcom/samsung/map/bmessage/BMessageEnvelope;

    iget-object v1, v1, Lcom/samsung/map/bmessage/BMessageEnvelope;->content:Lcom/samsung/map/bmessage/BMessageContent;

    goto :goto_4e

    .line 1503
    :cond_61
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/samsung/map/bmessage/BMessage;->envelope:Lcom/samsung/map/bmessage/BMessageEnvelope;

    iget-object v1, v1, Lcom/samsung/map/bmessage/BMessageEnvelope;->content:Lcom/samsung/map/bmessage/BMessageContent;

    goto :goto_4e

    .line 1512
    :cond_68
    :try_start_68
    iget-object v4, v1, Lcom/samsung/map/bmessage/BMessageContent;->Properties:Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;

    iget-object v4, v4, Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;->Charset:Ljava/lang/String;

    if-eqz v4, :cond_7a

    iget-object v4, v1, Lcom/samsung/map/bmessage/BMessageContent;->Properties:Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;

    iget-object v4, v4, Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;->Charset:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_86

    :cond_7a
    iget-object v4, v1, Lcom/samsung/map/bmessage/BMessageContent;->Properties:Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;

    iget-object v4, v4, Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;->Encoding:Ljava/lang/String;

    const-string v5, "8BIT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 1516
    :cond_86
    iget-object v1, v1, Lcom/samsung/map/bmessage/BMessageContent;->BodyContents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1517
    invoke-static {v1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_9f} :catch_a0

    goto :goto_8c

    .line 1539
    :catch_a0
    move-exception v1

    .line 1540
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1543
    :cond_a4
    :goto_a4
    if-eqz v10, :cond_ad

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_10f

    .line 1545
    :cond_ad
    new-instance v1, Lcom/samsung/map/MessageFolder$PushMessageResponse;

    const/16 v2, 0xcc

    invoke-direct {v1, p0, v2}, Lcom/samsung/map/MessageFolder$PushMessageResponse;-><init>(Lcom/samsung/map/MessageFolder;I)V

    goto :goto_43

    .line 1520
    :cond_b5
    :try_start_b5
    iget-object v1, v1, Lcom/samsung/map/bmessage/BMessageContent;->BodyContents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_bb
    :goto_bb
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1521
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_bb

    .line 1522
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_bb

    .line 1526
    :cond_d1
    const/4 v1, 0x0

    .line 1527
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/samsung/map/bmessage/BMessage;->property:Lcom/samsung/map/bmessage/BMessageProperty;

    iget v4, v4, Lcom/samsung/map/bmessage/BMessageProperty;->Type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_f1

    .line 1528
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/map/MmsSmsMessageFolder;->hexStringToPdu(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/map/MmsSmsMessageFolder;->parseSubmitGSMPdu([B)Ljava/lang/String;

    move-result-object v1

    .line 1533
    :cond_e7
    :goto_e7
    if-eqz v1, :cond_107

    .line 1534
    invoke-static {v1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_a4

    .line 1529
    :cond_f1
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/samsung/map/bmessage/BMessage;->property:Lcom/samsung/map/bmessage/BMessageProperty;

    iget v4, v4, Lcom/samsung/map/bmessage/BMessageProperty;->Type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_e7

    .line 1530
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/map/MmsSmsMessageFolder;->hexStringToPdu(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/map/MmsSmsMessageFolder;->parseSubmitCDMAPdu([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_e7

    .line 1536
    :cond_107
    const-string v1, "MmsSmsMessageFolder"

    const-string v3, "Pdu invalid"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_10e} :catch_a0

    goto :goto_a4

    .line 1548
    :cond_10f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 1550
    invoke-static {}, Lcom/samsung/map/SmsObserver;->lockObserver()V

    .line 1551
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/samsung/map/bmessage/BMessage;->envelope:Lcom/samsung/map/bmessage/BMessageEnvelope;

    iget-object v1, v1, Lcom/samsung/map/bmessage/BMessageEnvelope;->recipients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v8, v2

    :cond_13a
    :goto_13a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/samsung/map/bmessage/VCard;

    .line 1552
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_230

    .line 1553
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 1554
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_157
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_167

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1555
    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_157

    .line 1559
    :cond_167
    iget-object v9, v7, Lcom/samsung/map/bmessage/VCard;->Tel:Ljava/lang/String;

    .line 1560
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31d

    .line 1563
    iget-object v1, p0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "data1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "display_name"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "display_name = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1570
    if-eqz v2, :cond_1bd

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1bd

    .line 1572
    :cond_1a7
    const-string v1, "data1"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1574
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1bd

    const-string v1, ""

    if-eq v9, v1, :cond_1a7

    if-eqz v9, :cond_1a7

    :cond_1bd
    move-object v1, v9

    .line 1578
    if-eqz v2, :cond_1c3

    .line 1579
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1583
    :cond_1c3
    :goto_1c3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1584
    const-string v3, "date"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1585
    const-string v3, "address"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    const-string v1, "read"

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/samsung/map/bmessage/BMessage;->property:Lcom/samsung/map/bmessage/BMessageProperty;

    iget v3, v3, Lcom/samsung/map/bmessage/BMessageProperty;->ReadStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1587
    const-string v1, "body"

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    const-string v1, "outbox"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_293

    .line 1597
    const-string v1, "type"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1604
    :cond_209
    :goto_209
    iget-object v1, p0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    invoke-virtual {v1, v11, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1605
    iget-object v1, p0, Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1607
    if-eqz v1, :cond_22b

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_22b

    .line 1608
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1611
    :cond_22b
    if-eqz v1, :cond_230

    .line 1612
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1618
    :cond_230
    const-string v1, "outbox"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13a

    .line 1619
    iget-object v1, v7, Lcom/samsung/map/bmessage/VCard;->Tel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13a

    .line 1621
    new-instance v1, Landroid/content/Intent;

    const-string v2, "SMS_SENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1622
    const-string v2, "sf"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1623
    const-string v2, "id"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1624
    iget-object v2, p0, Lcom/samsung/map/MessageFolder;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/map/MmsSmsMessageFolder;->sentPI:Landroid/app/PendingIntent;

    .line 1627
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_274

    .line 1628
    iget-object v1, p0, Lcom/samsung/map/MessageFolder;->context:Landroid/content/Context;

    new-instance v2, Lcom/samsung/map/MmsSmsMessageFolder$1;

    invoke-direct {v2, p0}, Lcom/samsung/map/MmsSmsMessageFolder$1;-><init>(Lcom/samsung/map/MmsSmsMessageFolder;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "SMS_SENT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1675
    :cond_274
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2bb

    .line 1676
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1677
    iget-object v1, p0, Lcom/samsung/map/MmsSmsMessageFolder;->sentPI:Landroid/app/PendingIntent;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1678
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    iget-object v2, v7, Lcom/samsung/map/bmessage/VCard;->Tel:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v4, v10

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_13a

    .line 1598
    :cond_293
    const-string v1, "inbox"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a7

    .line 1599
    const-string v1, "type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_209

    .line 1600
    :cond_2a7
    const-string v1, "drafts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_209

    .line 1601
    const-string v1, "type"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_209

    .line 1684
    :cond_2bb
    :try_start_2bb
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    iget-object v2, v7, Lcom/samsung/map/bmessage/VCard;->Tel:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/map/MmsSmsMessageFolder;->sentPI:Landroid/app/PendingIntent;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_2cf
    .catch Ljava/lang/Exception; {:try_start_2bb .. :try_end_2cf} :catch_2d1

    goto/16 :goto_13a

    .line 1687
    :catch_2d1
    move-exception v1

    .line 1688
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_13a

    .line 1697
    :cond_2d7
    new-instance v1, Lcom/samsung/map/MessageFolder$PushMessageResponse;

    invoke-direct {v1, p0}, Lcom/samsung/map/MessageFolder$PushMessageResponse;-><init>(Lcom/samsung/map/MessageFolder;)V

    .line 1698
    const/16 v2, 0xa0

    iput v2, v1, Lcom/samsung/map/MessageFolder$PushMessageResponse;->status:I

    .line 1699
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/samsung/map/bmessage/BMessage;->property:Lcom/samsung/map/bmessage/BMessageProperty;

    iget v2, v2, Lcom/samsung/map/bmessage/BMessageProperty;->Type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_30c

    .line 1700
    const/4 v2, 0x1

    invoke-static {v8, v2}, Lcom/samsung/map/MmsSmsMessageFolder;->baseToMapID(II)I

    move-result v2

    iput v2, v1, Lcom/samsung/map/MessageFolder$PushMessageResponse;->handle:I

    .line 1704
    :cond_2f0
    :goto_2f0
    sget-object v2, Lcom/samsung/map/MmsSmsMessageFolder;->smsMmsHandlers:Ljava/util/ArrayList;

    iget v3, v1, Lcom/samsung/map/MessageFolder$PushMessageResponse;->handle:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1705
    invoke-static {}, Lcom/samsung/map/SmsObserver;->unlockObserver()V

    .line 1706
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.map.intent.action.MNS_CHECKMSG"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1707
    iget-object v3, p0, Lcom/samsung/map/MessageFolder;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_43

    .line 1701
    :cond_30c
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/samsung/map/bmessage/BMessage;->property:Lcom/samsung/map/bmessage/BMessageProperty;

    iget v2, v2, Lcom/samsung/map/bmessage/BMessageProperty;->Type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2f0

    .line 1702
    const/4 v2, 0x2

    invoke-static {v8, v2}, Lcom/samsung/map/MmsSmsMessageFolder;->baseToMapID(II)I

    move-result v2

    iput v2, v1, Lcom/samsung/map/MessageFolder$PushMessageResponse;->handle:I

    goto :goto_2f0

    :cond_31d
    move-object v1, v9

    goto/16 :goto_1c3
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/samsung/map/MessageFolder;->context:Landroid/content/Context;

    .line 211
    return-void
.end method

.method public setMessagesListingBuilder(Lcom/samsung/map/MessagesListingBuilder;)V
    .registers 2
    .parameter "mlb"

    .prologue
    .line 792
    iput-object p1, p0, Lcom/samsung/map/MmsSmsMessageFolder;->messagesListingBuilder:Lcom/samsung/map/MessagesListingBuilder;

    .line 793
    return-void
.end method
