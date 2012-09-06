.class public final Lcom/google/protos/aksara/lattice/LatticeP$Lattice;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "LatticeP.java"

# interfaces
.implements Lcom/google/protos/aksara/lattice/LatticeP$LatticeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/lattice/LatticeP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lattice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/protos/aksara/lattice/LatticeP$Lattice;",
        ">;",
        "Lcom/google/protos/aksara/lattice/LatticeP$LatticeOrBuilder;"
    }
.end annotation


# static fields
.field public static final COST_TYPE_FIELD_NUMBER:I = 0x2

.field public static final MAX_EDGE_FACTOR_FIELD_NUMBER:I = 0x5

.field public static final NODE_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Lattice;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x3

.field public static final STATE_TYPE_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Lattice;


# instance fields
.field private bitField0_:I

.field private costType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$CostType;",
            ">;"
        }
    .end annotation
.end field

.field private maxEdgeFactor_:D

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private node_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Node;",
            ">;"
        }
    .end annotation
.end field

.field private path_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Path;",
            ">;"
        }
    .end annotation
.end field

.field private stateType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$StateType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4606
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$1;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$1;-><init>()V

    sput-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->PARSER:Lcom/google/protobuf/Parser;

    .line 5415
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;-><init>(Z)V

    sput-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    .line 5416
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->initFields()V

    .line 5417
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 13
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 4528
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 4723
    iput-byte v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->memoizedIsInitialized:B

    .line 4772
    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->memoizedSerializedSize:I

    .line 4529
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->initFields()V

    .line 4530
    const/4 v2, 0x0

    .line 4532
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 4533
    .local v0, done:Z
    :cond_12
    :goto_12
    if-nez v0, :cond_e3

    .line 4534
    :try_start_14
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 4535
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_118

    .line 4540
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_12

    .line 4542
    const/4 v0, 0x1

    goto :goto_12

    .line 4537
    :sswitch_23
    const/4 v0, 0x1

    .line 4538
    goto :goto_12

    .line 4547
    :sswitch_25
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v6, :cond_32

    .line 4548
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->node_:Ljava/util/List;

    .line 4549
    or-int/lit8 v2, v2, 0x1

    .line 4551
    :cond_32
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->node_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/aksara/lattice/LatticeP$Node;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_14 .. :try_end_3d} :catchall_44
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_14 .. :try_end_3d} :catch_3e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3d} :catch_92

    goto :goto_12

    .line 4585
    .end local v3           #tag:I
    :catch_3e
    move-exception v1

    .line 4586
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_3f
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_44

    .line 4591
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_44
    move-exception v4

    and-int/lit8 v5, v2, 0x1

    if-ne v5, v6, :cond_51

    .line 4592
    iget-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->node_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->node_:Ljava/util/List;

    .line 4594
    :cond_51
    and-int/lit8 v5, v2, 0x2

    if-ne v5, v7, :cond_5d

    .line 4595
    iget-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->costType_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->costType_:Ljava/util/List;

    .line 4597
    :cond_5d
    and-int/lit8 v5, v2, 0x4

    if-ne v5, v8, :cond_69

    .line 4598
    iget-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->path_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->path_:Ljava/util/List;

    .line 4600
    :cond_69
    and-int/lit8 v5, v2, 0x8

    if-ne v5, v9, :cond_75

    .line 4601
    iget-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->stateType_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->stateType_:Ljava/util/List;

    .line 4603
    :cond_75
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->makeExtensionsImmutable()V

    throw v4

    .line 4555
    .restart local v3       #tag:I
    :sswitch_79
    and-int/lit8 v4, v2, 0x2

    if-eq v4, v7, :cond_86

    .line 4556
    :try_start_7d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->costType_:Ljava/util/List;

    .line 4557
    or-int/lit8 v2, v2, 0x2

    .line 4559
    :cond_86
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->costType_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_91
    .catchall {:try_start_7d .. :try_end_91} :catchall_44
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_7d .. :try_end_91} :catch_3e
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_91} :catch_92

    goto :goto_12

    .line 4587
    .end local v3           #tag:I
    :catch_92
    move-exception v1

    .line 4588
    .local v1, e:Ljava/io/IOException;
    :try_start_93
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_a1
    .catchall {:try_start_93 .. :try_end_a1} :catchall_44

    .line 4563
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_a1
    and-int/lit8 v4, v2, 0x4

    if-eq v4, v8, :cond_ae

    .line 4564
    :try_start_a5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->path_:Ljava/util/List;

    .line 4565
    or-int/lit8 v2, v2, 0x4

    .line 4567
    :cond_ae
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->path_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/aksara/lattice/LatticeP$Path;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    .line 4571
    :sswitch_bb
    and-int/lit8 v4, v2, 0x8

    if-eq v4, v9, :cond_c8

    .line 4572
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->stateType_:Ljava/util/List;

    .line 4573
    or-int/lit8 v2, v2, 0x8

    .line 4575
    :cond_c8
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->stateType_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    .line 4579
    :sswitch_d5
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->bitField0_:I

    .line 4580
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->maxEdgeFactor_:D
    :try_end_e1
    .catchall {:try_start_a5 .. :try_end_e1} :catchall_44
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_a5 .. :try_end_e1} :catch_3e
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_e1} :catch_92

    goto/16 :goto_12

    .line 4591
    .end local v3           #tag:I
    :cond_e3
    and-int/lit8 v4, v2, 0x1

    if-ne v4, v6, :cond_ef

    .line 4592
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->node_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->node_:Ljava/util/List;

    .line 4594
    :cond_ef
    and-int/lit8 v4, v2, 0x2

    if-ne v4, v7, :cond_fb

    .line 4595
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->costType_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->costType_:Ljava/util/List;

    .line 4597
    :cond_fb
    and-int/lit8 v4, v2, 0x4

    if-ne v4, v8, :cond_107

    .line 4598
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->path_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->path_:Ljava/util/List;

    .line 4600
    :cond_107
    and-int/lit8 v4, v2, 0x8

    if-ne v4, v9, :cond_113

    .line 4601
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->stateType_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->stateType_:Ljava/util/List;

    .line 4603
    :cond_113
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->makeExtensionsImmutable()V

    .line 4605
    return-void

    .line 4535
    nop

    :sswitch_data_118
    .sparse-switch
        0x0 -> :sswitch_23
        0xa -> :sswitch_25
        0x12 -> :sswitch_79
        0x1a -> :sswitch_a1
        0x22 -> :sswitch_bb
        0x29 -> :sswitch_d5
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
    .line 4506
    invoke-direct {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
            "Lcom/google/protos/aksara/lattice/LatticeP$Lattice;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p1, builder:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<Lcom/google/protos/aksara/lattice/LatticeP$Lattice;*>;"
    const/4 v0, -0x1

    .line 4511
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 4723
    iput-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->memoizedIsInitialized:B

    .line 4772
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->memoizedSerializedSize:I

    .line 4513
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/aksara/lattice/LatticeP$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4506
    invoke-direct {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4514
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 4723
    iput-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->memoizedIsInitialized:B

    .line 4772
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->memoizedSerializedSize:I

    .line 4514
    return-void
.end method

.method static synthetic access$5600(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4506
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->node_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4506
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->node_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4506
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->costType_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4506
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->costType_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4506
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->path_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4506
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->path_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4506
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->stateType_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4506
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->stateType_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6002(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4506
    iput-wide p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->maxEdgeFactor_:D

    return-wide p1
.end method

.method static synthetic access$6102(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4506
    iput p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$Lattice;
    .registers 1

    .prologue
    .line 4518
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 4717
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->node_:Ljava/util/List;

    .line 4718
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->costType_:Ljava/util/List;

    .line 4719
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->path_:Ljava/util/List;

    .line 4720
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->stateType_:Ljava/util/List;

    .line 4721
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->maxEdgeFactor_:D

    .line 4722
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 1

    .prologue
    .line 4862
    #calls: Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->access$5400()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 4865
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4842
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4848
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4812
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4818
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4853
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4859
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4832
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4838
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/aksara/lattice/LatticeP$Lattice;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4822
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4828
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    return-object v0
.end method


# virtual methods
.method public getCostType(I)Lcom/google/protos/aksara/lattice/LatticeP$CostType;
    .registers 3
    .parameter "index"

    .prologue
    .line 4657
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->costType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    return-object v0
.end method

.method public getCostTypeCount()I
    .registers 2

    .prologue
    .line 4654
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->costType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCostTypeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$CostType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4647
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->costType_:Ljava/util/List;

    return-object v0
.end method

.method public getCostTypeOrBuilder(I)Lcom/google/protos/aksara/lattice/LatticeP$CostTypeOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 4661
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->costType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$CostTypeOrBuilder;

    return-object v0
.end method

.method public getCostTypeOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/aksara/lattice/LatticeP$CostTypeOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4651
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->costType_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4506
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Lattice;
    .registers 2

    .prologue
    .line 4522
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    return-object v0
.end method

.method public getMaxEdgeFactor()D
    .registers 3

    .prologue
    .line 4713
    iget-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->maxEdgeFactor_:D

    return-wide v0
.end method

.method public getNode(I)Lcom/google/protos/aksara/lattice/LatticeP$Node;
    .registers 3
    .parameter "index"

    .prologue
    .line 4636
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->node_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;

    return-object v0
.end method

.method public getNodeCount()I
    .registers 2

    .prologue
    .line 4633
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->node_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNodeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4626
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->node_:Ljava/util/List;

    return-object v0
.end method

.method public getNodeOrBuilder(I)Lcom/google/protos/aksara/lattice/LatticeP$NodeOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 4640
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->node_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$NodeOrBuilder;

    return-object v0
.end method

.method public getNodeOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/aksara/lattice/LatticeP$NodeOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4630
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->node_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Lattice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4618
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPath(I)Lcom/google/protos/aksara/lattice/LatticeP$Path;
    .registers 3
    .parameter "index"

    .prologue
    .line 4678
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->path_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;

    return-object v0
.end method

.method public getPathCount()I
    .registers 2

    .prologue
    .line 4675
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->path_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPathList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4668
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->path_:Ljava/util/List;

    return-object v0
.end method

.method public getPathOrBuilder(I)Lcom/google/protos/aksara/lattice/LatticeP$PathOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 4682
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->path_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$PathOrBuilder;

    return-object v0
.end method

.method public getPathOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/aksara/lattice/LatticeP$PathOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4672
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->path_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 4774
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->memoizedSerializedSize:I

    .line 4775
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 4800
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 4777
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 4778
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->node_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 4779
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->node_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 4778
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 4782
    :cond_22
    const/4 v0, 0x0

    :goto_23
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->costType_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3c

    .line 4783
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->costType_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 4782
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 4786
    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->path_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_56

    .line 4787
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->path_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 4786
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 4790
    :cond_56
    const/4 v0, 0x0

    :goto_57
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->stateType_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_70

    .line 4791
    const/4 v4, 0x4

    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->stateType_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 4790
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 4794
    :cond_70
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_7e

    .line 4795
    const/4 v3, 0x5

    iget-wide v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->maxEdgeFactor_:D

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v1, v3

    .line 4798
    :cond_7e
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->extensionsSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 4799
    iput v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->memoizedSerializedSize:I

    move v2, v1

    .line 4800
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public getStateType(I)Lcom/google/protos/aksara/lattice/LatticeP$StateType;
    .registers 3
    .parameter "index"

    .prologue
    .line 4699
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->stateType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    return-object v0
.end method

.method public getStateTypeCount()I
    .registers 2

    .prologue
    .line 4696
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->stateType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStateTypeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$StateType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4689
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->stateType_:Ljava/util/List;

    return-object v0
.end method

.method public getStateTypeOrBuilder(I)Lcom/google/protos/aksara/lattice/LatticeP$StateTypeOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 4703
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->stateType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$StateTypeOrBuilder;

    return-object v0
.end method

.method public getStateTypeOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/aksara/lattice/LatticeP$StateTypeOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4693
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->stateType_:Ljava/util/List;

    return-object v0
.end method

.method public hasMaxEdgeFactor()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4710
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4725
    iget-byte v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->memoizedIsInitialized:B

    .line 4726
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_d

    if-ne v1, v2, :cond_b

    :goto_9
    move v3, v2

    .line 4745
    :goto_a
    return v3

    :cond_b
    move v2, v3

    .line 4726
    goto :goto_9

    .line 4728
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->getNodeCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 4729
    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->getNode(I)Lcom/google/protos/aksara/lattice/LatticeP$Node;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 4730
    iput-byte v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->memoizedIsInitialized:B

    goto :goto_a

    .line 4728
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 4734
    :cond_24
    const/4 v0, 0x0

    :goto_25
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->getPathCount()I

    move-result v4

    if-ge v0, v4, :cond_3b

    .line 4735
    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->getPath(I)Lcom/google/protos/aksara/lattice/LatticeP$Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_38

    .line 4736
    iput-byte v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->memoizedIsInitialized:B

    goto :goto_a

    .line 4734
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 4740
    :cond_3b
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->extensionsAreInitialized()Z

    move-result v4

    if-nez v4, :cond_44

    .line 4741
    iput-byte v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->memoizedIsInitialized:B

    goto :goto_a

    .line 4744
    :cond_44
    iput-byte v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->memoizedIsInitialized:B

    move v3, v2

    .line 4745
    goto :goto_a
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4506
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->newBuilderForType()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 2

    .prologue
    .line 4863
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4506
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->toBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 2

    .prologue
    .line 4867
    invoke-static {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->newBuilder(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

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
    .line 4806
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->writeReplace()Ljava/lang/Object;

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
    const/4 v4, 0x1

    .line 4750
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->getSerializedSize()I

    .line 4752
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 4754
    .local v0, extensionWriter:Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<Lcom/google/protos/aksara/lattice/LatticeP$Lattice;>.ExtensionWriter;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    iget-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->node_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 4755
    iget-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->node_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4754
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 4757
    :cond_1f
    const/4 v1, 0x0

    :goto_20
    iget-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->costType_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 4758
    const/4 v3, 0x2

    iget-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->costType_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4757
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 4760
    :cond_37
    const/4 v1, 0x0

    :goto_38
    iget-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->path_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4f

    .line 4761
    const/4 v3, 0x3

    iget-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->path_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4760
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 4763
    :cond_4f
    const/4 v1, 0x0

    :goto_50
    iget-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->stateType_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_67

    .line 4764
    const/4 v3, 0x4

    iget-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->stateType_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4763
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 4766
    :cond_67
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_73

    .line 4767
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->maxEdgeFactor_:D

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 4769
    :cond_73
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 4770
    return-void
.end method
