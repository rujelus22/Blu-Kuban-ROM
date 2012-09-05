.class public LaF/a;
.super Ljava/lang/Object;

# interfaces
.implements LaF/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 4

    const/4 v2, 0x3

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Las/b;->a(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_8

    move v0, v1

    goto :goto_8
.end method

.method private static b(Ljava/lang/String;)I
    .registers 4

    const/4 v2, 0x3

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v2, :cond_9

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Las/b;->a(Ljava/lang/String;I)I

    move-result v0

    goto :goto_8
.end method


# virtual methods
.method public a()LaF/b;
    .registers 11

    const/4 v4, -0x1

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->C()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaF/a;->a(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0}, LaF/a;->b(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaF/a;->a(Ljava/lang/String;)I

    move-result v7

    invoke-static {v0}, LaF/a;->b(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_70

    move v2, v4

    :goto_32
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    instance-of v3, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_57

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v6

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    move v1, v2

    move v2, v6

    move v6, v9

    :goto_4b
    move v9, v4

    invoke-static/range {v0 .. v9}, LaF/b;->a(Ljava/lang/String;IIIIIIIII)LaF/b;

    move-result-object v0

    return-object v0

    :pswitch_51
    const/4 v0, 0x3

    move v2, v0

    goto :goto_32

    :pswitch_54
    const/4 v0, 0x5

    move v2, v0

    goto :goto_32

    :cond_57
    instance-of v3, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_6b

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v6

    const/4 v1, 0x4

    goto :goto_4b

    :cond_6b
    move v3, v4

    move v1, v2

    move v6, v9

    move v2, v4

    goto :goto_4b

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_51
        :pswitch_51
        :pswitch_54
    .end packed-switch
.end method
