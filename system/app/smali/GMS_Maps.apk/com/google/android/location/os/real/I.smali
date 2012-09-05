.class public Lcom/google/android/location/os/real/I;
.super Le/b;

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;Landroid/telephony/CellLocation;IJ)V
    .registers 14

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x3

    invoke-direct {p0, p4, p5}, Le/b;-><init>(J)V

    invoke-static {p1}, Lcom/google/android/location/os/real/I;->a(Landroid/telephony/TelephonyManager;)I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/I;->m:I

    iput p3, p0, Lcom/google/android/location/os/real/I;->n:I

    instance-of v0, p2, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_b3

    check-cast p2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/I;->b:I

    invoke-virtual {p2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/I;->a:I

    invoke-static {}, Lcom/google/android/location/os/real/N;->a()Lcom/google/android/location/os/real/N;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/location/os/real/N;->a(Landroid/telephony/gsm/GsmCellLocation;)I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/I;->c:I

    :cond_2b
    :goto_2b
    iget v0, p0, Lcom/google/android/location/os/real/I;->m:I

    if-eq v0, v2, :cond_79

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_79

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_3f
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v1, p0, Lcom/google/android/location/os/real/I;->d:I

    iput v0, p0, Lcom/google/android/location/os/real/I;->e:I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_54} :catch_110

    :goto_54
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_79

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_64
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v1, p0, Lcom/google/android/location/os/real/I;->f:I

    iput v0, p0, Lcom/google/android/location/os/real/I;->g:I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_79} :catch_10d

    :cond_79
    :goto_79
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_83
    :goto_83
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_114

    :pswitch_96
    goto :goto_83

    :pswitch_97
    iget v2, p0, Lcom/google/android/location/os/real/I;->m:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_83

    iget-object v2, p0, Lcom/google/android/location/os/real/I;->l:Ljava/util/List;

    new-instance v3, Le/c;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v5

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    invoke-direct {v3, v4, v5, v7, v0}, Le/c;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83

    :cond_b3
    instance-of v0, p2, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_2b

    check-cast p2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {p2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/I;->b:I

    invoke-virtual {p2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/I;->a:I

    invoke-virtual {p2}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/I;->e:I

    iput v1, p0, Lcom/google/android/location/os/real/I;->d:I

    invoke-virtual {p2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/I;->h:I

    invoke-virtual {p2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/I;->i:I

    iput v2, p0, Lcom/google/android/location/os/real/I;->m:I

    goto/16 :goto_2b

    :pswitch_dd
    iget v2, p0, Lcom/google/android/location/os/real/I;->m:I

    if-ne v2, v6, :cond_83

    iget-object v2, p0, Lcom/google/android/location/os/real/I;->l:Ljava/util/List;

    new-instance v3, Le/c;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getPsc()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    invoke-direct {v3, v7, v7, v4, v0}, Le/c;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83

    :cond_f4
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_104

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_104

    iput-object v0, p0, Lcom/google/android/location/os/real/I;->j:Ljava/lang/String;

    :cond_104
    const-string v0, "CellState"

    invoke-static {v0, v6}, Lm/a;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10c

    :cond_10c
    return-void

    :catch_10d
    move-exception v0

    goto/16 :goto_79

    :catch_110
    move-exception v0

    goto/16 :goto_54

    nop

    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_97
        :pswitch_97
        :pswitch_dd
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_dd
        :pswitch_dd
        :pswitch_dd
    .end packed-switch
.end method

.method public static final a(Landroid/telephony/TelephonyManager;)I
    .registers 6

    const/4 v0, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    if-eq v4, v3, :cond_c

    if-ne v4, v1, :cond_e

    :cond_c
    move v0, v3

    :cond_d
    :goto_d
    return v0

    :cond_e
    if-eq v4, v2, :cond_1c

    const/16 v3, 0x8

    if-eq v4, v3, :cond_1c

    const/16 v3, 0x9

    if-eq v4, v3, :cond_1c

    const/16 v3, 0xa

    if-ne v4, v3, :cond_1e

    :cond_1c
    move v0, v2

    goto :goto_d

    :cond_1e
    if-eq v4, v0, :cond_2d

    const/4 v2, 0x5

    if-eq v4, v2, :cond_2d

    const/4 v2, 0x6

    if-eq v4, v2, :cond_2d

    const/16 v2, 0xc

    if-eq v4, v2, :cond_2d

    const/4 v2, 0x7

    if-ne v4, v2, :cond_2f

    :cond_2d
    move v0, v1

    goto :goto_d

    :cond_2f
    const/16 v1, 0xd

    if-eq v4, v1, :cond_d

    const/4 v0, -0x1

    goto :goto_d
.end method
