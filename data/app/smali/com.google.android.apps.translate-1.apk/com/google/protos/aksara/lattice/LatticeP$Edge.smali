.class public final Lcom/google/protos/aksara/lattice/LatticeP$Edge;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "LatticeP.java"

# interfaces
.implements Lcom/google/protos/aksara/lattice/LatticeP$EdgeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/lattice/LatticeP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Edge"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/protos/aksara/lattice/LatticeP$Edge;",
        ">;",
        "Lcom/google/protos/aksara/lattice/LatticeP$EdgeOrBuilder;"
    }
.end annotation


# static fields
.field public static final BOUNDS_FIELD_NUMBER:I = 0x4

.field public static final COST_FIELD_NUMBER:I = 0x3

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0xf

.field public static final LABEL_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Edge;",
            ">;"
        }
    .end annotation
.end field

.field public static final TARGET_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Edge;


# instance fields
.field private bitField0_:I

.field private bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

.field private cost_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Cost;",
            ">;"
        }
    .end annotation
.end field

.field private description_:Lcom/google/protobuf/LazyStringList;

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private target_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 511
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$1;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$1;-><init>()V

    sput-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->PARSER:Lcom/google/protobuf/Parser;

    .line 1192
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;-><init>(Z)V

    sput-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    .line 1193
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->initFields()V

    .line 1194
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 12
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/16 v8, 0x10

    const/4 v7, 0x4

    .line 437
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 626
    iput-byte v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->memoizedIsInitialized:B

    .line 669
    iput v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->memoizedSerializedSize:I

    .line 438
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->initFields()V

    .line 439
    const/4 v2, 0x0

    .line 441
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 442
    .local v0, done:Z
    :cond_10
    :goto_10
    if-nez v0, :cond_cd

    .line 443
    :try_start_12
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 444
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_ea

    .line 449
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_10

    .line 451
    const/4 v0, 0x1

    goto :goto_10

    .line 446
    :sswitch_21
    const/4 v0, 0x1

    .line 447
    goto :goto_10

    .line 456
    :sswitch_23
    iget v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bitField0_:I

    .line 457
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->target_:I
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_36
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_12 .. :try_end_2f} :catch_30
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2f} :catch_61

    goto :goto_10

    .line 496
    .end local v4           #tag:I
    :catch_30
    move-exception v1

    .line 497
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_31
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_36

    .line 502
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_36
    move-exception v5

    and-int/lit8 v6, v2, 0x4

    if-ne v6, v7, :cond_43

    .line 503
    iget-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->cost_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->cost_:Ljava/util/List;

    .line 505
    :cond_43
    and-int/lit8 v6, v2, 0x10

    if-ne v6, v8, :cond_50

    .line 506
    new-instance v6, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v7, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v6, v7}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->description_:Lcom/google/protobuf/LazyStringList;

    .line 508
    :cond_50
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->makeExtensionsImmutable()V

    throw v5

    .line 461
    .restart local v4       #tag:I
    :sswitch_54
    :try_start_54
    iget v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bitField0_:I

    .line 462
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->label_:Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_54 .. :try_end_60} :catchall_36
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_60} :catch_30
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_60} :catch_61

    goto :goto_10

    .line 498
    .end local v4           #tag:I
    :catch_61
    move-exception v1

    .line 499
    .local v1, e:Ljava/io/IOException;
    :try_start_62
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_70
    .catchall {:try_start_62 .. :try_end_70} :catchall_36

    .line 466
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_70
    and-int/lit8 v5, v2, 0x4

    if-eq v5, v7, :cond_7d

    .line 467
    :try_start_74
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->cost_:Ljava/util/List;

    .line 468
    or-int/lit8 v2, v2, 0x4

    .line 470
    :cond_7d
    iget-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->cost_:Ljava/util/List;

    sget-object v6, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 474
    :sswitch_89
    const/4 v3, 0x0

    .line 475
    .local v3, subBuilder:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
    iget v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-ne v5, v7, :cond_96

    .line 476
    iget-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    invoke-virtual {v5}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->toBuilder()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    move-result-object v3

    .line 478
    :cond_96
    sget-object v5, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    iput-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    .line 479
    if-eqz v3, :cond_ad

    .line 480
    iget-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    invoke-virtual {v3, v5}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->mergeFrom(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    .line 481
    invoke-virtual {v3}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->buildPartial()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    .line 483
    :cond_ad
    iget v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bitField0_:I

    goto/16 :goto_10

    .line 487
    .end local v3           #subBuilder:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
    :sswitch_b5
    and-int/lit8 v5, v2, 0x10

    if-eq v5, v8, :cond_c2

    .line 488
    new-instance v5, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->description_:Lcom/google/protobuf/LazyStringList;

    .line 489
    or-int/lit8 v2, v2, 0x10

    .line 491
    :cond_c2
    iget-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_cb
    .catchall {:try_start_74 .. :try_end_cb} :catchall_36
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_74 .. :try_end_cb} :catch_30
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_cb} :catch_61

    goto/16 :goto_10

    .line 502
    .end local v4           #tag:I
    :cond_cd
    and-int/lit8 v5, v2, 0x4

    if-ne v5, v7, :cond_d9

    .line 503
    iget-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->cost_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->cost_:Ljava/util/List;

    .line 505
    :cond_d9
    and-int/lit8 v5, v2, 0x10

    if-ne v5, v8, :cond_e6

    .line 506
    new-instance v5, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v5, v6}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->description_:Lcom/google/protobuf/LazyStringList;

    .line 508
    :cond_e6
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->makeExtensionsImmutable()V

    .line 510
    return-void

    .line 444
    :sswitch_data_ea
    .sparse-switch
        0x0 -> :sswitch_21
        0x8 -> :sswitch_23
        0x12 -> :sswitch_54
        0x1a -> :sswitch_70
        0x22 -> :sswitch_89
        0x7a -> :sswitch_b5
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
    .line 415
    invoke-direct {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
            "Lcom/google/protos/aksara/lattice/LatticeP$Edge;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p1, builder:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<Lcom/google/protos/aksara/lattice/LatticeP$Edge;*>;"
    const/4 v0, -0x1

    .line 420
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 626
    iput-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->memoizedIsInitialized:B

    .line 669
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->memoizedSerializedSize:I

    .line 422
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/aksara/lattice/LatticeP$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 423
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 626
    iput-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->memoizedIsInitialized:B

    .line 669
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->memoizedSerializedSize:I

    .line 423
    return-void
.end method

.method static synthetic access$1000(Lcom/google/protos/aksara/lattice/LatticeP$Edge;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->label_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/protos/aksara/lattice/LatticeP$Edge;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/protos/aksara/lattice/LatticeP$Edge;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->cost_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/protos/aksara/lattice/LatticeP$Edge;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->cost_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/protos/aksara/lattice/LatticeP$Edge;Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/protos/aksara/lattice/LatticeP$Edge;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->description_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/protos/aksara/lattice/LatticeP$Edge;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->description_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/protos/aksara/lattice/LatticeP$Edge;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 415
    iput p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bitField0_:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/protos/aksara/lattice/LatticeP$Edge;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 415
    iput p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->target_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$Edge;
    .registers 1

    .prologue
    .line 427
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 620
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->target_:I

    .line 621
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->label_:Ljava/lang/Object;

    .line 622
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->cost_:Ljava/util/List;

    .line 623
    invoke-static {}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->getDefaultInstance()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    .line 624
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->description_:Lcom/google/protobuf/LazyStringList;

    .line 625
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 1

    .prologue
    .line 764
    #calls: Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->access$700()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/aksara/lattice/LatticeP$Edge;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 767
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Edge;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/aksara/lattice/LatticeP$Edge;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 744
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Edge;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 750
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$Edge;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 714
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Edge;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 720
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/aksara/lattice/LatticeP$Edge;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 755
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Edge;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 761
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/aksara/lattice/LatticeP$Edge;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 734
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Edge;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 740
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/aksara/lattice/LatticeP$Edge;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 724
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Edge;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 730
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    return-object v0
.end method


# virtual methods
.method public getBounds()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
    .registers 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    return-object v0
.end method

.method public getCost(I)Lcom/google/protos/aksara/lattice/LatticeP$Cost;
    .registers 3
    .parameter "index"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->cost_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    return-object v0
.end method

.method public getCostCount()I
    .registers 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->cost_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCostList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Cost;",
            ">;"
        }
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->cost_:Ljava/util/List;

    return-object v0
.end method

.method public getCostOrBuilder(I)Lcom/google/protos/aksara/lattice/LatticeP$CostOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->cost_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$CostOrBuilder;

    return-object v0
.end method

.method public getCostOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/aksara/lattice/LatticeP$CostOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->cost_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Edge;
    .registers 2

    .prologue
    .line 431
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 612
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionCount()I
    .registers 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->description_:Lcom/google/protobuf/LazyStringList;

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
    .line 606
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->description_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 5

    .prologue
    .line 544
    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->label_:Ljava/lang/Object;

    .line 545
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 546
    check-cast v1, Ljava/lang/String;

    .line 554
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 548
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 550
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 551
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 552
    iput-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->label_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 554
    goto :goto_8
.end method

.method public getLabelBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 559
    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->label_:Ljava/lang/Object;

    .line 560
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 561
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 563
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->label_:Ljava/lang/Object;

    .line 566
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
            "Lcom/google/protos/aksara/lattice/LatticeP$Edge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 523
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 671
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->memoizedSerializedSize:I

    .line 672
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_a

    move v3, v2

    .line 702
    .end local v2           #size:I
    .local v3, size:I
    :goto_9
    return v3

    .line 674
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_a
    const/4 v2, 0x0

    .line 675
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_18

    .line 676
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->target_:I

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 679
    :cond_18
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_27

    .line 680
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 683
    :cond_27
    const/4 v1, 0x0

    .local v1, i:I
    :goto_28
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->cost_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_41

    .line 684
    const/4 v5, 0x3

    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->cost_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 683
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 687
    :cond_41
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_4e

    .line 688
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 692
    :cond_4e
    const/4 v0, 0x0

    .line 693
    .local v0, dataSize:I
    const/4 v1, 0x0

    :goto_50
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_66

    .line 694
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 693
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 697
    :cond_66
    add-int/2addr v2, v0

    .line 698
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->getDescriptionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 700
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->extensionsSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 701
    iput v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->memoizedSerializedSize:I

    move v3, v2

    .line 702
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_9
.end method

.method public getTarget()I
    .registers 2

    .prologue
    .line 534
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->target_:I

    return v0
.end method

.method public hasBounds()Z
    .registers 3

    .prologue
    .line 595
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bitField0_:I

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

.method public hasLabel()Z
    .registers 3

    .prologue
    .line 541
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bitField0_:I

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

.method public hasTarget()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 531
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bitField0_:I

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

    .line 628
    iget-byte v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->memoizedIsInitialized:B

    .line 629
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 642
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 629
    goto :goto_9

    .line 631
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->getCostCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 632
    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->getCost(I)Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 633
    iput-byte v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->memoizedIsInitialized:B

    move v2, v3

    .line 634
    goto :goto_9

    .line 631
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 637
    :cond_24
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->extensionsAreInitialized()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 638
    iput-byte v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->memoizedIsInitialized:B

    move v2, v3

    .line 639
    goto :goto_9

    .line 641
    :cond_2e
    iput-byte v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->newBuilderForType()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 2

    .prologue
    .line 765
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->toBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 2

    .prologue
    .line 769
    invoke-static {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->newBuilder(Lcom/google/protos/aksara/lattice/LatticeP$Edge;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

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
    .line 708
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->writeReplace()Ljava/lang/Object;

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
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 647
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->getSerializedSize()I

    .line 649
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 651
    .local v0, extensionWriter:Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<Lcom/google/protos/aksara/lattice/LatticeP$Edge;>.ExtensionWriter;"
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_15

    .line 652
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->target_:I

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 654
    :cond_15
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_22

    .line 655
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 657
    :cond_22
    const/4 v1, 0x0

    .local v1, i:I
    :goto_23
    iget-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->cost_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 658
    const/4 v3, 0x3

    iget-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->cost_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 657
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 660
    :cond_3a
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_45

    .line 661
    iget-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    invoke-virtual {p1, v5, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 663
    :cond_45
    const/4 v1, 0x0

    :goto_46
    iget-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5c

    .line 664
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 666
    :cond_5c
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 667
    return-void
.end method
