.class public Lcom/vlingo/client/safereader/email/POP3Manager;
.super Ljava/lang/Object;
.source "POP3Manager.java"


# static fields
.field static final MAX_UIDS:I = 0x4e20

.field static instance:Lcom/vlingo/client/safereader/email/POP3Manager;


# instance fields
.field firstCheckSinceActivated:Z

.field m_seenUidList:Lcom/vlingo/client/util/BoundedSizeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vlingo/client/util/BoundedSizeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/safereader/email/POP3Manager;->instance:Lcom/vlingo/client/safereader/email/POP3Manager;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/safereader/email/POP3Manager;->m_seenUidList:Lcom/vlingo/client/util/BoundedSizeMap;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/safereader/email/POP3Manager;->firstCheckSinceActivated:Z

    .line 59
    new-instance v0, Lcom/vlingo/client/util/BoundedSizeMap;

    const/16 v1, 0x4e20

    invoke-direct {v0, v1}, Lcom/vlingo/client/util/BoundedSizeMap;-><init>(I)V

    iput-object v0, p0, Lcom/vlingo/client/safereader/email/POP3Manager;->m_seenUidList:Lcom/vlingo/client/util/BoundedSizeMap;

    .line 60
    return-void
.end method

.method public static getInstance()Lcom/vlingo/client/safereader/email/POP3Manager;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/vlingo/client/safereader/email/POP3Manager;->instance:Lcom/vlingo/client/safereader/email/POP3Manager;

    if-nez v0, :cond_b

    .line 53
    new-instance v0, Lcom/vlingo/client/safereader/email/POP3Manager;

    invoke-direct {v0}, Lcom/vlingo/client/safereader/email/POP3Manager;-><init>()V

    sput-object v0, Lcom/vlingo/client/safereader/email/POP3Manager;->instance:Lcom/vlingo/client/safereader/email/POP3Manager;

    .line 55
    :cond_b
    sget-object v0, Lcom/vlingo/client/safereader/email/POP3Manager;->instance:Lcom/vlingo/client/safereader/email/POP3Manager;

    return-object v0
.end method

.method private parseEmailReplyFromHeaders(Lorg/columba/ristretto/message/Header;)Ljava/lang/String;
    .registers 4
    .parameter "header"

    .prologue
    .line 404
    const/4 v0, 0x0

    .line 415
    .local v0, addr:Ljava/lang/String;
    const-string v1, "Reply-To"

    invoke-virtual {p1, v1}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vlingo/client/safereader/email/POP3Manager;->stripOutIllegalCharsFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1d

    .line 417
    :cond_13
    const-string v1, "From"

    invoke-virtual {p1, v1}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vlingo/client/safereader/email/POP3Manager;->stripOutIllegalCharsFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    :cond_1d
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2f

    .line 419
    :cond_25
    const-string v1, "Return-Path"

    invoke-virtual {p1, v1}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vlingo/client/safereader/email/POP3Manager;->stripOutIllegalCharsFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    :cond_2f
    return-object v0
.end method

.method private stripOutIllegalCharsFromAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "address"

    .prologue
    .line 424
    if-eqz p1, :cond_24

    .line 425
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 426
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x3e

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 429
    :cond_24
    return-object p1
.end method

