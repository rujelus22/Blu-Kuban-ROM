.class public final Lcom/google/grandcentral/api2/Api2$ApiSettings;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiSettingsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;,
        Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;,
        Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotificationOrBuilder;
    }
.end annotation


# static fields
.field public static final CALL_PRESENTATION_ENABLED_FIELD_NUMBER:I = 0x14

.field public static final CLEAR_SMS_VMAIL_NOTIFICATIONS_FIELD_NUMBER:I = 0x17

.field public static final DEFAULT_GREETING_ID_FIELD_NUMBER:I = 0x16

.field public static final DO_NOT_DISTURB_FIELD_NUMBER:I = 0x6

.field public static final EMAIL_NOTIFICATION_ADDRESS_FIELD_NUMBER:I = 0x2

.field public static final EMAIL_NOTIFICATION_ENABLED_FIELD_NUMBER:I = 0xc

.field public static final FORWARDING_PHONE_FIELD_NUMBER:I = 0x7

.field public static final FORWARDING_PHONE_NAME_FIELD_NUMBER:I = 0x4

.field public static final GAIA_EMAIL_ADDRESS_FIELD_NUMBER:I = 0x13

.field public static final GREETING_FIELD_NUMBER:I = 0x15

.field public static final MAX_FORWARDING_PHONES_FIELD_NUMBER:I = 0xb

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCREEN_BEHAVIOR_FIELD_NUMBER:I = 0x8

.field public static final SMSVMAILNOTIFICATION_FIELD_NUMBER:I = 0xf

.field public static final SMS_IN_SUBJECT_OF_NOTIFICATION_ENABLED_FIELD_NUMBER:I = 0xe

.field public static final SMS_NOTIFICATION_PHONE_NAME_FIELD_NUMBER:I = 0x3

.field public static final SMS_TO_EMAIL_ENABLED_FIELD_NUMBER:I = 0xd

.field public static final TEMPORARY_FORWARDING_PHONE_FIELD_NUMBER:I = 0x5

.field public static final TEMPORARY_FORWARDING_PHONE_FORMATTED_FIELD_NUMBER:I = 0xa

.field public static final USE_DID_AS_CALLER_ID_FIELD_NUMBER:I = 0x9

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSettings;


# instance fields
.field private bitField0_:I

.field private callPresentationEnabled_:Z

.field private clearSmsVmailNotifications_:Z

.field private defaultGreetingId_:I

.field private doNotDisturb_:Z

.field private emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

.field private emailNotificationEnabled_:Z

.field private forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

.field private forwardingPhone_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;",
            ">;"
        }
    .end annotation
.end field

.field private gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

.field private greeting_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiGreeting;",
            ">;"
        }
    .end annotation
.end field

.field private maxForwardingPhones_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private screenBehavior_:I

.field private smsInSubjectOfNotificationEnabled_:Z

.field private smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

.field private smsToEmailEnabled_:Z

.field private smsVmailNotification_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;",
            ">;"
        }
    .end annotation
.end field

.field private temporaryForwardingPhoneFormatted_:Ljava/lang/Object;

.field private temporaryForwardingPhone_:Ljava/lang/Object;

