.class public Lcom/syncmldstmo/base/smlEncoder;
.super Lcom/syncmldstmo/base/smlWbxEncoder;
.source "smlEncoder.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlWbxEncoder;-><init>()V

    .line 12
    return-void
.end method

.method private _ADD_C(Ljava/lang/String;)I
    .registers 3
    .parameter "a"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlEncoder;->_smlwbxEncAddContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 31
    const/4 v0, 0x5

    .line 33
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private _ADD_E(ILjava/lang/String;)V
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 47
    invoke-direct {p0, p2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_C(Ljava/lang/String;)I

    .line 48
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 49
    return-void
.end method

.method private _END_E()I
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlEncoder;->_smlwbxEncEndElement()Z

    move-result v0

    if-nez v0, :cond_8

    .line 39
    const/4 v0, 0x5

    .line 41
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private _START_E(I)I
    .registers 3
    .parameter "a"

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/syncmldstmo/base/smlEncoder;->_smlwbxEncStartElement(IZ)Z

    move-result v0

    if-nez v0, :cond_9

    .line 23
    const/4 v0, 0x5

    .line 25
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static smlenc_add_devinf_ctcap_V11(Lcom/syncmldstmo/base/smlEncoder;[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;)Z
    .registers 7
    .parameter "smlenc"
    .parameter "ctcap"

    .prologue
    .line 2629
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .line 2630
    .local v2, j:I
    const/4 v0, 0x0

    .line 2632
    .local v0, count:I
    if-nez p1, :cond_7

    .line 2634
    const/4 v3, 0x0

    .line 2681
    :goto_6
    return v3

    .line 2637
    :cond_7
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 2638
    const/4 v1, 0x0

    :goto_c
    array-length v3, p1

    if-lt v1, v3, :cond_14

    .line 2680
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 2681
    const/4 v3, 0x1

    goto :goto_6

    .line 2640
    :cond_14
    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->ctType:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 2638
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 2646
    :cond_21
    const/4 v3, 0x6

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->ctType:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 2647
    aget-object v3, p1, v1

    iget v0, v3, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->ctValueSize:I

    .line 2649
    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v0, :cond_1e

    .line 2651
    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 2653
    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aget v3, v3, v2

    packed-switch v3, :pswitch_data_84

    .line 2649
    :cond_45
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 2656
    :pswitch_48
    const/16 v3, 0x18

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-direct {p0, v3, v4}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    goto :goto_45

    .line 2660
    :pswitch_54
    const/16 v3, 0x23

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-direct {p0, v3, v4}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    goto :goto_45

    .line 2664
    :pswitch_60
    const/16 v3, 0x17

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-direct {p0, v3, v4}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    goto :goto_45

    .line 2668
    :pswitch_6c
    const/16 v3, 0x8

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-direct {p0, v3, v4}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    goto :goto_45

    .line 2672
    :pswitch_78
    const/16 v3, 0x1c

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-direct {p0, v3, v4}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    goto :goto_45

    .line 2653
    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_48
        :pswitch_54
        :pswitch_60
        :pswitch_6c
        :pswitch_78
    .end packed-switch
.end method

.method public static smlenc_add_devinf_ctcap_V12(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;)Z
    .registers 6
    .parameter "e"
    .parameter "ctcap"

    .prologue
    .line 2686
    const/4 v1, 0x0

    .line 2687
    .local v1, j:I
    const/4 v0, 0x0

    .line 2689
    .local v0, count:I
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 2691
    iget-object v2, p1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->ctType:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 2693
    const/4 v2, 0x6

    iget-object v3, p1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->ctType:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 2695
    :cond_14
    iget-object v2, p1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->verCT:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 2697
    const/16 v2, 0x24

    iget-object v3, p1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->verCT:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 2700
    :cond_23
    iget v0, p1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->ctValueSize:I

    .line 2702
    const/4 v1, 0x0

    :goto_26
    if-lt v1, v0, :cond_2d

    .line 2758
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 2759
    const/4 v2, 0x1

    return v2

    .line 2704
    :cond_2d
    iget-object v2, p1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 2706
    iget-object v2, p1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aget v2, v2, v1

    packed-switch v2, :pswitch_data_a2

    .line 2702
    :cond_3e
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 2709
    :pswitch_41
    const/16 v2, 0x2b

    invoke-direct {p0, v2}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    goto :goto_3e

    .line 2713
    :pswitch_47
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    goto :goto_3e

    .line 2717
    :pswitch_4b
    const/16 v2, 0x18

    iget-object v3, p1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    goto :goto_3e

    .line 2721
    :pswitch_55
    const/16 v2, 0x23

    iget-object v3, p1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    goto :goto_3e

    .line 2725
    :pswitch_5f
    const/16 v2, 0x2c

    invoke-direct {p0, v2}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    goto :goto_3e

    .line 2729
    :pswitch_65
    const/16 v2, 0x17

    iget-object v3, p1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    goto :goto_3e

    .line 2733
    :pswitch_6f
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    goto :goto_3e

    .line 2737
    :pswitch_73
    const/16 v2, 0x8

    iget-object v3, p1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    goto :goto_3e

    .line 2741
    :pswitch_7d
    const/16 v2, 0x1c

    iget-object v3, p1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    goto :goto_3e

    .line 2745
    :pswitch_87
    const/16 v2, 0x2d

    iget-object v3, p1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    goto :goto_3e

    .line 2749
    :pswitch_91
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_BE(I)I

    goto :goto_3e

    .line 2753
    :pswitch_97
    const/16 v2, 0xc

    iget-object v3, p1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    goto :goto_3e

    .line 2706
    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_55
        :pswitch_65
        :pswitch_73
        :pswitch_7d
        :pswitch_41
        :pswitch_47
        :pswitch_5f
        :pswitch_6f
        :pswitch_87
        :pswitch_91
        :pswitch_97
    .end packed-switch
.end method

.method public static smlenc_add_devinf_datastore_V11(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;)Z
    .registers 5
    .parameter "e"
    .parameter "ds"

    .prologue
    .line 2549
    if-nez p1, :cond_4

    .line 2551
    const/4 v0, 0x0

    .line 2579
    :cond_3
    :goto_3
    return v0

    .line 2553
    :cond_4
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 2555
    iget-object v1, p1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->sourceRef:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 2557
    const/16 v1, 0x1d

    iget-object v2, p1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->sourceRef:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 2559
    :cond_17
    iget-object v1, p1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->displayName:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 2561
    const/16 v1, 0xc

    iget-object v2, p1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->displayName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 2564
    :cond_26
    const/16 v1, 0x12

    iget v2, p1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->maxGuidSize:I

    invoke-static {v2}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 2566
    iget-object v1, p1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->rxPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    invoke-static {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_add_devinf_datastore_rx_pref(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;)Z

    move-result v0

    .local v0, res:Z
    if-eqz v0, :cond_3

    .line 2568
    iget-object v1, p1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->rx:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    invoke-static {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_add_devinf_datastore_rx(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2571
    iget-object v1, p1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->txPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    invoke-static {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_add_devinf_datastore_tx_pref(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2573
    iget-object v1, p1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->tx:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    invoke-static {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_add_devinf_datastore_tx(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2575
    iget-object v1, p1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    invoke-static {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_add_devinf_datastore_synccap(Lcom/syncmldstmo/base/smlEncoder;[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2577
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 2579
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static smlenc_add_devinf_datastore_V12(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;)Z
    .registers 7
    .parameter "e"
    .parameter "ds"
    .parameter "ctcap"

    .prologue
    .line 2587
    if-nez p1, :cond_4

    .line 2589
    const/4 v1, 0x0

    .line 2624
    :cond_3
    :goto_3
    return v1

    .line 2591
    :cond_4
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 2593
    iget-object v2, p1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->sourceRef:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 2595
    const/16 v2, 0x1d

    iget-object v3, p1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->sourceRef:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 2597
    :cond_17
    iget-object v2, p1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->displayName:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 2599
    const/16 v2, 0xc

    iget-object v3, p1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->displayName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 2602
    :cond_26
    const/16 v2, 0x12

    iget v3, p1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->maxGuidSize:I

    invoke-static {v3}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 2604
    iget-object v2, p1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->rxPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    invoke-static {p0, v2}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_add_devinf_datastore_rx_pref(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;)Z

    move-result v1

    .local v1, res:Z
    if-eqz v1, :cond_3

    .line 2606
    iget-object v2, p1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->rx:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    invoke-static {p0, v2}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_add_devinf_datastore_rx(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2609
    iget-object v2, p1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->txPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    invoke-static {p0, v2}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_add_devinf_datastore_tx_pref(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2611
    iget-object v2, p1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->tx:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    invoke-static {p0, v2}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_add_devinf_datastore_tx(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2613
    iget-object v2, p1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    invoke-static {p0, v2}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_add_devinf_datastore_synccap(Lcom/syncmldstmo/base/smlEncoder;[I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2616
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5a
    iget v2, p1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->numberOfctcap:I

    if-lt v0, v2, :cond_63

    .line 2622
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 2624
    const/4 v1, 0x1

    goto :goto_3

    .line 2618
    :cond_63
    invoke-static {p0, p2}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_add_devinf_ctcap_V12(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2616
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a
.end method

.method public static smlenc_add_devinf_datastore_rx(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;)Z
    .registers 4
    .parameter "smlenc"
    .parameter "data"

    .prologue
    .line 2443
    if-nez p1, :cond_4

    .line 2445
    const/4 v0, 0x0

    .line 2464
    :goto_3
    return v0

    .line 2448
    :cond_4
    iget-object v0, p1, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->ctType:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 2450
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 2452
    iget-object v0, p1, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->ctType:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2454
    const/4 v0, 0x6

    iget-object v1, p1, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->ctType:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 2456
    :cond_1f
    iget-object v0, p1, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->verCT:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2458
    const/16 v0, 0x24

    iget-object v1, p1, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->verCT:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 2461
    :cond_2e
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 2464
    :cond_31
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static smlenc_add_devinf_datastore_rx_pref(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;)Z
    .registers 4
    .parameter "smlenc"
    .parameter "data"

    .prologue
    .line 2418
    if-nez p1, :cond_4

    .line 2420
    const/4 v0, 0x0

    .line 2438
    :goto_3
    return v0

    .line 2423
    :cond_4
    iget-object v0, p1, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->ctType:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 2425
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 2427
    iget-object v0, p1, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->ctType:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2429
    const/4 v0, 0x6

    iget-object v1, p1, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->ctType:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 2431
    :cond_1f
    iget-object v0, p1, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->verCT:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2433
    const/16 v0, 0x24

    iget-object v1, p1, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->verCT:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 2436
    :cond_2e
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 2438
    :cond_31
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static smlenc_add_devinf_datastore_synccap(Lcom/syncmldstmo/base/smlEncoder;[I)Z
    .registers 5
    .parameter "smlenc"
    .parameter "synctype"

    .prologue
    .line 2524
    if-nez p1, :cond_4

    .line 2526
    const/4 v2, 0x0

    .line 2542
    :goto_3
    return v2

    .line 2529
    :cond_4
    const/16 v2, 0x1f

    invoke-direct {p0, v2}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 2531
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    const/16 v2, 0x8

    if-lt v1, v2, :cond_13

    .line 2540
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 2542
    const/4 v2, 0x1

    goto :goto_3

    .line 2533
    :cond_13
    aget v2, p1, v1

    if-lez v2, :cond_22

    .line 2535
    aget v2, p1, v1

    invoke-static {v2}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v0

    .line 2536
    .local v0, buf:Ljava/lang/String;
    const/16 v2, 0x20

    invoke-direct {p0, v2, v0}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 2531
    .end local v0           #buf:Ljava/lang/String;
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public static smlenc_add_devinf_datastore_tx(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;)Z
    .registers 4
    .parameter "smlenc"
    .parameter "data"

    .prologue
    .line 2495
    if-nez p1, :cond_4

    .line 2497
    const/4 v0, 0x0

    .line 2516
    :goto_3
    return v0

    .line 2500
    :cond_4
    iget-object v0, p1, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->ctType:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 2502
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 2504
    iget-object v0, p1, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->ctType:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2506
    const/4 v0, 0x6

    iget-object v1, p1, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->ctType:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 2508
    :cond_1f
    iget-object v0, p1, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->verCT:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2510
    const/16 v0, 0x24

    iget-object v1, p1, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->verCT:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 2513
    :cond_2e
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 2516
    :cond_31
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static smlenc_add_devinf_datastore_tx_pref(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;)Z
    .registers 4
    .parameter "smlenc"
    .parameter "data"

    .prologue
    .line 2469
    if-nez p1, :cond_4

    .line 2471
    const/4 v0, 0x0

    .line 2490
    :goto_3
    return v0

    .line 2474
    :cond_4
    iget-object v0, p1, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->ctType:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 2476
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 2478
    iget-object v0, p1, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->ctType:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2480
    const/4 v0, 0x6

    iget-object v1, p1, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->ctType:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 2482
    :cond_1f
    iget-object v0, p1, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->verCT:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2484
    const/16 v0, 0x24

    iget-object v1, p1, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->verCT:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 2487
    :cond_2e
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 2490
    :cond_31
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static smlenc_add_item(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/sml$SML_ITEM;)I
    .registers 3
    .parameter "e"
    .parameter "item"

    .prologue
    .line 2769
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddItem(Lcom/syncmldstmo/base/sml$SML_ITEM;)I

    move-result v0

    return v0
.end method

.method public static smlenc_devinf2opaque(Lcom/syncmldstmo/base/smlDeviceInfo;)Lcom/syncmldstmo/base/smlByteBuffer;
    .registers 10
    .parameter

    .prologue
    const/high16 v8, 0x4

    const/16 v7, 0x6a

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 2187
    new-instance v1, Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-direct {v1}, Lcom/syncmldstmo/base/smlByteBuffer;-><init>()V

    .line 2192
    if-nez p0, :cond_14

    .line 2194
    const-string v1, "smlenc_devinf2opaque devinf null"

    invoke-static {v8, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2413
    :cond_13
    :goto_13
    return-object v0

    .line 2198
    :cond_14
    new-instance v5, Lcom/syncmldstmo/base/smlEncoder;

    invoke-direct {v5}, Lcom/syncmldstmo/base/smlEncoder;-><init>()V

    .line 2200
    invoke-virtual {v5, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencInit(Lcom/syncmldstmo/base/smlByteBuffer;)V

    .line 2202
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetDSVersion()I

    move-result v3

    if-nez v3, :cond_36

    .line 2204
    const-string v3, "-//SYNCML//DTD DevInf 1.1//EN"

    const-string v4, "-//SYNCML//DTD DevInf 1.1//EN"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5, v2, v7, v3, v4}, Lcom/syncmldstmo/base/smlEncoder;->_smlwbxEncStartDocument(IILjava/lang/String;I)Z

    move-result v3

    .line 2211
    :goto_2e
    if-nez v3, :cond_43

    .line 2213
    const-string v1, "smlenc_devinf2opaque return null"

    invoke-static {v8, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_13

    .line 2208
    :cond_36
    const-string v3, "-//SYNCML//DTD DevInf 1.2//EN"

    const-string v4, "-//SYNCML//DTD DevInf 1.2//EN"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5, v2, v7, v3, v4}, Lcom/syncmldstmo/base/smlEncoder;->_smlwbxEncStartDocument(IILjava/lang/String;I)Z

    move-result v3

    goto :goto_2e

    .line 2217
    :cond_43
    const/16 v3, 0xa

    invoke-virtual {v5, v3, v6}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_start_element(IZ)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2221
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->verDTD:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 2223
    const/16 v3, 0x25

    invoke-virtual {v5, v3, v6}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_start_element(IZ)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2227
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->verDTD:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_add_content(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2231
    invoke-virtual {v5}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_end_element()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2236
    :cond_69
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->man:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_87

    .line 2238
    const/16 v3, 0x11

    invoke-virtual {v5, v3, v6}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_start_element(IZ)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2242
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->man:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_add_content(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2246
    invoke-virtual {v5}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_end_element()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2252
    :cond_87
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->mod:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a5

    .line 2254
    const/16 v3, 0x15

    invoke-virtual {v5, v3, v6}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_start_element(IZ)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2256
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->mod:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_add_content(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2258
    invoke-virtual {v5}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_end_element()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2262
    :cond_a5
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->oem:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c3

    .line 2264
    const/16 v3, 0x16

    invoke-virtual {v5, v3, v6}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_start_element(IZ)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2268
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->oem:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_add_content(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2272
    invoke-virtual {v5}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_end_element()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2277
    :cond_c3
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->fwv:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e1

    .line 2279
    const/16 v3, 0xf

    invoke-virtual {v5, v3, v6}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_start_element(IZ)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2283
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->fwv:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_add_content(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2287
    invoke-virtual {v5}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_end_element()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2292
    :cond_e1
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->swv:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ff

    .line 2294
    const/16 v3, 0x1e

    invoke-virtual {v5, v3, v6}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_start_element(IZ)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2298
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->swv:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_add_content(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2302
    invoke-virtual {v5}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_end_element()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2307
    :cond_ff
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->hwv:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11d

    .line 2309
    const/16 v3, 0x10

    invoke-virtual {v5, v3, v6}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_start_element(IZ)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2313
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->hwv:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_add_content(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2317
    invoke-virtual {v5}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_end_element()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2322
    :cond_11d
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->devid:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13b

    .line 2324
    const/16 v3, 0x9

    invoke-virtual {v5, v3, v6}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_start_element(IZ)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2328
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->devid:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_add_content(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2332
    invoke-virtual {v5}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_end_element()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2337
    :cond_13b
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->devtyp:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_159

    .line 2339
    const/16 v3, 0xb

    invoke-virtual {v5, v3, v6}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_start_element(IZ)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2343
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->devtyp:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_add_content(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2347
    invoke-virtual {v5}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_end_element()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2353
    :cond_159
    iget-boolean v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->supportnumberofchange:Z

    if-eqz v3, :cond_165

    .line 2355
    const/16 v3, 0x29

    invoke-virtual {v5, v3, v2}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_start_element(IZ)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2361
    :cond_165
    iget-boolean v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->supportlargeobj:Z

    if-eqz v3, :cond_171

    .line 2363
    const/16 v3, 0x2a

    invoke-virtual {v5, v3, v2}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_start_element(IZ)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2369
    :cond_171
    iget v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->utc:I

    if-eqz v3, :cond_17d

    .line 2371
    const/16 v3, 0x28

    invoke-virtual {v5, v3, v2}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_start_element(IZ)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_17d
    move v4, v2

    .line 2377
    :goto_17e
    const/4 v3, 0x3

    if-lt v4, v3, :cond_19e

    .line 2395
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetDSVersion()I

    move-result v2

    if-nez v2, :cond_18f

    .line 2397
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    invoke-static {v5, v2}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_add_devinf_ctcap_V11(Lcom/syncmldstmo/base/smlEncoder;[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;)Z

    move-result v2

    .line 2398
    if-eqz v2, :cond_13

    .line 2404
    :cond_18f
    invoke-virtual {v5}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_end_element()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2408
    invoke-virtual {v5}, Lcom/syncmldstmo/base/smlEncoder;->wbxenc_end_document()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object v0, v1

    .line 2413
    goto/16 :goto_13

    .line 2379
    :cond_19e
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetDSVersion()I

    move-result v3

    if-nez v3, :cond_1b2

    .line 2381
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v3, v3, v4

    invoke-static {v5, v3}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_add_devinf_datastore_V11(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;)Z

    move-result v3

    .line 2389
    :goto_1ac
    if-eqz v3, :cond_13

    .line 2377
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_17e

    .line 2385
    :cond_1b2
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v3, v3, v4

    iget-object v6, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v6, v6, v4

    invoke-static {v5, v3, v6}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_add_devinf_datastore_V12(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;)Z

    move-result v3

    .line 2386
    iget-object v6, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->numberOfctcap:I

    add-int/2addr v2, v6

    goto :goto_1ac
.end method

.method public static smlenc_get_buffer_size(Lcom/syncmldstmo/base/smlEncoder;)I
    .registers 2
    .parameter "e"

    .prologue
    .line 2764
    iget-object v0, p0, Lcom/syncmldstmo/base/smlWbxEncoder;->m_out:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlByteBuffer;->length()I

    move-result v0

    return v0
.end method


# virtual methods
.method public _ADD_BE(I)I
    .registers 4
    .parameter "a"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/syncmldstmo/base/smlEncoder;->_smlwbxEncStartElement(IZ)Z

    move-result v1

    if-nez v1, :cond_8

    .line 54
    const/4 v0, 0x5

    .line 56
    :cond_8
    return v0
.end method

.method public __smlencAddSourceparent(Ljava/lang/String;)I
    .registers 3
    .parameter "pSourceParent"

    .prologue
    .line 737
    invoke-static {p1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 739
    const/4 v0, 0x6

    .line 746
    :goto_7
    return v0

    .line 742
    :cond_8
    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 743
    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 744
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 746
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public _smlencAddAlert(Lcom/syncmldstmo/base/sml$SML_ALERT;)I
    .registers 5
    .parameter "cmd"

    .prologue
    const/4 v0, 0x6

    .line 853
    if-nez p1, :cond_4

    .line 902
    :cond_3
    :goto_3
    return v0

    .line 858
    :cond_4
    iget v1, p1, Lcom/syncmldstmo/base/sml$SML_ALERT;->cmdid:I

    if-ltz v1, :cond_3

    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 863
    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 865
    iget v1, p1, Lcom/syncmldstmo/base/sml$SML_ALERT;->cmdid:I

    if-lez v1, :cond_22

    .line 867
    const/16 v1, 0xb

    iget v2, p1, Lcom/syncmldstmo/base/sml$SML_ALERT;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 870
    :cond_22
    iget v1, p1, Lcom/syncmldstmo/base/sml$SML_ALERT;->correlator:I

    if-lez v1, :cond_31

    .line 872
    const/16 v1, 0x3c

    iget v2, p1, Lcom/syncmldstmo/base/sml$SML_ALERT;->correlator:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 875
    :cond_31
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 877
    const/16 v1, 0xf

    iget-object v2, p1, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 880
    :cond_40
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_ALERT;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    if-eqz v1, :cond_4c

    .line 882
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_ALERT;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddCred(Lcom/syncmldstmo/base/sml$SML_CRED;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_3

    .line 888
    .end local v0           #res:I
    :cond_4c
    iget v1, p1, Lcom/syncmldstmo/base/sml$SML_ALERT;->is_noresp:I

    if-lez v1, :cond_55

    .line 890
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_BE(I)I

    .line 893
    :cond_55
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_ALERT;->itemlist:Lcom/syncmldstmo/base/smlList;

    if-eqz v1, :cond_61

    .line 895
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_ALERT;->itemlist:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddItemlist(Lcom/syncmldstmo/base/smlList;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 900
    .end local v0           #res:I
    :cond_61
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 902
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public _smlencAddCred(Lcom/syncmldstmo/base/sml$SML_CRED;)I
    .registers 5
    .parameter "cred"

    .prologue
    .line 504
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 506
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_CRED;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v1, :cond_12

    .line 508
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_CRED;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddMeta(Lcom/syncmldstmo/base/sml$SML_META;)I

    move-result v0

    .local v0, res:I
    if-eqz v0, :cond_12

    .line 521
    .end local v0           #res:I
    :goto_11
    return v0

    .line 514
    :cond_12
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_CRED;->data:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 516
    const/16 v1, 0xf

    iget-object v2, p1, Lcom/syncmldstmo/base/sml$SML_CRED;->data:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 519
    :cond_21
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 521
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public _smlencAddElelist(Lcom/syncmldstmo/base/smlList;I)I
    .registers 6
    .parameter "list"
    .parameter "id"

    .prologue
    .line 907
    move-object v0, p1

    .line 910
    .local v0, h:Lcom/syncmldstmo/base/smlList;
    if-nez p1, :cond_5

    .line 912
    const/4 v2, 0x6

    .line 927
    :goto_4
    return v2

    .line 915
    :cond_5
    invoke-static {v0}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 917
    .local v1, item:Ljava/lang/String;
    :goto_b
    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 927
    const/4 v2, 0x0

    goto :goto_4

    .line 919
    :cond_13
    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 921
    invoke-direct {p0, p2, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 923
    :cond_1c
    invoke-static {v0}, Lcom/syncmldstmo/base/smlList;->sml_list_get_next(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v0

    .line 924
    invoke-static {v0}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #item:Ljava/lang/String;
    goto :goto_b
.end method

.method public _smlencAddGet(Lcom/syncmldstmo/base/sml$SML_GET;)I
    .registers 7
    .parameter "get"

    .prologue
    .line 1419
    const/4 v0, 0x0

    .line 1421
    .local v0, h:Lcom/syncmldstmo/base/smlList;
    if-nez p1, :cond_5

    .line 1423
    const/4 v2, 0x6

    .line 1476
    :cond_4
    :goto_4
    return v2

    .line 1426
    :cond_5
    iget-object v0, p1, Lcom/syncmldstmo/base/sml$SML_GET;->itemlist:Lcom/syncmldstmo/base/smlList;

    .line 1428
    const/16 v3, 0x13

    invoke-direct {p0, v3}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 1430
    iget v3, p1, Lcom/syncmldstmo/base/sml$SML_GET;->cmdid:I

    if-lez v3, :cond_1b

    .line 1432
    const/16 v3, 0xb

    iget v4, p1, Lcom/syncmldstmo/base/sml$SML_GET;->cmdid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1435
    :cond_1b
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_GET;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    if-eqz v3, :cond_27

    .line 1437
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_GET;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-virtual {p0, v3}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddCred(Lcom/syncmldstmo/base/sml$SML_CRED;)I

    move-result v2

    .local v2, res:I
    if-nez v2, :cond_4

    .line 1442
    .end local v2           #res:I
    :cond_27
    iget v3, p1, Lcom/syncmldstmo/base/sml$SML_GET;->is_noresp:I

    if-lez v3, :cond_30

    .line 1444
    const/16 v3, 0x1d

    invoke-virtual {p0, v3}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_BE(I)I

    .line 1446
    :cond_30
    iget v3, p1, Lcom/syncmldstmo/base/sml$SML_GET;->lang:I

    if-lez v3, :cond_3f

    .line 1448
    const/16 v3, 0x15

    iget v4, p1, Lcom/syncmldstmo/base/sml$SML_GET;->lang:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1450
    :cond_3f
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_GET;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v3, :cond_4b

    .line 1452
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_GET;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {p0, v3}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddMeta(Lcom/syncmldstmo/base/sml$SML_META;)I

    move-result v2

    .restart local v2       #res:I
    if-nez v2, :cond_4

    .line 1458
    .end local v2           #res:I
    :cond_4b
    invoke-static {v0}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syncmldstmo/base/sml$SML_ITEM;

    .line 1459
    .local v1, item:Lcom/syncmldstmo/base/sml$SML_ITEM;
    :goto_51
    if-nez v1, :cond_58

    .line 1474
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 1476
    const/4 v2, 0x0

    goto :goto_4

    .line 1461
    :cond_58
    if-eqz v1, :cond_64

    .line 1463
    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddItem(Lcom/syncmldstmo/base/sml$SML_ITEM;)I

    move-result v2

    .restart local v2       #res:I
    if-eqz v2, :cond_64

    .line 1466
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    goto :goto_4

    .line 1470
    .end local v2           #res:I
    :cond_64
    invoke-static {v0}, Lcom/syncmldstmo/base/smlList;->sml_list_get_next(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v0

    .line 1471
    invoke-static {v0}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/syncmldstmo/base/sml$SML_ITEM;
    check-cast v1, Lcom/syncmldstmo/base/sml$SML_ITEM;

    .restart local v1       #item:Lcom/syncmldstmo/base/sml$SML_ITEM;
    goto :goto_51
.end method

.method public _smlencAddItem(Lcom/syncmldstmo/base/sml$SML_ITEM;)I
    .registers 10
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0xf

    const/4 v2, 0x5

    const/4 v6, 0x1

    .line 310
    if-nez p1, :cond_9

    .line 312
    const/4 v1, 0x6

    .line 465
    :cond_8
    :goto_8
    return v1

    .line 315
    :cond_9
    const/16 v4, 0x14

    invoke-direct {p0, v4}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 317
    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    if-eqz v4, :cond_24

    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v4, v4, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 319
    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddTarget(Lcom/syncmldstmo/base/sml$SML_TARGET;)I

    move-result v1

    .local v1, res:I
    if-nez v1, :cond_8

    .line 325
    .end local v1           #res:I
    :cond_24
    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->targetparent:Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;

    if-eqz v4, :cond_3c

    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->targetparent:Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;

    iget-object v4, v4, Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;->pLocURI:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 327
    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->targetparent:Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;

    iget-object v4, v4, Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;->pLocURI:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddTargetparent(Ljava/lang/String;)I

    move-result v1

    .restart local v1       #res:I
    if-nez v1, :cond_8

    .line 333
    .end local v1           #res:I
    :cond_3c
    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 335
    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddSource(Ljava/lang/String;)I

    move-result v1

    .restart local v1       #res:I
    if-nez v1, :cond_8

    .line 341
    .end local v1           #res:I
    :cond_4c
    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->sourceparent:Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;

    if-eqz v4, :cond_64

    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->sourceparent:Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;

    iget-object v4, v4, Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;->pLocURI:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_64

    .line 343
    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->sourceparent:Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;

    iget-object v4, v4, Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;->pLocURI:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlEncoder;->__smlencAddSourceparent(Ljava/lang/String;)I

    move-result v1

    .restart local v1       #res:I
    if-nez v1, :cond_8

    .line 349
    .end local v1           #res:I
    :cond_64
    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v4, :cond_70

    .line 351
    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddMeta(Lcom/syncmldstmo/base/sml$SML_META;)I

    move-result v1

    .restart local v1       #res:I
    if-nez v1, :cond_8

    .line 357
    .end local v1           #res:I
    :cond_70
    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    if-eqz v4, :cond_83

    .line 359
    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v4, v4, Lcom/syncmldstmo/base/sml$SML_PCDATA;->type:I

    if-nez v4, :cond_92

    .line 361
    iget-object v2, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/base/smlEncoder;->_smlencPcdataGetString(Lcom/syncmldstmo/base/sml$SML_PCDATA;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v7, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 458
    :cond_83
    :goto_83
    iget v2, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->moredata:I

    if-ne v2, v6, :cond_8c

    .line 460
    const/16 v2, 0x34

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_BE(I)I

    .line 463
    :cond_8c
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    move v1, v3

    .line 465
    goto/16 :goto_8

    .line 363
    :cond_92
    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v4, v4, Lcom/syncmldstmo/base/sml$SML_PCDATA;->type:I

    if-ne v4, v6, :cond_b8

    .line 365
    invoke-direct {p0, v7}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 369
    :try_start_9b
    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget-object v4, v4, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    iget-object v5, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v5, v5, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    invoke-virtual {p0, v4, v5}, Lcom/syncmldstmo/base/smlEncoder;->_smlwbxEncAddOpaque([CI)Z
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_a6} :catch_ac

    move-result v4

    if-nez v4, :cond_b4

    move v1, v2

    .line 371
    goto/16 :goto_8

    .line 374
    :catch_ac
    move-exception v0

    .line 376
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 378
    .end local v0           #e:Ljava/io/IOException;
    :cond_b4
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    goto :goto_83

    .line 380
    :cond_b8
    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v4, v4, Lcom/syncmldstmo/base/sml$SML_PCDATA;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_83

    .line 439
    invoke-direct {p0, v7}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 440
    invoke-virtual {p0, v6}, Lcom/syncmldstmo/base/smlEncoder;->_smlwbxEncAddSwitchpage(I)Z

    move-result v4

    if-nez v4, :cond_cb

    move v1, v2

    .line 442
    goto/16 :goto_8

    .line 445
    :cond_cb
    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget-object v4, v4, Lcom/syncmldstmo/base/sml$SML_PCDATA;->anchor:Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddMetinfAnchor(Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;)I

    move-result v1

    .restart local v1       #res:I
    if-nez v1, :cond_8

    .line 449
    invoke-virtual {p0, v3}, Lcom/syncmldstmo/base/smlEncoder;->_smlwbxEncAddSwitchpage(I)Z

    move-result v4

    if-nez v4, :cond_de

    move v1, v2

    .line 451
    goto/16 :goto_8

    .line 453
    :cond_de
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    goto :goto_83
.end method

.method public _smlencAddItemlist(Lcom/syncmldstmo/base/smlList;)I
    .registers 5
    .parameter "list"

    .prologue
    .line 1551
    move-object v0, p1

    .line 1554
    .local v0, h:Lcom/syncmldstmo/base/smlList;
    if-nez p1, :cond_5

    .line 1556
    const/4 v2, 0x6

    .line 1574
    :cond_4
    :goto_4
    return v2

    .line 1558
    :cond_5
    invoke-static {v0}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syncmldstmo/base/sml$SML_ITEM;

    .line 1560
    .local v1, item:Lcom/syncmldstmo/base/sml$SML_ITEM;
    :goto_b
    if-nez v1, :cond_f

    .line 1574
    const/4 v2, 0x0

    goto :goto_4

    .line 1562
    :cond_f
    if-eqz v1, :cond_17

    .line 1564
    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddItem(Lcom/syncmldstmo/base/sml$SML_ITEM;)I

    move-result v2

    .local v2, res:I
    if-nez v2, :cond_4

    .line 1570
    .end local v2           #res:I
    :cond_17
    invoke-static {v0}, Lcom/syncmldstmo/base/smlList;->sml_list_get_next(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v0

    .line 1571
    invoke-static {v0}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/syncmldstmo/base/sml$SML_ITEM;
    check-cast v1, Lcom/syncmldstmo/base/sml$SML_ITEM;

    .restart local v1       #item:Lcom/syncmldstmo/base/sml$SML_ITEM;
    goto :goto_b
.end method

.method public _smlencAddMapItem(Lcom/syncmldstmo/base/sml$SML_MAPITEM;)I
    .registers 4
    .parameter "item"

    .prologue
    .line 472
    if-nez p1, :cond_4

    .line 474
    const/4 v0, 0x6

    .line 497
    :cond_3
    :goto_3
    return v0

    .line 477
    :cond_4
    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 479
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_MAPITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    if-eqz v1, :cond_1b

    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_MAPITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 481
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_MAPITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddTarget(Lcom/syncmldstmo/base/sml$SML_TARGET;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_3

    .line 487
    .end local v0           #res:I
    :cond_1b
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_MAPITEM;->source:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 489
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_MAPITEM;->source:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddSource(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 495
    .end local v0           #res:I
    :cond_27
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 497
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public _smlencAddMeta(Lcom/syncmldstmo/base/sml$SML_META;)I
    .registers 9
    .parameter "meta"

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 124
    if-nez p1, :cond_6

    .line 125
    const/4 v0, 0x6

    .line 185
    :cond_5
    :goto_5
    return v0

    .line 127
    :cond_6
    const/16 v3, 0x1a

    invoke-direct {p0, v3}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 129
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/syncmldstmo/base/smlEncoder;->_smlwbxEncAddSwitchpage(I)Z

    move-result v3

    if-nez v3, :cond_14

    move v0, v1

    .line 130
    goto :goto_5

    .line 132
    :cond_14
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_META;->format:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 133
    const/4 v3, 0x7

    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_META;->format:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 135
    :cond_22
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 136
    const/16 v3, 0x13

    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 138
    :cond_31
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_META;->mark:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 139
    const/16 v3, 0xb

    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_META;->mark:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 141
    :cond_40
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_META;->size:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 142
    const/16 v3, 0x12

    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_META;->size:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 144
    :cond_4f
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_META;->version:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 145
    const/16 v3, 0x14

    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_META;->version:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 147
    :cond_5e
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_META;->nextnonce:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6d

    .line 148
    const/16 v3, 0x10

    iget-object v4, p1, Lcom/syncmldstmo/base/sml$SML_META;->nextnonce:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 150
    :cond_6d
    iget v3, p1, Lcom/syncmldstmo/base/sml$SML_META;->maxmsgsize:I

    if-lez v3, :cond_7c

    .line 151
    const/16 v3, 0xc

    iget v4, p1, Lcom/syncmldstmo/base/sml$SML_META;->maxmsgsize:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 153
    :cond_7c
    iget-wide v3, p1, Lcom/syncmldstmo/base/sml$SML_META;->maxobjsize:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_8f

    .line 154
    const/16 v3, 0x15

    iget-wide v4, p1, Lcom/syncmldstmo/base/sml$SML_META;->maxobjsize:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 156
    :cond_8f
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_META;->anchor:Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

    if-eqz v3, :cond_af

    .line 158
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_META;->anchor:Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

    iget-object v3, v3, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;->last:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_af

    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_META;->anchor:Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

    iget-object v3, v3, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;->next:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_af

    .line 160
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_META;->anchor:Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

    invoke-virtual {p0, v3}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddMetinfAnchor(Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;)I

    move-result v0

    .line 161
    .local v0, res:I
    if-nez v0, :cond_5

    .line 166
    .end local v0           #res:I
    :cond_af
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_META;->emi:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_bf

    .line 168
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_META;->emi:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddMetinfEmi(Ljava/lang/String;)I

    move-result v0

    .line 169
    .restart local v0       #res:I
    if-nez v0, :cond_5

    .line 173
    .end local v0           #res:I
    :cond_bf
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_META;->mem:Lcom/syncmldstmo/base/sml$SML_METINF_MEM;

    if-eqz v3, :cond_cb

    .line 175
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_META;->mem:Lcom/syncmldstmo/base/sml$SML_METINF_MEM;

    invoke-virtual {p0, v3}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddMetinfMem(Lcom/syncmldstmo/base/sml$SML_METINF_MEM;)I

    move-result v0

    .line 176
    .restart local v0       #res:I
    if-nez v0, :cond_5

    .line 180
    .end local v0           #res:I
    :cond_cb
    invoke-virtual {p0, v2}, Lcom/syncmldstmo/base/smlEncoder;->_smlwbxEncAddSwitchpage(I)Z

    move-result v3

    if-nez v3, :cond_d4

    move v0, v1

    .line 181
    goto/16 :goto_5

    .line 183
    :cond_d4
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    move v0, v2

    .line 185
    goto/16 :goto_5
.end method

.method public _smlencAddMetinfAnchor(Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;)I
    .registers 4
    .parameter "cmd"

    .prologue
    const/4 v0, 0x6

    .line 1579
    if-nez p1, :cond_4

    .line 1599
    :cond_3
    :goto_3
    return v0

    .line 1584
    :cond_4
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;->last:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;->next:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1587
    :cond_14
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 1589
    iget-object v0, p1, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;->last:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1591
    const/16 v0, 0xa

    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;->last:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1593
    :cond_27
    iget-object v0, p1, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;->next:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1595
    const/16 v0, 0xf

    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;->next:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1597
    :cond_36
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 1599
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public _smlencAddMetinfEmi(Ljava/lang/String;)I
    .registers 3
    .parameter "emi"

    .prologue
    const/4 v0, 0x6

    .line 1636
    if-nez p1, :cond_4

    .line 1643
    :goto_3
    return v0

    .line 1641
    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1643
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public _smlencAddMetinfMem(Lcom/syncmldstmo/base/sml$SML_METINF_MEM;)I
    .registers 7
    .parameter "mem"

    .prologue
    const/4 v0, 0x6

    const-wide/16 v3, 0x0

    .line 1604
    if-nez p1, :cond_6

    .line 1631
    :cond_5
    :goto_5
    return v0

    .line 1609
    :cond_6
    iget-wide v1, p1, Lcom/syncmldstmo/base/sml$SML_METINF_MEM;->free:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1a

    iget-wide v1, p1, Lcom/syncmldstmo/base/sml$SML_METINF_MEM;->freeid:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1a

    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_METINF_MEM;->shared:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1614
    :cond_1a
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 1616
    iget-wide v0, p1, Lcom/syncmldstmo/base/sml$SML_METINF_MEM;->free:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_30

    .line 1618
    const/16 v0, 0x9

    iget-wide v1, p1, Lcom/syncmldstmo/base/sml$SML_METINF_MEM;->free:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1620
    :cond_30
    iget-wide v0, p1, Lcom/syncmldstmo/base/sml$SML_METINF_MEM;->freeid:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_41

    .line 1622
    const/16 v0, 0x8

    iget-wide v1, p1, Lcom/syncmldstmo/base/sml$SML_METINF_MEM;->freeid:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1624
    :cond_41
    iget-object v0, p1, Lcom/syncmldstmo/base/sml$SML_METINF_MEM;->shared:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 1626
    const/16 v0, 0x11

    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_METINF_MEM;->shared:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1629
    :cond_50
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 1631
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public _smlencAddPut(Lcom/syncmldstmo/base/sml$SML_PUT;)I
    .registers 7
    .parameter "put"

    .prologue
    .line 1481
    const/4 v2, 0x0

    .line 1487
    .local v2, res:I
    if-nez p1, :cond_5

    .line 1489
    const/4 v3, 0x6

    .line 1545
    :goto_4
    return v3

    .line 1492
    :cond_5
    iget-object v0, p1, Lcom/syncmldstmo/base/sml$SML_PUT;->itemlist:Lcom/syncmldstmo/base/smlList;

    .line 1494
    .local v0, h:Lcom/syncmldstmo/base/smlList;
    const/16 v3, 0x1f

    invoke-direct {p0, v3}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 1496
    iget v3, p1, Lcom/syncmldstmo/base/sml$SML_PUT;->cmdid:I

    if-lez v3, :cond_1b

    .line 1498
    const/16 v3, 0xb

    iget v4, p1, Lcom/syncmldstmo/base/sml$SML_PUT;->cmdid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1501
    :cond_1b
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_PUT;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    if-eqz v3, :cond_29

    .line 1503
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_PUT;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-virtual {p0, v3}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddCred(Lcom/syncmldstmo/base/sml$SML_CRED;)I

    move-result v2

    if-eqz v2, :cond_29

    move v3, v2

    .line 1505
    goto :goto_4

    .line 1509
    :cond_29
    iget v3, p1, Lcom/syncmldstmo/base/sml$SML_PUT;->is_noresp:I

    if-lez v3, :cond_32

    .line 1511
    const/16 v3, 0x1d

    invoke-virtual {p0, v3}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_BE(I)I

    .line 1514
    :cond_32
    iget v3, p1, Lcom/syncmldstmo/base/sml$SML_PUT;->lang:I

    if-lez v3, :cond_41

    .line 1516
    const/16 v3, 0x15

    iget v4, p1, Lcom/syncmldstmo/base/sml$SML_PUT;->lang:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1519
    :cond_41
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_PUT;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v3, :cond_4f

    .line 1521
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_PUT;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {p0, v3}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddMeta(Lcom/syncmldstmo/base/sml$SML_META;)I

    move-result v2

    if-eqz v2, :cond_4f

    move v3, v2

    .line 1523
    goto :goto_4

    .line 1527
    :cond_4f
    invoke-static {v0}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syncmldstmo/base/sml$SML_ITEM;

    .line 1528
    .local v1, item:Lcom/syncmldstmo/base/sml$SML_ITEM;
    :goto_55
    if-nez v1, :cond_5c

    .line 1543
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 1545
    const/4 v3, 0x0

    goto :goto_4

    .line 1530
    :cond_5c
    if-eqz v1, :cond_69

    .line 1532
    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddItem(Lcom/syncmldstmo/base/sml$SML_ITEM;)I

    move-result v2

    if-eqz v2, :cond_69

    .line 1535
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    move v3, v2

    .line 1536
    goto :goto_4

    .line 1539
    :cond_69
    invoke-static {v0}, Lcom/syncmldstmo/base/smlList;->sml_list_get_next(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v0

    .line 1540
    invoke-static {v0}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/syncmldstmo/base/sml$SML_ITEM;
    check-cast v1, Lcom/syncmldstmo/base/sml$SML_ITEM;

    .restart local v1       #item:Lcom/syncmldstmo/base/sml$SML_ITEM;
    goto :goto_55
.end method

.method public _smlencAddResults(Lcom/syncmldstmo/base/sml$SML_RESULTS;)I
    .registers 4
    .parameter

    .prologue
    .line 1650
    if-nez p1, :cond_4

    .line 1652
    const/4 v0, 0x6

    .line 1694
    :cond_3
    :goto_3
    return v0

    .line 1655
    :cond_4
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 1657
    iget v0, p1, Lcom/syncmldstmo/base/sml$SML_RESULTS;->cmdid:I

    if-lez v0, :cond_18

    .line 1659
    const/16 v0, 0xb

    iget v1, p1, Lcom/syncmldstmo/base/sml$SML_RESULTS;->cmdid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1661
    :cond_18
    iget-object v0, p1, Lcom/syncmldstmo/base/sml$SML_RESULTS;->msgref:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1663
    const/16 v0, 0x1c

    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_RESULTS;->msgref:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1665
    :cond_27
    iget-object v0, p1, Lcom/syncmldstmo/base/sml$SML_RESULTS;->cmdref:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1667
    const/16 v0, 0xc

    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_RESULTS;->cmdref:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1669
    :cond_36
    iget-object v0, p1, Lcom/syncmldstmo/base/sml$SML_RESULTS;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v0, :cond_42

    .line 1671
    iget-object v0, p1, Lcom/syncmldstmo/base/sml$SML_RESULTS;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddMeta(Lcom/syncmldstmo/base/sml$SML_META;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1676
    :cond_42
    iget-object v0, p1, Lcom/syncmldstmo/base/sml$SML_RESULTS;->targetref:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 1678
    const/16 v0, 0x2f

    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_RESULTS;->targetref:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1680
    :cond_51
    iget-object v0, p1, Lcom/syncmldstmo/base/sml$SML_RESULTS;->sourceref:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 1682
    const/16 v0, 0x28

    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_RESULTS;->sourceref:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1684
    :cond_60
    iget-object v0, p1, Lcom/syncmldstmo/base/sml$SML_RESULTS;->itemlist:Lcom/syncmldstmo/base/smlList;

    if-eqz v0, :cond_73

    .line 1686
    const/high16 v0, 0x4

    const-string v1, "results.itemlist:"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1687
    iget-object v0, p1, Lcom/syncmldstmo/base/sml$SML_RESULTS;->itemlist:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddItemlist(Lcom/syncmldstmo/base/smlList;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1692
    :cond_73
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 1694
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public _smlencAddSource(Ljava/lang/String;)I
    .registers 3
    .parameter "source"

    .prologue
    .line 724
    invoke-static {p1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 726
    const/4 v0, 0x6

    .line 732
    :goto_7
    return v0

    .line 728
    :cond_8
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 729
    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 730
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 732
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public _smlencAddSourceWithLocname(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "source"
    .parameter "locname"

    .prologue
    .line 751
    invoke-static {p1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 753
    :cond_c
    const/4 v0, 0x6

    .line 760
    :goto_d
    return v0

    .line 755
    :cond_e
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 756
    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 757
    const/16 v0, 0x16

    invoke-direct {p0, v0, p2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 758
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 760
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public _smlencAddStatus(Lcom/syncmldstmo/base/sml$SML_STATUS;)I
    .registers 5
    .parameter "cmd"

    .prologue
    const/4 v0, 0x6

    .line 934
    if-nez p1, :cond_4

    .line 1007
    :cond_3
    :goto_3
    return v0

    .line 946
    :cond_4
    iget v1, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmdid:I

    if-ltz v1, :cond_3

    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->msgref:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 951
    const/16 v1, 0x29

    invoke-direct {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 953
    iget v1, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmdid:I

    if-lez v1, :cond_2c

    .line 955
    const/16 v1, 0xb

    iget v2, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 957
    :cond_2c
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->msgref:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 959
    const/16 v1, 0x1c

    iget-object v2, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->msgref:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 961
    :cond_3b
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmdref:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 963
    const/16 v1, 0xc

    iget-object v2, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmdref:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 965
    :cond_4a
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmd:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 967
    const/16 v1, 0xa

    iget-object v2, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmd:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 969
    :cond_59
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->targetref:Lcom/syncmldstmo/base/smlList;

    if-eqz v1, :cond_64

    .line 971
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->targetref:Lcom/syncmldstmo/base/smlList;

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddElelist(Lcom/syncmldstmo/base/smlList;I)I

    .line 973
    :cond_64
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->sourceref:Lcom/syncmldstmo/base/smlList;

    if-eqz v1, :cond_6f

    .line 975
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->sourceref:Lcom/syncmldstmo/base/smlList;

    const/16 v2, 0x28

    invoke-virtual {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddElelist(Lcom/syncmldstmo/base/smlList;I)I

    .line 977
    :cond_6f
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    if-eqz v1, :cond_7b

    .line 979
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddCred(Lcom/syncmldstmo/base/sml$SML_CRED;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_3

    .line 984
    .end local v0           #res:I
    :cond_7b
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->chal:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v1, :cond_8f

    .line 986
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 987
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->chal:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddMeta(Lcom/syncmldstmo/base/sml$SML_META;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 991
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 993
    .end local v0           #res:I
    :cond_8f
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9e

    .line 995
    const/16 v1, 0xf

    iget-object v2, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 998
    :cond_9e
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->itemlist:Lcom/syncmldstmo/base/smlList;

    if-eqz v1, :cond_aa

    .line 1000
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->itemlist:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddItemlist(Lcom/syncmldstmo/base/smlList;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 1005
    .end local v0           #res:I
    :cond_aa
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 1007
    const/4 v0, 0x0

    goto/16 :goto_3
.end method

.method public _smlencAddSyncHeader(Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;)I
    .registers 5
    .parameter "sh"

    .prologue
    .line 592
    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 594
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->verdtd:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 596
    const/16 v1, 0x31

    iget-object v2, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->verdtd:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 599
    :cond_14
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->verproto:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 601
    const/16 v1, 0x32

    iget-object v2, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->verproto:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 604
    :cond_23
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->sessionid:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 606
    const/16 v1, 0x25

    iget-object v2, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->sessionid:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 609
    :cond_32
    iget v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->msgid:I

    if-lez v1, :cond_41

    .line 611
    const/16 v1, 0x1b

    iget v2, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->msgid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 614
    :cond_41
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->respuri:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 616
    const/16 v1, 0x21

    iget-object v2, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->respuri:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 619
    :cond_50
    iget v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->is_noresp:I

    if-lez v1, :cond_59

    .line 621
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_BE(I)I

    .line 624
    :cond_59
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    if-eqz v1, :cond_66

    .line 626
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddTarget(Lcom/syncmldstmo/base/sml$SML_TARGET;)I

    move-result v0

    .local v0, res:I
    if-eqz v0, :cond_66

    .line 670
    .end local v0           #res:I
    :cond_65
    :goto_65
    return v0

    .line 632
    :cond_66
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->source:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7e

    .line 634
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->locname:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 636
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->source:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddSource(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_65

    .line 650
    .end local v0           #res:I
    :cond_7e
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    if-eqz v1, :cond_9a

    .line 652
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_CRED;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-nez v1, :cond_92

    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_CRED;->data:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 654
    :cond_92
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddCred(Lcom/syncmldstmo/base/sml$SML_CRED;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_65

    .line 661
    .end local v0           #res:I
    :cond_9a
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v1, :cond_a6

    .line 663
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddMeta(Lcom/syncmldstmo/base/sml$SML_META;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_65

    .line 668
    .end local v0           #res:I
    :cond_a6
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 670
    const/4 v0, 0x0

    goto :goto_65

    .line 643
    :cond_ab
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->source:Ljava/lang/String;

    iget-object v2, p1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->locname:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddSourceWithLocname(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #res:I
    if-eqz v0, :cond_7e

    goto :goto_65
.end method

.method public _smlencAddTarget(Lcom/syncmldstmo/base/sml$SML_TARGET;)I
    .registers 4
    .parameter "target"

    .prologue
    .line 675
    if-nez p1, :cond_4

    .line 677
    const/4 v0, 0x6

    .line 704
    :goto_3
    return v0

    .line 680
    :cond_4
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 681
    iget-object v0, p1, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 682
    const/16 v0, 0x17

    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 684
    :cond_18
    iget-object v0, p1, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocName:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 685
    const/16 v0, 0x16

    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 702
    :cond_27
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 704
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public _smlencAddTargetparent(Ljava/lang/String;)I
    .registers 3
    .parameter "pTargetParent"

    .prologue
    .line 709
    invoke-static {p1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 711
    const/4 v0, 0x6

    .line 719
    :goto_7
    return v0

    .line 714
    :cond_8
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 715
    invoke-static {p1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 716
    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 717
    :cond_18
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 719
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public _smlencEndAdd()I
    .registers 2

    .prologue
    .line 1093
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 1095
    const/4 v0, 0x0

    return v0
.end method

.method public _smlencEndDelete()I
    .registers 2

    .prologue
    .line 1290
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 1291
    const/4 v0, 0x0

    return v0
.end method

.method public _smlencEndMap()I
    .registers 2

    .prologue
    .line 1411
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 1412
    const/4 v0, 0x0

    return v0
.end method

.method public _smlencEndReplace()I
    .registers 2

    .prologue
    .line 1184
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 1186
    const/4 v0, 0x0

    return v0
.end method

.method public _smlencEndSync()I
    .registers 2

    .prologue
    .line 843
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 845
    const/4 v0, 0x0

    return v0
.end method

.method public _smlencEndSyncbody(Z)I
    .registers 3
    .parameter "is_final"

    .prologue
    .line 772
    if-eqz p1, :cond_7

    .line 774
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_BE(I)I

    .line 777
    :cond_7
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlEncoder;->_END_E()I

    .line 779
    const/4 v0, 0x0

    return v0
.end method

.method public _smlencEndSyncml()I
    .registers 3

    .prologue
    const/4 v0, 0x5

    .line 79
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlEncoder;->_smlwbxEncEndElement()Z

    move-result v1

    if-nez v1, :cond_8

    .line 85
    :cond_7
    :goto_7
    return v0

    .line 82
    :cond_8
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlEncoder;->_smlwbxEncEndDocument()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 85
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public _smlencInit(Lcom/syncmldstmo/base/smlByteBuffer;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlEncoder;->_smlwbxEncInit(Lcom/syncmldstmo/base/smlByteBuffer;)V

    .line 62
    return-void
.end method

.method public _smlencPcdataGetString(Lcom/syncmldstmo/base/sml$SML_PCDATA;)Ljava/lang/String;
    .registers 4
    .parameter "pcdata"

    .prologue
    const/4 v0, 0x0

    .line 2094
    if-nez p1, :cond_4

    .line 2106
    :cond_3
    :goto_3
    return-object v0

    .line 2099
    :cond_4
    iget v1, p1, Lcom/syncmldstmo/base/sml$SML_PCDATA;->type:I

    if-nez v1, :cond_3

    .line 2104
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 2106
    .local v0, str:Ljava/lang/String;
    goto :goto_3
.end method

.method public _smlencStartAdd(Lcom/syncmldstmo/base/sml$SML_ADD;)I
    .registers 5
    .parameter "cmd"

    .prologue
    .line 1059
    if-nez p1, :cond_4

    .line 1061
    const/4 v0, 0x6

    .line 1088
    :cond_3
    :goto_3
    return v0

    .line 1063
    :cond_4
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 1065
    iget v1, p1, Lcom/syncmldstmo/base/sml$SML_ADD;->cmdid:I

    if-lez v1, :cond_17

    .line 1067
    const/16 v1, 0xb

    iget v2, p1, Lcom/syncmldstmo/base/sml$SML_ADD;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1069
    :cond_17
    iget v1, p1, Lcom/syncmldstmo/base/sml$SML_ADD;->is_noresp:I

    if-lez v1, :cond_20

    .line 1071
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_BE(I)I

    .line 1073
    :cond_20
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_ADD;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    if-eqz v1, :cond_2c

    .line 1075
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_ADD;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddCred(Lcom/syncmldstmo/base/sml$SML_CRED;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_3

    .line 1080
    .end local v0           #res:I
    :cond_2c
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_ADD;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v1, :cond_38

    .line 1082
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_ADD;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddMeta(Lcom/syncmldstmo/base/sml$SML_META;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 1088
    .end local v0           #res:I
    :cond_38
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public _smlencStartDelete(Lcom/syncmldstmo/base/sml$SML_DELETE;)I
    .registers 5
    .parameter "cmd"

    .prologue
    .line 1246
    if-nez p1, :cond_4

    .line 1248
    const/4 v0, 0x6

    .line 1285
    :cond_3
    :goto_3
    return v0

    .line 1250
    :cond_4
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 1252
    iget v1, p1, Lcom/syncmldstmo/base/sml$SML_DELETE;->cmdid:I

    if-lez v1, :cond_18

    .line 1254
    const/16 v1, 0xb

    iget v2, p1, Lcom/syncmldstmo/base/sml$SML_DELETE;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1257
    :cond_18
    iget v1, p1, Lcom/syncmldstmo/base/sml$SML_DELETE;->is_noresp:I

    if-lez v1, :cond_21

    .line 1259
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_BE(I)I

    .line 1261
    :cond_21
    iget v1, p1, Lcom/syncmldstmo/base/sml$SML_DELETE;->is_archive:I

    if-lez v1, :cond_29

    .line 1263
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_BE(I)I

    .line 1265
    :cond_29
    iget v1, p1, Lcom/syncmldstmo/base/sml$SML_DELETE;->is_sftdel:I

    if-lez v1, :cond_32

    .line 1267
    const/16 v1, 0x26

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_BE(I)I

    .line 1269
    :cond_32
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_DELETE;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    if-eqz v1, :cond_3e

    .line 1271
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_DELETE;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddCred(Lcom/syncmldstmo/base/sml$SML_CRED;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_3

    .line 1277
    .end local v0           #res:I
    :cond_3e
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_DELETE;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v1, :cond_4a

    .line 1279
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_DELETE;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddMeta(Lcom/syncmldstmo/base/sml$SML_META;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 1285
    .end local v0           #res:I
    :cond_4a
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public _smlencStartMap(Lcom/syncmldstmo/base/sml$SML_MAP;)I
    .registers 5
    .parameter "cmd"

    .prologue
    .line 1366
    if-nez p1, :cond_4

    .line 1368
    const/4 v0, 0x6

    .line 1406
    :cond_3
    :goto_3
    return v0

    .line 1371
    :cond_4
    const/16 v1, 0x18

    invoke-direct {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 1373
    iget v1, p1, Lcom/syncmldstmo/base/sml$SML_MAP;->cmdid:I

    if-ltz v1, :cond_18

    .line 1375
    const/16 v1, 0xb

    iget v2, p1, Lcom/syncmldstmo/base/sml$SML_MAP;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1377
    :cond_18
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_MAP;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    if-eqz v1, :cond_24

    .line 1379
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_MAP;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddCred(Lcom/syncmldstmo/base/sml$SML_CRED;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_3

    .line 1384
    .end local v0           #res:I
    :cond_24
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_MAP;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v1, :cond_30

    .line 1386
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_MAP;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddMeta(Lcom/syncmldstmo/base/sml$SML_META;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 1391
    .end local v0           #res:I
    :cond_30
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_MAP;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    if-eqz v1, :cond_3c

    .line 1393
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_MAP;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddTarget(Lcom/syncmldstmo/base/sml$SML_TARGET;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 1398
    .end local v0           #res:I
    :cond_3c
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_MAP;->source:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 1400
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_MAP;->source:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddSource(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 1406
    .end local v0           #res:I
    :cond_4c
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public _smlencStartReplace(Lcom/syncmldstmo/base/sml$SML_REPLACE;)I
    .registers 5
    .parameter "cmd"

    .prologue
    .line 1146
    if-nez p1, :cond_4

    .line 1148
    const/4 v0, 0x6

    .line 1179
    :cond_3
    :goto_3
    return v0

    .line 1151
    :cond_4
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 1153
    iget v1, p1, Lcom/syncmldstmo/base/sml$SML_REPLACE;->cmdid:I

    if-lez v1, :cond_18

    .line 1155
    const/16 v1, 0xb

    iget v2, p1, Lcom/syncmldstmo/base/sml$SML_REPLACE;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1158
    :cond_18
    iget v1, p1, Lcom/syncmldstmo/base/sml$SML_REPLACE;->is_noresp:I

    if-lez v1, :cond_21

    .line 1160
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_BE(I)I

    .line 1163
    :cond_21
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_REPLACE;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    if-eqz v1, :cond_2d

    .line 1165
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_REPLACE;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddCred(Lcom/syncmldstmo/base/sml$SML_CRED;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_3

    .line 1171
    .end local v0           #res:I
    :cond_2d
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_REPLACE;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v1, :cond_39

    .line 1173
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_REPLACE;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddMeta(Lcom/syncmldstmo/base/sml$SML_META;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 1179
    .end local v0           #res:I
    :cond_39
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public _smlencStartSync(Lcom/syncmldstmo/base/sml$SML_SYNC;)I
    .registers 5
    .parameter "sync"

    .prologue
    .line 786
    if-nez p1, :cond_4

    .line 788
    const/4 v0, 0x6

    .line 838
    :cond_3
    :goto_3
    return v0

    .line 790
    :cond_4
    const/16 v1, 0x2a

    invoke-direct {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 792
    iget v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNC;->cmdid:I

    if-lez v1, :cond_18

    .line 794
    const/16 v1, 0xb

    iget v2, p1, Lcom/syncmldstmo/base/sml$SML_SYNC;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 796
    :cond_18
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNC;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    if-eqz v1, :cond_24

    .line 798
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNC;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddCred(Lcom/syncmldstmo/base/sml$SML_CRED;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_3

    .line 803
    .end local v0           #res:I
    :cond_24
    iget-boolean v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNC;->is_noresp:Z

    if-eqz v1, :cond_2d

    .line 805
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_BE(I)I

    .line 807
    :cond_2d
    iget-boolean v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNC;->is_noresults:Z

    if-eqz v1, :cond_36

    .line 809
    const/16 v1, 0x1e

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_BE(I)I

    .line 811
    :cond_36
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNC;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v1, :cond_42

    .line 813
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNC;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddMeta(Lcom/syncmldstmo/base/sml$SML_META;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 818
    .end local v0           #res:I
    :cond_42
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNC;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    if-eqz v1, :cond_4e

    .line 820
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNC;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddTarget(Lcom/syncmldstmo/base/sml$SML_TARGET;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 825
    .end local v0           #res:I
    :cond_4e
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNC;->source:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 827
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNC;->source:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddSource(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 833
    .end local v0           #res:I
    :cond_5e
    iget v1, p1, Lcom/syncmldstmo/base/sml$SML_SYNC;->numofchanges:I

    if-ltz v1, :cond_6d

    .line 835
    const/16 v1, 0x33

    iget v2, p1, Lcom/syncmldstmo/base/sml$SML_SYNC;->numofchanges:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/syncmldstmo/base/smlEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 838
    :cond_6d
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public _smlencStartSyncbody()I
    .registers 2

    .prologue
    .line 765
    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 767
    const/4 v0, 0x0

    return v0
.end method

.method public _smlencStartSyncml(IILjava/lang/String;I)I
    .registers 6
    .parameter "pid"
    .parameter "charset"
    .parameter "stringtable"
    .parameter "stsize"

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/syncmldstmo/base/smlEncoder;->_smlwbxEncStartDocument(IILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 69
    const/4 v0, 0x5

    .line 74
    :goto_7
    return v0

    .line 72
    :cond_8
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/smlEncoder;->_START_E(I)I

    .line 74
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public smlenc_add_alert(Lcom/syncmldstmo/base/sml$SML_ALERT;)I
    .registers 3
    .parameter "cmd"

    .prologue
    .line 2161
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddAlert(Lcom/syncmldstmo/base/sml$SML_ALERT;)I

    move-result v0

    return v0
.end method

.method public smlenc_add_mapitem(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/sml$SML_MAPITEM;)I
    .registers 4
    .parameter "e"
    .parameter "item"

    .prologue
    .line 2774
    invoke-virtual {p1, p2}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddMapItem(Lcom/syncmldstmo/base/sml$SML_MAPITEM;)I

    move-result v0

    return v0
.end method

.method public smlenc_add_syncheader(Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;)I
    .registers 3
    .parameter "sh"

    .prologue
    .line 2181
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddSyncHeader(Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;)I

    move-result v0

    return v0
.end method

.method public smlenc_end_add()I
    .registers 2

    .prologue
    .line 2136
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlEncoder;->_smlencEndAdd()I

    move-result v0

    return v0
.end method

.method public smlenc_end_delete()I
    .registers 2

    .prologue
    .line 2116
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlEncoder;->_smlencEndDelete()I

    move-result v0

    return v0
.end method

.method public smlenc_end_map()I
    .registers 2

    .prologue
    .line 2171
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlEncoder;->_smlencEndMap()I

    move-result v0

    return v0
.end method

.method public smlenc_end_replace()I
    .registers 2

    .prologue
    .line 2126
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlEncoder;->_smlencEndReplace()I

    move-result v0

    return v0
.end method

.method public smlenc_end_sync()I
    .registers 2

    .prologue
    .line 2156
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlEncoder;->_smlencEndSync()I

    move-result v0

    return v0
.end method

.method public smlenc_end_syncbody(Z)I
    .registers 3
    .parameter "is_final"

    .prologue
    .line 2176
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencEndSyncbody(Z)I

    move-result v0

    return v0
.end method

.method public smlenc_end_syncml()I
    .registers 2

    .prologue
    .line 2146
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlEncoder;->_smlencEndSyncml()I

    move-result v0

    return v0
.end method

.method public smlenc_start_add(Lcom/syncmldstmo/base/sml$SML_ADD;)I
    .registers 3
    .parameter "cmd"

    .prologue
    .line 2131
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencStartAdd(Lcom/syncmldstmo/base/sml$SML_ADD;)I

    move-result v0

    return v0
.end method

.method public smlenc_start_delete(Lcom/syncmldstmo/base/sml$SML_DELETE;)I
    .registers 3
    .parameter "cmd"

    .prologue
    .line 2111
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencStartDelete(Lcom/syncmldstmo/base/sml$SML_DELETE;)I

    move-result v0

    return v0
.end method

.method public smlenc_start_map(Lcom/syncmldstmo/base/sml$SML_MAP;)I
    .registers 3
    .parameter "cmd"

    .prologue
    .line 2166
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencStartMap(Lcom/syncmldstmo/base/sml$SML_MAP;)I

    move-result v0

    return v0
.end method

.method public smlenc_start_replace(Lcom/syncmldstmo/base/sml$SML_REPLACE;)I
    .registers 3
    .parameter "cmd"

    .prologue
    .line 2121
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencStartReplace(Lcom/syncmldstmo/base/sml$SML_REPLACE;)I

    move-result v0

    return v0
.end method

.method public smlenc_start_sync(Lcom/syncmldstmo/base/sml$SML_SYNC;)I
    .registers 3
    .parameter "sync"

    .prologue
    .line 2151
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencStartSync(Lcom/syncmldstmo/base/sml$SML_SYNC;)I

    move-result v0

    return v0
.end method

.method public smlenc_start_syncml(IILjava/lang/String;I)I
    .registers 6
    .parameter "pid"
    .parameter "charset"
    .parameter "stringtable"
    .parameter "stsize"

    .prologue
    .line 2141
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/syncmldstmo/base/smlEncoder;->_smlencStartSyncml(IILjava/lang/String;I)I

    move-result v0

    return v0
.end method