.method public static verify(Lcom/vlingo/client/safereader/email/EmailAccount;)Z
    .registers 13
    .parameter "account"

    .prologue
    const/4 v9, 0x0

    .line 433
    new-instance v6, Lorg/columba/ristretto/pop3/POP3Protocol;

    iget-object v10, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->server:Ljava/lang/String;

    iget v11, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->port:I

    invoke-direct {v6, v10, v11}, Lorg/columba/ristretto/pop3/POP3Protocol;-><init>(Ljava/lang/String;I)V

    .line 435
    .local v6, protocol:Lorg/columba/ristretto/pop3/POP3Protocol;
    const/4 v8, 0x0

    .line 436
    .local v8, sslSupported:Z
    const/4 v7, 0x0

    .line 442
    .local v7, saslCapabilities:Ljava/lang/String;
    :try_start_c
    iget v10, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->securityType:I
    :try_end_e
    .catch Lorg/columba/ristretto/pop3/POP3Exception; {:try_start_c .. :try_end_e} :catch_41
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_e} :catch_4a

    packed-switch v10, :pswitch_data_b4

    .line 455
    :goto_11
    :try_start_11
    invoke-virtual {v6}, Lorg/columba/ristretto/pop3/POP3Protocol;->capa()[Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, capabilities:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_16
    array-length v10, v1

    if-ge v4, v10, :cond_51

    if-nez v7, :cond_51

    .line 457
    aget-object v10, v1, v4

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "sasl"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2b

    .line 458
    aget-object v7, v1, v4

    .line 463
    :cond_2b
    aget-object v10, v1, v4

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "stls"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_36
    .catch Lorg/columba/ristretto/pop3/POP3Exception; {:try_start_11 .. :try_end_36} :catch_50
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_36} :catch_4a

    move-result v10

    if-eqz v10, :cond_3a

    .line 466
    const/4 v8, 0x1

    .line 456
    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 444
    .end local v1           #capabilities:[Ljava/lang/String;
    .end local v4           #i:I
    :pswitch_3d
    :try_start_3d
    invoke-virtual {v6}, Lorg/columba/ristretto/pop3/POP3Protocol;->openPort()V
    :try_end_40
    .catch Lorg/columba/ristretto/pop3/POP3Exception; {:try_start_3d .. :try_end_40} :catch_41
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_4a

    goto :goto_11

    .line 522
    :catch_41
    move-exception v5

    .line 526
    .local v5, pex:Lorg/columba/ristretto/pop3/POP3Exception;
    :try_start_42
    invoke-virtual {v6}, Lorg/columba/ristretto/pop3/POP3Protocol;->quit()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_9b
    .catch Lorg/columba/ristretto/pop3/POP3Exception; {:try_start_42 .. :try_end_45} :catch_a6

    .line 536
    .end local v5           #pex:Lorg/columba/ristretto/pop3/POP3Exception;
    :goto_45
    return v9

    .line 447
    :pswitch_46
    :try_start_46
    invoke-virtual {v6}, Lorg/columba/ristretto/pop3/POP3Protocol;->openSSLPort()V

    goto :goto_11

    .line 532
    :catch_4a
    move-exception v10

    goto :goto_45

    .line 450
    :pswitch_4c
    invoke-virtual {v6}, Lorg/columba/ristretto/pop3/POP3Protocol;->openSSLPort()V

    goto :goto_11

    .line 470
    :catch_50
    move-exception v10

    .line 475
    :cond_51
    if-eqz v8, :cond_56

    .line 478
    invoke-virtual {v6}, Lorg/columba/ristretto/pop3/POP3Protocol;->startTLS()V
    :try_end_56
    .catch Lorg/columba/ristretto/pop3/POP3Exception; {:try_start_46 .. :try_end_56} :catch_41
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_56} :catch_4a

    .line 482
    :cond_56
    :try_start_56
    invoke-virtual {v6}, Lorg/columba/ristretto/pop3/POP3Protocol;->isApopSupported()Z

    move-result v10

    if-eqz v10, :cond_7e

    .line 485
    iget-object v10, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->username:Ljava/lang/String;

    iget-object v11, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->password:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/columba/ristretto/pop3/POP3Protocol;->apop(Ljava/lang/String;[C)V
    :try_end_67
    .catch Lorg/columba/ristretto/auth/AuthenticationException; {:try_start_56 .. :try_end_67} :catch_99
    .catch Lorg/columba/ristretto/pop3/POP3Exception; {:try_start_56 .. :try_end_67} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_67} :catch_4a

    .line 512
    :cond_67
    :goto_67
    :try_start_67
    invoke-virtual {v6}, Lorg/columba/ristretto/pop3/POP3Protocol;->getState()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_79

    .line 513
    iget-object v10, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->username:Ljava/lang/String;

    iget-object v11, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->password:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/columba/ristretto/pop3/POP3Protocol;->userPass(Ljava/lang/String;[C)V

    .line 519
    :cond_79
    invoke-virtual {v6}, Lorg/columba/ristretto/pop3/POP3Protocol;->quit()V
    :try_end_7c
    .catch Lorg/columba/ristretto/pop3/POP3Exception; {:try_start_67 .. :try_end_7c} :catch_41
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_7c} :catch_4a

    .line 520
    const/4 v9, 0x1

    goto :goto_45

    .line 486
    :cond_7e
    if-eqz v7, :cond_67

    .line 488
    :try_start_80
    invoke-static {}, Lorg/columba/ristretto/auth/AuthenticationFactory;->getInstance()Lorg/columba/ristretto/auth/AuthenticationFactory;

    move-result-object v10

    invoke-virtual {v10, v7}, Lorg/columba/ristretto/auth/AuthenticationFactory;->getSecurestMethod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, authMethod:Ljava/lang/String;
    iget-object v10, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->username:Ljava/lang/String;

    iget-object v11, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->password:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-virtual {v6, v0, v10, v11}, Lorg/columba/ristretto/pop3/POP3Protocol;->auth(Ljava/lang/String;Ljava/lang/String;[C)V
    :try_end_93
    .catch Lorg/columba/ristretto/auth/NoSuchAuthenticationException; {:try_start_80 .. :try_end_93} :catch_94
    .catch Lorg/columba/ristretto/auth/AuthenticationException; {:try_start_80 .. :try_end_93} :catch_99
    .catch Lorg/columba/ristretto/pop3/POP3Exception; {:try_start_80 .. :try_end_93} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_93} :catch_4a

    goto :goto_67

    .line 493
    .end local v0           #authMethod:Ljava/lang/String;
    :catch_94
    move-exception v2

    .line 496
    .local v2, e:Lorg/columba/ristretto/auth/NoSuchAuthenticationException;
    :try_start_95
    invoke-virtual {v6}, Lorg/columba/ristretto/pop3/POP3Protocol;->quit()V
    :try_end_98
    .catch Lorg/columba/ristretto/auth/AuthenticationException; {:try_start_95 .. :try_end_98} :catch_99
    .catch Lorg/columba/ristretto/pop3/POP3Exception; {:try_start_95 .. :try_end_98} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_4a

    goto :goto_45

    .line 500
    .end local v2           #e:Lorg/columba/ristretto/auth/NoSuchAuthenticationException;
    :catch_99
    move-exception v10

    goto :goto_67

    .line 527
    .restart local v5       #pex:Lorg/columba/ristretto/pop3/POP3Exception;
    :catch_9b
    move-exception v3

    .line 528
    .local v3, e1:Ljava/io/IOException;
    const-string v10, "VLG_EXCEPTION"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 529
    .end local v3           #e1:Ljava/io/IOException;
    :catch_a6
    move-exception v3

    .line 530
    .local v3, e1:Lorg/columba/ristretto/pop3/POP3Exception;
    const-string v10, "VLG_EXCEPTION"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 505
    .end local v3           #e1:Lorg/columba/ristretto/pop3/POP3Exception;
    .end local v5           #pex:Lorg/columba/ristretto/pop3/POP3Exception;
    :catch_b1
    move-exception v10

    goto :goto_67

    .line 442
    nop

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_46
        :pswitch_4c
    .end packed-switch
