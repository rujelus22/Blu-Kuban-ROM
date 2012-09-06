.class public final Lcom/google/protos/aksara/lattice/LatticeP$Cost;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "LatticeP.java"

# interfaces
.implements Lcom/google/protos/aksara/lattice/LatticeP$CostOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/lattice/LatticeP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cost"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/protos/aksara/lattice/LatticeP$Cost;",
        ">;",
        "Lcom/google/protos/aksara/lattice/LatticeP$CostOrBuilder;"
    }
.end annotation


# static fields
.field public static final COST_FIELD_NUMBER:I = 0x2

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Cost;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Cost;


# instance fields
.field private bitField0_:I

.field private cost_:D

.field private id_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 84
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$1;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$1;-><init>()V

    sput-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->PARSER:Lcom/google/protobuf/Parser;

    .line 377
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;-><init>(Z)V

    sput-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    .line 378
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->initFields()V

    .line 379
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

    .line 45
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 124
    iput-byte v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->memoizedIsInitialized:B

    .line 152
    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->memoizedSerializedSize:I

    .line 46
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->initFields()V

    .line 47
    const/4 v2, 0x0

    .line 49
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 50
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_54

    .line 51
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 52
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_58

    .line 57
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 59
    const/4 v0, 0x1

    goto :goto_d

    .line 54
    :sswitch_1e
    const/4 v0, 0x1

    .line 55
    goto :goto_d

    .line 64
    :sswitch_20
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->bitField0_:I

    .line 65
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->id_:I
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 75
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 76
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 81
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->makeExtensionsImmutable()V

    throw v4

    .line 69
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->bitField0_:I

    .line 70
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->cost_:D
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 77
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 78
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

    .line 81
    .end local v1           #e:Ljava/io/IOException;
    :cond_54
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->makeExtensionsImmutable()V

    .line 83
    return-void

    .line 52
    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_1e
        0x8 -> :sswitch_20
        0x11 -> :sswitch_38
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/aksara/lattice/LatticeP$1;)V
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
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Cost;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p1, builder:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<Lcom/google/protos/aksara/lattice/LatticeP$Cost;*>;"
    const/4 v0, -0x1

    .line 28
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 124
    iput-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->memoizedIsInitialized:B

    .line 152
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->memoizedSerializedSize:I

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/aksara/lattice/LatticeP$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 124
    iput-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->memoizedIsInitialized:B

    .line 152
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->memoizedSerializedSize:I

    .line 31
    return-void
.end method

.method static synthetic access$302(Lcom/google/protos/aksara/lattice/LatticeP$Cost;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->id_:I

    return p1
.end method

.method static synthetic access$402(Lcom/google/protos/aksara/lattice/LatticeP$Cost;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->cost_:D

    return-wide p1
.end method

.method static synthetic access$502(Lcom/google/protos/aksara/lattice/LatticeP$Cost;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$Cost;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->id_:I

    .line 122
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->cost_:D

    .line 123
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;
    .registers 1

    .prologue
    .line 230
    #calls: Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->access$100()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/aksara/lattice/LatticeP$Cost;)Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 233
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Cost;)Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/aksara/lattice/LatticeP$Cost;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Cost;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$Cost;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 180
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Cost;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 186
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/aksara/lattice/LatticeP$Cost;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Cost;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/aksara/lattice/LatticeP$Cost;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Cost;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/aksara/lattice/LatticeP$Cost;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 190
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Cost;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 196
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    return-object v0
.end method


# virtual methods
.method public getCost()D
    .registers 3

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->cost_:D

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Cost;
    .registers 2

    .prologue
    .line 39
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->id_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Cost;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 154
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->memoizedSerializedSize:I

    .line 155
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 168
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 157
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 158
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 159
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->id_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 162
    :cond_17
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 163
    iget-wide v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->cost_:D

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 166
    :cond_24
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 167
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->memoizedSerializedSize:I

    move v1, v0

    .line 168
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasCost()Z
    .registers 3

    .prologue
    .line 114
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 104
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 126
    iget-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->memoizedIsInitialized:B

    .line 127
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 134
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 127
    goto :goto_9

    .line 129
    :cond_c
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->extensionsAreInitialized()Z

    move-result v3

    if-nez v3, :cond_16

    .line 130
    iput-byte v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->memoizedIsInitialized:B

    move v1, v2

    .line 131
    goto :goto_9

    .line 133
    :cond_16
    iput-byte v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->newBuilderForType()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;
    .registers 2

    .prologue
    .line 231
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->toBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;
    .registers 2

    .prologue
    .line 235
    invoke-static {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->newBuilder(Lcom/google/protos/aksara/lattice/LatticeP$Cost;)Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

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
    .line 174
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->writeReplace()Ljava/lang/Object;

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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 139
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->getSerializedSize()I

    .line 141
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 143
    .local v0, extensionWriter:Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<Lcom/google/protos/aksara/lattice/LatticeP$Cost;>.ExtensionWriter;"
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_14

    .line 144
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->id_:I

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 146
    :cond_14
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1f

    .line 147
    iget-wide v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->cost_:D

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 149
    :cond_1f
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 150
    return-void
.end method
