.class public Lcom/wssnps/mmspdu/PduHeaders;
.super Ljava/lang/Object;
.source "PduHeaders.java"


# instance fields
.field private mHeaderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 331
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssnps/mmspdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    .line 332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wssnps/mmspdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    .line 333
    return-void
.end method


# virtual methods
.method protected appendEncodedStringValue(Lcom/wssnps/mmspdu/EncodedStringValue;I)V
    .registers 6
    .parameter "value"
    .parameter "field"

    .prologue
    .line 656
    if-nez p1, :cond_8

    .line 657
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 660
    :cond_8
    sparse-switch p2, :sswitch_data_34

    .line 666
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid header field!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 669
    :sswitch_13
    iget-object v1, p0, Lcom/wssnps/mmspdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 671
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/wssnps/mmspdu/EncodedStringValue;>;"
    if-nez v0, :cond_26

    .line 672
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/wssnps/mmspdu/EncodedStringValue;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .restart local v0       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/wssnps/mmspdu/EncodedStringValue;>;"
    :cond_26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    iget-object v1, p0, Lcom/wssnps/mmspdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    return-void

    .line 660
    nop

    :sswitch_data_34
    .sparse-switch
        0x81 -> :sswitch_13
        0x82 -> :sswitch_13
        0x97 -> :sswitch_13
    .end sparse-switch
.end method

.method protected getEncodedStringValue(I)Lcom/wssnps/mmspdu/EncodedStringValue;
    .registers 4
    .parameter "field"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/mmspdu/EncodedStringValue;

    return-object v0
.end method

