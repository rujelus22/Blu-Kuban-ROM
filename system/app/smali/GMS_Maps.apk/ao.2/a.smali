.class public Lao/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lao/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v0, -0x1

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v2, :cond_9

    .line 99
    :cond_8
    :goto_8
    return v0

    .line 95
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Laa/b;->a(Ljava/lang/String;I)I

    move-result v1

    .line 96
    if-eqz v1, :cond_8

    move v0, v1

    .line 99
    goto :goto_8
.end method

.method private static b(Ljava/lang/String;)I
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v0, -0x1

    .line 108
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v2, :cond_9

    .line 111
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Laa/b;->a(Ljava/lang/String;I)I

    move-result v0

    goto :goto_8
.end method


# virtual methods
.method public a()Lao/b;
    .registers 11

    .prologue
    const/4 v4, -0x1

    .line 23
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->D()Landroid/content/Context;

    move-result-object v0

    .line 24
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 27
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lao/a;->a(Ljava/lang/String;)I

    move-result v5

    .line 29
    invoke-static {v0}, Lao/a;->b(Ljava/lang/String;)I

    move-result v9

    .line 31
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lao/a;->a(Ljava/lang/String;)I

    move-result v7

    .line 33
    invoke-static {v0}, Lao/a;->b(Ljava/lang/String;)I

    move-result v8

    .line 36
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_70

    move v2, v4

    .line 49
    :goto_32
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 55
    instance-of v3, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_57

    .line 56
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .line 57
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v6

    .line 58
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    move v1, v2

    move v2, v6

    move v6, v9

    :goto_4b
    move v9, v4

    .line 79
    invoke-static/range {v0 .. v9}, Lao/b;->a(Ljava/lang/String;IIIIIIIII)Lao/b;

    move-result-object v0

    return-object v0

    .line 39
    :pswitch_51
    const/4 v0, 0x3

    move v2, v0

    .line 40
    goto :goto_32

    .line 42
    :pswitch_54
    const/4 v0, 0x5

    move v2, v0

    .line 43
    goto :goto_32

    .line 59
    :cond_57
    instance-of v3, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_6b

    .line 69
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 70
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    .line 71
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    .line 72
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v6

    .line 76
    const/4 v1, 0x4

    goto :goto_4b

    :cond_6b
    move v3, v4

    move v1, v2

    move v6, v9

    move v2, v4

    goto :goto_4b

    .line 36
    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_51
        :pswitch_51
        :pswitch_54
    .end packed-switch
.end method