.end method


# virtual methods
.method public authenticate(Lorg/columba/ristretto/pop3/POP3Protocol;Lcom/vlingo/client/safereader/email/EmailAccount;)V
    .registers 11
    .parameter "protocol"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/pop3/POP3Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v5, 0x0

    .line 89
    .local v5, sslSupported:Z
    const/4 v4, 0x0

    .line 92
    .local v4, saslCapabilities:Ljava/lang/String;
    :try_start_2
    invoke-virtual {p1}, Lorg/columba/ristretto/pop3/POP3Protocol;->capa()[Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, capabilities:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_7
    array-length v6, v1

    if-ge v3, v6, :cond_2f

    if-nez v4, :cond_2f

    .line 94
    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "sasl"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 95
    aget-object v4, v1, v3

    .line 100
    :cond_1c
    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "stls"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_27
    .catch Lorg/columba/ristretto/pop3/POP3Exception; {:try_start_2 .. :try_end_27} :catch_2e

    move-result v6

    if-eqz v6, :cond_2b

    .line 103
    const/4 v5, 0x1

    .line 93
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 107
    .end local v1           #capabilities:[Ljava/lang/String;
    .end local v3           #i:I
    :catch_2e
    move-exception v6

    .line 112
    :cond_2f
    if-eqz v5, :cond_34

    .line 115
    invoke-virtual {p1}, Lorg/columba/ristretto/pop3/POP3Protocol;->startTLS()V

    .line 119
    :cond_34
    :try_start_34
    invoke-virtual {p1}, Lorg/columba/ristretto/pop3/POP3Protocol;->isApopSupported()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 122
    iget-object v6, p2, Lcom/vlingo/client/safereader/email/EmailAccount;->username:Ljava/lang/String;

    iget-object v7, p2, Lcom/vlingo/client/safereader/email/EmailAccount;->password:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lorg/columba/ristretto/pop3/POP3Protocol;->apop(Ljava/lang/String;[C)V
    :try_end_45
    .catch Lorg/columba/ristretto/auth/AuthenticationException; {:try_start_34 .. :try_end_45} :catch_78
    .catch Lorg/columba/ristretto/pop3/POP3Exception; {:try_start_34 .. :try_end_45} :catch_7a

    .line 149
    :cond_45
    :goto_45
    invoke-virtual {p1}, Lorg/columba/ristretto/pop3/POP3Protocol;->getState()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_57

    .line 150
    iget-object v6, p2, Lcom/vlingo/client/safereader/email/EmailAccount;->username:Ljava/lang/String;

    iget-object v7, p2, Lcom/vlingo/client/safereader/email/EmailAccount;->password:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lorg/columba/ristretto/pop3/POP3Protocol;->userPass(Ljava/lang/String;[C)V

    .line 153
    :cond_57
    return-void

    .line 123
    :cond_58
    if-eqz v4, :cond_45

    .line 125
    :try_start_5a
    invoke-static {}, Lorg/columba/ristretto/auth/AuthenticationFactory;->getInstance()Lorg/columba/ristretto/auth/AuthenticationFactory;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/columba/ristretto/auth/AuthenticationFactory;->getSecurestMethod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, authMethod:Ljava/lang/String;
    iget-object v6, p2, Lcom/vlingo/client/safereader/email/EmailAccount;->username:Ljava/lang/String;

    iget-object v7, p2, Lcom/vlingo/client/safereader/email/EmailAccount;->password:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {p1, v0, v6, v7}, Lorg/columba/ristretto/pop3/POP3Protocol;->auth(Ljava/lang/String;Ljava/lang/String;[C)V
    :try_end_6d
    .catch Lorg/columba/ristretto/auth/NoSuchAuthenticationException; {:try_start_5a .. :try_end_6d} :catch_6e
    .catch Lorg/columba/ristretto/auth/AuthenticationException; {:try_start_5a .. :try_end_6d} :catch_78
    .catch Lorg/columba/ristretto/pop3/POP3Exception; {:try_start_5a .. :try_end_6d} :catch_7a

    goto :goto_45

    .line 130
    .end local v0           #authMethod:Ljava/lang/String;
    :catch_6e
    move-exception v2

    .line 133
    .local v2, e:Lorg/columba/ristretto/auth/NoSuchAuthenticationException;
    :try_start_6f
    invoke-virtual {p1}, Lorg/columba/ristretto/pop3/POP3Protocol;->quit()V

    .line 134
    new-instance v6, Lorg/columba/ristretto/pop3/POP3Exception;

    invoke-direct {v6, v2}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_78
    .catch Lorg/columba/ristretto/auth/AuthenticationException; {:try_start_6f .. :try_end_78} :catch_78
    .catch Lorg/columba/ristretto/pop3/POP3Exception; {:try_start_6f .. :try_end_78} :catch_7a

    .line 137
    .end local v2           #e:Lorg/columba/ristretto/auth/NoSuchAuthenticationException;
    :catch_78
    move-exception v6

    goto :goto_45

    .line 142
    :catch_7a
    move-exception v6

    goto :goto_45
.end method

.method protected fetchEmail(Lorg/columba/ristretto/pop3/POP3Protocol;ILjava/lang/String;JLcom/vlingo/client/util/BackgroundTask;)Lcom/vlingo/client/safereader/email/Email;
    .registers 29
    .parameter "protocol"
    .parameter "messageIndex"
    .parameter "uid"
    .parameter "lastUpdateTime"
    .parameter "callingTask"

    .prologue
    .line 301
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Lorg/columba/ristretto/pop3/POP3Protocol;->retr(I)Ljava/io/InputStream;

    move-result-object v17

    .line 303
    .local v17, stream:Ljava/io/InputStream;
    invoke-static/range {v17 .. v17}, Lorg/columba/ristretto/io/StreamUtils;->readInString(Ljava/io/InputStream;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, body:Ljava/lang/String;
    new-instance v20, Lorg/columba/ristretto/io/CharSequenceSource;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lorg/columba/ristretto/io/CharSequenceSource;-><init>(Ljava/lang/CharSequence;)V

    invoke-static/range {v20 .. v20}, Lorg/columba/ristretto/parser/MessageParser;->parse(Lorg/columba/ristretto/io/Source;)Lorg/columba/ristretto/message/Message;

    move-result-object v14

    .line 305
    .local v14, m:Lorg/columba/ristretto/message/Message;
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 306
    const/16 v17, 0x0

    .line 308
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/safereader/email/POP3Manager;->markUidAsRetrieved(Ljava/lang/String;I)V

    .line 313
    invoke-virtual {v14}, Lorg/columba/ristretto/message/Message;->getHeader()Lorg/columba/ristretto/message/Header;

    move-result-object v13

    .line 315
    .local v13, header:Lorg/columba/ristretto/message/Header;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/vlingo/client/safereader/email/POP3Manager;->parseEmailReplyFromHeaders(Lorg/columba/ristretto/message/Header;)Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, addr:Ljava/lang/String;
    const-string v20, "Date"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, datestr:Ljava/lang/String;
    const-string v20, "Subject"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 318
    .local v19, subject:Ljava/lang/String;
    const-string v20, "From"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_f5

    move-result-object v11

    .line 322
    .local v11, from:Ljava/lang/String;
    if-eqz v6, :cond_dd

    .line 324
    :try_start_49
    invoke-static {v6}, Lorg/columba/ristretto/parser/DateParser;->parse(Ljava/lang/CharSequence;)Ljava/util/Date;

    move-result-object v5

    .line 325
    .local v5, date:Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    .line 330
    .local v9, emailTime:J
    cmp-long v20, v9, p4

    if-lez v20, :cond_dd

    .line 336
    invoke-virtual/range {p6 .. p6}, Lcom/vlingo/client/util/BackgroundTask;->isCancelled()Z

    move-result v20

    if-eqz v20, :cond_60

    .line 337
    invoke-virtual/range {p1 .. p1}, Lorg/columba/ristretto/pop3/POP3Protocol;->quit()V

    .line 338
    const/4 v7, 0x0

    .line 400
    .end local v3           #addr:Ljava/lang/String;
    .end local v4           #body:Ljava/lang/String;
    .end local v5           #date:Ljava/util/Date;
    .end local v6           #datestr:Ljava/lang/String;
    .end local v9           #emailTime:J
    .end local v11           #from:Ljava/lang/String;
    .end local v13           #header:Lorg/columba/ristretto/message/Header;
    .end local v14           #m:Lorg/columba/ristretto/message/Message;
    .end local v17           #stream:Ljava/io/InputStream;
    .end local v19           #subject:Ljava/lang/String;
    :goto_5f
    return-object v7

    .line 342
    .restart local v3       #addr:Ljava/lang/String;
    .restart local v4       #body:Ljava/lang/String;
    .restart local v5       #date:Ljava/util/Date;
    .restart local v6       #datestr:Ljava/lang/String;
    .restart local v9       #emailTime:J
    .restart local v11       #from:Ljava/lang/String;
    .restart local v13       #header:Lorg/columba/ristretto/message/Header;
    .restart local v14       #m:Lorg/columba/ristretto/message/Message;
    .restart local v17       #stream:Ljava/io/InputStream;
    .restart local v19       #subject:Ljava/lang/String;
    :cond_60
    invoke-virtual {v14}, Lorg/columba/ristretto/message/Message;->getMimePartTree()Lorg/columba/ristretto/message/MimeTree;

    move-result-object v15

    .line 345
    .local v15, mimeTree:Lorg/columba/ristretto/message/MimeTree;
    const-string v20, "plain"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/columba/ristretto/message/MimeTree;->getFirstTextPart(Ljava/lang/String;)Lorg/columba/ristretto/message/MimePart;

    move-result-object v16

    check-cast v16, Lorg/columba/ristretto/message/LocalMimePart;

    .line 347
    .local v16, part:Lorg/columba/ristretto/message/LocalMimePart;
    if-nez v16, :cond_80

    .line 348
    invoke-virtual {v15}, Lorg/columba/ristretto/message/MimeTree;->getRootMimeNode()Lorg/columba/ristretto/message/MimePart;

    move-result-object v20

    const-string v21, "text/html"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lorg/columba/ristretto/message/MimeTree;->getFirstLeafWithContentType(Lorg/columba/ristretto/message/MimePart;Ljava/lang/String;)Lorg/columba/ristretto/message/MimePart;

    move-result-object v16

    .end local v16           #part:Lorg/columba/ristretto/message/LocalMimePart;
    check-cast v16, Lorg/columba/ristretto/message/LocalMimePart;

    .line 350
    .restart local v16       #part:Lorg/columba/ristretto/message/LocalMimePart;
    :cond_80
    if-eqz v16, :cond_dd

    .line 351
    invoke-virtual/range {v16 .. v16}, Lorg/columba/ristretto/message/LocalMimePart;->getHeader()Lorg/columba/ristretto/message/MimeHeader;

    move-result-object v12

    .line 353
    .local v12, h:Lorg/columba/ristretto/message/MimeHeader;
    invoke-virtual/range {v16 .. v16}, Lorg/columba/ristretto/message/LocalMimePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    .line 355
    invoke-virtual {v12}, Lorg/columba/ristretto/message/MimeHeader;->getContentTransferEncoding()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_df

    .line 356
    new-instance v18, Lorg/columba/ristretto/coder/Base64DecoderInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/columba/ristretto/coder/Base64DecoderInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9f
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_49 .. :try_end_9f} :catch_dc
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_9f} :catch_f5

    .line 361
    .end local v17           #stream:Ljava/io/InputStream;
    .local v18, stream:Ljava/io/InputStream;
    :goto_9f
    :try_start_9f
    const-string v20, "charset"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/columba/ristretto/message/MimeHeader;->getContentParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_fb

    .line 362
    new-instance v17, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;

    const-string v20, "charset"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/columba/ristretto/message/MimeHeader;->getContentParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_c0
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_9f .. :try_end_c0} :catch_f7
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_c0} :catch_f5

    .line 365
    .end local v18           #stream:Ljava/io/InputStream;
    .restart local v17       #stream:Ljava/io/InputStream;
    :goto_c0
    :try_start_c0
    invoke-static/range {v17 .. v17}, Lorg/columba/ristretto/io/StreamUtils;->readInString(Ljava/io/InputStream;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 372
    .local v8, emailBody:Ljava/lang/StringBuffer;
    new-instance v7, Lcom/vlingo/client/safereader/email/Email;

    invoke-direct {v7}, Lcom/vlingo/client/safereader/email/Email;-><init>()V

    .line 374
    .local v7, email:Lcom/vlingo/client/safereader/email/Email;
    iput-object v3, v7, Lcom/vlingo/client/safereader/email/Email;->senderAddress:Ljava/lang/String;

    .line 375
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v7, Lcom/vlingo/client/safereader/email/Email;->body:Ljava/lang/String;

    .line 376
    iput-wide v9, v7, Lcom/vlingo/client/safereader/email/Email;->date:J

    .line 377
    move-object/from16 v0, v19

    iput-object v0, v7, Lcom/vlingo/client/safereader/email/Email;->subject:Ljava/lang/String;

    .line 378
    iput-object v11, v7, Lcom/vlingo/client/safereader/email/Email;->from:Ljava/lang/String;

    goto :goto_5f

    .line 391
    .end local v5           #date:Ljava/util/Date;
    .end local v7           #email:Lcom/vlingo/client/safereader/email/Email;
    .end local v8           #emailBody:Ljava/lang/StringBuffer;
    .end local v9           #emailTime:J
    .end local v12           #h:Lorg/columba/ristretto/message/MimeHeader;
    .end local v15           #mimeTree:Lorg/columba/ristretto/message/MimeTree;
    .end local v16           #part:Lorg/columba/ristretto/message/LocalMimePart;
    :catch_dc
    move-exception v20

    .line 400
    .end local v3           #addr:Ljava/lang/String;
    .end local v4           #body:Ljava/lang/String;
    .end local v6           #datestr:Ljava/lang/String;
    .end local v11           #from:Ljava/lang/String;
    .end local v13           #header:Lorg/columba/ristretto/message/Header;
    .end local v14           #m:Lorg/columba/ristretto/message/Message;
    .end local v17           #stream:Ljava/io/InputStream;
    .end local v19           #subject:Ljava/lang/String;
    :cond_dd
    :goto_dd
    const/4 v7, 0x0

    goto :goto_5f

    .line 357
    .restart local v3       #addr:Ljava/lang/String;
    .restart local v4       #body:Ljava/lang/String;
    .restart local v5       #date:Ljava/util/Date;
    .restart local v6       #datestr:Ljava/lang/String;
    .restart local v9       #emailTime:J
    .restart local v11       #from:Ljava/lang/String;
    .restart local v12       #h:Lorg/columba/ristretto/message/MimeHeader;
    .restart local v13       #header:Lorg/columba/ristretto/message/Header;
    .restart local v14       #m:Lorg/columba/ristretto/message/Message;
    .restart local v15       #mimeTree:Lorg/columba/ristretto/message/MimeTree;
    .restart local v16       #part:Lorg/columba/ristretto/message/LocalMimePart;
    .restart local v17       #stream:Ljava/io/InputStream;
    .restart local v19       #subject:Ljava/lang/String;
    :cond_df
    invoke-virtual {v12}, Lorg/columba/ristretto/message/MimeHeader;->getContentTransferEncoding()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_fe

    .line 358
    new-instance v18, Lorg/columba/ristretto/coder/QuotedPrintableDecoderInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/columba/ristretto/coder/QuotedPrintableDecoderInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f4
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_c0 .. :try_end_f4} :catch_dc
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_f4} :catch_f5

    .end local v17           #stream:Ljava/io/InputStream;
    .restart local v18       #stream:Ljava/io/InputStream;
    goto :goto_9f

    .line 396
    .end local v3           #addr:Ljava/lang/String;
    .end local v4           #body:Ljava/lang/String;
    .end local v5           #date:Ljava/util/Date;
    .end local v6           #datestr:Ljava/lang/String;
    .end local v9           #emailTime:J
    .end local v11           #from:Ljava/lang/String;
    .end local v12           #h:Lorg/columba/ristretto/message/MimeHeader;
    .end local v13           #header:Lorg/columba/ristretto/message/Header;
    .end local v14           #m:Lorg/columba/ristretto/message/Message;
    .end local v15           #mimeTree:Lorg/columba/ristretto/message/MimeTree;
    .end local v16           #part:Lorg/columba/ristretto/message/LocalMimePart;
    .end local v18           #stream:Ljava/io/InputStream;
    .end local v19           #subject:Ljava/lang/String;
    :catch_f5
    move-exception v20

    goto :goto_dd

    .line 391
    .restart local v3       #addr:Ljava/lang/String;
    .restart local v4       #body:Ljava/lang/String;
    .restart local v5       #date:Ljava/util/Date;
    .restart local v6       #datestr:Ljava/lang/String;
    .restart local v9       #emailTime:J
    .restart local v11       #from:Ljava/lang/String;
    .restart local v12       #h:Lorg/columba/ristretto/message/MimeHeader;
    .restart local v13       #header:Lorg/columba/ristretto/message/Header;
    .restart local v14       #m:Lorg/columba/ristretto/message/Message;
    .restart local v15       #mimeTree:Lorg/columba/ristretto/message/MimeTree;
    .restart local v16       #part:Lorg/columba/ristretto/message/LocalMimePart;
    .restart local v18       #stream:Ljava/io/InputStream;
    .restart local v19       #subject:Ljava/lang/String;
    :catch_f7
    move-exception v20

    move-object/from16 v17, v18

    .end local v18           #stream:Ljava/io/InputStream;
    .restart local v17       #stream:Ljava/io/InputStream;
    goto :goto_dd

    .end local v17           #stream:Ljava/io/InputStream;
    .restart local v18       #stream:Ljava/io/InputStream;
    :cond_fb
    move-object/from16 v17, v18

    .end local v18           #stream:Ljava/io/InputStream;
    .restart local v17       #stream:Ljava/io/InputStream;
    goto :goto_c0

    :cond_fe
    move-object/from16 v18, v17

    .end local v17           #stream:Ljava/io/InputStream;
    .restart local v18       #stream:Ljava/io/InputStream;
    goto :goto_9f