.method protected getEncodedStringValues(I)[Lcom/wssnps/mmspdu/EncodedStringValue;
    .registers 6
    .parameter "field"

    .prologue
    .line 565
    iget-object v2, p0, Lcom/wssnps/mmspdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 567
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/wssnps/mmspdu/EncodedStringValue;>;"
    if-nez v0, :cond_10

    .line 568
    const/4 v2, 0x0

    .line 571
    :goto_f
    return-object v2

    .line 570
    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Lcom/wssnps/mmspdu/EncodedStringValue;

    .line 571
    .local v1, values:[Lcom/wssnps/mmspdu/EncodedStringValue;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/wssnps/mmspdu/EncodedStringValue;

    goto :goto_f
.end method

.method public getLongInteger(I)J
    .registers 5
    .parameter "field"

    .prologue
    .line 687
    iget-object v1, p0, Lcom/wssnps/mmspdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 688
    .local v0, longInteger:Ljava/lang/Long;
    if-nez v0, :cond_11

    .line 689
    const-wide/16 v1, -0x1

    .line 692
    :goto_10
    return-wide v1

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_10
.end method

.method protected getOctet(I)I
    .registers 5
    .parameter "field"

    .prologue
    .line 344
    iget-object v1, p0, Lcom/wssnps/mmspdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 345
    .local v0, octet:Ljava/lang/Integer;
    if-nez v0, :cond_10

    .line 346
    const/4 v1, 0x0

    .line 349
    :goto_f
    return v1

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_f
.end method

.method protected getTextString(I)[B
    .registers 4
    .parameter "field"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method protected setEncodedStringValue(Lcom/wssnps/mmspdu/EncodedStringValue;I)V
    .registers 5
    .parameter "value"
    .parameter "field"

    .prologue
    .line 588
    if-nez p1, :cond_8

    .line 589
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 592
    :cond_8
    sparse-switch p2, :sswitch_data_1e

    .line 605
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid header field!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :sswitch_13
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    return-void

    .line 592
    nop

    :sswitch_data_1e
    .sparse-switch
        0x89 -> :sswitch_13
        0x93 -> :sswitch_13
        0x96 -> :sswitch_13
        0x9a -> :sswitch_13
        0xa0 -> :sswitch_13
        0xa4 -> :sswitch_13
        0xa6 -> :sswitch_13
        0xb5 -> :sswitch_13
        0xb6 -> :sswitch_13
    .end sparse-switch
.end method

.method protected setLongInteger(JI)V
    .registers 7
    .parameter "value"
    .parameter "field"

    .prologue
    .line 706
    sparse-switch p3, :sswitch_data_1a

    .line 720
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid header field!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :sswitch_b
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    return-void

    .line 706
    nop

    :sswitch_data_1a
    .sparse-switch
        0x85 -> :sswitch_b
        0x87 -> :sswitch_b
        0x88 -> :sswitch_b
        0x8e -> :sswitch_b
        0x9d -> :sswitch_b
        0x9f -> :sswitch_b
        0xa1 -> :sswitch_b
        0xad -> :sswitch_b
        0xaf -> :sswitch_b
        0xb3 -> :sswitch_b
    .end sparse-switch
.end method

.method protected setOctet(II)V
    .registers 8
    .parameter "value"
    .parameter "field"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xe0

    const/16 v3, 0xc0

    const/16 v0, 0x81

    const/16 v2, 0xff

    const/16 v1, 0x80

    .line 365
    packed-switch p2, :pswitch_data_106

    .line 491
    :pswitch_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid header field!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :pswitch_15
    if-eq v1, p1, :cond_91

    if-eq v0, p1, :cond_91

    .line 379
    new-instance v0, Lcom/google/android/mms/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/google/android/mms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :pswitch_21
    if-eq v1, p1, :cond_91

    if-eq v0, p1, :cond_91

    .line 386
    new-instance v0, Lcom/google/android/mms/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/google/android/mms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :pswitch_2d
    if-eq v1, p1, :cond_91

    if-eq v0, p1, :cond_91

    .line 393
    new-instance v0, Lcom/google/android/mms/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/google/android/mms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :pswitch_39
    if-lt p1, v1, :cond_3f

    const/16 v0, 0x82

    if-le p1, v0, :cond_91

    .line 399
    :cond_3f
    new-instance v0, Lcom/google/android/mms/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/google/android/mms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :pswitch_47
    if-lt p1, v1, :cond_4d

    const/16 v0, 0x87

    if-le p1, v0, :cond_91

    .line 405
    :cond_4d
    new-instance v0, Lcom/google/android/mms/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/google/android/mms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :pswitch_55
    if-lt p1, v1, :cond_5b

    const/16 v0, 0x83

    if-le p1, v0, :cond_91

    .line 412
    :cond_5b
    new-instance v0, Lcom/google/android/mms/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/google/android/mms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :pswitch_63
    if-lt p1, v1, :cond_69

    const/16 v0, 0x84

    if-le p1, v0, :cond_91

    .line 418
    :cond_69
    new-instance v0, Lcom/google/android/mms/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/google/android/mms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :pswitch_71
    if-eq v1, p1, :cond_91

    .line 424
    new-instance v0, Lcom/google/android/mms/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/google/android/mms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :pswitch_7b
    if-lt p1, v1, :cond_81

    const/16 v0, 0x87

    if-le p1, v0, :cond_91

    .line 431
    :cond_81
    new-instance v0, Lcom/google/android/mms/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/google/android/mms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :pswitch_89
    const/16 v0, 0xc2

    if-le p1, v0, :cond_9f

    if-ge p1, v4, :cond_9f

    .line 438
    const/16 p1, 0xc0

    .line 493
    :cond_91
    :goto_91
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    return-void

    .line 439
    :cond_9f
    const/16 v0, 0xe3

    if-le p1, v0, :cond_a8

    if-gt p1, v2, :cond_a8

    .line 441
    const/16 p1, 0xe0

    goto :goto_91

    .line 442
    :cond_a8
    if-lt p1, v1, :cond_b0

    if-le p1, v1, :cond_ae

    if-lt p1, v3, :cond_b0

    :cond_ae
    if-le p1, v2, :cond_91

    .line 446
    :cond_b0
    const/16 p1, 0xe0

    goto :goto_91

    .line 451
    :pswitch_b3
    const/16 v0, 0xc1

    if-le p1, v0, :cond_bc

    if-ge p1, v4, :cond_bc

    .line 453
    const/16 p1, 0xc0

    goto :goto_91

    .line 454
    :cond_bc
    const/16 v0, 0xe4

    if-le p1, v0, :cond_c5

    if-gt p1, v2, :cond_c5

    .line 456
    const/16 p1, 0xe0

    goto :goto_91

    .line 457
    :cond_c5
    if-lt p1, v1, :cond_cd

    if-le p1, v1, :cond_cb

    if-lt p1, v3, :cond_cd

    :cond_cb
    if-le p1, v2, :cond_91

    .line 461
    :cond_cd
    const/16 p1, 0xe0

    goto :goto_91

    .line 466
    :pswitch_d0
    const/16 v0, 0xc4

    if-le p1, v0, :cond_d9

    if-ge p1, v4, :cond_d9

    .line 468
    const/16 p1, 0xc0

    goto :goto_91

    .line 469
    :cond_d9
    const/16 v0, 0xeb

    if-le p1, v0, :cond_df

    if-le p1, v2, :cond_e9

    :cond_df
    if-lt p1, v1, :cond_e9

    const/16 v0, 0x88

    if-le p1, v0, :cond_e7

    if-lt p1, v3, :cond_e9

    :cond_e7
    if-le p1, v2, :cond_91

    .line 475
    :cond_e9
    const/16 p1, 0xe0

    goto :goto_91

    .line 479
    :pswitch_ec
    const/16 v0, 0x10

    if-lt p1, v0, :cond_f4

    const/16 v0, 0x13

    if-le p1, v0, :cond_91

    .line 480
    :cond_f4
    const/16 p1, 0x12

    goto :goto_91

    .line 484
    :pswitch_f7
    if-lt p1, v1, :cond_fd

    const/16 v0, 0x97

    if-le p1, v0, :cond_91

    .line 486
    :cond_fd
    new-instance v0, Lcom/google/android/mms/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/google/android/mms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    nop

    :pswitch_data_106
    .packed-switch 0x86
        :pswitch_15
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_f7
        :pswitch_ec
        :pswitch_d
        :pswitch_39
        :pswitch_15
        :pswitch_15
        :pswitch_d0
        :pswitch_d
        :pswitch_15
        :pswitch_47
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_89
        :pswitch_d
        :pswitch_21
        :pswitch_55
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_15
        :pswitch_63
        :pswitch_d
        :pswitch_b3
        :pswitch_d
        :pswitch_15
        :pswitch_d
        :pswitch_15
        :pswitch_d
        :pswitch_15
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_15
        :pswitch_d
        :pswitch_d
        :pswitch_71
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_7b
        :pswitch_15
        :pswitch_15
        :pswitch_d
        :pswitch_d
        :pswitch_2d
    .end packed-switch
.end method

.method protected setTextString([BI)V
    .registers 5
    .parameter "value"
    .parameter "field"

    .prologue
    .line 521
    if-nez p1, :cond_8

    .line 522
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 525
    :cond_8
    sparse-switch p2, :sswitch_data_1e

    .line 540
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid header field!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :sswitch_13
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    return-void

    .line 525
    nop

    :sswitch_data_1e
    .sparse-switch
        0x83 -> :sswitch_13
        0x84 -> :sswitch_13
        0x8a -> :sswitch_13
        0x8b -> :sswitch_13
        0x98 -> :sswitch_13
        0x9e -> :sswitch_13
        0xb7 -> :sswitch_13
        0xb8 -> :sswitch_13
        0xb9 -> :sswitch_13
        0xbd -> :sswitch_13
        0xbe -> :sswitch_13
    .end sparse-switch
.end method
