.class public final Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LatticeP.java"

# interfaces
.implements Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/lattice/LatticeP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatticeOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    }
.end annotation


# static fields
.field public static final COMPUTE_NODE_POSTERIORS_FIELD_NUMBER:I = 0x3

.field public static final INCLUDE_EDGE_BOUNDS_FIELD_NUMBER:I = 0x10

.field public static final INCLUDE_NODE_STATE_FIELD_NUMBER:I = 0x2

.field public static final LOG_COST_MULTIPLIER_FIELD_NUMBER:I = 0x4

.field public static final MAX_ABSOLUTE_COST_FIELD_NUMBER:I = 0x11

.field public static final MAX_EDGE_FACTOR_FIELD_NUMBER:I = 0x1

.field public static final MAX_RELATIVE_COST_FIELD_NUMBER:I = 0x12

.field public static final NBEST_FIELD_NUMBER:I = 0xf

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;


# instance fields
.field private bitField0_:I

.field private computeNodePosteriors_:Z

.field private includeEdgeBounds_:Z

.field private includeNodeState_:Z

.field private logCostMultiplier_:F

.field private maxAbsoluteCost_:D

.field private maxEdgeFactor_:D

.field private maxRelativeCost_:D

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 6086
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$1;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$1;-><init>()V

    sput-object v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 6676
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    .line 6677
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->initFields()V

    .line 6678
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
    const/4 v5, -0x1

    .line 6009
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6192
    iput-byte v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->memoizedIsInitialized:B

    .line 6230
    iput v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->memoizedSerializedSize:I

    .line 6010
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->initFields()V

    .line 6011
    const/4 v2, 0x0

    .line 6013
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 6014
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_c6

    .line 6015
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 6016
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_ca

    .line 6021
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 6023
    const/4 v0, 0x1

    goto :goto_d

    .line 6018
    :sswitch_1e
    const/4 v0, 0x1

    .line 6019
    goto :goto_d

    .line 6028
    :sswitch_20
    iget v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    .line 6029
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->maxEdgeFactor_:D
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 6077
    .end local v4           #tag:I
    :catch_2d
    move-exception v1

    .line 6078
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 6083
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v5

    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->makeExtensionsImmutable()V

    throw v5

    .line 6033
    .restart local v4       #tag:I
    :sswitch_38
    :try_start_38
    iget v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    .line 6034
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->includeNodeState_:Z
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 6079
    .end local v4           #tag:I
    :catch_45
    move-exception v1

    .line 6080
    .local v1, e:Ljava/io/IOException;
    :try_start_46
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_33

    .line 6038
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_54
    :try_start_54
    iget v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    .line 6039
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->computeNodePosteriors_:Z

    goto :goto_d

    .line 6043
    :sswitch_61
    iget v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    .line 6044
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->logCostMultiplier_:F

    goto :goto_d

    .line 6048
    :sswitch_6e
    const/4 v3, 0x0

    .line 6049
    .local v3, subBuilder:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    iget v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_7d

    .line 6050
    iget-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    invoke-virtual {v5}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->toBuilder()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    move-result-object v3

    .line 6052
    :cond_7d
    sget-object v5, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    iput-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    .line 6053
    if-eqz v3, :cond_94

    .line 6054
    iget-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    invoke-virtual {v3, v5}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    .line 6055
    invoke-virtual {v3}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    .line 6057
    :cond_94
    iget v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    goto/16 :goto_d

    .line 6061
    .end local v3           #subBuilder:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    :sswitch_9c
    iget v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    .line 6062
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->includeEdgeBounds_:Z

    goto/16 :goto_d

    .line 6066
    :sswitch_aa
    iget v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    .line 6067
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->maxAbsoluteCost_:D

    goto/16 :goto_d

    .line 6071
    :sswitch_b8
    iget v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    .line 6072
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->maxRelativeCost_:D
    :try_end_c4
    .catchall {:try_start_54 .. :try_end_c4} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_c4} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_c4} :catch_45

    goto/16 :goto_d

    .line 6083
    .end local v4           #tag:I
    :cond_c6
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->makeExtensionsImmutable()V

    .line 6085
    return-void

    .line 6016
    :sswitch_data_ca
    .sparse-switch
        0x0 -> :sswitch_1e
        0x9 -> :sswitch_20
        0x10 -> :sswitch_38
        0x18 -> :sswitch_54
        0x25 -> :sswitch_61
        0x7a -> :sswitch_6e
        0x80 -> :sswitch_9c
        0x89 -> :sswitch_aa
        0x91 -> :sswitch_b8
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
    .line 5987
    invoke-direct {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 5992
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6192
    iput-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->memoizedIsInitialized:B

    .line 6230
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->memoizedSerializedSize:I

    .line 5994
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/aksara/lattice/LatticeP$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5987
    invoke-direct {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5995
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6192
    iput-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->memoizedIsInitialized:B

    .line 6230
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->memoizedSerializedSize:I

    .line 5995
    return-void
.end method

.method static synthetic access$7402(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5987
    iput-wide p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->maxEdgeFactor_:D

    return-wide p1
.end method

.method static synthetic access$7502(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5987
    iput-boolean p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->includeNodeState_:Z

    return p1
.end method

.method static synthetic access$7602(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5987
    iput-boolean p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->computeNodePosteriors_:Z

    return p1
.end method

.method static synthetic access$7702(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5987
    iput p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->logCostMultiplier_:F

    return p1
.end method

.method static synthetic access$7802(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5987
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    return-object p1
.end method

.method static synthetic access$7902(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5987
    iput-boolean p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->includeEdgeBounds_:Z

    return p1
.end method

.method static synthetic access$8002(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5987
    iput-wide p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->maxAbsoluteCost_:D

    return-wide p1
.end method

.method static synthetic access$8102(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5987
    iput-wide p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->maxRelativeCost_:D

    return-wide p1
.end method

.method static synthetic access$8202(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5987
    iput p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;
    .registers 1

    .prologue
    .line 5999
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    return-object v0
.end method

.method private initFields()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const-wide/high16 v1, 0x7ff0

    .line 6183
    iput-wide v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->maxEdgeFactor_:D

    .line 6184
    iput-boolean v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->includeNodeState_:Z

    .line 6185
    iput-boolean v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->computeNodePosteriors_:Z

    .line 6186
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->logCostMultiplier_:F

    .line 6187
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    .line 6188
    iput-boolean v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->includeEdgeBounds_:Z

    .line 6189
    iput-wide v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->maxAbsoluteCost_:D

    .line 6190
    iput-wide v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->maxRelativeCost_:D

    .line 6191
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 1

    .prologue
    .line 6331
    #calls: Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->access$7200()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 6334
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6311
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6317
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6281
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6287
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6322
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6328
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6301
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6307
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6291
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6297
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    return-object v0
.end method


# virtual methods
.method public getComputeNodePosteriors()Z
    .registers 2

    .prologue
    .line 6129
    iget-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->computeNodePosteriors_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5987
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;
    .registers 2

    .prologue
    .line 6003
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    return-object v0
.end method

.method public getIncludeEdgeBounds()Z
    .registers 2

    .prologue
    .line 6159
    iget-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->includeEdgeBounds_:Z

    return v0
.end method

.method public getIncludeNodeState()Z
    .registers 2

    .prologue
    .line 6119
    iget-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->includeNodeState_:Z

    return v0
.end method

.method public getLogCostMultiplier()F
    .registers 2

    .prologue
    .line 6139
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->logCostMultiplier_:F

    return v0
.end method

.method public getMaxAbsoluteCost()D
    .registers 3

    .prologue
    .line 6169
    iget-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->maxAbsoluteCost_:D

    return-wide v0
.end method

.method public getMaxEdgeFactor()D
    .registers 3

    .prologue
    .line 6109
    iget-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->maxEdgeFactor_:D

    return-wide v0
.end method

.method public getMaxRelativeCost()D
    .registers 3

    .prologue
    .line 6179
    iget-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->maxRelativeCost_:D

    return-wide v0
.end method

.method public getNbest()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
    .registers 2

    .prologue
    .line 6149
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6098
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 6232
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->memoizedSerializedSize:I

    .line 6233
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 6269
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 6235
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 6236
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1a

    .line 6237
    iget-wide v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->maxEdgeFactor_:D

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 6240
    :cond_1a
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_27

    .line 6241
    iget-boolean v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->includeNodeState_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 6244
    :cond_27
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_35

    .line 6245
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->computeNodePosteriors_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 6248
    :cond_35
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_44

    .line 6249
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->logCostMultiplier_:F

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 6252
    :cond_44
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-ne v2, v7, :cond_53

    .line 6253
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6256
    :cond_53
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_62

    .line 6257
    iget-boolean v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->includeEdgeBounds_:Z

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 6260
    :cond_62
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_73

    .line 6261
    const/16 v2, 0x11

    iget-wide v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->maxAbsoluteCost_:D

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 6264
    :cond_73
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_84

    .line 6265
    const/16 v2, 0x12

    iget-wide v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->maxRelativeCost_:D

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 6268
    :cond_84
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->memoizedSerializedSize:I

    move v1, v0

    .line 6269
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_b
.end method

.method public hasComputeNodePosteriors()Z
    .registers 3

    .prologue
    .line 6126
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

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

.method public hasIncludeEdgeBounds()Z
    .registers 3

    .prologue
    .line 6156
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

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

.method public hasIncludeNodeState()Z
    .registers 3

    .prologue
    .line 6116
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

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

.method public hasLogCostMultiplier()Z
    .registers 3

    .prologue
    .line 6136
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

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

.method public hasMaxAbsoluteCost()Z
    .registers 3

    .prologue
    .line 6166
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

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

.method public hasMaxEdgeFactor()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 6106
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMaxRelativeCost()Z
    .registers 3

    .prologue
    .line 6176
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

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

.method public hasNbest()Z
    .registers 3

    .prologue
    .line 6146
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 6194
    iget-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->memoizedIsInitialized:B

    .line 6195
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 6198
    :goto_8
    return v1

    .line 6195
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 6197
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5987
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->newBuilderForType()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 2

    .prologue
    .line 6332
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5987
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->toBuilder()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 2

    .prologue
    .line 6336
    invoke-static {p0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->newBuilder(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

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
    .line 6275
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
    const/16 v5, 0x10

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 6203
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->getSerializedSize()I

    .line 6204
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_13

    .line 6205
    iget-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->maxEdgeFactor_:D

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 6207
    :cond_13
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1e

    .line 6208
    iget-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->includeNodeState_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 6210
    :cond_1e
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2a

    .line 6211
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->computeNodePosteriors_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 6213
    :cond_2a
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_37

    .line 6214
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->logCostMultiplier_:F

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 6216
    :cond_37
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v5, :cond_44

    .line 6217
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6219
    :cond_44
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_51

    .line 6220
    iget-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->includeEdgeBounds_:Z

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 6222
    :cond_51
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_60

    .line 6223
    const/16 v0, 0x11

    iget-wide v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->maxAbsoluteCost_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 6225
    :cond_60
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_6f

    .line 6226
    const/16 v0, 0x12

    iget-wide v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->maxRelativeCost_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 6228
    :cond_6f
    return-void
.end method
