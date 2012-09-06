.class public final Lcom/google/protos/aksara/lattice/LatticeP$Node;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "LatticeP.java"

# interfaces
.implements Lcom/google/protos/aksara/lattice/LatticeP$NodeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/lattice/LatticeP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/protos/aksara/lattice/LatticeP$Node;",
        ">;",
        "Lcom/google/protos/aksara/lattice/LatticeP$NodeOrBuilder;"
    }
.end annotation


# static fields
.field public static final DESCRIPTION_FIELD_NUMBER:I = 0xf

.field public static final EDGE_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Node;",
            ">;"
        }
    .end annotation
.end field

.field public static final PIXEL_FIELD_NUMBER:I = 0x2

.field public static final POSTERIOR_FIELD_NUMBER:I = 0x4

.field public static final STATE_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Node;


# instance fields
.field private bitField0_:I

.field private description_:Lcom/google/protobuf/LazyStringList;

.field private edge_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Edge;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private pixel_:I

.field private posterior_:F

.field private state_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1775
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$Node$1;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$1;-><init>()V

    sput-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->PARSER:Lcom/google/protobuf/Parser;

    .line 2476
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$Node;-><init>(Z)V

    sput-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Node;

    .line 2477
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Node;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->initFields()V

    .line 2478
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
    const/4 v4, -0x1

    const/16 v8, 0x10

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 1703
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 1878
    iput-byte v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->memoizedIsInitialized:B

    .line 1927
    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->memoizedSerializedSize:I

    .line 1704
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->initFields()V

    .line 1705
    const/4 v2, 0x0

    .line 1707
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 1708
    .local v0, done:Z
    :cond_11
    :goto_11
    if-nez v0, :cond_c9

    .line 1709
    :try_start_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 1710
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_f2

    .line 1715
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_11

    .line 1717
    const/4 v0, 0x1

    goto :goto_11

    .line 1712
    :sswitch_22
    const/4 v0, 0x1

    .line 1713
    goto :goto_11

    .line 1722
    :sswitch_24
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v6, :cond_31

    .line 1723
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->edge_:Ljava/util/List;

    .line 1724
    or-int/lit8 v2, v2, 0x1

    .line 1726
    :cond_31
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->edge_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_43
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_13 .. :try_end_3c} :catch_3d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_3c} :catch_7a

    goto :goto_11

    .line 1757
    .end local v3           #tag:I
    :catch_3d
    move-exception v1

    .line 1758
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_3e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_43

    .line 1763
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_43
    move-exception v4

    and-int/lit8 v5, v2, 0x1

    if-ne v5, v6, :cond_50

    .line 1764
    iget-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->edge_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->edge_:Ljava/util/List;

    .line 1766
    :cond_50
    and-int/lit8 v5, v2, 0x4

    if-ne v5, v7, :cond_5c

    .line 1767
    iget-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->state_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->state_:Ljava/util/List;

    .line 1769
    :cond_5c
    and-int/lit8 v5, v2, 0x10

    if-ne v5, v8, :cond_69

    .line 1770
    new-instance v5, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v5, v6}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->description_:Lcom/google/protobuf/LazyStringList;

    .line 1772
    :cond_69
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->makeExtensionsImmutable()V

    throw v4

    .line 1730
    .restart local v3       #tag:I
    :sswitch_6d
    :try_start_6d
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->bitField0_:I

    .line 1731
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->pixel_:I
    :try_end_79
    .catchall {:try_start_6d .. :try_end_79} :catchall_43
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6d .. :try_end_79} :catch_3d
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_79} :catch_7a

    goto :goto_11

    .line 1759
    .end local v3           #tag:I
    :catch_7a
    move-exception v1

    .line 1760
    .local v1, e:Ljava/io/IOException;
    :try_start_7b
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_89
    .catchall {:try_start_7b .. :try_end_89} :catchall_43

    .line 1735
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_89
    and-int/lit8 v4, v2, 0x4

    if-eq v4, v7, :cond_96

    .line 1736
    :try_start_8d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->state_:Ljava/util/List;

    .line 1737
    or-int/lit8 v2, v2, 0x4

    .line 1739
    :cond_96
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->state_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/aksara/lattice/LatticeP$State;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 1743
    :sswitch_a3
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->bitField0_:I

    .line 1744
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->posterior_:F

    goto/16 :goto_11

    .line 1748
    :sswitch_b1
    and-int/lit8 v4, v2, 0x10

    if-eq v4, v8, :cond_be

    .line 1749
    new-instance v4, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->description_:Lcom/google/protobuf/LazyStringList;

    .line 1750
    or-int/lit8 v2, v2, 0x10

    .line 1752
    :cond_be
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_c7
    .catchall {:try_start_8d .. :try_end_c7} :catchall_43
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_8d .. :try_end_c7} :catch_3d
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_c7} :catch_7a

    goto/16 :goto_11

    .line 1763
    .end local v3           #tag:I
    :cond_c9
    and-int/lit8 v4, v2, 0x1

    if-ne v4, v6, :cond_d5

    .line 1764
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->edge_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->edge_:Ljava/util/List;

    .line 1766
    :cond_d5
    and-int/lit8 v4, v2, 0x4

    if-ne v4, v7, :cond_e1

    .line 1767
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->state_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->state_:Ljava/util/List;

    .line 1769
    :cond_e1
    and-int/lit8 v4, v2, 0x10

    if-ne v4, v8, :cond_ee

    .line 1770
    new-instance v4, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v4, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->description_:Lcom/google/protobuf/LazyStringList;

    .line 1772
    :cond_ee
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->makeExtensionsImmutable()V

    .line 1774
    return-void

    .line 1710
    :sswitch_data_f2
    .sparse-switch
        0x0 -> :sswitch_22
        0xa -> :sswitch_24
        0x10 -> :sswitch_6d
        0x1a -> :sswitch_89
        0x25 -> :sswitch_a3
        0x7a -> :sswitch_b1
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
    .line 1681
    invoke-direct {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$Node;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
            "Lcom/google/protos/aksara/lattice/LatticeP$Node;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p1, builder:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<Lcom/google/protos/aksara/lattice/LatticeP$Node;*>;"
    const/4 v0, -0x1

    .line 1686
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 1878
    iput-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->memoizedIsInitialized:B

    .line 1927
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->memoizedSerializedSize:I

    .line 1688
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/aksara/lattice/LatticeP$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1681
    invoke-direct {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$Node;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1689
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 1878
    iput-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->memoizedIsInitialized:B

    .line 1927
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->memoizedSerializedSize:I

    .line 1689
    return-void
.end method

.method static synthetic access$2400(Lcom/google/protos/aksara/lattice/LatticeP$Node;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->edge_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/google/protos/aksara/lattice/LatticeP$Node;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1681
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->edge_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/protos/aksara/lattice/LatticeP$Node;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1681
    iput p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->pixel_:I

    return p1
.end method

.method static synthetic access$2600(Lcom/google/protos/aksara/lattice/LatticeP$Node;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->state_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/google/protos/aksara/lattice/LatticeP$Node;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1681
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->state_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/google/protos/aksara/lattice/LatticeP$Node;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1681
    iput p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->posterior_:F

    return p1
.end method

.method static synthetic access$2800(Lcom/google/protos/aksara/lattice/LatticeP$Node;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->description_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/google/protos/aksara/lattice/LatticeP$Node;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1681
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->description_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/google/protos/aksara/lattice/LatticeP$Node;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1681
    iput p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$Node;
    .registers 1

    .prologue
    .line 1693
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Node;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1872
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->edge_:Ljava/util/List;

    .line 1873
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->pixel_:I

    .line 1874
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->state_:Ljava/util/List;

    .line 1875
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->posterior_:F

    .line 1876
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->description_:Lcom/google/protobuf/LazyStringList;

    .line 1877
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 1

    .prologue
    .line 2022
    #calls: Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->access$2200()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/aksara/lattice/LatticeP$Node;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2025
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Node;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/aksara/lattice/LatticeP$Node;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2002
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Node;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2008
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$Node;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1972
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Node;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1978
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/aksara/lattice/LatticeP$Node;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2013
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Node;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2019
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/aksara/lattice/LatticeP$Node;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1992
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Node;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1998
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/aksara/lattice/LatticeP$Node;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1982
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Node;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1988
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1681
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Node;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Node;
    .registers 2

    .prologue
    .line 1697
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$Node;

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionCount()I
    .registers 2

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->description_:Lcom/google/protobuf/LazyStringList;

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
    .line 1858
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->description_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getEdge(I)Lcom/google/protos/aksara/lattice/LatticeP$Edge;
    .registers 3
    .parameter "index"

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->edge_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    return-object v0
.end method

.method public getEdgeCount()I
    .registers 2

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->edge_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEdgeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Edge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->edge_:Ljava/util/List;

    return-object v0
.end method

.method public getEdgeOrBuilder(I)Lcom/google/protos/aksara/lattice/LatticeP$EdgeOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->edge_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$EdgeOrBuilder;

    return-object v0
.end method

.method public getEdgeOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/aksara/lattice/LatticeP$EdgeOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->edge_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1787
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPixel()I
    .registers 2

    .prologue
    .line 1819
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->pixel_:I

    return v0
.end method

.method public getPosterior()F
    .registers 2

    .prologue
    .line 1850
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->posterior_:F

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1929
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->memoizedSerializedSize:I

    .line 1930
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    move v3, v2

    .line 1960
    .end local v2           #size:I
    .local v3, size:I
    :goto_8
    return v3

    .line 1932
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_9
    const/4 v2, 0x0

    .line 1933
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->edge_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_23

    .line 1934
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->edge_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1933
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1937
    :cond_23
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_30

    .line 1938
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->pixel_:I

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 1941
    :cond_30
    const/4 v1, 0x0

    :goto_31
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->state_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4a

    .line 1942
    const/4 v5, 0x3

    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->state_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1941
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 1945
    :cond_4a
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_58

    .line 1946
    const/4 v4, 0x4

    iget v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->posterior_:F

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v2, v4

    .line 1950
    :cond_58
    const/4 v0, 0x0

    .line 1951
    .local v0, dataSize:I
    const/4 v1, 0x0

    :goto_5a
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_70

    .line 1952
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1951
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 1955
    :cond_70
    add-int/2addr v2, v0

    .line 1956
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->getDescriptionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 1958
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->extensionsSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 1959
    iput v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->memoizedSerializedSize:I

    move v3, v2

    .line 1960
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_8
.end method

.method public getState(I)Lcom/google/protos/aksara/lattice/LatticeP$State;
    .registers 3
    .parameter "index"

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->state_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$State;

    return-object v0
.end method

.method public getStateCount()I
    .registers 2

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->state_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStateList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->state_:Ljava/util/List;

    return-object v0
.end method

.method public getStateOrBuilder(I)Lcom/google/protos/aksara/lattice/LatticeP$StateOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->state_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$StateOrBuilder;

    return-object v0
.end method

.method public getStateOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/aksara/lattice/LatticeP$StateOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->state_:Ljava/util/List;

    return-object v0
.end method

.method public hasPixel()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1816
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPosterior()Z
    .registers 3

    .prologue
    .line 1847
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->bitField0_:I

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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1880
    iget-byte v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->memoizedIsInitialized:B

    .line 1881
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_d

    if-ne v1, v2, :cond_b

    :goto_9
    move v3, v2

    .line 1900
    :goto_a
    return v3

    :cond_b
    move v2, v3

    .line 1881
    goto :goto_9

    .line 1883
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->getEdgeCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 1884
    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->getEdge(I)Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 1885
    iput-byte v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->memoizedIsInitialized:B

    goto :goto_a

    .line 1883
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1889
    :cond_24
    const/4 v0, 0x0

    :goto_25
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->getStateCount()I

    move-result v4

    if-ge v0, v4, :cond_3b

    .line 1890
    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->getState(I)Lcom/google/protos/aksara/lattice/LatticeP$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/aksara/lattice/LatticeP$State;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_38

    .line 1891
    iput-byte v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->memoizedIsInitialized:B

    goto :goto_a

    .line 1889
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 1895
    :cond_3b
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->extensionsAreInitialized()Z

    move-result v4

    if-nez v4, :cond_44

    .line 1896
    iput-byte v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->memoizedIsInitialized:B

    goto :goto_a

    .line 1899
    :cond_44
    iput-byte v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->memoizedIsInitialized:B

    move v3, v2

    .line 1900
    goto :goto_a
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1681
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->newBuilderForType()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 2

    .prologue
    .line 2023
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1681
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->toBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 2

    .prologue
    .line 2027
    invoke-static {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->newBuilder(Lcom/google/protos/aksara/lattice/LatticeP$Node;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

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
    .line 1966
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
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1905
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->getSerializedSize()I

    .line 1907
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 1909
    .local v0, extensionWriter:Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<Lcom/google/protos/aksara/lattice/LatticeP$Node;>.ExtensionWriter;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    iget-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->edge_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 1910
    iget-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->edge_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1909
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1912
    :cond_20
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_2b

    .line 1913
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->pixel_:I

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1915
    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    iget-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->state_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 1916
    const/4 v3, 0x3

    iget-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->state_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1915
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 1918
    :cond_43
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_4f

    .line 1919
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->posterior_:F

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1921
    :cond_4f
    const/4 v1, 0x0

    :goto_50
    iget-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_66

    .line 1922
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1921
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 1924
    :cond_66
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 1925
    return-void
.end method
