.class public final Lcom/google/protos/aksara/lattice/LatticeP$Path;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LatticeP.java"

# interfaces
.implements Lcom/google/protos/aksara/lattice/LatticeP$PathOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/lattice/LatticeP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Path"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    }
.end annotation


# static fields
.field public static final COST_FIELD_NUMBER:I = 0x4

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x6

.field public static final EDGE_INDEX_FIELD_NUMBER:I = 0x3

.field public static final LABEL_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Path;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEXT_FIELD_NUMBER:I = 0x1

.field public static final WEIGHTED_COST_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Path;


# instance fields
.field private bitField0_:I

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

.field private description_:Ljava/lang/Object;

.field private edgeIndex_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private label_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private text_:Ljava/lang/Object;

.field private weightedCost_:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2632
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$Path$1;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$1;-><init>()V

    sput-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->PARSER:Lcom/google/protobuf/Parser;

    .line 3424
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$Path;-><init>(Z)V

    sput-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Path;

    .line 3425
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Path;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->initFields()V

    .line 3426
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 14
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/16 v10, 0x8

    const/4 v8, 0x2

    const/4 v9, 0x4

    .line 2542
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2785
    iput-byte v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->memoizedIsInitialized:B

    .line 2823
    iput v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->memoizedSerializedSize:I

    .line 2543
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->initFields()V

    .line 2544
    const/4 v4, 0x0

    .line 2546
    .local v4, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 2547
    .local v0, done:Z
    :cond_11
    :goto_11
    if-nez v0, :cond_10d

    .line 2548
    :try_start_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 2549
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_136

    .line 2554
    invoke-virtual {p0, p1, p2, v5}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_11

    .line 2556
    const/4 v0, 0x1

    goto :goto_11

    .line 2551
    :sswitch_22
    const/4 v0, 0x1

    .line 2552
    goto :goto_11

    .line 2561
    :sswitch_24
    iget v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->bitField0_:I

    .line 2562
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->text_:Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_37
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_13 .. :try_end_30} :catch_31
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_30} :catch_78

    goto :goto_11

    .line 2614
    .end local v5           #tag:I
    :catch_31
    move-exception v1

    .line 2615
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_32
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_37

    .line 2620
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_37
    move-exception v6

    and-int/lit8 v7, v4, 0x2

    if-ne v7, v8, :cond_45

    .line 2621
    new-instance v7, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v8, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v7, v8}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v7, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->label_:Lcom/google/protobuf/LazyStringList;

    .line 2623
    :cond_45
    and-int/lit8 v7, v4, 0x4

    if-ne v7, v9, :cond_51

    .line 2624
    iget-object v7, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->edgeIndex_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->edgeIndex_:Ljava/util/List;

    .line 2626
    :cond_51
    and-int/lit8 v7, v4, 0x8

    if-ne v7, v10, :cond_5d

    .line 2627
    iget-object v7, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->cost_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->cost_:Ljava/util/List;

    .line 2629
    :cond_5d
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->makeExtensionsImmutable()V

    throw v6

    .line 2566
    .restart local v5       #tag:I
    :sswitch_61
    and-int/lit8 v6, v4, 0x2

    if-eq v6, v8, :cond_6e

    .line 2567
    :try_start_65
    new-instance v6, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v6}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->label_:Lcom/google/protobuf/LazyStringList;

    .line 2568
    or-int/lit8 v4, v4, 0x2

    .line 2570
    :cond_6e
    iget-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_77
    .catchall {:try_start_65 .. :try_end_77} :catchall_37
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_65 .. :try_end_77} :catch_31
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_77} :catch_78

    goto :goto_11

    .line 2616
    .end local v5           #tag:I
    :catch_78
    move-exception v1

    .line 2617
    .local v1, e:Ljava/io/IOException;
    :try_start_79
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_87
    .catchall {:try_start_79 .. :try_end_87} :catchall_37

    .line 2574
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_87
    and-int/lit8 v6, v4, 0x4

    if-eq v6, v9, :cond_94

    .line 2575
    :try_start_8b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->edgeIndex_:Ljava/util/List;

    .line 2576
    or-int/lit8 v4, v4, 0x4

    .line 2578
    :cond_94
    iget-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->edgeIndex_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 2582
    :sswitch_a3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 2583
    .local v2, length:I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    .line 2584
    .local v3, limit:I
    and-int/lit8 v6, v4, 0x4

    if-eq v6, v9, :cond_be

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_be

    .line 2585
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->edgeIndex_:Ljava/util/List;

    .line 2586
    or-int/lit8 v4, v4, 0x4

    .line 2588
    :cond_be
    :goto_be
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_d2

    .line 2589
    iget-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->edgeIndex_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_be

    .line 2591
    :cond_d2
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_11

    .line 2595
    .end local v2           #length:I
    .end local v3           #limit:I
    :sswitch_d7
    and-int/lit8 v6, v4, 0x8

    if-eq v6, v10, :cond_e4

    .line 2596
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->cost_:Ljava/util/List;

    .line 2597
    or-int/lit8 v4, v4, 0x8

    .line 2599
    :cond_e4
    iget-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->cost_:Ljava/util/List;

    sget-object v7, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 2603
    :sswitch_f1
    iget v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->bitField0_:I

    .line 2604
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->weightedCost_:D

    goto/16 :goto_11

    .line 2608
    :sswitch_ff
    iget v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->bitField0_:I

    .line 2609
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->description_:Ljava/lang/Object;
    :try_end_10b
    .catchall {:try_start_8b .. :try_end_10b} :catchall_37
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_8b .. :try_end_10b} :catch_31
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_10b} :catch_78

    goto/16 :goto_11

    .line 2620
    .end local v5           #tag:I
    :cond_10d
    and-int/lit8 v6, v4, 0x2

    if-ne v6, v8, :cond_11a

    .line 2621
    new-instance v6, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v7, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v6, v7}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->label_:Lcom/google/protobuf/LazyStringList;

    .line 2623
    :cond_11a
    and-int/lit8 v6, v4, 0x4

    if-ne v6, v9, :cond_126

    .line 2624
    iget-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->edgeIndex_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->edgeIndex_:Ljava/util/List;

    .line 2626
    :cond_126
    and-int/lit8 v6, v4, 0x8

    if-ne v6, v10, :cond_132

    .line 2627
    iget-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->cost_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->cost_:Ljava/util/List;

    .line 2629
    :cond_132
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->makeExtensionsImmutable()V

    .line 2631
    return-void

    .line 2549
    :sswitch_data_136
    .sparse-switch
        0x0 -> :sswitch_22
        0xa -> :sswitch_24
        0x12 -> :sswitch_61
        0x18 -> :sswitch_87
        0x1a -> :sswitch_a3
        0x22 -> :sswitch_d7
        0x29 -> :sswitch_f1
        0x32 -> :sswitch_ff
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
    .line 2520
    invoke-direct {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$Path;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2525
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2785
    iput-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->memoizedIsInitialized:B

    .line 2823
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->memoizedSerializedSize:I

    .line 2527
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/aksara/lattice/LatticeP$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2520
    invoke-direct {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$Path;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2528
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2785
    iput-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->memoizedIsInitialized:B

    .line 2823
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->memoizedSerializedSize:I

    .line 2528
    return-void
.end method

.method static synthetic access$3300(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2520
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->text_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/google/protos/aksara/lattice/LatticeP$Path;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2520
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2520
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->label_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/google/protos/aksara/lattice/LatticeP$Path;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2520
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->label_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2520
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->edgeIndex_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/google/protos/aksara/lattice/LatticeP$Path;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2520
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->edgeIndex_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2520
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->cost_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/google/protos/aksara/lattice/LatticeP$Path;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2520
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->cost_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/google/protos/aksara/lattice/LatticeP$Path;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2520
    iput-wide p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->weightedCost_:D

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2520
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->description_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/google/protos/aksara/lattice/LatticeP$Path;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2520
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/google/protos/aksara/lattice/LatticeP$Path;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2520
    iput p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$Path;
    .registers 1

    .prologue
    .line 2532
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Path;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 2778
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->text_:Ljava/lang/Object;

    .line 2779
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->label_:Lcom/google/protobuf/LazyStringList;

    .line 2780
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->edgeIndex_:Ljava/util/List;

    .line 2781
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->cost_:Ljava/util/List;

    .line 2782
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->weightedCost_:D

    .line 2783
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->description_:Ljava/lang/Object;

    .line 2784
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 1

    .prologue
    .line 2926
    #calls: Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->access$3100()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2929
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/aksara/lattice/LatticeP$Path;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2906
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Path;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2912
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$Path;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2876
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Path;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2882
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/aksara/lattice/LatticeP$Path;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2917
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Path;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2923
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/aksara/lattice/LatticeP$Path;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2896
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Path;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2902
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/aksara/lattice/LatticeP$Path;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2886
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Path;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2892
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;

    return-object v0
.end method


# virtual methods
.method public getCost(I)Lcom/google/protos/aksara/lattice/LatticeP$Cost;
    .registers 3
    .parameter "index"

    .prologue
    .line 2727
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->cost_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    return-object v0
.end method

.method public getCostCount()I
    .registers 2

    .prologue
    .line 2724
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->cost_:Ljava/util/List;

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
    .line 2717
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->cost_:Ljava/util/List;

    return-object v0
.end method

.method public getCostOrBuilder(I)Lcom/google/protos/aksara/lattice/LatticeP$CostOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 2731
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->cost_:Ljava/util/List;

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
    .line 2721
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->cost_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2520
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Path;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Path;
    .registers 2

    .prologue
    .line 2536
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Path;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2751
    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->description_:Ljava/lang/Object;

    .line 2752
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2753
    check-cast v1, Ljava/lang/String;

    .line 2761
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2755
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2757
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2758
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2759
    iput-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->description_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2761
    goto :goto_8
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2766
    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->description_:Ljava/lang/Object;

    .line 2767
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2768
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2770
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->description_:Ljava/lang/Object;

    .line 2773
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

.method public getEdgeIndex(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 2710
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->edgeIndex_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEdgeIndexCount()I
    .registers 2

    .prologue
    .line 2707
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->edgeIndex_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEdgeIndexList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2704
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->edgeIndex_:Ljava/util/List;

    return-object v0
.end method

.method public getLabel(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLabelBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 2696
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLabelCount()I
    .registers 2

    .prologue
    .line 2689
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getLabelList()Ljava/util/List;
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
    .line 2686
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->label_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2644
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x1

    .line 2825
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->memoizedSerializedSize:I

    .line 2826
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    move v3, v2

    .line 2864
    .end local v2           #size:I
    .local v3, size:I
    :goto_8
    return v3

    .line 2828
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_9
    const/4 v2, 0x0

    .line 2829
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_19

    .line 2830
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2834
    :cond_19
    const/4 v0, 0x0

    .line 2835
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_31

    .line 2836
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 2835
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 2839
    :cond_31
    add-int/2addr v2, v0

    .line 2840
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->getLabelList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 2843
    const/4 v0, 0x0

    .line 2844
    const/4 v1, 0x0

    :goto_3f
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->edgeIndex_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5b

    .line 2845
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->edgeIndex_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 2844
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 2848
    :cond_5b
    add-int/2addr v2, v0

    .line 2849
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->getEdgeIndexList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 2851
    const/4 v1, 0x0

    :goto_68
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->cost_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_80

    .line 2852
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->cost_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2851
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 2855
    :cond_80
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8f

    .line 2856
    const/4 v4, 0x5

    iget-wide v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->weightedCost_:D

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v4

    add-int/2addr v2, v4

    .line 2859
    :cond_8f
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_9f

    .line 2860
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2863
    :cond_9f
    iput v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->memoizedSerializedSize:I

    move v3, v2

    .line 2864
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_8
.end method

.method public getText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2655
    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->text_:Ljava/lang/Object;

    .line 2656
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2657
    check-cast v1, Ljava/lang/String;

    .line 2665
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2659
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2661
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2662
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2663
    iput-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->text_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2665
    goto :goto_8
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2670
    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->text_:Ljava/lang/Object;

    .line 2671
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2672
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2674
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->text_:Ljava/lang/Object;

    .line 2677
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

.method public getWeightedCost()D
    .registers 3

    .prologue
    .line 2741
    iget-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->weightedCost_:D

    return-wide v0
.end method

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 2748
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->bitField0_:I

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

.method public hasText()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2652
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasWeightedCost()Z
    .registers 3

    .prologue
    .line 2738
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->bitField0_:I

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
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2787
    iget-byte v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->memoizedIsInitialized:B

    .line 2788
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 2797
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 2788
    goto :goto_9

    .line 2790
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->getCostCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 2791
    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->getCost(I)Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 2792
    iput-byte v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->memoizedIsInitialized:B

    move v2, v3

    .line 2793
    goto :goto_9

    .line 2790
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2796
    :cond_24
    iput-byte v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2520
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->newBuilderForType()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 2

    .prologue
    .line 2927
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2520
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->toBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 2

    .prologue
    .line 2931
    invoke-static {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->newBuilder(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

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
    .line 2870
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
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2802
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->getSerializedSize()I

    .line 2803
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 2804
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2806
    :cond_13
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 2807
    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2806
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 2809
    :cond_28
    const/4 v0, 0x0

    :goto_29
    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->edgeIndex_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 2810
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->edgeIndex_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2809
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 2812
    :cond_44
    const/4 v0, 0x0

    :goto_45
    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->cost_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5b

    .line 2813
    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->cost_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2812
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 2815
    :cond_5b
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_67

    .line 2816
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->weightedCost_:D

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 2818
    :cond_67
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_75

    .line 2819
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2821
    :cond_75
    return-void
.end method
