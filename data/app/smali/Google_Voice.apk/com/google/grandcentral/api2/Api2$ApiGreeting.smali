.class public final Lcom/google/grandcentral/api2/Api2$ApiGreeting;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiGreetingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiGreeting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiGreeting;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGreeting;


# instance fields
.field private bitField0_:I

.field private id_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10059
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->PARSER:Lcom/google/protobuf/Parser;

    .line 10404
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    .line 10405
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->initFields()V

    .line 10406
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

    .line 10020
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10122
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->memoizedIsInitialized:B

    .line 10146
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->memoizedSerializedSize:I

    .line 10021
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->initFields()V

    .line 10022
    const/4 v2, 0x0

    .line 10024
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 10025
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_54

    .line 10026
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 10027
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_58

    .line 10032
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 10034
    const/4 v0, 0x1

    goto :goto_d

    .line 10029
    :sswitch_1e
    const/4 v0, 0x1

    .line 10030
    goto :goto_d

    .line 10039
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->bitField0_:I

    .line 10040
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->id_:I
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 10050
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 10051
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 10056
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->makeExtensionsImmutable()V

    throw v4

    .line 10044
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->bitField0_:I

    .line 10045
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->name_:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 10052
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 10053
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

    .line 10056
    .end local v1           #e:Ljava/io/IOException;
    :cond_54
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->makeExtensionsImmutable()V

    .line 10058
    return-void

    .line 10027
    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_1e
        0x8 -> :sswitch_20
        0x12 -> :sswitch_38
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
    .line 9998
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10003
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 10122
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->memoizedIsInitialized:B

    .line 10146
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->memoizedSerializedSize:I

    .line 10005
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9998
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 10006
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10122
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->memoizedIsInitialized:B

    .line 10146
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->memoizedSerializedSize:I

    .line 10006
    return-void
.end method

.method static synthetic access$12102(Lcom/google/grandcentral/api2/Api2$ApiGreeting;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9998
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->id_:I

    return p1
.end method

.method static synthetic access$12200(Lcom/google/grandcentral/api2/Api2$ApiGreeting;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9998
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12202(Lcom/google/grandcentral/api2/Api2$ApiGreeting;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9998
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12302(Lcom/google/grandcentral/api2/Api2$ApiGreeting;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9998
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGreeting;
    .registers 1

    .prologue
    .line 10010
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 10119
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->id_:I

    .line 10120
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->name_:Ljava/lang/Object;

    .line 10121
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;
    .registers 1

    .prologue
    .line 10223
    #calls: Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->access$11900()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiGreeting;)Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 10226
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGreeting;)Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiGreeting;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10203
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGreeting;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10209
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGreeting;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10173
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGreeting;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10179
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiGreeting;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10214
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGreeting;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10220
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiGreeting;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10193
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGreeting;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10199
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiGreeting;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10183
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGreeting;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10189
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGreeting;
    .registers 2

    .prologue
    .line 10014
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9998
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 10082
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->id_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 10092
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->name_:Ljava/lang/Object;

    .line 10093
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 10094
    check-cast v1, Ljava/lang/String;

    .line 10102
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 10096
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10098
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10099
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 10100
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 10102
    goto :goto_8
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 10107
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->name_:Ljava/lang/Object;

    .line 10108
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 10109
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10111
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->name_:Ljava/lang/Object;

    .line 10114
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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiGreeting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10071
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 10148
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->memoizedSerializedSize:I

    .line 10149
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 10161
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 10151
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 10152
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 10153
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->id_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 10156
    :cond_17
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 10157
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10160
    :cond_26
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->memoizedSerializedSize:I

    move v1, v0

    .line 10161
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 10079
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasName()Z
    .registers 3

    .prologue
    .line 10089
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 10124
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->memoizedIsInitialized:B

    .line 10125
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 10132
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 10125
    goto :goto_9

    .line 10127
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->hasId()Z

    move-result v3

    if-nez v3, :cond_16

    .line 10128
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->memoizedIsInitialized:B

    move v1, v2

    .line 10129
    goto :goto_9

    .line 10131
    :cond_16
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;
    .registers 2

    .prologue
    .line 10224
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9998
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;
    .registers 2

    .prologue
    .line 10228
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiGreeting;)Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9998
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

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
    .line 10167
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 10137
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->getSerializedSize()I

    .line 10138
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 10139
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->id_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10141
    :cond_10
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 10142
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10144
    :cond_1d
    return-void
.end method