.field private useDidAsCallerId_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10701
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->PARSER:Lcom/google/protobuf/Parser;

    .line 12963
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .line 12964
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->initFields()V

    .line 12965
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 15
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v7, 0x1

    .line 10534
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11530
    const/4 v4, -0x1

    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->memoizedIsInitialized:B

    .line 11619
    const/4 v4, -0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->memoizedSerializedSize:I

    .line 10535
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->initFields()V

    .line 10536
    const/4 v2, 0x0

    .line 10538
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 10539
    .local v0, done:Z
    :cond_15
    :goto_15
    if-nez v0, :cond_1f8

    .line 10540
    :try_start_17
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 10541
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_258

    .line 10546
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_15

    .line 10548
    const/4 v0, 0x1

    goto :goto_15

    .line 10543
    :sswitch_26
    const/4 v0, 0x1

    .line 10544
    goto :goto_15

    .line 10553
    :sswitch_28
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v8, :cond_35

    .line 10554
    new-instance v4, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    .line 10555
    or-int/lit8 v2, v2, 0x1

    .line 10557
    :cond_35
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_3e
    .catchall {:try_start_17 .. :try_end_3e} :catchall_45
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_17 .. :try_end_3e} :catch_3f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_3e} :catch_be

    goto :goto_15

    .line 10671
    .end local v3           #tag:I
    :catch_3f
    move-exception v1

    .line 10672
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_40
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_45

    .line 10677
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_45
    move-exception v4

    and-int/lit8 v5, v2, 0x1

    if-ne v5, v8, :cond_53

    .line 10678
    new-instance v5, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v5, v6}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    .line 10680
    :cond_53
    and-int/lit8 v5, v2, 0x2

    if-ne v5, v9, :cond_60

    .line 10681
    new-instance v5, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v5, v6}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    .line 10683
    :cond_60
    and-int/lit8 v5, v2, 0x4

    if-ne v5, v10, :cond_6d

    .line 10684
    new-instance v5, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v5, v6}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    .line 10686
    :cond_6d
    and-int/lit8 v5, v2, 0x20

    if-ne v5, v11, :cond_79

    .line 10687
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhone_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhone_:Ljava/util/List;

    .line 10689
    :cond_79
    and-int/lit16 v5, v2, 0x2000

    const/16 v6, 0x2000

    if-ne v5, v6, :cond_87

    .line 10690
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsVmailNotification_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsVmailNotification_:Ljava/util/List;

    .line 10692
    :cond_87
    and-int/lit16 v5, v2, 0x4000

    const/16 v6, 0x4000

    if-ne v5, v6, :cond_96

    .line 10693
    new-instance v5, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v5, v6}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    .line 10695
    :cond_96
    and-int v5, v2, v7

    if-ne v5, v7, :cond_a2

    .line 10696
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->greeting_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->greeting_:Ljava/util/List;

    .line 10698
    :cond_a2
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->makeExtensionsImmutable()V

    throw v4

    .line 10561
    .restart local v3       #tag:I
    :sswitch_a6
    and-int/lit8 v4, v2, 0x2

    if-eq v4, v9, :cond_b3

    .line 10562
    :try_start_aa
    new-instance v4, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    .line 10563
    or-int/lit8 v2, v2, 0x2

    .line 10565
    :cond_b3
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_bc
    .catchall {:try_start_aa .. :try_end_bc} :catchall_45
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_aa .. :try_end_bc} :catch_3f
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_bc} :catch_be

    goto/16 :goto_15

    .line 10673
    .end local v3           #tag:I
    :catch_be
    move-exception v1

    .line 10674
    .local v1, e:Ljava/io/IOException;
    :try_start_bf
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_cd
    .catchall {:try_start_bf .. :try_end_cd} :catchall_45

    .line 10569
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_cd
    and-int/lit8 v4, v2, 0x4

    if-eq v4, v10, :cond_da

    .line 10570
    :try_start_d1
    new-instance v4, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    .line 10571
    or-int/lit8 v2, v2, 0x4

    .line 10573
    :cond_da
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_15

    .line 10577
    :sswitch_e5
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    .line 10578
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->temporaryForwardingPhone_:Ljava/lang/Object;

    goto/16 :goto_15

    .line 10582
    :sswitch_f3
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    .line 10583
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->doNotDisturb_:Z

    goto/16 :goto_15

    .line 10587
    :sswitch_101
    and-int/lit8 v4, v2, 0x20

    if-eq v4, v11, :cond_10e

    .line 10588
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhone_:Ljava/util/List;

    .line 10589
    or-int/lit8 v2, v2, 0x20

    .line 10591
    :cond_10e
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhone_:Ljava/util/List;

    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 10595
    :sswitch_11b
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    .line 10596
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->screenBehavior_:I

    goto/16 :goto_15

    .line 10600
    :sswitch_129
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    .line 10601
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->useDidAsCallerId_:Z

    goto/16 :goto_15

    .line 10605
    :sswitch_137
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    .line 10606
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->temporaryForwardingPhoneFormatted_:Ljava/lang/Object;

    goto/16 :goto_15

    .line 10610
    :sswitch_145
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    .line 10611
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->maxForwardingPhones_:I

    goto/16 :goto_15

    .line 10615
    :sswitch_153
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    .line 10616
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationEnabled_:Z

    goto/16 :goto_15

    .line 10620
    :sswitch_161
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    .line 10621
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsToEmailEnabled_:Z

    goto/16 :goto_15

    .line 10625
    :sswitch_16f
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    .line 10626
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsInSubjectOfNotificationEnabled_:Z

    goto/16 :goto_15

    .line 10630
    :sswitch_17d
    and-int/lit16 v4, v2, 0x2000

    const/16 v5, 0x2000

    if-eq v4, v5, :cond_18c

    .line 10631
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsVmailNotification_:Ljava/util/List;

    .line 10632
    or-int/lit16 v2, v2, 0x2000

    .line 10634
    :cond_18c
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsVmailNotification_:Ljava/util/List;

    const/16 v5, 0xf

    sget-object v6, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 10639
    :sswitch_19b
    and-int/lit16 v4, v2, 0x4000

    const/16 v5, 0x4000

    if-eq v4, v5, :cond_1aa

    .line 10640
    new-instance v4, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    .line 10641
    or-int/lit16 v2, v2, 0x4000

    .line 10643
    :cond_1aa
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_15

    .line 10647
    :sswitch_1b5
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    .line 10648
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->callPresentationEnabled_:Z

    goto/16 :goto_15

    .line 10652
    :sswitch_1c3
    and-int v4, v2, v7

    if-eq v4, v7, :cond_1cf

    .line 10653
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->greeting_:Ljava/util/List;

    .line 10654
    or-int/2addr v2, v7

    .line 10656
    :cond_1cf
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->greeting_:Ljava/util/List;

    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 10660
    :sswitch_1dc
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    .line 10661
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->defaultGreetingId_:I

    goto/16 :goto_15

    .line 10665
    :sswitch_1ea
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    .line 10666
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->clearSmsVmailNotifications_:Z
    :try_end_1f6
    .catchall {:try_start_d1 .. :try_end_1f6} :catchall_45
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_d1 .. :try_end_1f6} :catch_3f
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_1f6} :catch_be

    goto/16 :goto_15

    .line 10677
    .end local v3           #tag:I
    :cond_1f8
    and-int/lit8 v4, v2, 0x1

    if-ne v4, v8, :cond_205

    .line 10678
    new-instance v4, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v4, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    .line 10680
    :cond_205
    and-int/lit8 v4, v2, 0x2

    if-ne v4, v9, :cond_212

    .line 10681
    new-instance v4, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v4, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    .line 10683
    :cond_212
    and-int/lit8 v4, v2, 0x4

    if-ne v4, v10, :cond_21f

    .line 10684
    new-instance v4, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v4, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    .line 10686
    :cond_21f
    and-int/lit8 v4, v2, 0x20

    if-ne v4, v11, :cond_22b

    .line 10687
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhone_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhone_:Ljava/util/List;

    .line 10689
    :cond_22b
    and-int/lit16 v4, v2, 0x2000

    const/16 v5, 0x2000

    if-ne v4, v5, :cond_239

    .line 10690
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsVmailNotification_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsVmailNotification_:Ljava/util/List;

    .line 10692
    :cond_239
    and-int/lit16 v4, v2, 0x4000

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_248

    .line 10693
    new-instance v4, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v4, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    .line 10695
    :cond_248
    and-int v4, v2, v7

    if-ne v4, v7, :cond_254

    .line 10696
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->greeting_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->greeting_:Ljava/util/List;

    .line 10698
    :cond_254
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->makeExtensionsImmutable()V

    .line 10700
    return-void

    .line 10541
    :sswitch_data_258
    .sparse-switch
        0x0 -> :sswitch_26
        0x12 -> :sswitch_28
        0x1a -> :sswitch_a6
        0x22 -> :sswitch_cd
        0x2a -> :sswitch_e5
        0x30 -> :sswitch_f3
        0x3a -> :sswitch_101
        0x40 -> :sswitch_11b
        0x48 -> :sswitch_129
        0x52 -> :sswitch_137
        0x58 -> :sswitch_145
        0x60 -> :sswitch_153
        0x68 -> :sswitch_161
        0x70 -> :sswitch_16f
        0x7b -> :sswitch_17d
        0x9a -> :sswitch_19b
        0xa0 -> :sswitch_1b5
        0xaa -> :sswitch_1c3
        0xb0 -> :sswitch_1dc
        0xb8 -> :sswitch_1ea
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10512
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSettings;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10517
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 11530
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->memoizedIsInitialized:B

    .line 11619
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->memoizedSerializedSize:I

    .line 10519
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10512
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 10520
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11530
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->memoizedIsInitialized:B

    .line 11619
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->memoizedSerializedSize:I

    .line 10520
    return-void
