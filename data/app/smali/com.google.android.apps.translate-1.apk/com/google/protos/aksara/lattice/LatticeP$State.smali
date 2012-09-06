.class public final Lcom/google/protos/aksara/lattice/LatticeP$State;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "LatticeP.java"

# interfaces
.implements Lcom/google/protos/aksara/lattice/LatticeP$StateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/lattice/LatticeP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/protos/aksara/lattice/LatticeP$State;",
        ">;",
        "Lcom/google/protos/aksara/lattice/LatticeP$StateOrBuilder;"
    }
.end annotation


# static fields
.field public static final DESCRIPTION_FIELD_NUMBER:I = 0xf

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$State;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$State;


# instance fields
.field private bitField0_:I

.field private description_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private state_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1281
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$State$1;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$State$1;-><init>()V

    sput-object v0, Lcom/google/protos/aksara/lattice/LatticeP$State;->PARSER:Lcom/google/protobuf/Parser;

    .line 1643
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$State;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$State;-><init>(Z)V

    sput-object v0, Lcom/google/protos/aksara/lattice/LatticeP$State;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$State;

    .line 1644
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$State;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$State;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$State;->initFields()V

    .line 1645
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x2

    .line 1236
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 1329
    iput-byte v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->memoizedIsInitialized:B

    .line 1357
    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->memoizedSerializedSize:I

    .line 1237
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State;->initFields()V

    .line 1238
    const/4 v2, 0x0

    .line 1240
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 1241
    .local v0, done:Z
    :cond_e
    :goto_e
    if-nez v0, :cond_6c

    .line 1242
    :try_start_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 1243
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_7e

    .line 1248
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/aksara/lattice/LatticeP$State;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1250
    const/4 v0, 0x1

    goto :goto_e

    .line 1245
    :sswitch_1f
    const/4 v0, 0x1

    .line 1246
    goto :goto_e

    .line 1255
    :sswitch_21
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->bitField0_:I

    .line 1256
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->state_:Lcom/google/protobuf/ByteString;
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2d} :catch_5d

    goto :goto_e

    .line 1269
    .end local v3           #tag:I
    :catch_2e
    move-exception v1

    .line 1270
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2f
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_34

    .line 1275
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_34
    move-exception v4

    and-int/lit8 v5, v2, 0x2

    if-ne v5, v6, :cond_42

    .line 1276
    new-instance v5, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v5, v6}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->description_:Lcom/google/protobuf/LazyStringList;

    .line 1278
    :cond_42
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State;->makeExtensionsImmutable()V

    throw v4

    .line 1260
    .restart local v3       #tag:I
    :sswitch_46
    and-int/lit8 v4, v2, 0x2

    if-eq v4, v6, :cond_53

    .line 1261
    :try_start_4a
    new-instance v4, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->description_:Lcom/google/protobuf/LazyStringList;

    .line 1262
    or-int/lit8 v2, v2, 0x2

    .line 1264
    :cond_53
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_5c
    .catchall {:try_start_4a .. :try_end_5c} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4a .. :try_end_5c} :catch_2e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_5c} :catch_5d

    goto :goto_e

    .line 1271
    .end local v3           #tag:I
    :catch_5d
    move-exception v1

    .line 1272
    .local v1, e:Ljava/io/IOException;
    :try_start_5e
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_6c
    .catchall {:try_start_5e .. :try_end_6c} :catchall_34

    .line 1275
    .end local v1           #e:Ljava/io/IOException;
    :cond_6c
    and-int/lit8 v4, v2, 0x2

    if-ne v4, v6, :cond_79

    .line 1276
    new-instance v4, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v4, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->description_:Lcom/google/protobuf/LazyStringList;

    .line 1278
    :cond_79
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State;->makeExtensionsImmutable()V

    .line 1280
    return-void

    .line 1243
    nop

    :sswitch_data_7e
    .sparse-switch
        0x0 -> :sswitch_1f
        0xa -> :sswitch_21
        0x7a -> :sswitch_46
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
    .line 1214
    invoke-direct {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$State;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
            "Lcom/google/protos/aksara/lattice/LatticeP$State;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p1, builder:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<Lcom/google/protos/aksara/lattice/LatticeP$State;*>;"
    const/4 v0, -0x1

    .line 1219
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 1329
    iput-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->memoizedIsInitialized:B

    .line 1357
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->memoizedSerializedSize:I

    .line 1221
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/aksara/lattice/LatticeP$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1214
    invoke-direct {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$State;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1222
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 1329
    iput-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->memoizedIsInitialized:B

    .line 1357
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->memoizedSerializedSize:I

    .line 1222
    return-void
.end method

.method static synthetic access$1802(Lcom/google/protos/aksara/lattice/LatticeP$State;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->state_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/google/protos/aksara/lattice/LatticeP$State;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->description_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/google/protos/aksara/lattice/LatticeP$State;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->description_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/google/protos/aksara/lattice/LatticeP$State;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1214
    iput p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$State;
    .registers 1

    .prologue
    .line 1226
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$State;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$State;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1326
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->state_:Lcom/google/protobuf/ByteString;

    .line 1327
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->description_:Lcom/google/protobuf/LazyStringList;

    .line 1328
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;
    .registers 1

    .prologue
    .line 1440
    #calls: Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->access$1600()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/aksara/lattice/LatticeP$State;)Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1443
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$State;->newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$State;)Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/aksara/lattice/LatticeP$State;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1420
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$State;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$State;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$State;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1426
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$State;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$State;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$State;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1390
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$State;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$State;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$State;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1396
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$State;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$State;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/aksara/lattice/LatticeP$State;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1431
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$State;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$State;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$State;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1437
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$State;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$State;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/aksara/lattice/LatticeP$State;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1410
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$State;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$State;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$State;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1416
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$State;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$State;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/aksara/lattice/LatticeP$State;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1400
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$State;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$State;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$State;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1406
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$State;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$State;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1214
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$State;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$State;
    .registers 2

    .prologue
    .line 1230
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$State;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$State;

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionCount()I
    .registers 2

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDescriptionList()Ljava/util/List;
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
    .line 1312
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->description_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1293
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$State;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1359
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->memoizedSerializedSize:I

    .line 1360
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    move v3, v2

    .line 1378
    .end local v2           #size:I
    .local v3, size:I
    :goto_7
    return v3

    .line 1362
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_8
    const/4 v2, 0x0

    .line 1363
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_16

    .line 1364
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->state_:Lcom/google/protobuf/ByteString;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1368
    :cond_16
    const/4 v0, 0x0

    .line 1369
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2e

    .line 1370
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1369
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1373
    :cond_2e
    add-int/2addr v2, v0

    .line 1374
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State;->getDescriptionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 1376
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State;->extensionsSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 1377
    iput v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->memoizedSerializedSize:I

    move v3, v2

    .line 1378
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_7
.end method

.method public getState()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->state_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasState()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1301
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->bitField0_:I

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

    .line 1331
    iget-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->memoizedIsInitialized:B

    .line 1332
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 1339
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 1332
    goto :goto_9

    .line 1334
    :cond_c
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State;->extensionsAreInitialized()Z

    move-result v3

    if-nez v3, :cond_16

    .line 1335
    iput-byte v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->memoizedIsInitialized:B

    move v1, v2

    .line 1336
    goto :goto_9

    .line 1338
    :cond_16
    iput-byte v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1214
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State;->newBuilderForType()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;
    .registers 2

    .prologue
    .line 1441
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$State;->newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1214
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State;->toBuilder()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;
    .registers 2

    .prologue
    .line 1445
    invoke-static {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State;->newBuilder(Lcom/google/protos/aksara/lattice/LatticeP$State;)Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

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
    .line 1384
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
    const/4 v3, 0x1

    .line 1344
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State;->getSerializedSize()I

    .line 1346
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 1348
    .local v0, extensionWriter:Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<Lcom/google/protos/aksara/lattice/LatticeP$State;>.ExtensionWriter;"
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_13

    .line 1349
    iget-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->state_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1351
    :cond_13
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    iget-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 1352
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$State;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1351
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1354
    :cond_2a
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 1355
    return-void
.end method