.end method

.method public getEmailSince(Lcom/vlingo/client/safereader/email/EmailAccount;JZLcom/vlingo/client/util/BackgroundTask;)Ljava/util/ArrayList;
    .registers 27
    .parameter "account"
    .parameter "lastUpdateTime"
    .parameter "onlyCheckForUnreadEmail"
    .parameter "callingTask"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vlingo/client/safereader/email/EmailAccount;",
            "JZ",
            "Lcom/vlingo/client/util/BackgroundTask;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/safereader/email/Email;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v19, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/safereader/email/Email;>;"
    new-instance v3, Lorg/columba/ristretto/pop3/POP3Protocol;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->server:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->port:I

    invoke-direct {v3, v2, v6}, Lorg/columba/ristretto/pop3/POP3Protocol;-><init>(Ljava/lang/String;I)V

    .line 162
    .local v3, protocol:Lorg/columba/ristretto/pop3/POP3Protocol;
    :try_start_12
    invoke-virtual/range {p5 .. p5}, Lcom/vlingo/client/util/BackgroundTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 163
    invoke-virtual {v3}, Lorg/columba/ristretto/pop3/POP3Protocol;->quit()V

    .line 164
    const/16 v19, 0x0

    .line 296
    .end local v19           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/safereader/email/Email;>;"
    :goto_1d
    return-object v19

    .line 171
    .restart local v19       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/safereader/email/Email;>;"
    :cond_1e
    move-object/from16 v0, p1

    iget v2, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->securityType:I

    packed-switch v2, :pswitch_data_10e

    .line 183
    :goto_25
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Lcom/vlingo/client/safereader/email/POP3Manager;->authenticate(Lorg/columba/ristretto/pop3/POP3Protocol;Lcom/vlingo/client/safereader/email/EmailAccount;)V
    :try_end_2c
    .catch Lorg/columba/ristretto/pop3/POP3Exception; {:try_start_12 .. :try_end_2c} :catch_43
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2c} :catch_5a

    .line 185
    const/4 v14, 0x0

    .line 187
    .local v14, list:[Lorg/columba/ristretto/pop3/UidListEntry;
    const/4 v15, 0x3

    .line 189
    .local v15, maxTries:I
    const/16 v20, 0x0

    .local v20, uidlTry:I
    :goto_30
    const/4 v2, 0x3

    move/from16 v0, v20

    if-ge v0, v2, :cond_39

    .line 193
    :try_start_35
    invoke-virtual {v3}, Lorg/columba/ristretto/pop3/POP3Protocol;->uidl()[Lorg/columba/ristretto/pop3/UidListEntry;
    :try_end_38
    .catch Lorg/columba/ristretto/pop3/POP3Exception; {:try_start_35 .. :try_end_38} :catch_67
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_5a

    move-result-object v14

    .line 218
    :cond_39
    if-nez v14, :cond_87

    .line 219
    :try_start_3b
    new-instance v2, Lorg/columba/ristretto/pop3/POP3Exception;

    const-string v6, "Unable to get message list - UIDL failed"

    invoke-direct {v2, v6}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_43
    .catch Lorg/columba/ristretto/pop3/POP3Exception; {:try_start_3b .. :try_end_43} :catch_43
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_43} :catch_5a

    .line 280
    .end local v14           #list:[Lorg/columba/ristretto/pop3/UidListEntry;
    .end local v15           #maxTries:I
    .end local v20           #uidlTry:I
    :catch_43
    move-exception v18

    .line 283
    .local v18, pex:Lorg/columba/ristretto/pop3/POP3Exception;
    invoke-virtual/range {v18 .. v18}, Lorg/columba/ristretto/pop3/POP3Exception;->printStackTrace()V

    .line 285
    :try_start_47
    invoke-virtual {v3}, Lorg/columba/ristretto/pop3/POP3Protocol;->quit()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b
    .catch Lorg/columba/ristretto/pop3/POP3Exception; {:try_start_47 .. :try_end_4a} :catch_101

    goto :goto_1d

    .line 286
    :catch_4b
    move-exception v9

    .line 287
    .local v9, e1:Ljava/io/IOException;
    const-string v2, "VLG_EXCEPTION"

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 173
    .end local v9           #e1:Ljava/io/IOException;
    .end local v18           #pex:Lorg/columba/ristretto/pop3/POP3Exception;
    :pswitch_56
    :try_start_56
    invoke-virtual {v3}, Lorg/columba/ristretto/pop3/POP3Protocol;->openPort()V
    :try_end_59
    .catch Lorg/columba/ristretto/pop3/POP3Exception; {:try_start_56 .. :try_end_59} :catch_43
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_25

    .line 291
    :catch_5a
    move-exception v12

    .line 294
    .local v12, ex:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d

    .line 176
    .end local v12           #ex:Ljava/lang/Exception;
    :pswitch_5f
    :try_start_5f
    invoke-virtual {v3}, Lorg/columba/ristretto/pop3/POP3Protocol;->openSSLPort()V

    goto :goto_25

    .line 179
    :pswitch_63
    invoke-virtual {v3}, Lorg/columba/ristretto/pop3/POP3Protocol;->openSSLPort()V
    :try_end_66
    .catch Lorg/columba/ristretto/pop3/POP3Exception; {:try_start_5f .. :try_end_66} :catch_43
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_66} :catch_5a

    goto :goto_25

    .line 195
    .restart local v14       #list:[Lorg/columba/ristretto/pop3/UidListEntry;
    .restart local v15       #maxTries:I
    .restart local v20       #uidlTry:I
    :catch_67
    move-exception v2

    .line 207
    const-wide/16 v6, 0x1388

    :try_start_6a
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6d
    .catch Ljava/lang/InterruptedException; {:try_start_6a .. :try_end_6d} :catch_79
    .catch Lorg/columba/ristretto/pop3/POP3Exception; {:try_start_6a .. :try_end_6d} :catch_43
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_5a

    .line 212
    :goto_6d
    :try_start_6d
    invoke-virtual/range {p5 .. p5}, Lcom/vlingo/client/util/BackgroundTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_84

    .line 213
    invoke-virtual {v3}, Lorg/columba/ristretto/pop3/POP3Protocol;->quit()V

    .line 214
    const/16 v19, 0x0

    goto :goto_1d

    .line 208
    :catch_79
    move-exception v12

    .line 209
    .local v12, ex:Ljava/lang/InterruptedException;
    const-string v2, "VLG_EXCEPTION"

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 189
    .end local v12           #ex:Ljava/lang/InterruptedException;
    :cond_84
    add-int/lit8 v20, v20, 0x1

    goto :goto_30

    .line 225
    :cond_87
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vlingo/client/safereader/email/POP3Manager;->getNewUIDs([Lorg/columba/ristretto/pop3/UidListEntry;)Ljava/util/ArrayList;

    move-result-object v16

    .line 226
    .local v16, newMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/columba/ristretto/pop3/UidListEntry;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 228
    .local v17, numNewMessages:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vlingo/client/safereader/email/POP3Manager;->firstCheckSinceActivated:Z

    if-eqz v2, :cond_bb

    .line 233
    const/4 v13, 0x0

    .local v13, i:I
    :goto_98
    move/from16 v0, v17

    if-ge v13, v0, :cond_b4

    .line 234
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/columba/ristretto/pop3/UidListEntry;

    .line 235
    .local v11, entry:Lorg/columba/ristretto/pop3/UidListEntry;
    invoke-virtual {v11}, Lorg/columba/ristretto/pop3/UidListEntry;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lorg/columba/ristretto/pop3/UidListEntry;->getIndex()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/vlingo/client/safereader/email/POP3Manager;->markUidAsRetrieved(Ljava/lang/String;I)V

    .line 233
    add-int/lit8 v13, v13, 0x1

    goto :goto_98

    .line 238
    .end local v11           #entry:Lorg/columba/ristretto/pop3/UidListEntry;
    :cond_b4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vlingo/client/safereader/email/POP3Manager;->firstCheckSinceActivated:Z

    goto/16 :goto_1d

    .line 246
    .end local v13           #i:I
    :cond_bb
    const/4 v13, 0x1

    .restart local v13       #i:I
    :goto_bc
    move/from16 v0, v17

    if-gt v13, v0, :cond_fc

    .line 248
    add-int/lit8 v2, v13, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/columba/ristretto/pop3/UidListEntry;

    .line 251
    .restart local v11       #entry:Lorg/columba/ristretto/pop3/UidListEntry;
    invoke-virtual/range {p5 .. p5}, Lcom/vlingo/client/util/BackgroundTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 252
    invoke-virtual {v3}, Lorg/columba/ristretto/pop3/POP3Protocol;->quit()V

    .line 253
    const/16 v19, 0x0

    goto/16 :goto_1d

    .line 256
    :cond_d7
    invoke-virtual {v11}, Lorg/columba/ristretto/pop3/UidListEntry;->getIndex()I

    move-result v4

    .line 257
    .local v4, messageIndex:I
    invoke-virtual {v11}, Lorg/columba/ristretto/pop3/UidListEntry;->getUid()Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, uid:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vlingo/client/safereader/email/POP3Manager;->hasEmailAlreadyBeenRetrieved(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 246
    :cond_e7
    :goto_e7
    add-int/lit8 v13, v13, 0x1

    goto :goto_bc

    :cond_ea
    move-object/from16 v2, p0

    move-wide/from16 v6, p2

    move-object/from16 v8, p5

    .line 265
    invoke-virtual/range {v2 .. v8}, Lcom/vlingo/client/safereader/email/POP3Manager;->fetchEmail(Lorg/columba/ristretto/pop3/POP3Protocol;ILjava/lang/String;JLcom/vlingo/client/util/BackgroundTask;)Lcom/vlingo/client/safereader/email/Email;

    move-result-object v10

    .line 266
    .local v10, em:Lcom/vlingo/client/safereader/email/Email;
    if-eqz v10, :cond_e7

    .line 269
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e7

    .line 276
    .end local v4           #messageIndex:I
    .end local v5           #uid:Ljava/lang/String;
    .end local v10           #em:Lcom/vlingo/client/safereader/email/Email;
    .end local v11           #entry:Lorg/columba/ristretto/pop3/UidListEntry;
    :cond_fc
    invoke-virtual {v3}, Lorg/columba/ristretto/pop3/POP3Protocol;->quit()V
    :try_end_ff
    .catch Lorg/columba/ristretto/pop3/POP3Exception; {:try_start_6d .. :try_end_ff} :catch_43
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_ff} :catch_5a

    goto/16 :goto_1d

    .line 288
    .end local v13           #i:I
    .end local v14           #list:[Lorg/columba/ristretto/pop3/UidListEntry;
    .end local v15           #maxTries:I
    .end local v16           #newMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/columba/ristretto/pop3/UidListEntry;>;"
    .end local v17           #numNewMessages:I
    .end local v20           #uidlTry:I
    .restart local v18       #pex:Lorg/columba/ristretto/pop3/POP3Exception;
    :catch_101
    move-exception v9

    .line 289
    .local v9, e1:Lorg/columba/ristretto/pop3/POP3Exception;
    const-string v2, "VLG_EXCEPTION"

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 171
    nop

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_56
        :pswitch_5f
        :pswitch_63
    .end packed-switch
.end method

.method protected getNewUIDs([Lorg/columba/ristretto/pop3/UidListEntry;)Ljava/util/ArrayList;
    .registers 5
    .parameter "allUIDs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/columba/ristretto/pop3/UidListEntry;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/columba/ristretto/pop3/UidListEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v1, newUids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/columba/ristretto/pop3/UidListEntry;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    array-length v2, p1

    if-ge v0, v2, :cond_1d

    .line 70
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/columba/ristretto/pop3/UidListEntry;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vlingo/client/safereader/email/POP3Manager;->hasEmailAlreadyBeenRetrieved(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 71
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 74
    :cond_1d
    return-object v1
.end method

.method protected hasEmailAlreadyBeenRetrieved(Ljava/lang/String;)Z
    .registers 3
    .parameter "uid"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vlingo/client/safereader/email/POP3Manager;->m_seenUidList:Lcom/vlingo/client/util/BoundedSizeMap;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/util/BoundedSizeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected markUidAsRetrieved(Ljava/lang/String;I)V
    .registers 5
    .parameter "uid"
    .parameter "messageIndex"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/vlingo/client/safereader/email/POP3Manager;->hasEmailAlreadyBeenRetrieved(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 83
    iget-object v0, p0, Lcom/vlingo/client/safereader/email/POP3Manager;->m_seenUidList:Lcom/vlingo/client/util/BoundedSizeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/vlingo/client/util/BoundedSizeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_f
    return-void
.end method

.method notifySafereaderStarted()V
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/safereader/email/POP3Manager;->firstCheckSinceActivated:Z

    .line 64
    iget-object v0, p0, Lcom/vlingo/client/safereader/email/POP3Manager;->m_seenUidList:Lcom/vlingo/client/util/BoundedSizeMap;

    invoke-virtual {v0}, Lcom/vlingo/client/util/BoundedSizeMap;->clear()V

    .line 65
    return-void
.end method
