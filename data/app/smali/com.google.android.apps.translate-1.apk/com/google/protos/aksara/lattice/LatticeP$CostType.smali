.class public final Lcom/google/protos/aksara/lattice/LatticeP$CostType;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LatticeP.java"

# interfaces
.implements Lcom/google/protos/aksara/lattice/LatticeP$CostTypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/lattice/LatticeP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CostType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
    }
.end annotation


# static fields
.field public static final DESCRIPTION_FIELD_NUMBER:I = 0xf

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$CostType;",
            ">;"
        }
    .end annotation
.end field

.field public static final WEIGHT_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$CostType;


# instance fields
.field private bitField0_:I

.field private description_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private weight_:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4016
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$1;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$1;-><init>()V

    sput-object v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->PARSER:Lcom/google/protobuf/Parser;

    .line 4467
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;-><init>(Z)V

    sput-object v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    .line 4468
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->initFields()V

    .line 4469
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

    const/4 v6, 0x4

    .line 3966
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4098
    iput-byte v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->memoizedIsInitialized:B

    .line 4121
    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->memoizedSerializedSize:I

    .line 3967
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->initFields()V

    .line 3968
    const/4 v2, 0x0

    .line 3970
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 3971
    .local v0, done:Z
    :cond_e
    :goto_e
    if-nez v0, :cond_79

    .line 3972
    :try_start_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 3973
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_8a

    .line 3978
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_e

    .line 3980
    const/4 v0, 0x1

    goto :goto_e

    .line 3975
    :sswitch_1f
    const/4 v0, 0x1

    .line 3976
    goto :goto_e

    .line 3985
    :sswitch_21
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->bitField0_:I

    .line 3986
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->name_:Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2d} :catch_53

    goto :goto_e

    .line 4004
    .end local v3           #tag:I
    :catch_2e
    move-exception v1

    .line 4005
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2f
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_34

    .line 4010
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_34
    move-exception v4

    and-int/lit8 v5, v2, 0x4

    if-ne v5, v6, :cond_42

    .line 4011
    new-instance v5, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v5, v6}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->description_:Lcom/google/protobuf/LazyStringList;

    .line 4013
    :cond_42
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->makeExtensionsImmutable()V

    throw v4

    .line 3990
    .restart local v3       #tag:I
    :sswitch_46
    :try_start_46
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->bitField0_:I

    .line 3991
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->weight_:D
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_46 .. :try_end_52} :catch_2e
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_52} :catch_53

    goto :goto_e

    .line 4006
    .end local v3           #tag:I
    :catch_53
    move-exception v1

    .line 4007
    .local v1, e:Ljava/io/IOException;
    :try_start_54
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_62
    .catchall {:try_start_54 .. :try_end_62} :catchall_34

    .line 3995
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_62
    and-int/lit8 v4, v2, 0x4

    if-eq v4, v6, :cond_6f

    .line 3996
    :try_start_66
    new-instance v4, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->description_:Lcom/google/protobuf/LazyStringList;

    .line 3997
    or-int/lit8 v2, v2, 0x4

    .line 3999
    :cond_6f
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_78
    .catchall {:try_start_66 .. :try_end_78} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_66 .. :try_end_78} :catch_2e
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_78} :catch_53

    goto :goto_e

    .line 4010
    .end local v3           #tag:I
    :cond_79
    and-int/lit8 v4, v2, 0x4

    if-ne v4, v6, :cond_86

    .line 4011
    new-instance v4, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v4, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->description_:Lcom/google/protobuf/LazyStringList;

    .line 4013
    :cond_86
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->makeExtensionsImmutable()V

    .line 4015
    return-void

    .line 3973
    :sswitch_data_8a
    .sparse-switch
        0x0 -> :sswitch_1f
        0xa -> :sswitch_21
        0x11 -> :sswitch_46
        0x7a -> :sswitch_62
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
    .line 3944
    invoke-direct {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3949
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4098
    iput-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->memoizedIsInitialized:B

    .line 4121
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->memoizedSerializedSize:I

    .line 3951
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/aksara/lattice/LatticeP$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3944
    invoke-direct {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3952
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4098
    iput-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->memoizedIsInitialized:B

    .line 4121
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->memoizedSerializedSize:I

    .line 3952
    return-void
.end method

.method static synthetic access$4900(Lcom/google/protos/aksara/lattice/LatticeP$CostType;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3944
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/google/protos/aksara/lattice/LatticeP$CostType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3944
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/google/protos/aksara/lattice/LatticeP$CostType;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3944
    iput-wide p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->weight_:D

    return-wide p1
.end method

.method static synthetic access$5100(Lcom/google/protos/aksara/lattice/LatticeP$CostType;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3944
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->description_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/google/protos/aksara/lattice/LatticeP$CostType;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3944
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->description_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/google/protos/aksara/lattice/LatticeP$CostType;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3944
    iput p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$CostType;
    .registers 1

    .prologue
    .line 3956
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 4094
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->name_:Ljava/lang/Object;

    .line 4095
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->weight_:D

    .line 4096
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->description_:Lcom/google/protobuf/LazyStringList;

    .line 4097
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
    .registers 1

    .prologue
    .line 4207
    #calls: Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->access$4700()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/aksara/lattice/LatticeP$CostType;)Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 4210
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$CostType;)Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/aksara/lattice/LatticeP$CostType;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4187
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$CostType;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4193
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$CostType;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4157
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$CostType;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4163
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/aksara/lattice/LatticeP$CostType;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4198
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$CostType;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4204
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/aksara/lattice/LatticeP$CostType;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4177
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$CostType;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4183
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/aksara/lattice/LatticeP$CostType;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4167
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$CostType;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4173
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3944
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$CostType;
    .registers 2

    .prologue
    .line 3960
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 4086
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 4090
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionCount()I
    .registers 2

    .prologue
    .line 4083
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->description_:Lcom/google/protobuf/LazyStringList;

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
    .line 4080
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->description_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4039
    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->name_:Ljava/lang/Object;

    .line 4040
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4041
    check-cast v1, Ljava/lang/String;

    .line 4049
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4043
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4045
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4046
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4047
    iput-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4049
    goto :goto_8
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4054
    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->name_:Ljava/lang/Object;

    .line 4055
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4056
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4058
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->name_:Ljava/lang/Object;

    .line 4061
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
            "Lcom/google/protos/aksara/lattice/LatticeP$CostType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4028
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 4123
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->memoizedSerializedSize:I

    .line 4124
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    move v3, v2

    .line 4145
    .end local v2           #size:I
    .local v3, size:I
    :goto_8
    return v3

    .line 4126
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_9
    const/4 v2, 0x0

    .line 4127
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_19

    .line 4128
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 4131
    :cond_19
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_26

    .line 4132
    iget-wide v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->weight_:D

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v4

    add-int/2addr v2, v4

    .line 4136
    :cond_26
    const/4 v0, 0x0

    .line 4137
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_28
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3e

    .line 4138
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 4137
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 4141
    :cond_3e
    add-int/2addr v2, v0

    .line 4142
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->getDescriptionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 4144
    iput v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->memoizedSerializedSize:I

    move v3, v2

    .line 4145
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_8
.end method

.method public getWeight()D
    .registers 3

    .prologue
    .line 4072
    iget-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->weight_:D

    return-wide v0
.end method

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4036
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasWeight()Z
    .registers 3

    .prologue
    .line 4069
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 4100
    iget-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->memoizedIsInitialized:B

    .line 4101
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 4104
    :goto_8
    return v1

    .line 4101
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 4103
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3944
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->newBuilderForType()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
    .registers 2

    .prologue
    .line 4208
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3944
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->toBuilder()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
    .registers 2

    .prologue
    .line 4212
    invoke-static {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->newBuilder(Lcom/google/protos/aksara/lattice/LatticeP$CostType;)Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

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
    .line 4151
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4109
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->getSerializedSize()I

    .line 4110
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_12

    .line 4111
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4113
    :cond_12
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1d

    .line 4114
    iget-wide v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->weight_:D

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 4116
    :cond_1d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1e
    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 4117
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 4119
    :cond_34
    return-void
.end method
