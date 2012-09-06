.class public final Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmsVmailNotification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;
    }
.end annotation


# static fields
.field public static final ACTIVE_FIELD_NUMBER:I = 0x10

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONE_NUMBER_FIELD_NUMBER:I = 0x11

.field public static final TRUNCATE_MESSAGE_FIELD_NUMBER:I = 0x12

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;


# instance fields
.field private active_:Z

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private phoneNumber_:Ljava/lang/Object;

.field private truncateMessage_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10799
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->PARSER:Lcom/google/protobuf/Parser;

    .line 11200
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    .line 11201
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->initFields()V

    .line 11202
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 10755
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10873
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->memoizedIsInitialized:B

    .line 10904
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->memoizedSerializedSize:I

    .line 10756
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->initFields()V

    .line 10757
    const/4 v2, 0x0

    .line 10759
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 10760
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_61

    .line 10761
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 10762
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_66

    .line 10767
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 10769
    const/4 v0, 0x1

    goto :goto_d

    .line 10764
    :sswitch_1e
    const/4 v0, 0x1

    .line 10765
    goto :goto_d

    .line 10774
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->bitField0_:I

    .line 10775
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->active_:Z
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 10790
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 10791
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 10796
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->makeExtensionsImmutable()V

    throw v4

    .line 10779
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->bitField0_:I

    .line 10780
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->phoneNumber_:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 10792
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 10793
    .local v1, e:Ljava/io/IOException;
    :try_start_46
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_33

    .line 10784
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->bitField0_:I

    .line 10785
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->truncateMessage_:Z
    :try_end_60
    .catchall {:try_start_54 .. :try_end_60} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_60} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_60} :catch_45

    goto :goto_d

    .line 10796
    .end local v3           #tag:I
    :cond_61
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->makeExtensionsImmutable()V

    .line 10798
    return-void

    .line 10762
    nop

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_1e
        0x80 -> :sswitch_20
        0x8a -> :sswitch_38
        0x90 -> :sswitch_54
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
    .line 10733
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10738
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 10873
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->memoizedIsInitialized:B

    .line 10904
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->memoizedSerializedSize:I

    .line 10740
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10733
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 10741
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10873
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->memoizedIsInitialized:B

    .line 10904
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->memoizedSerializedSize:I

    .line 10741
    return-void
.end method

.method static synthetic access$12802(Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10733
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->active_:Z

    return p1
.end method

.method static synthetic access$12900(Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10733
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->phoneNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12902(Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10733
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->phoneNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13002(Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10733
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->truncateMessage_:Z

    return p1
.end method

.method static synthetic access$13102(Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10733
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
    .registers 1

    .prologue
    .line 10745
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 10869
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->active_:Z

    .line 10870
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->phoneNumber_:Ljava/lang/Object;

    .line 10871
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->truncateMessage_:Z

    .line 10872
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;
    .registers 1

    .prologue
    .line 10985
    #calls: Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->access$12600()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 10988
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10965
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10971
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10935
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10941
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10976
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10982
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10955
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10961
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10945
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10951
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    return-object v0
.end method


# virtual methods
.method public getActive()Z
    .registers 2

    .prologue
    .line 10822
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->active_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
    .registers 2

    .prologue
    .line 10749
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10733
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10811
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 10832
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->phoneNumber_:Ljava/lang/Object;

    .line 10833
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 10834
    check-cast v1, Ljava/lang/String;

    .line 10842
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 10836
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10838
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10839
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 10840
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->phoneNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 10842
    goto :goto_8
.end method

.method public getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 10847
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->phoneNumber_:Ljava/lang/Object;

    .line 10848
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 10849
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10851
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->phoneNumber_:Ljava/lang/Object;

    .line 10854
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

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 10906
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->memoizedSerializedSize:I

    .line 10907
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 10923
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 10909
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 10910
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 10911
    const/16 v2, 0x10

    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->active_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 10914
    :cond_18
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    .line 10915
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10918
    :cond_2a
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3a

    .line 10919
    const/16 v2, 0x12

    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->truncateMessage_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 10922
    :cond_3a
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->memoizedSerializedSize:I

    move v1, v0

    .line 10923
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public getTruncateMessage()Z
    .registers 2

    .prologue
    .line 10865
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->truncateMessage_:Z

    return v0
.end method

.method public hasActive()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 10819
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhoneNumber()Z
    .registers 3

    .prologue
    .line 10829
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->bitField0_:I

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

.method public hasTruncateMessage()Z
    .registers 3

    .prologue
    .line 10862
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 10875
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->memoizedIsInitialized:B

    .line 10876
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 10887
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 10876
    goto :goto_9

    .line 10878
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->hasActive()Z

    move-result v3

    if-nez v3, :cond_16

    .line 10879
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->memoizedIsInitialized:B

    move v1, v2

    .line 10880
    goto :goto_9

    .line 10882
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->hasPhoneNumber()Z

    move-result v3

    if-nez v3, :cond_20

    .line 10883
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->memoizedIsInitialized:B

    move v1, v2

    .line 10884
    goto :goto_9

    .line 10886
    :cond_20
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;
    .registers 2

    .prologue
    .line 10986
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10733
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;
    .registers 2

    .prologue
    .line 10990
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10733
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

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
    .line 10929
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10892
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->getSerializedSize()I

    .line 10893
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 10894
    const/16 v0, 0x10

    iget-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->active_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10896
    :cond_11
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 10897
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10899
    :cond_21
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2f

    .line 10900
    const/16 v0, 0x12

    iget-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->truncateMessage_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10902
    :cond_2f
    return-void
.end method
