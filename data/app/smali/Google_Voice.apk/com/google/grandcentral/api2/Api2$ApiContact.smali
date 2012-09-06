.class public final Lcom/google/grandcentral/api2/Api2$ApiContact;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiContactOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiContact"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;,
        Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiContact;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONE_NUMBER_FIELD_NUMBER:I = 0x2

.field public static final PHONE_NUMBER_FORMATTED_FIELD_NUMBER:I = 0x5

.field public static final PHONE_TYPE_FIELD_NUMBER:I = 0x3

.field public static final PHOTO_URL_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiContact;


# instance fields
.field private bitField0_:I

.field private id_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private phoneNumberFormatted_:Ljava/lang/Object;

.field private phoneNumber_:Ljava/lang/Object;

.field private phoneType_:I

.field private photoUrl_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16756
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiContact$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact;->PARSER:Lcom/google/protobuf/Parser;

    .line 17557
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiContact;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiContact;

    .line 17558
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiContact;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->initFields()V

    .line 17559
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

    .line 16697
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 17033
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->memoizedIsInitialized:B

    .line 17065
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->memoizedSerializedSize:I

    .line 16698
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->initFields()V

    .line 16699
    const/4 v2, 0x0

    .line 16701
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 16702
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_88

    .line 16703
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 16704
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_8c

    .line 16709
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiContact;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 16711
    const/4 v0, 0x1

    goto :goto_d

    .line 16706
    :sswitch_1e
    const/4 v0, 0x1

    .line 16707
    goto :goto_d

    .line 16716
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    .line 16717
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->name_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 16747
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 16748
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 16753
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->makeExtensionsImmutable()V

    throw v4

    .line 16721
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    .line 16722
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneNumber_:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 16749
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 16750
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

    .line 16726
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    .line 16727
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneType_:I

    goto :goto_d

    .line 16731
    :sswitch_61
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    .line 16732
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->id_:J

    goto :goto_d

    .line 16736
    :sswitch_6e
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    .line 16737
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneNumberFormatted_:Ljava/lang/Object;

    goto :goto_d

    .line 16741
    :sswitch_7b
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    .line 16742
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->photoUrl_:Ljava/lang/Object;
    :try_end_87
    .catchall {:try_start_54 .. :try_end_87} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_87} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_87} :catch_45

    goto :goto_d

    .line 16753
    .end local v3           #tag:I
    :cond_88
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->makeExtensionsImmutable()V

    .line 16755
    return-void

    .line 16704
    :sswitch_data_8c
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_38
        0x18 -> :sswitch_54
        0x20 -> :sswitch_61
        0x2a -> :sswitch_6e
        0x32 -> :sswitch_7b
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
    .line 16675
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiContact;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 16680
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 17033
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->memoizedIsInitialized:B

    .line 17065
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->memoizedSerializedSize:I

    .line 16682
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16675
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiContact;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 16683
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 17033
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->memoizedIsInitialized:B

    .line 17065
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->memoizedSerializedSize:I

    .line 16683
    return-void
.end method

