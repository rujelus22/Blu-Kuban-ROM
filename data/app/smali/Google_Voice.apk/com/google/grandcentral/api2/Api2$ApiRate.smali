.class public final Lcom/google/grandcentral/api2/Api2$ApiRate;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiRateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiRate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    }
.end annotation


# static fields
.field public static final CALL_RATE_FIELD_NUMBER:I = 0x7

.field public static final COUNTRY_NAME_FIELD_NUMBER:I = 0x4

.field public static final DISPLAYABLE_CALL_RATE_FIELD_NUMBER:I = 0x2

.field public static final DISPLAYABLE_SMS_RATE_FIELD_NUMBER:I = 0x3

.field public static final NORMALIZED_NUMBER_FIELD_NUMBER:I = 0x5

.field public static final ORIGINAL_NUMBER_FIELD_NUMBER:I = 0x6

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiRate;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_CODE_FIELD_NUMBER:I = 0x1

.field public static final SMS_RATE_FIELD_NUMBER:I = 0x8

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiRate;


# instance fields
.field private bitField0_:I

.field private callRate_:I

.field private countryName_:Ljava/lang/Object;

.field private displayableCallRate_:Ljava/lang/Object;

.field private displayableSmsRate_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private normalizedNumber_:Ljava/lang/Object;

.field private originalNumber_:Ljava/lang/Object;

.field private responseCode_:I

.field private smsRate_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32760
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiRate$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiRate$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiRate;->PARSER:Lcom/google/protobuf/Parser;

    .line 33637
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiRate;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiRate;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiRate;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiRate;

    .line 33638
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRate;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiRate;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->initFields()V

    .line 33639
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

    .line 32691
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 32981
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->memoizedIsInitialized:B

    .line 33031
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->memoizedSerializedSize:I

    .line 32692
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->initFields()V

    .line 32693
    const/4 v2, 0x0

    .line 32695
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 32696
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_a4

    .line 32697
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 32698
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_a8

    .line 32703
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiRate;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 32705
    const/4 v0, 0x1

    goto :goto_d

    .line 32700
    :sswitch_1e
    const/4 v0, 0x1

    .line 32701
    goto :goto_d

    .line 32710
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    .line 32711
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->responseCode_:I
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 32751
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 32752
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 32757
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->makeExtensionsImmutable()V

    throw v4

    .line 32715
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    .line 32716
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->displayableCallRate_:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 32753
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 32754
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

    .line 32720
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    .line 32721
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->displayableSmsRate_:Ljava/lang/Object;

    goto :goto_d

    .line 32725
    :sswitch_61
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    .line 32726
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->countryName_:Ljava/lang/Object;

    goto :goto_d

    .line 32730
    :sswitch_6e
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    .line 32731
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->normalizedNumber_:Ljava/lang/Object;

    goto :goto_d

    .line 32735
    :sswitch_7b
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    .line 32736
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->originalNumber_:Ljava/lang/Object;

    goto :goto_d

    .line 32740
    :sswitch_88
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    .line 32741
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->callRate_:I

    goto/16 :goto_d

    .line 32745
    :sswitch_96
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    .line 32746
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->smsRate_:I
    :try_end_a2
    .catchall {:try_start_54 .. :try_end_a2} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_a2} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_a2} :catch_45

    goto/16 :goto_d

    .line 32757
    .end local v3           #tag:I
    :cond_a4
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->makeExtensionsImmutable()V

    .line 32759
    return-void

    .line 32698
    :sswitch_data_a8
    .sparse-switch
        0x0 -> :sswitch_1e
        0x8 -> :sswitch_20
        0x12 -> :sswitch_38
        0x1a -> :sswitch_54
        0x22 -> :sswitch_61
        0x2a -> :sswitch_6e
        0x32 -> :sswitch_7b
        0x38 -> :sswitch_88
        0x40 -> :sswitch_96
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
    .line 32669
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiRate;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 32674
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 32981
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->memoizedIsInitialized:B

    .line 33031
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->memoizedSerializedSize:I

    .line 32676
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32669
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiRate;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 32677
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 32981
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->memoizedIsInitialized:B

    .line 33031
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->memoizedSerializedSize:I

    .line 32677
    return-void
.end method

