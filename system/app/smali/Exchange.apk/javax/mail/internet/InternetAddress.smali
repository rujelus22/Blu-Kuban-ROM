.class public Ljavax/mail/internet/InternetAddress;
.super Ljavax/mail/Address;
.source "InternetAddress.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected address:Ljava/lang/String;

.field protected encodedPersonal:Ljava/lang/String;

.field protected personal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;Z)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 100
    invoke-static {p1, p2}, Ljavax/mail/internet/InternetAddress;->parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    .line 101
    array-length v1, v0

    if-eq v1, v3, :cond_14

    .line 103
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Illegal address"

    invoke-direct {v0, v1, p1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_14
    aget-object v1, v0, v2

    iget-object v1, v1, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 106
    aget-object v1, v0, v2

    iget-object v1, v1, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 107
    aget-object v0, v0, v2

    iget-object v0, v0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 108
    if-eqz p2, :cond_2b

    .line 110
    invoke-static {p1, v3, v3}, Ljavax/mail/internet/InternetAddress;->validate(Ljava/lang/String;ZZ)V

    .line 112
    :cond_2b
    return-void
.end method

.method public static getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 480
    .line 485
    if-nez p0, :cond_38

    .line 487
    :try_start_3
    const-string v1, "user.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 488
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 515
    :cond_14
    :goto_14
    if-nez v1, :cond_6f

    if-eqz v3, :cond_6f

    if-eqz v2, :cond_6f

    .line 517
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 518
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 520
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 521
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 523
    :goto_2f
    if-eqz v2, :cond_37

    .line 525
    new-instance v1, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v1, v2}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 537
    :cond_37
    :goto_37
    return-object v0

    .line 492
    :cond_38
    const-string v1, "mail.from"

    invoke-virtual {p0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 493
    if-nez v1, :cond_71

    .line 495
    const-string v2, "mail.user"

    invoke-virtual {p0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 496
    if-nez v3, :cond_4e

    .line 498
    const-string v2, "user.name"

    invoke-virtual {p0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 500
    :cond_4e
    if-nez v3, :cond_56

    .line 502
    const-string v2, "user.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 504
    :cond_56
    const-string v2, "mail.host"

    invoke-virtual {p0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 505
    if-nez v2, :cond_14

    .line 507
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v4

    .line 508
    if-eqz v4, :cond_14

    .line 510
    invoke-virtual {v4}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;
    :try_end_67
    .catch Ljavax/mail/internet/AddressException; {:try_start_3 .. :try_end_67} :catch_6d
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_67} :catch_6b
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_67} :catch_69

    move-result-object v2

    goto :goto_14

    .line 534
    :catch_69
    move-exception v1

    goto :goto_37

    .line 531
    :catch_6b
    move-exception v1

    goto :goto_37

    .line 528
    :catch_6d
    move-exception v1

    goto :goto_37

    :cond_6f
    move-object v2, v1

    goto :goto_2f

    :cond_71
    move-object v2, v0

    move-object v3, v0

    goto :goto_14
.end method

.method private static isGroupAddress(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 383
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 384
    if-lez v0, :cond_1a

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1a

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static isSimpleAddress(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 365
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_5b

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_5b

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_5b

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_5b

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_5b

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_5b

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_5b

    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_5b

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_5b

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_5b

    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_5b

    const/4 v0, 0x1

    :goto_5a
    return v0

    :cond_5b
    const/4 v0, 0x0

    goto :goto_5a
.end method

.method private static parse(Ljava/lang/String;I)[Ljavax/mail/internet/InternetAddress;
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 615
    const/4 v9, 0x0

    .line 616
    const/4 v8, 0x0

    .line 617
    const/4 v6, 0x0

    .line 618
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    .line 619
    const/4 v5, -0x1

    .line 620
    const/4 v2, -0x1

    .line 621
    const/4 v3, -0x1

    .line 622
    const/4 v0, -0x1

    .line 623
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 626
    const/4 v1, 0x0

    :goto_11
    if-ge v1, v10, :cond_1cf

    .line 628
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 629
    sparse-switch v4, :sswitch_data_24a

    .line 874
    const/4 v4, -0x1

    if-ne v2, v4, :cond_236

    move v2, v1

    move v4, v6

    move v7, v9

    move v6, v8

    .line 626
    :goto_21
    add-int/lit8 v1, v1, 0x1

    move v8, v6

    move v9, v7

    move v6, v4

    goto :goto_11

    :sswitch_27
    move v4, v6

    move v7, v9

    move v6, v8

    .line 635
    goto :goto_21

    .line 638
    :sswitch_2b
    const/4 v7, 0x1

    .line 639
    if-eqz v8, :cond_36

    .line 641
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v2, "Too many route-addr"

    invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 644
    :cond_36
    if-nez v9, :cond_244

    .line 647
    if-ltz v2, :cond_3b

    move v0, v1

    .line 651
    :cond_3b
    add-int/lit8 v3, v1, 0x1

    .line 653
    :goto_3d
    add-int/lit8 v6, v1, 0x1

    .line 654
    const/4 v5, 0x0

    .line 655
    const/4 v4, 0x0

    .line 656
    :goto_41
    if-ge v6, v10, :cond_6e

    if-nez v4, :cond_6e

    .line 658
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 659
    sparse-switch v1, :sswitch_data_280

    :cond_4c
    move v1, v4

    move v4, v5

    move v5, v6

    .line 675
    :goto_4f
    add-int/lit8 v6, v5, 0x1

    move v5, v4

    move v4, v1

    .line 676
    goto :goto_41

    .line 662
    :sswitch_54
    if-nez v5, :cond_5c

    const/4 v1, 0x1

    :goto_57
    move v5, v6

    move v12, v1

    move v1, v4

    move v4, v12

    .line 663
    goto :goto_4f

    .line 662
    :cond_5c
    const/4 v1, 0x0

    goto :goto_57

    .line 665
    :sswitch_5e
    if-nez v5, :cond_4c

    .line 667
    const/4 v1, 0x1

    .line 668
    add-int/lit8 v4, v6, -0x1

    move v12, v5

    move v5, v4

    move v4, v12

    goto :goto_4f

    .line 672
    :sswitch_67
    add-int/lit8 v1, v6, 0x1

    move v12, v4

    move v4, v5

    move v5, v1

    move v1, v12

    goto :goto_4f

    .line 677
    :cond_6e
    if-nez v4, :cond_84

    if-lt v6, v10, :cond_84

    .line 679
    if-eqz v5, :cond_7c

    .line 681
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Unmatched \'\"\'"

    invoke-direct {v0, v1, p0, v6}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 684
    :cond_7c
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Unmatched \'<\'"

    invoke-direct {v0, v1, p0, v6}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 686
    :cond_84
    const/4 v1, 0x1

    move v5, v6

    move v4, v7

    move v7, v9

    move v12, v6

    move v6, v1

    move v1, v12

    move v13, v2

    move v2, v3

    move v3, v13

    .line 688
    goto :goto_21

    .line 690
    :sswitch_8f
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v2, "Unmatched \'>\'"

    invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 693
    :sswitch_97
    const/4 v6, 0x1

    .line 694
    if-ltz v2, :cond_9e

    const/4 v4, -0x1

    if-ne v5, v4, :cond_9e

    move v5, v1

    .line 698
    :cond_9e
    const/4 v4, -0x1

    if-ne v3, v4, :cond_a3

    .line 700
    add-int/lit8 v3, v1, 0x1

    .line 702
    :cond_a3
    add-int/lit8 v4, v1, 0x1

    .line 703
    const/4 v1, 0x1

    .line 704
    :goto_a6
    if-ge v4, v10, :cond_bd

    if-lez v1, :cond_bd

    .line 706
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 707
    sparse-switch v7, :sswitch_data_28e

    .line 719
    :goto_b1
    add-int/lit8 v4, v4, 0x1

    goto :goto_a6

    .line 710
    :sswitch_b4
    add-int/lit8 v1, v1, 0x1

    .line 711
    goto :goto_b1

    .line 713
    :sswitch_b7
    add-int/lit8 v1, v1, -0x1

    .line 714
    goto :goto_b1

    .line 716
    :sswitch_ba
    add-int/lit8 v4, v4, 0x1

    goto :goto_b1

    .line 721
    :cond_bd
    if-lez v1, :cond_c7

    .line 723
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Unmatched \'(\'"

    invoke-direct {v0, v1, p0, v4}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 725
    :cond_c7
    add-int/lit8 v1, v4, -0x1

    .line 726
    const/4 v4, -0x1

    if-ne v0, v4, :cond_236

    move v0, v1

    move v4, v6

    move v7, v9

    move v6, v8

    .line 728
    goto/16 :goto_21

    .line 732
    :sswitch_d2
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v2, "Unmatched \')\'"

    invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 735
    :sswitch_da
    const/4 v6, 0x1

    .line 736
    const/4 v4, -0x1

    if-ne v2, v4, :cond_df

    move v2, v1

    .line 740
    :cond_df
    add-int/lit8 v4, v1, 0x1

    .line 741
    const/4 v1, 0x0

    .line 742
    :goto_e2
    if-ge v4, v10, :cond_f7

    if-nez v1, :cond_f7

    .line 744
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 745
    sparse-switch v7, :sswitch_data_29c

    .line 755
    :goto_ed
    add-int/lit8 v4, v4, 0x1

    goto :goto_e2

    .line 748
    :sswitch_f0
    const/4 v1, 0x1

    .line 749
    add-int/lit8 v4, v4, -0x1

    .line 750
    goto :goto_ed

    .line 752
    :sswitch_f4
    add-int/lit8 v4, v4, 0x1

    goto :goto_ed

    .line 757
    :cond_f7
    if-lt v4, v10, :cond_23e

    .line 759
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Unmatched \'\"\'"

    invoke-direct {v0, v1, p0, v4}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 765
    :sswitch_101
    const/4 v6, 0x1

    .line 766
    add-int/lit8 v4, v1, 0x1

    .line 767
    const/4 v1, 0x0

    .line 768
    :goto_105
    if-ge v4, v10, :cond_11a

    if-nez v1, :cond_11a

    .line 770
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 771
    packed-switch v7, :pswitch_data_2a6

    .line 781
    :goto_110
    add-int/lit8 v4, v4, 0x1

    goto :goto_105

    .line 774
    :pswitch_113
    const/4 v1, 0x1

    .line 775
    add-int/lit8 v4, v4, -0x1

    .line 776
    goto :goto_110

    .line 778
    :pswitch_117
    add-int/lit8 v4, v4, 0x1

    goto :goto_110

    .line 783
    :cond_11a
    if-lt v4, v10, :cond_23e

    .line 785
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Unmatched \'[\'"

    invoke-direct {v0, v1, p0, v4}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 791
    :sswitch_124
    const/4 v4, -0x1

    if-ne v2, v4, :cond_12d

    .line 793
    const/4 v6, 0x0

    .line 794
    const/4 v4, 0x0

    .line 795
    const/4 v5, -0x1

    move v7, v9

    .line 796
    goto/16 :goto_21

    .line 798
    :cond_12d
    if-eqz v9, :cond_134

    move v4, v6

    move v7, v9

    move v6, v8

    .line 800
    goto/16 :goto_21

    .line 802
    :cond_134
    const/4 v4, -0x1

    if-ne v5, v4, :cond_23b

    move v4, v1

    .line 807
    :goto_138
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 808
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 809
    if-nez v6, :cond_146

    or-int/lit8 v4, p1, 0x3

    if-eqz v4, :cond_176

    .line 811
    :cond_146
    and-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_14e

    and-int/lit8 v4, p1, 0x1

    if-nez v4, :cond_152

    .line 813
    :cond_14e
    const/4 v4, 0x0

    invoke-static {v2, v8, v4}, Ljavax/mail/internet/InternetAddress;->validate(Ljava/lang/String;ZZ)V

    .line 815
    :cond_152
    new-instance v4, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v4}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 816
    invoke-virtual {v4, v2}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 817
    if-ltz v3, :cond_16c

    .line 819
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 820
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 821
    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 822
    const/4 v0, -0x1

    move v3, v0

    .line 824
    :cond_16c
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    :cond_16f
    const/4 v6, 0x0

    .line 840
    const/4 v4, 0x0

    .line 841
    const/4 v2, -0x1

    .line 842
    const/4 v5, -0x1

    move v7, v9

    .line 843
    goto/16 :goto_21

    .line 828
    :cond_176
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 829
    :goto_17b
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_16f

    .line 831
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 832
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Ljavax/mail/internet/InternetAddress;->validate(Ljava/lang/String;ZZ)V

    .line 833
    new-instance v5, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v5}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 834
    invoke-virtual {v5, v2}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17b

    .line 846
    :sswitch_196
    const/4 v4, 0x1

    .line 847
    if-eqz v9, :cond_1a1

    .line 849
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v2, "Cannot have nested group"

    invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 852
    :cond_1a1
    const/4 v6, 0x1

    move v7, v6

    move v6, v8

    .line 853
    goto/16 :goto_21

    .line 855
    :sswitch_1a6
    if-nez v9, :cond_1b0

    .line 857
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v2, "Unexpected \';\'"

    invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 860
    :cond_1b0
    const/4 v5, 0x0

    .line 861
    add-int/lit8 v4, v1, 0x1

    .line 863
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 864
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 865
    new-instance v4, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v4}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 866
    invoke-virtual {v4, v2}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    const/4 v4, 0x0

    .line 870
    const/4 v2, -0x1

    move v7, v5

    move v5, v2

    move v12, v4

    move v4, v6

    move v6, v12

    .line 871
    goto/16 :goto_21

    .line 882
    :cond_1cf
    const/4 v4, -0x1

    if-le v2, v4, :cond_20a

    .line 884
    const/4 v4, -0x1

    if-ne v5, v4, :cond_234

    .line 888
    :goto_1d5
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 889
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 890
    if-nez v6, :cond_1e3

    or-int/lit8 v2, p1, 0x3

    if-eqz v2, :cond_214

    .line 892
    :cond_1e3
    and-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_1eb

    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_1ef

    .line 894
    :cond_1eb
    const/4 v2, 0x0

    invoke-static {v1, v8, v2}, Ljavax/mail/internet/InternetAddress;->validate(Ljava/lang/String;ZZ)V

    .line 896
    :cond_1ef
    new-instance v2, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v2}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 897
    invoke-virtual {v2, v1}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 898
    if-ltz v3, :cond_207

    .line 900
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 901
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 902
    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 904
    :cond_207
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    :cond_20a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/internet/InternetAddress;

    .line 921
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 922
    return-object v0

    .line 908
    :cond_214
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 909
    :goto_219
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_20a

    .line 911
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 912
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljavax/mail/internet/InternetAddress;->validate(Ljava/lang/String;ZZ)V

    .line 913
    new-instance v2, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v2}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 914
    invoke-virtual {v2, v1}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_219

    :cond_234
    move v1, v5

    goto :goto_1d5

    :cond_236
    move v4, v6

    move v7, v9

    move v6, v8

    goto/16 :goto_21

    :cond_23b
    move v4, v5

    goto/16 :goto_138

    :cond_23e
    move v1, v4

    move v7, v9

    move v4, v6

    move v6, v8

    goto/16 :goto_21

    :cond_244
    move v12, v3

    move v3, v2

    move v2, v12

    goto/16 :goto_3d

    .line 629
    nop

    :sswitch_data_24a
    .sparse-switch
        0x9 -> :sswitch_27
        0xa -> :sswitch_27
        0xd -> :sswitch_27
        0x20 -> :sswitch_27
        0x22 -> :sswitch_da
        0x28 -> :sswitch_97
        0x29 -> :sswitch_d2
        0x2c -> :sswitch_124
        0x3a -> :sswitch_196
        0x3b -> :sswitch_1a6
        0x3c -> :sswitch_2b
        0x3e -> :sswitch_8f
        0x5b -> :sswitch_101
    .end sparse-switch

    .line 659
    :sswitch_data_280
    .sparse-switch
        0x22 -> :sswitch_54
        0x3e -> :sswitch_5e
        0x5c -> :sswitch_67
    .end sparse-switch

    .line 707
    :sswitch_data_28e
    .sparse-switch
        0x28 -> :sswitch_b4
        0x29 -> :sswitch_b7
        0x5c -> :sswitch_ba
    .end sparse-switch

    .line 745
    :sswitch_data_29c
    .sparse-switch
        0x22 -> :sswitch_f0
        0x5c -> :sswitch_f4
    .end sparse-switch

    .line 771
    :pswitch_data_2a6
    .packed-switch 0x5c
        :pswitch_117
        :pswitch_113
    .end packed-switch
