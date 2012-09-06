.class public Lcom/android/exchange/adapter/ProvisionParser;
.super Lcom/android/exchange/adapter/Parser;
.source "ProvisionParser.java"


# instance fields
.field mIsSupportable:Z

.field mPolicy:Lcom/android/emailcommon/provider/Policy;

.field mRemoteWipe:Z

.field mSecuritySyncKey:Ljava/lang/String;

.field private final mService:Lcom/android/exchange/EasSyncService;

.field mUnsupportedPolicies:[Ljava/lang/String;

.field smimeRequired:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V
    .registers 5
    .parameter "in"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 43
    iput-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 44
    iput-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mSecuritySyncKey:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mRemoteWipe:Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->smimeRequired:Z

    .line 53
    iput-object p2, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 54
    return-void
.end method

.method private parseCharacteristic(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V
    .registers 12
    .parameter "parser"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 413
    const/4 v0, 0x1

    .line 415
    .local v0, enforceInactivityTimer:Z
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    .line 416
    .local v2, type:I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_18

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "characteristic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 451
    return-void

    .line 418
    :cond_18
    if-ne v2, v7, :cond_4

    .line 419
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "parm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 420
    const-string v4, "name"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, name:Ljava/lang/String;
    const-string v4, "value"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, value:Ljava/lang/String;
    const-string v4, "AEFrequencyValue"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 423
    if-eqz v0, :cond_4

    .line 424
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 425
    iput v6, p2, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    goto :goto_4

    .line 427
    :cond_47
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    iput v4, p2, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    goto :goto_4

    .line 430
    :cond_50
    const-string v4, "AEFrequencyType"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 432
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 433
    const/4 v0, 0x0

    goto :goto_4

    .line 435
    :cond_62
    const-string v4, "DeviceWipeThreshold"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 436
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    goto :goto_4

    .line 437
    :cond_71
    const-string v4, "CodewordFrequency"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 439
    const-string v4, "MinimumPasswordLength"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 440
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    goto/16 :goto_4

    .line 441
    :cond_89
    const-string v4, "PasswordComplexity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 442
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 443
    iput v7, p2, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    goto/16 :goto_4

    .line 445
    :cond_9d
    iput v6, p2, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    goto/16 :goto_4
.end method

.method private parseDeviceInformation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    :goto_0
    const/16 v0, 0x496

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_36

    .line 543
    iget v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    const/16 v1, 0x486

    if-ne v0, v1, :cond_32

    .line 544
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceInformation status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_32
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 549
    :cond_36
    return-void
.end method

.method private parsePolicies()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    :goto_0
    const/16 v0, 0x386

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    .line 533
    iget v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    const/16 v1, 0x387

    if-ne v0, v1, :cond_13

    .line 534
    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parsePolicy()V

    goto :goto_0

    .line 536
    :cond_13
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 539
    :cond_17
    return-void
.end method

.method private parsePolicy()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, policyType:Ljava/lang/String;
    :goto_4
    const/16 v1, 0x387

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_55

    .line 505
    iget v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    packed-switch v1, :pswitch_data_56

    .line 526
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_4

    .line 507
    :pswitch_16
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Policy type: "

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_4

    .line 511
    :pswitch_28
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mSecuritySyncKey:Ljava/lang/String;

    goto :goto_4

    .line 514
    :pswitch_2f
    iget-object v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Policy status: "

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_4

    .line 517
    :pswitch_41
    const-string v1, "MS-WAP-Provisioning-XML"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 519
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->parseProvisionDocXml(Ljava/lang/String;)V

    goto :goto_4

    .line 522
    :cond_51
    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parseProvisionData()V

    goto :goto_4

    .line 529
    :cond_55
    return-void

    .line 505
    :pswitch_data_56
    .packed-switch 0x388
        :pswitch_16
        :pswitch_28
        :pswitch_41
        :pswitch_2f
    .end packed-switch
.end method

.method private parseProvisionData()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    :goto_0
    const/16 v0, 0x38a

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    .line 494
    iget v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    const/16 v1, 0x38d

    if-ne v0, v1, :cond_13

    .line 495
    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parseProvisionDocWbxml()V

    goto :goto_0

    .line 497
    :cond_13
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 500
    :cond_17
    return-void
.end method

.method private parseProvisionDocWbxml()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v6, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v6}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    .line 93
    .local v6, policy:Lcom/android/emailcommon/provider/Policy;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v10, unsupportedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 96
    .local v5, passwordEnabled:Z
    :cond_b
    :goto_b
    const/16 v12, 0x38d

    invoke-virtual {p0, v12}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_1e1

    .line 97
    const/4 v9, 0x1

    .line 98
    .local v9, tagIsSupported:Z
    const/4 v7, 0x0

    .line 99
    .local v7, res:I
    iget v12, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    packed-switch v12, :pswitch_data_240

    .line 305
    :pswitch_1b
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    .line 308
    :cond_1e
    :goto_1e
    if-nez v9, :cond_b

    .line 309
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Policy not supported: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/exchange/adapter/ProvisionParser;->log(Ljava/lang/String;)V

    .line 310
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    goto :goto_b

    .line 101
    :pswitch_3c
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1e

    .line 102
    const/4 v5, 0x1

    .line 103
    iget v12, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-nez v12, :cond_1e

    .line 104
    const/4 v12, 0x1

    iput v12, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    goto :goto_1e

    .line 109
    :pswitch_4c
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v12

    iput v12, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    goto :goto_1e

    .line 112
    :pswitch_53
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1e

    .line 113
    const/4 v12, 0x2

    iput v12, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    goto :goto_1e

    .line 118
    :pswitch_5e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v12

    iput v12, v6, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    goto :goto_1e

    .line 121
    :pswitch_65
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v12

    iput v12, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    goto :goto_1e

    .line 124
    :pswitch_6c
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v12

    iput v12, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    goto :goto_1e

    .line 127
    :pswitch_73
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v12

    iput v12, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    goto :goto_1e

    .line 130
    :pswitch_7a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v12

    if-nez v12, :cond_84

    const/4 v12, 0x1

    :goto_81
    iput-boolean v12, v6, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    goto :goto_1e

    :cond_84
    const/4 v12, 0x0

    goto :goto_81

    .line 135
    :pswitch_86
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    goto :goto_1e

    .line 149
    :pswitch_8a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v12

    if-nez v12, :cond_1e

    .line 150
    const/4 v9, 0x0

    .line 151
    iget v12, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    sparse-switch v12, :sswitch_data_29c

    .line 187
    :goto_96
    if-lez v7, :cond_1e

    .line 188
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    .line 153
    :sswitch_a1
    const v7, 0x7f060011

    .line 154
    goto :goto_96

    .line 156
    :sswitch_a5
    const v7, 0x7f060012

    .line 157
    goto :goto_96

    .line 159
    :sswitch_a9
    const v7, 0x7f060013

    .line 160
    goto :goto_96

    .line 162
    :sswitch_ad
    const v7, 0x7f060014

    .line 163
    goto :goto_96

    .line 165
    :sswitch_b1
    const v7, 0x7f060015

    .line 166
    goto :goto_96

    .line 168
    :sswitch_b5
    const v7, 0x7f060016

    .line 169
    goto :goto_96

    .line 171
    :sswitch_b9
    const v7, 0x7f060017

    .line 172
    goto :goto_96

    .line 174
    :sswitch_bd
    const v7, 0x7f060018

    .line 175
    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    goto :goto_96

    .line 178
    :sswitch_c4
    const v7, 0x7f060019

    .line 179
    goto :goto_96

    .line 181
    :sswitch_c8
    const v7, 0x7f06001a

    .line 182
    goto :goto_96

    .line 184
    :sswitch_cc
    const v7, 0x7f06001b

    goto :goto_96

    .line 193
    :pswitch_d0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_dc

    const/4 v12, 0x1

    :goto_d8
    iput-boolean v12, v6, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    goto/16 :goto_1e

    :cond_dc
    const/4 v12, 0x0

    goto :goto_d8

    .line 197
    :pswitch_de
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_1e

    .line 198
    const/4 v9, 0x0

    .line 199
    const v12, 0x7f06001f

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    .line 205
    :pswitch_f2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1e

    .line 206
    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    goto/16 :goto_1e

    .line 211
    :pswitch_fe
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_10a

    const/4 v12, 0x1

    :goto_106
    iput-boolean v12, v6, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    goto/16 :goto_1e

    :cond_10a
    const/4 v12, 0x0

    goto :goto_106

    .line 218
    :pswitch_10c
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_118

    const/4 v12, 0x1

    :goto_114
    iput-boolean v12, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    goto/16 :goto_1e

    :cond_118
    const/4 v12, 0x0

    goto :goto_114

    .line 223
    :pswitch_11a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1e

    .line 224
    const/4 v9, 0x0

    .line 225
    const v12, 0x7f060028

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    .line 233
    :pswitch_12e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1e

    .line 234
    const/4 v9, 0x0

    .line 235
    iget-boolean v12, p0, Lcom/android/exchange/adapter/ProvisionParser;->smimeRequired:Z

    if-nez v12, :cond_1e

    .line 236
    const v12, 0x7f06001d

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/exchange/adapter/ProvisionParser;->smimeRequired:Z

    goto/16 :goto_1e

    .line 242
    :pswitch_149
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v4

    .line 243
    .local v4, max:I
    if-lez v4, :cond_1e

    .line 244
    iput v4, v6, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    goto/16 :goto_1e

    .line 249
    .end local v4           #max:I
    :pswitch_153
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v12

    iput v12, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    goto/16 :goto_1e

    .line 256
    :pswitch_15b
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto/16 :goto_1e

    .line 262
    :pswitch_160
    iget v12, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    invoke-direct {p0, v12}, Lcom/android/exchange/adapter/ProvisionParser;->specifiesApplications(I)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 263
    const/4 v9, 0x0

    .line 264
    iget v12, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    const/16 v13, 0x3b7

    if-ne v12, v13, :cond_17b

    .line 265
    const v12, 0x7f060020

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    .line 267
    :cond_17b
    const v12, 0x7f060021

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    .line 274
    :pswitch_187
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v4

    .line 276
    .restart local v4       #max:I
    if-eqz v4, :cond_1e

    .line 277
    iget v12, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    const/16 v13, 0x3a8

    if-ne v12, v13, :cond_1a2

    .line 278
    iput v4, v6, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    .line 279
    const v12, 0x7f060022

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    :goto_19f
    const/4 v9, 0x0

    goto/16 :goto_1e

    .line 281
    :cond_1a2
    iput v4, v6, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    .line 282
    const v12, 0x7f060023

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19f

    .line 290
    .end local v4           #max:I
    :pswitch_1af
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 292
    .local v11, value:Ljava/lang/String;
    const-string v12, "-1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1e

    .line 293
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 294
    .restart local v4       #max:I
    iget v12, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    const/16 v13, 0x3ab

    if-ne v12, v13, :cond_1d4

    .line 295
    iput v4, v6, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    .line 296
    const v12, 0x7f060024

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    :goto_1d1
    const/4 v9, 0x0

    goto/16 :goto_1e

    .line 298
    :cond_1d4
    iput v4, v6, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    .line 299
    const v12, 0x7f060025

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d1

    .line 315
    .end local v4           #max:I
    .end local v7           #res:I
    .end local v9           #tagIsSupported:Z
    .end local v11           #value:Ljava/lang/String;
    :cond_1e1
    if-nez v5, :cond_1e6

    .line 316
    const/4 v12, 0x0

    iput v12, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 318
    :cond_1e6
    invoke-direct {p0, v6}, Lcom/android/exchange/adapter/ProvisionParser;->setPolicy(Lcom/android/emailcommon/provider/Policy;)V

    .line 321
    iget-object v12, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v12, v12, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v12, v6}, Lcom/android/exchange/SecurityPolicyDelegate;->isSupported(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Z

    move-result v12

    if-nez v12, :cond_205

    .line 322
    const-string v12, "SecurityPolicy reports PolicySet not supported."

    invoke-virtual {p0, v12}, Lcom/android/exchange/adapter/ProvisionParser;->log(Ljava/lang/String;)V

    .line 323
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    .line 324
    const v12, 0x7f060027

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_205
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_23e

    .line 328
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    iput-object v12, p0, Lcom/android/exchange/adapter/ProvisionParser;->mUnsupportedPolicies:[Ljava/lang/String;

    .line 329
    const/4 v1, 0x0

    .line 330
    .local v1, i:I
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 331
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_23e

    .line 332
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 333
    .local v8, resources:Landroid/content/res/Resources;
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_222
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_23e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 334
    .restart local v7       #res:I
    iget-object v12, p0, Lcom/android/exchange/adapter/ProvisionParser;->mUnsupportedPolicies:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_222

    .line 338
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #res:I
    .end local v8           #resources:Landroid/content/res/Resources;
    :cond_23e
    return-void

    .line 99
    nop

    :pswitch_data_240
    .packed-switch 0x38e
        :pswitch_3c
        :pswitch_53
        :pswitch_11a
        :pswitch_10c
        :pswitch_1b
        :pswitch_d0
        :pswitch_4c
        :pswitch_5e
        :pswitch_65
        :pswitch_149
        :pswitch_86
        :pswitch_6c
        :pswitch_73
        :pswitch_8a
        :pswitch_7a
        :pswitch_f2
        :pswitch_8a
        :pswitch_8a
        :pswitch_153
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_de
        :pswitch_8a
        :pswitch_fe
        :pswitch_15b
        :pswitch_187
        :pswitch_8a
        :pswitch_187
        :pswitch_1af
        :pswitch_1af
        :pswitch_12e
        :pswitch_12e
        :pswitch_12e
        :pswitch_12e
        :pswitch_15b
        :pswitch_15b
        :pswitch_8a
        :pswitch_8a
        :pswitch_15b
        :pswitch_8a
        :pswitch_160
        :pswitch_1b
        :pswitch_160
    .end packed-switch

    .line 151
    :sswitch_data_29c
    .sparse-switch
        0x39b -> :sswitch_a1
        0x39e -> :sswitch_a5
        0x39f -> :sswitch_a9
        0x3a1 -> :sswitch_ad
        0x3a2 -> :sswitch_b1
        0x3a3 -> :sswitch_b5
        0x3a5 -> :sswitch_b9
        0x3a9 -> :sswitch_bd
        0x3b3 -> :sswitch_c4
        0x3b4 -> :sswitch_c8
        0x3b6 -> :sswitch_cc
    .end sparse-switch
.end method

.method private parseRegistry(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V
    .registers 7
    .parameter "parser"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    .line 457
    .local v1, type:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "characteristic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 466
    return-void

    .line 459
    :cond_14
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 460
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, name:Ljava/lang/String;
    const-string v2, "characteristic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/ProvisionParser;->parseCharacteristic(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V

    goto :goto_0
.end method

.method private parseSecurityPolicy(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)Z
    .registers 11
    .parameter "parser"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 390
    const/4 v1, 0x1

    .line 392
    .local v1, passwordRequired:Z
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v3

    .line 393
    .local v3, type:I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_16

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "characteristic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 408
    return v1

    .line 395
    :cond_16
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 396
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, tagName:Ljava/lang/String;
    const-string v5, "parm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 398
    const-string v5, "name"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, name:Ljava/lang/String;
    const-string v5, "4131"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 400
    const-string v5, "value"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, value:Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 402
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private parseWapProvisioningDoc(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V
    .registers 8
    .parameter "parser"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    .line 472
    .local v2, type:I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wap-provisioningdoc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 490
    :goto_13
    return-void

    .line 474
    :cond_14
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 475
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, name:Ljava/lang/String;
    const-string v3, "characteristic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 477
    const/4 v3, 0x0

    const-string v4, "type"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, atype:Ljava/lang/String;
    const-string v3, "SecurityPolicy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 480
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/ProvisionParser;->parseSecurityPolicy(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_13

    .line 483
    :cond_39
    const-string v3, "Registry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/ProvisionParser;->parseRegistry(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V

    goto :goto_13
.end method

.method private setPolicy(Lcom/android/emailcommon/provider/Policy;)V
    .registers 2
    .parameter "policy"

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Policy;->normalize()V

    .line 88
    iput-object p1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 89
    return-void
.end method

.method private specifiesApplications(I)Z
    .registers 5
    .parameter "endTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, specifiesApplications:Z
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_13

    .line 349
    iget v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    packed-switch v1, :pswitch_data_14

    .line 355
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_1

    .line 352
    :pswitch_11
    const/4 v0, 0x1

    .line 353
    goto :goto_1

    .line 358
    :cond_13
    return v0

    .line 349
    :pswitch_data_14
    .packed-switch 0x3b8
        :pswitch_11
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public clearUnsupportedPolicies()V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    invoke-static {v0, v1}, Lcom/android/exchange/SecurityPolicyDelegate;->clearUnsupportedPolicies(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mUnsupportedPolicies:[Ljava/lang/String;

    .line 80
    return-void
.end method

.method public getPolicy()Lcom/android/emailcommon/provider/Policy;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    return-object v0
.end method

.method public getRemoteWipe()Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mRemoteWipe:Z

    return v0
.end method

.method public getSecuritySyncKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mSecuritySyncKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUnsupportedPolicies()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mUnsupportedPolicies:[Ljava/lang/String;

    return-object v0
.end method

.method public hasSupportablePolicySet()Z
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public parse()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 553
    const/4 v0, 0x0

    .line 554
    .local v0, res:Z
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v4

    const/16 v5, 0x385

    if-eq v4, v5, :cond_1f

    .line 555
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 560
    :sswitch_11
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v1

    .line 561
    .local v1, status:I
    iget-object v4, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v5, "Provision status: "

    invoke-virtual {v4, v5, v1}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 562
    if-ne v1, v2, :cond_2f

    move v0, v2

    .line 557
    .end local v1           #status:I
    :cond_1f
    :goto_1f
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3c

    .line 558
    iget v4, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    sparse-switch v4, :sswitch_data_3e

    .line 575
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_1f

    .restart local v1       #status:I
    :cond_2f
    move v0, v3

    .line 562
    goto :goto_1f

    .line 565
    .end local v1           #status:I
    :sswitch_31
    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parseDeviceInformation()V

    goto :goto_1f

    .line 568
    :sswitch_35
    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parsePolicies()V

    goto :goto_1f

    .line 572
    :sswitch_39
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser;->mRemoteWipe:Z

    goto :goto_1f

    .line 578
    :cond_3c
    return v0

    .line 558
    nop

    :sswitch_data_3e
    .sparse-switch
        0x386 -> :sswitch_35
        0x38b -> :sswitch_11
        0x38c -> :sswitch_39
        0x496 -> :sswitch_31
    .end sparse-switch
.end method

.method parseProvisionDocXml(Ljava/lang/String;)V
    .registers 10
    .parameter "doc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    new-instance v3, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v3}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    .line 365
    .local v3, policy:Lcom/android/emailcommon/provider/Policy;
    :try_start_5
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 366
    .local v1, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 367
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v7, "UTF-8"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 368
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 369
    .local v5, type:I
    if-nez v5, :cond_37

    .line 370
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 371
    const/4 v6, 0x2

    if-ne v5, v6, :cond_37

    .line 372
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, tagName:Ljava/lang/String;
    const-string v6, "wap-provisioningdoc"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 374
    invoke-direct {p0, v2, v3}, Lcom/android/exchange/adapter/ProvisionParser;->parseWapProvisioningDoc(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V
    :try_end_37
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_37} :catch_3b

    .line 382
    .end local v4           #tagName:Ljava/lang/String;
    :cond_37
    invoke-direct {p0, v3}, Lcom/android/exchange/adapter/ProvisionParser;->setPolicy(Lcom/android/emailcommon/provider/Policy;)V

    .line 383
    return-void

    .line 378
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #type:I
    :catch_3b
    move-exception v0

    .line 379
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
.end method

.method public setSecuritySyncKey(Ljava/lang/String;)V
    .registers 2
    .parameter "securitySyncKey"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mSecuritySyncKey:Ljava/lang/String;

    .line 66
    return-void
.end method