.method static synthetic access$39502(Lcom/google/grandcentral/api2/Api2$ApiRate;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32669
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->responseCode_:I

    return p1
.end method

.method static synthetic access$39600(Lcom/google/grandcentral/api2/Api2$ApiRate;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32669
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->displayableCallRate_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$39602(Lcom/google/grandcentral/api2/Api2$ApiRate;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32669
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->displayableCallRate_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$39700(Lcom/google/grandcentral/api2/Api2$ApiRate;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32669
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->displayableSmsRate_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$39702(Lcom/google/grandcentral/api2/Api2$ApiRate;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32669
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->displayableSmsRate_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$39800(Lcom/google/grandcentral/api2/Api2$ApiRate;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32669
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->countryName_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$39802(Lcom/google/grandcentral/api2/Api2$ApiRate;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32669
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->countryName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$39900(Lcom/google/grandcentral/api2/Api2$ApiRate;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32669
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->normalizedNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$39902(Lcom/google/grandcentral/api2/Api2$ApiRate;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32669
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->normalizedNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$40000(Lcom/google/grandcentral/api2/Api2$ApiRate;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32669
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->originalNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$40002(Lcom/google/grandcentral/api2/Api2$ApiRate;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32669
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->originalNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$40102(Lcom/google/grandcentral/api2/Api2$ApiRate;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32669
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->callRate_:I

    return p1
.end method

.method static synthetic access$40202(Lcom/google/grandcentral/api2/Api2$ApiRate;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32669
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->smsRate_:I

    return p1
.end method

.method static synthetic access$40302(Lcom/google/grandcentral/api2/Api2$ApiRate;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32669
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiRate;
    .registers 1

    .prologue
    .line 32681
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRate;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiRate;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 32972
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->responseCode_:I

    .line 32973
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->displayableCallRate_:Ljava/lang/Object;

    .line 32974
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->displayableSmsRate_:Ljava/lang/Object;

    .line 32975
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->countryName_:Ljava/lang/Object;

    .line 32976
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->normalizedNumber_:Ljava/lang/Object;

    .line 32977
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->originalNumber_:Ljava/lang/Object;

    .line 32978
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->callRate_:I

    .line 32979
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->smsRate_:I

    .line 32980
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 1

    .prologue
    .line 33132
    #calls: Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->access$39300()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiRate;)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 33135
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRate;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiRate;)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiRate;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33112
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRate;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiRate;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33118
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRate;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiRate;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33082
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRate;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiRate;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33088
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRate;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiRate;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33123
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRate;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiRate;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33129
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRate;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiRate;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33102
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRate;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiRate;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33108
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRate;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiRate;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33092
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRate;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiRate;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33098
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRate;

    return-object v0
.end method


# virtual methods
.method public getCallRate()I
    .registers 2

    .prologue
    .line 32958
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->callRate_:I

    return v0
.end method

.method public getCountryName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 32859
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->countryName_:Ljava/lang/Object;

    .line 32860
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 32861
    check-cast v1, Ljava/lang/String;

    .line 32869
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 32863
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 32865
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 32866
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 32867
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->countryName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 32869
    goto :goto_8
.end method

.method public getCountryNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 32874
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->countryName_:Ljava/lang/Object;

    .line 32875
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 32876
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 32878
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->countryName_:Ljava/lang/Object;

    .line 32881
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiRate;
    .registers 2

    .prologue
    .line 32685
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRate;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiRate;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32669
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiRate;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableCallRate()Ljava/lang/String;
    .registers 5

    .prologue
    .line 32793
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->displayableCallRate_:Ljava/lang/Object;

    .line 32794
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 32795
    check-cast v1, Ljava/lang/String;

    .line 32803
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 32797
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 32799
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 32800
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 32801
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->displayableCallRate_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 32803
    goto :goto_8
.end method

.method public getDisplayableCallRateBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 32808
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->displayableCallRate_:Ljava/lang/Object;

    .line 32809
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 32810
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 32812
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->displayableCallRate_:Ljava/lang/Object;

    .line 32815
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

.method public getDisplayableSmsRate()Ljava/lang/String;
    .registers 5

    .prologue
    .line 32826
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->displayableSmsRate_:Ljava/lang/Object;

    .line 32827
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 32828
    check-cast v1, Ljava/lang/String;

    .line 32836
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 32830
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 32832
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 32833
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 32834
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->displayableSmsRate_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 32836
    goto :goto_8
.end method

.method public getDisplayableSmsRateBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 32841
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->displayableSmsRate_:Ljava/lang/Object;

    .line 32842
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 32843
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 32845
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->displayableSmsRate_:Ljava/lang/Object;

    .line 32848
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

.method public getNormalizedNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 32892
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->normalizedNumber_:Ljava/lang/Object;

    .line 32893
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 32894
    check-cast v1, Ljava/lang/String;

    .line 32902
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 32896
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 32898
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 32899
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 32900
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->normalizedNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 32902
    goto :goto_8
.end method

.method public getNormalizedNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 32907
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->normalizedNumber_:Ljava/lang/Object;

    .line 32908
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 32909
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 32911
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->normalizedNumber_:Ljava/lang/Object;

    .line 32914
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

.method public getOriginalNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 32925
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->originalNumber_:Ljava/lang/Object;

    .line 32926
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 32927
    check-cast v1, Ljava/lang/String;

    .line 32935
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 32929
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 32931
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 32932
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 32933
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->originalNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 32935
    goto :goto_8
.end method

.method public getOriginalNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 32940
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->originalNumber_:Ljava/lang/Object;

    .line 32941
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 32942
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 32944
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->originalNumber_:Ljava/lang/Object;

    .line 32947
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
            "Lcom/google/grandcentral/api2/Api2$ApiRate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32772
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRate;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2

    .prologue
    .line 32783
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->responseCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 33033
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->memoizedSerializedSize:I

    .line 33034
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 33070
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 33036
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 33037
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 33038
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->responseCode_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 33041
    :cond_1a
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 33042
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getDisplayableCallRateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 33045
    :cond_29
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 33046
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getDisplayableSmsRateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 33049
    :cond_39
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_48

    .line 33050
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getCountryNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 33053
    :cond_48
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5a

    .line 33054
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getNormalizedNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 33057
    :cond_5a
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6c

    .line 33058
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getOriginalNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 33061
    :cond_6c
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7c

    .line 33062
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->callRate_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 33065
    :cond_7c
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8b

    .line 33066
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->smsRate_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 33069
    :cond_8b
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->memoizedSerializedSize:I

    move v1, v0

    .line 33070
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getSmsRate()I
    .registers 2

    .prologue
    .line 32968
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->smsRate_:I

    return v0
.end method

.method public hasCallRate()Z
    .registers 3

    .prologue
    .line 32955
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

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

.method public hasCountryName()Z
    .registers 3

    .prologue
    .line 32856
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

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

.method public hasDisplayableCallRate()Z
    .registers 3

    .prologue
    .line 32790
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

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

.method public hasDisplayableSmsRate()Z
    .registers 3

    .prologue
    .line 32823
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

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

.method public hasNormalizedNumber()Z
    .registers 3

    .prologue
    .line 32889
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

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

.method public hasOriginalNumber()Z
    .registers 3

    .prologue
    .line 32922
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

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

.method public hasResponseCode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 32780
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSmsRate()Z
    .registers 3

    .prologue
    .line 32965
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32983
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->memoizedIsInitialized:B

    .line 32984
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ne v0, v1, :cond_b

    :goto_9
    move v2, v1

    .line 32999
    :goto_a
    return v2

    :cond_b
    move v1, v2

    .line 32984
    goto :goto_9

    .line 32986
    :cond_d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->hasResponseCode()Z

    move-result v3

    if-nez v3, :cond_16

    .line 32987
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->memoizedIsInitialized:B

    goto :goto_a

    .line 32990
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->hasNormalizedNumber()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 32991
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->memoizedIsInitialized:B

    goto :goto_a

    .line 32994
    :cond_1f
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->hasOriginalNumber()Z

    move-result v3

    if-nez v3, :cond_28

    .line 32995
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->memoizedIsInitialized:B

    goto :goto_a

    .line 32998
    :cond_28
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->memoizedIsInitialized:B

    move v2, v1

    .line 32999
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 2

    .prologue
    .line 33133
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRate;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 32669
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 2

    .prologue
    .line 33137
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiRate;)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 32669
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

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
    .line 33076
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 33004
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getSerializedSize()I

    .line 33005
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 33006
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->responseCode_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 33008
    :cond_13
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 33009
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getDisplayableCallRateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 33011
    :cond_20
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 33012
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getDisplayableSmsRateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 33014
    :cond_2e
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3b

    .line 33015
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getCountryNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 33017
    :cond_3b
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4b

    .line 33018
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getNormalizedNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 33020
    :cond_4b
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5b

    .line 33021
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getOriginalNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 33023
    :cond_5b
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_69

    .line 33024
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->callRate_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 33026
    :cond_69
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_76

    .line 33027
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate;->smsRate_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 33029
    :cond_76
    return-void
.end method