.end method

.method public static parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 585
    if-eqz p1, :cond_8

    const/4 v0, 0x3

    :goto_3
    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;I)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/16 v7, 0x5c

    const/4 v1, 0x0

    const/16 v6, 0x22

    .line 1023
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    move v0, v1

    .line 1025
    :goto_b
    if-ge v2, v3, :cond_5c

    .line 1027
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1028
    if-eq v4, v6, :cond_15

    if-ne v4, v7, :cond_3b

    .line 1030
    :cond_15
    new-instance v2, Ljava/lang/StringBuffer;

    add-int/lit8 v0, v3, 0x3

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1031
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    .line 1032
    :goto_20
    if-ge v0, v3, :cond_33

    .line 1034
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1035
    if-eq v1, v6, :cond_2a

    if-ne v1, v7, :cond_2d

    .line 1037
    :cond_2a
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1039
    :cond_2d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1032
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 1041
    :cond_33
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1042
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1060
    :cond_3a
    :goto_3a
    return-object p0

    .line 1044
    :cond_3b
    const/16 v5, 0x20

    if-ge v4, v5, :cond_4b

    const/16 v5, 0xd

    if-eq v4, v5, :cond_4b

    const/16 v5, 0xa

    if-eq v4, v5, :cond_4b

    const/16 v5, 0x9

    if-ne v4, v5, :cond_58

    :cond_4b
    const/16 v5, 0x7f

    if-ge v4, v5, :cond_58

    const-string v5, "()<>@,;:\\\".[]"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_59

    .line 1048
    :cond_58
    const/4 v0, 0x1

    .line 1025
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1052
    :cond_5c
    if-eqz v0, :cond_3a

    .line 1054
    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v1, v3, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1055
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1056
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1057
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1058
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3a
.end method