.method static synthetic access$20500(Lcom/google/grandcentral/api2/Api2$ApiContact;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16675
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$20502(Lcom/google/grandcentral/api2/Api2$ApiContact;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16675
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20600(Lcom/google/grandcentral/api2/Api2$ApiContact;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16675
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$20602(Lcom/google/grandcentral/api2/Api2$ApiContact;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16675
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20702(Lcom/google/grandcentral/api2/Api2$ApiContact;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16675
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneType_:I

    return p1
.end method

.method static synthetic access$20802(Lcom/google/grandcentral/api2/Api2$ApiContact;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16675
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->id_:J

    return-wide p1
.end method

.method static synthetic access$20900(Lcom/google/grandcentral/api2/Api2$ApiContact;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16675
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneNumberFormatted_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$20902(Lcom/google/grandcentral/api2/Api2$ApiContact;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16675
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneNumberFormatted_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21000(Lcom/google/grandcentral/api2/Api2$ApiContact;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16675
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->photoUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$21002(Lcom/google/grandcentral/api2/Api2$ApiContact;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16675
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->photoUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21102(Lcom/google/grandcentral/api2/Api2$ApiContact;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16675
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiContact;
    .registers 1

    .prologue
    .line 16687
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiContact;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 17026
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->name_:Ljava/lang/Object;

    .line 17027
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneNumber_:Ljava/lang/Object;

    .line 17028
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneType_:I

    .line 17029
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->id_:J

    .line 17030
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 17031
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->photoUrl_:Ljava/lang/Object;

    .line 17032
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 1

    .prologue
    .line 17158
    #calls: Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->access$20300()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiContact;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 17161
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiContact;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiContact;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiContact;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17138
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiContact;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiContact;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17144
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiContact;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiContact;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17108
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiContact;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiContact;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17114
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiContact;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiContact;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17149
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiContact;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiContact;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17155
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiContact;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiContact;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17128
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiContact;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiContact;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17134
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiContact;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiContact;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17118
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiContact;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiContact;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17124
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiContact;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiContact;
    .registers 2

    .prologue
    .line 16691
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiContact;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16675
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 16956
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->id_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 16880
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->name_:Ljava/lang/Object;

    .line 16881
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 16882
    check-cast v1, Ljava/lang/String;

    .line 16890
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 16884
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 16886
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 16887
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 16888
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 16890
    goto :goto_8
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 16895
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->name_:Ljava/lang/Object;

    .line 16896
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 16897
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16899
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->name_:Ljava/lang/Object;

    .line 16902
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
            "Lcom/google/grandcentral/api2/Api2$ApiContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16768
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 16913
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneNumber_:Ljava/lang/Object;

    .line 16914
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 16915
    check-cast v1, Ljava/lang/String;

    .line 16923
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 16917
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 16919
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 16920
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 16921
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 16923
    goto :goto_8
.end method

.method public getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 16928
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneNumber_:Ljava/lang/Object;

    .line 16929
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 16930
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16932
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneNumber_:Ljava/lang/Object;

    .line 16935
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

.method public getPhoneNumberFormatted()Ljava/lang/String;
    .registers 5

    .prologue
    .line 16966
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 16967
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 16968
    check-cast v1, Ljava/lang/String;

    .line 16976
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 16970
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 16972
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 16973
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 16974
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneNumberFormatted_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 16976
    goto :goto_8
.end method

.method public getPhoneNumberFormattedBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 16981
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 16982
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 16983
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16985
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 16988
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

.method public getPhoneType()I
    .registers 2

    .prologue
    .line 16946
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneType_:I

    return v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 16999
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->photoUrl_:Ljava/lang/Object;

    .line 17000
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 17001
    check-cast v1, Ljava/lang/String;

    .line 17009
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 17003
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17005
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17006
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 17007
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->photoUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 17009
    goto :goto_8
.end method

.method public getPhotoUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 17014
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->photoUrl_:Ljava/lang/Object;

    .line 17015
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 17016
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17018
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->photoUrl_:Ljava/lang/Object;

    .line 17021
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
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 17067
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->memoizedSerializedSize:I

    .line 17068
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 17096
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 17070
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 17071
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 17072
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 17075
    :cond_1a
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 17076
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 17079
    :cond_29
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 17080
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneType_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 17083
    :cond_37
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 17084
    iget-wide v2, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->id_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 17087
    :cond_46
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_58

    .line 17088
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getPhoneNumberFormattedBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 17091
    :cond_58
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6a

    .line 17092
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getPhotoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 17095
    :cond_6a
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->memoizedSerializedSize:I

    move v1, v0

    .line 17096
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasId()Z
    .registers 3

    .prologue
    .line 16953
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 16877
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

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
    .line 16910
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

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

.method public hasPhoneNumberFormatted()Z
    .registers 3

    .prologue
    .line 16963
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

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

.method public hasPhoneType()Z
    .registers 3

    .prologue
    .line 16943
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

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

.method public hasPhotoUrl()Z
    .registers 3

    .prologue
    .line 16996
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 17035
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->memoizedIsInitialized:B

    .line 17036
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 17039
    :goto_8
    return v1

    .line 17036
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 17038
    :cond_b
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 2

    .prologue
    .line 17159
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiContact;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16675
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 2

    .prologue
    .line 17163
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiContact;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16675
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

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
    .line 17102
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 17044
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getSerializedSize()I

    .line 17045
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 17046
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17048
    :cond_13
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 17049
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17051
    :cond_20
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 17052
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 17054
    :cond_2c
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 17055
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->id_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 17057
    :cond_39
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_49

    .line 17058
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getPhoneNumberFormattedBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17060
    :cond_49
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_59

    .line 17061
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getPhotoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17063
    :cond_59
    return-void
.end method
