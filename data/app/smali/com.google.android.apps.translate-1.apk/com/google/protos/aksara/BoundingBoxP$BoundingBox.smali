.class public final Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BoundingBoxP.java"

# interfaces
.implements Lcom/google/protos/aksara/BoundingBoxP$BoundingBoxOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/BoundingBoxP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BoundingBox"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
    }
.end annotation


# static fields
.field public static final HEIGHT_FIELD_NUMBER:I = 0x4

.field public static final LEFT_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOP_FIELD_NUMBER:I = 0x2

.field public static final WIDTH_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;


# instance fields
.field private bitField0_:I

.field private height_:I

.field private left_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private top_:I

.field private width_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 101
    new-instance v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$1;

    invoke-direct {v0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$1;-><init>()V

    sput-object v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->PARSER:Lcom/google/protobuf/Parser;

    .line 477
    new-instance v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;-><init>(Z)V

    sput-object v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->defaultInstance:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    .line 478
    sget-object v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->defaultInstance:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    invoke-direct {v0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->initFields()V

    .line 479
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

    .line 52
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 163
    iput-byte v4, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->memoizedIsInitialized:B

    .line 189
    iput v4, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->memoizedSerializedSize:I

    .line 53
    invoke-direct {p0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->initFields()V

    .line 54
    const/4 v2, 0x0

    .line 56
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 57
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_6e

    .line 58
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 59
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_72

    .line 64
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 66
    const/4 v0, 0x1

    goto :goto_d

    .line 61
    :sswitch_1e
    const/4 v0, 0x1

    .line 62
    goto :goto_d

    .line 71
    :sswitch_20
    iget v4, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->bitField0_:I

    .line 72
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->left_:I
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 92
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 93
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 98
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->makeExtensionsImmutable()V

    throw v4

    .line 76
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->bitField0_:I

    .line 77
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->top_:I
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 94
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 95
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
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->bitField0_:I

    .line 82
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->width_:I

    goto :goto_d

    .line 86
    :sswitch_61
    iget v4, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->bitField0_:I

    .line 87
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->height_:I
    :try_end_6d
    .catchall {:try_start_54 .. :try_end_6d} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_6d} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_6d} :catch_45

    goto :goto_d

    .line 98
    .end local v3           #tag:I
    :cond_6e
    invoke-virtual {p0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->makeExtensionsImmutable()V

    .line 100
    return-void

    .line 59
    :sswitch_data_72
    .sparse-switch
        0x0 -> :sswitch_1e
        0x8 -> :sswitch_20
        0x10 -> :sswitch_38
        0x18 -> :sswitch_54
        0x20 -> :sswitch_61
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/aksara/BoundingBoxP$1;)V
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
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 163
    iput-byte v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->memoizedIsInitialized:B

    .line 189
    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->memoizedSerializedSize:I

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/aksara/BoundingBoxP$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 163
    iput-byte v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->memoizedIsInitialized:B

    .line 189
    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->memoizedSerializedSize:I

    .line 38
    return-void
.end method

.method static synthetic access$302(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->left_:I

    return p1
.end method

.method static synthetic access$402(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->top_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->width_:I

    return p1
.end method

.method static synthetic access$602(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->height_:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->defaultInstance:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 158
    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->left_:I

    .line 159
    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->top_:I

    .line 160
    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->width_:I

    .line 161
    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->height_:I

    .line 162
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
    .registers 1

    .prologue
    .line 274
    #calls: Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->create()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
    invoke-static {}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->access$100()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 277
    invoke-static {}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->newBuilder()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->mergeFrom(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    sget-object v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    sget-object v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 224
    sget-object v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 230
    sget-object v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    sget-object v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    sget-object v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    sget-object v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    sget-object v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 234
    sget-object v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 240
    sget-object v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->getDefaultInstanceForType()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
    .registers 2

    .prologue
    .line 46
    sget-object v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->defaultInstance:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 154
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->height_:I

    return v0
.end method

.method public getLeft()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->left_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    sget-object v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 191
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->memoizedSerializedSize:I

    .line 192
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 212
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 194
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 195
    iget v2, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 196
    iget v2, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->left_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 199
    :cond_18
    iget v2, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_25

    .line 200
    iget v2, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->top_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 203
    :cond_25
    iget v2, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_33

    .line 204
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->width_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 207
    :cond_33
    iget v2, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_42

    .line 208
    iget v2, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->height_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 211
    :cond_42
    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->memoizedSerializedSize:I

    move v1, v0

    .line 212
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getTop()I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->top_:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->width_:I

    return v0
.end method

.method public hasHeight()Z
    .registers 3

    .prologue
    .line 151
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->bitField0_:I

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

.method public hasLeft()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 121
    iget v1, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTop()Z
    .registers 3

    .prologue
    .line 131
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->bitField0_:I

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

.method public hasWidth()Z
    .registers 3

    .prologue
    .line 141
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 165
    iget-byte v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->memoizedIsInitialized:B

    .line 166
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 169
    :goto_8
    return v1

    .line 166
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 168
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->newBuilderForType()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
    .registers 2

    .prologue
    .line 275
    invoke-static {}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->newBuilder()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->toBuilder()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
    .registers 2

    .prologue
    .line 279
    invoke-static {p0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->newBuilder(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

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
    .line 218
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

    .line 174
    invoke-virtual {p0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->getSerializedSize()I

    .line 175
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 176
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->left_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 178
    :cond_11
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 179
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->top_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 181
    :cond_1c
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_28

    .line 182
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->width_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 184
    :cond_28
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_35

    .line 185
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->height_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 187
    :cond_35
    return-void
.end method