.end method

.method static synthetic access$13400(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10512
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$13402(Lcom/google/grandcentral/api2/Api2$ApiSettings;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10512
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$13500(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10512
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$13502(Lcom/google/grandcentral/api2/Api2$ApiSettings;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10512
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$13600(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10512
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$13602(Lcom/google/grandcentral/api2/Api2$ApiSettings;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10512
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$13700(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10512
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->temporaryForwardingPhone_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13702(Lcom/google/grandcentral/api2/Api2$ApiSettings;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10512
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->temporaryForwardingPhone_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13802(Lcom/google/grandcentral/api2/Api2$ApiSettings;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10512
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->doNotDisturb_:Z

    return p1
.end method

.method static synthetic access$13900(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10512
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhone_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13902(Lcom/google/grandcentral/api2/Api2$ApiSettings;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10512
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhone_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$14002(Lcom/google/grandcentral/api2/Api2$ApiSettings;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10512
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->screenBehavior_:I

    return p1
.end method

.method static synthetic access$14102(Lcom/google/grandcentral/api2/Api2$ApiSettings;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10512
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->useDidAsCallerId_:Z

    return p1
.end method

.method static synthetic access$14200(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10512
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->temporaryForwardingPhoneFormatted_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14202(Lcom/google/grandcentral/api2/Api2$ApiSettings;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10512
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->temporaryForwardingPhoneFormatted_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14302(Lcom/google/grandcentral/api2/Api2$ApiSettings;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10512
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->maxForwardingPhones_:I

    return p1
.end method

.method static synthetic access$14402(Lcom/google/grandcentral/api2/Api2$ApiSettings;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10512
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationEnabled_:Z

    return p1
.end method

.method static synthetic access$14502(Lcom/google/grandcentral/api2/Api2$ApiSettings;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10512
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsToEmailEnabled_:Z

    return p1
.end method

.method static synthetic access$14602(Lcom/google/grandcentral/api2/Api2$ApiSettings;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10512
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsInSubjectOfNotificationEnabled_:Z

    return p1
.end method

.method static synthetic access$14700(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10512
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsVmailNotification_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$14702(Lcom/google/grandcentral/api2/Api2$ApiSettings;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10512
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsVmailNotification_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$14800(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10512
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$14802(Lcom/google/grandcentral/api2/Api2$ApiSettings;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10512
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$14902(Lcom/google/grandcentral/api2/Api2$ApiSettings;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10512
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->callPresentationEnabled_:Z

    return p1
.end method

.method static synthetic access$15000(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10512
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->greeting_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$15002(Lcom/google/grandcentral/api2/Api2$ApiSettings;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10512
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->greeting_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$15102(Lcom/google/grandcentral/api2/Api2$ApiSettings;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10512
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->defaultGreetingId_:I

    return p1
.end method

.method static synthetic access$15202(Lcom/google/grandcentral/api2/Api2$ApiSettings;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10512
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->clearSmsVmailNotifications_:Z

    return p1
.end method

.method static synthetic access$15302(Lcom/google/grandcentral/api2/Api2$ApiSettings;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10512
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .registers 1

    .prologue
    .line 10524
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 11510
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    .line 11511
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    .line 11512
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    .line 11513
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->temporaryForwardingPhone_:Ljava/lang/Object;

    .line 11514
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->doNotDisturb_:Z

    .line 11515
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhone_:Ljava/util/List;

    .line 11516
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->screenBehavior_:I

    .line 11517
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->useDidAsCallerId_:Z

    .line 11518
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->temporaryForwardingPhoneFormatted_:Ljava/lang/Object;

    .line 11519
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->maxForwardingPhones_:I

    .line 11520
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationEnabled_:Z

    .line 11521
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsToEmailEnabled_:Z

    .line 11522
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsInSubjectOfNotificationEnabled_:Z

    .line 11523
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsVmailNotification_:Ljava/util/List;

    .line 11524
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    .line 11525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->callPresentationEnabled_:Z

    .line 11526
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->greeting_:Ljava/util/List;

    .line 11527
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->defaultGreetingId_:I

    .line 11528
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->clearSmsVmailNotifications_:Z

    .line 11529
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 1

    .prologue
    .line 11784
    #calls: Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->access$13200()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 11787
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11764
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11770
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11734
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11740
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11775
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11781
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11754
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11760
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11744
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11750
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;

    return-object v0
.end method


# virtual methods
.method public getCallPresentationEnabled()Z
    .registers 2

    .prologue
    .line 11465
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->callPresentationEnabled_:Z

    return v0
.end method

.method public getClearSmsVmailNotifications()Z
    .registers 2

    .prologue
    .line 11506
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->clearSmsVmailNotifications_:Z

    return v0
.end method

.method public getDefaultGreetingId()I
    .registers 2

    .prologue
    .line 11496
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->defaultGreetingId_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .registers 2

    .prologue
    .line 10528
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10512
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    return-object v0
.end method

.method public getDoNotDisturb()Z
    .registers 2

    .prologue
    .line 11302
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->doNotDisturb_:Z

    return v0
.end method

.method public getEmailNotificationAddress(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 11219
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEmailNotificationAddressBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 11223
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEmailNotificationAddressCount()I
    .registers 2

    .prologue
    .line 11216
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getEmailNotificationAddressList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11213
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getEmailNotificationEnabled()Z
    .registers 2

    .prologue
    .line 11396
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationEnabled_:Z

    return v0
.end method

.method public getForwardingPhone(I)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
    .registers 3
    .parameter "index"

    .prologue
    .line 11319
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhone_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    return-object v0
.end method

.method public getForwardingPhoneCount()I
    .registers 2

    .prologue
    .line 11316
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhone_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getForwardingPhoneList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11309
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhone_:Ljava/util/List;

    return-object v0
.end method

.method public getForwardingPhoneName(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 11255
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getForwardingPhoneNameBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 11259
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getForwardingPhoneNameCount()I
    .registers 2

    .prologue
    .line 11252
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getForwardingPhoneNameList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11249
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getForwardingPhoneOrBuilder(I)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhoneOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 11323
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhone_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhoneOrBuilder;

    return-object v0
.end method

.method public getForwardingPhoneOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/grandcentral/api2/Api2$ApiForwardingPhoneOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11313
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhone_:Ljava/util/List;

    return-object v0
.end method

.method public getGaiaEmailAddress(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 11451
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGaiaEmailAddressBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 11455
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGaiaEmailAddressCount()I
    .registers 2

    .prologue
    .line 11448
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getGaiaEmailAddressList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11445
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getGreeting(I)Lcom/google/grandcentral/api2/Api2$ApiGreeting;
    .registers 3
    .parameter "index"

    .prologue
    .line 11482
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->greeting_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    return-object v0
.end method

.method public getGreetingCount()I
    .registers 2

    .prologue
    .line 11479
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->greeting_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGreetingList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiGreeting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11472
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->greeting_:Ljava/util/List;

    return-object v0
.end method

.method public getGreetingOrBuilder(I)Lcom/google/grandcentral/api2/Api2$ApiGreetingOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 11486
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->greeting_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGreetingOrBuilder;

    return-object v0
.end method

.method public getGreetingOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/grandcentral/api2/Api2$ApiGreetingOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11476
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->greeting_:Ljava/util/List;

    return-object v0
.end method

.method public getMaxForwardingPhones()I
    .registers 2

    .prologue
    .line 11386
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->maxForwardingPhones_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10713
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getScreenBehavior()I
    .registers 2

    .prologue
    .line 11333
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->screenBehavior_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    .line 11621
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->memoizedSerializedSize:I

    .line 11622
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    move v3, v2

    .line 11722
    .end local v2           #size:I
    .local v3, size:I
    :goto_8
    return v3

    .line 11624
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_9
    const/4 v2, 0x0

    .line 11626
    const/4 v0, 0x0

    .line 11627
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_22

    .line 11628
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 11627
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 11631
    :cond_22
    add-int/2addr v2, v0

    .line 11632
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getEmailNotificationAddressList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 11635
    const/4 v0, 0x0

    .line 11636
    const/4 v1, 0x0

    :goto_30
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_46

    .line 11637
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 11636
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 11640
    :cond_46
    add-int/2addr v2, v0

    .line 11641
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getSmsNotificationPhoneNameList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 11644
    const/4 v0, 0x0

    .line 11645
    const/4 v1, 0x0

    :goto_54
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6a

    .line 11646
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 11645
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 11649
    :cond_6a
    add-int/2addr v2, v0

    .line 11650
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getForwardingPhoneNameList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 11652
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_87

    .line 11653
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getTemporaryForwardingPhoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11656
    :cond_87
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_96

    .line 11657
    const/4 v4, 0x6

    iget-boolean v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->doNotDisturb_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 11660
    :cond_96
    const/4 v1, 0x0

    :goto_97
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhone_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b0

    .line 11661
    const/4 v5, 0x7

    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhone_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11660
    add-int/lit8 v1, v1, 0x1

    goto :goto_97

    .line 11664
    :cond_b0
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_be

    .line 11665
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->screenBehavior_:I

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 11668
    :cond_be
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v6, :cond_cd

    .line 11669
    const/16 v4, 0x9

    iget-boolean v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->useDidAsCallerId_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 11672
    :cond_cd
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_e0

    .line 11673
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getTemporaryForwardingPhoneFormattedBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11676
    :cond_e0
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_f1

    .line 11677
    const/16 v4, 0xb

    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->maxForwardingPhones_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 11680
    :cond_f1
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_102

    .line 11681
    const/16 v4, 0xc

    iget-boolean v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 11684
    :cond_102
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_113

    .line 11685
    const/16 v4, 0xd

    iget-boolean v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsToEmailEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 11688
    :cond_113
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_124

    .line 11689
    const/16 v4, 0xe

    iget-boolean v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsInSubjectOfNotificationEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 11692
    :cond_124
    const/4 v1, 0x0

    :goto_125
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsVmailNotification_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_13f

    .line 11693
    const/16 v5, 0xf

    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsVmailNotification_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11692
    add-int/lit8 v1, v1, 0x1

    goto :goto_125

    .line 11697
    :cond_13f
    const/4 v0, 0x0

    .line 11698
    const/4 v1, 0x0

    :goto_141
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_157

    .line 11699
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 11698
    add-int/lit8 v1, v1, 0x1

    goto :goto_141

    .line 11702
    :cond_157
    add-int/2addr v2, v0

    .line 11703
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getGaiaEmailAddressList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 11705
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_174

    .line 11706
    const/16 v4, 0x14

    iget-boolean v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->callPresentationEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 11709
    :cond_174
    const/4 v1, 0x0

    :goto_175
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->greeting_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_18f

    .line 11710
    const/16 v5, 0x15

    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->greeting_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11709
    add-int/lit8 v1, v1, 0x1

    goto :goto_175

    .line 11713
    :cond_18f
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_1a0

    .line 11714
    const/16 v4, 0x16

    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->defaultGreetingId_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 11717
    :cond_1a0
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    const/16 v5, 0x800

    if-ne v4, v5, :cond_1b1

    .line 11718
    const/16 v4, 0x17

    iget-boolean v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->clearSmsVmailNotifications_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 11721
    :cond_1b1
    iput v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->memoizedSerializedSize:I

    move v3, v2

    .line 11722
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_8
.end method

.method public getSmsInSubjectOfNotificationEnabled()Z
    .registers 2

    .prologue
    .line 11416
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsInSubjectOfNotificationEnabled_:Z

    return v0
.end method

.method public getSmsNotificationPhoneName(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 11237
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSmsNotificationPhoneNameBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 11241
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSmsNotificationPhoneNameCount()I
    .registers 2

    .prologue
    .line 11234
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getSmsNotificationPhoneNameList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11231
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getSmsToEmailEnabled()Z
    .registers 2

    .prologue
    .line 11406
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsToEmailEnabled_:Z

    return v0
.end method

.method public getSmsVmailNotification(I)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
    .registers 3
    .parameter "index"

    .prologue
    .line 11433
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsVmailNotification_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    return-object v0
.end method

.method public getSmsVmailNotificationCount()I
    .registers 2

    .prologue
    .line 11430
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsVmailNotification_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSmsVmailNotificationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11423
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsVmailNotification_:Ljava/util/List;

    return-object v0
.end method

.method public getSmsVmailNotificationOrBuilder(I)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotificationOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 11437
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsVmailNotification_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotificationOrBuilder;

    return-object v0
.end method

.method public getSmsVmailNotificationOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotificationOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11427
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsVmailNotification_:Ljava/util/List;

    return-object v0
.end method

.method public getTemporaryForwardingPhone()Ljava/lang/String;
    .registers 5

    .prologue
    .line 11269
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->temporaryForwardingPhone_:Ljava/lang/Object;

    .line 11270
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 11271
    check-cast v1, Ljava/lang/String;

    .line 11279
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 11273
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11275
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11276
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 11277
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->temporaryForwardingPhone_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 11279
    goto :goto_8
.end method

.method public getTemporaryForwardingPhoneBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11284
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->temporaryForwardingPhone_:Ljava/lang/Object;

    .line 11285
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 11286
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11288
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->temporaryForwardingPhone_:Ljava/lang/Object;

    .line 11291
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getTemporaryForwardingPhoneFormatted()Ljava/lang/String;
    .registers 5

    .prologue
    .line 11353
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->temporaryForwardingPhoneFormatted_:Ljava/lang/Object;

    .line 11354
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 11355
    check-cast v1, Ljava/lang/String;

    .line 11363
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 11357
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11359
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11360
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 11361
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->temporaryForwardingPhoneFormatted_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 11363
    goto :goto_8
.end method

.method public getTemporaryForwardingPhoneFormattedBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11368
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->temporaryForwardingPhoneFormatted_:Ljava/lang/Object;

    .line 11369
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 11370
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11372
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->temporaryForwardingPhoneFormatted_:Ljava/lang/Object;

    .line 11375
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getUseDidAsCallerId()Z
    .registers 2

    .prologue
    .line 11343
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->useDidAsCallerId_:Z

    return v0
.end method

.method public hasCallPresentationEnabled()Z
    .registers 3

    .prologue
    .line 11462
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasClearSmsVmailNotifications()Z
    .registers 3

    .prologue
    .line 11503
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDefaultGreetingId()Z
    .registers 3

    .prologue
    .line 11493
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDoNotDisturb()Z
    .registers 3

    .prologue
    .line 11299
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasEmailNotificationEnabled()Z
    .registers 3

    .prologue
    .line 11393
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasMaxForwardingPhones()Z
    .registers 3

    .prologue
    .line 11383
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasScreenBehavior()Z
    .registers 3

    .prologue
    .line 11330
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasSmsInSubjectOfNotificationEnabled()Z
    .registers 3

    .prologue
    .line 11413
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSmsToEmailEnabled()Z
    .registers 3

    .prologue
    .line 11403
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTemporaryForwardingPhone()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 11266
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTemporaryForwardingPhoneFormatted()Z
    .registers 3

    .prologue
    .line 11350
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasUseDidAsCallerId()Z
    .registers 3

    .prologue
    .line 11340
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 11532
    iget-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->memoizedIsInitialized:B

    .line 11533
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_d

    if-ne v1, v2, :cond_b

    :goto_9
    move v3, v2

    .line 11554
    :goto_a
    return v3

    :cond_b
    move v2, v3

    .line 11533
    goto :goto_9

    .line 11535
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getForwardingPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 11536
    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getForwardingPhone(I)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 11537
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->memoizedIsInitialized:B

    goto :goto_a

    .line 11535
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 11541
    :cond_24
    const/4 v0, 0x0

    :goto_25
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getSmsVmailNotificationCount()I

    move-result v4

    if-ge v0, v4, :cond_3b

    .line 11542
    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getSmsVmailNotification(I)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_38

    .line 11543
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->memoizedIsInitialized:B

    goto :goto_a

    .line 11541
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 11547
    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getGreetingCount()I

    move-result v4

    if-ge v0, v4, :cond_52

    .line 11548
    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getGreeting(I)Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_4f

    .line 11549
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->memoizedIsInitialized:B

    goto :goto_a

    .line 11547
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 11553
    :cond_52
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->memoizedIsInitialized:B

    move v3, v2

    .line 11554
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 2

    .prologue
    .line 11785
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10512
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 2

    .prologue
    .line 11789
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10512
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 11728
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 11559
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getSerializedSize()I

    .line 11560
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 11561
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11560
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 11563
    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 11564
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11563
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 11566
    :cond_32
    const/4 v0, 0x0

    :goto_33
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_47

    .line 11567
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11566
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 11569
    :cond_47
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_56

    .line 11570
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getTemporaryForwardingPhoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11572
    :cond_56
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_62

    .line 11573
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->doNotDisturb_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11575
    :cond_62
    const/4 v0, 0x0

    :goto_63
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhone_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7a

    .line 11576
    const/4 v2, 0x7

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhone_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11575
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 11578
    :cond_7a
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_85

    .line 11579
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->screenBehavior_:I

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 11581
    :cond_85
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_92

    .line 11582
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->useDidAsCallerId_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11584
    :cond_92
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_a3

    .line 11585
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getTemporaryForwardingPhoneFormattedBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11587
    :cond_a3
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_b2

    .line 11588
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->maxForwardingPhones_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11590
    :cond_b2
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_c1

    .line 11591
    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11593
    :cond_c1
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_d0

    .line 11594
    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsToEmailEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11596
    :cond_d0
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_df

    .line 11597
    const/16 v1, 0xe

    iget-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsInSubjectOfNotificationEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11599
    :cond_df
    const/4 v0, 0x0

    :goto_e0
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsVmailNotification_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_f8

    .line 11600
    const/16 v2, 0xf

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsVmailNotification_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 11599
    add-int/lit8 v0, v0, 0x1

    goto :goto_e0

    .line 11602
    :cond_f8
    const/4 v0, 0x0

    :goto_f9
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_10f

    .line 11603
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11602
    add-int/lit8 v0, v0, 0x1

    goto :goto_f9

    .line 11605
    :cond_10f
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_11e

    .line 11606
    const/16 v1, 0x14

    iget-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->callPresentationEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11608
    :cond_11e
    const/4 v0, 0x0

    :goto_11f
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->greeting_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_137

    .line 11609
    const/16 v2, 0x15

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->greeting_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11608
    add-int/lit8 v0, v0, 0x1

    goto :goto_11f

    .line 11611
    :cond_137
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_146

    .line 11612
    const/16 v1, 0x16

    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->defaultGreetingId_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11614
    :cond_146
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_155

    .line 11615
    const/16 v1, 0x17

    iget-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings;->clearSmsVmailNotifications_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11617
    :cond_155
    return-void
.end method