.method public static toString([Ljavax/mail/Address;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 416
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([Ljavax/mail/Address;I)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 432
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    .line 434
    :cond_5
    const/4 v0, 0x0

    .line 462
    :goto_6
    return-object v0

    .line 436
    :cond_7
    const-string v2, "\r\n"

    .line 437
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 438
    const/4 v0, 0x0

    :goto_f
    array-length v1, p0

    if-ge v0, v1, :cond_4e

    .line 440
    if-eqz v0, :cond_1b

    .line 442
    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    add-int/lit8 p1, p1, 0x2

    .line 445
    :cond_1b
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v4

    .line 446
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 447
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 448
    if-gez v1, :cond_2f

    .line 450
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 452
    :cond_2f
    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 454
    add-int/2addr v1, p1

    const/16 v7, 0x4c

    if-le v1, v7, :cond_3f

    .line 456
    const-string v1, "\r\n\t"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    const/16 p1, 0x8

    .line 459
    :cond_3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    const/4 v1, -0x1

    if-le v6, v1, :cond_49

    add-int/2addr p1, v5

    .line 438
    :goto_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 460
    :cond_49
    sub-int v1, v5, v6

    add-int/lit8 p1, v1, -0x2

    goto :goto_46

    .line 462
    :cond_4e
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/16 v5, 0x5c

    const/16 v3, 0x22

    const/4 v1, 0x0

    .line 1068
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1069
    const/4 v2, 0x2

    if-le v0, v2, :cond_4b

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_4b

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_4b

    .line 1071
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1072
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_4b

    .line 1074
    add-int/lit8 v2, v0, -0x2

    .line 1075
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1076
    :goto_2f
    if-ge v1, v2, :cond_47

    .line 1078
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1079
    if-ne v0, v5, :cond_41

    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_41

    .line 1081
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1083
    :cond_41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1076
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 1085
    :cond_47
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1088
    :cond_4b
    return-object p0
.end method

.method private static validate(Ljava/lang/String;ZZ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x40

    const/16 v6, 0x2c

    const/16 v5, 0x3a

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 930
    .line 931
    if-eqz p2, :cond_c

    if-eqz p1, :cond_3d

    .line 933
    :cond_c
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 934
    if-gez v0, :cond_c7

    .line 936
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move v2, v0

    move v0, v1

    .line 938
    :cond_18
    :goto_18
    if-le v2, v4, :cond_3e

    .line 940
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_28

    .line 942
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Illegal route-addr"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 944
    :cond_28
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_39

    .line 946
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 947
    if-gez v2, :cond_18

    .line 949
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_18

    .line 954
    :cond_39
    add-int/lit8 v0, v2, 0x1

    move v2, v4

    .line 955
    goto :goto_18

    :cond_3d
    move v0, v1

    .line 962
    :cond_3e
    const/4 v2, 0x0

    .line 963
    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 964
    if-le v3, v4, :cond_81

    .line 966
    if-ne v3, v0, :cond_4f

    .line 968
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Missing local name"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 970
    :cond_4f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_5f

    .line 972
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Missing domain"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 974
    :cond_5f
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 975
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 983
    :goto_69
    const-string v5, "\t\n\r "

    .line 984
    const/4 v6, 0x4

    move v3, v1

    .line 985
    :goto_6d
    if-ge v3, v6, :cond_8e

    .line 987
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-le v7, v4, :cond_8b

    .line 989
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Illegal whitespace"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 977
    :cond_81
    if-eqz p2, :cond_c4

    .line 979
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Missing final @domain"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 985
    :cond_8b
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 992
    :cond_8e
    const-string v5, "\"(),:;<>@[\\]"

    .line 993
    const/16 v6, 0xc

    move v3, v1

    .line 994
    :goto_93
    if-ge v3, v6, :cond_aa

    .line 996
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-le v7, v4, :cond_a7

    .line 998
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Illegal local name"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 994
    :cond_a7
    add-int/lit8 v3, v3, 0x1

    goto :goto_93

    .line 1001
    :cond_aa
    if-eqz v0, :cond_c3

    .line 1003
    :goto_ac
    if-ge v1, v6, :cond_c3

    .line 1005
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-le v2, v4, :cond_c0

    .line 1007
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Illegal domain"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1003
    :cond_c0
    add-int/lit8 v1, v1, 0x1

    goto :goto_ac

    .line 1011
    :cond_c3
    return-void

    :cond_c4
    move-object v0, v2

    move-object v2, p0

    goto :goto_69

    :cond_c7
    move v2, v0

    move v0, v1

    goto/16 :goto_18
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 145
    new-instance v0, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v0}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 146
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    iput-object v1, v0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    iput-object v1, v0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    iput-object v1, v0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 149
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 391
    instance-of v0, p1, Ljavax/mail/internet/InternetAddress;

    if-eqz v0, :cond_1e

    move-object v0, p1

    .line 393
    check-cast v0, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 394
    if-eq p0, p1, :cond_1a

    iget-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    .line 397
    :goto_1b
    return v0

    :cond_1c
    move v0, v1

    .line 394
    goto :goto_1b

    :cond_1e
    move v0, v1

    .line 397
    goto :goto_1b
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonal()Ljava/lang/String;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 262
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 276
    :goto_6
    return-object v0

    .line 264
    :cond_7
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 268
    :try_start_b
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16

    goto :goto_6

    .line 271
    :catch_16
    move-exception v0

    .line 273
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_6

    .line 276
    :cond_1a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x3e

    const/16 v2, 0x3c

    .line 298
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-nez v0, :cond_14

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 302
    :try_start_c
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_14} :catch_5d

    .line 309
    :cond_14
    :goto_14
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 310
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v1, :cond_3b

    .line 312
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 315
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 328
    :goto_36
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 318
    :cond_3b
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->isGroupAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->isSimpleAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 320
    :cond_4b
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_36

    .line 324
    :cond_51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 325
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_36

    .line 304
    :catch_5d
    move-exception v0

    goto :goto_14
.end method

.method public toUnicodeString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x3e

    const/16 v2, 0x3c

    .line 338
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 339
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getPersonal()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 341
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 343
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 357
    :goto_28
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 347
    :cond_2d
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->isGroupAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->isSimpleAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 349
    :cond_3d
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_28

    .line 353
    :cond_43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 354
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_28
.end method
