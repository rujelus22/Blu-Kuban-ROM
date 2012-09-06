.class public final Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LatticeP.java"

# interfaces
.implements Lcom/google/protos/aksara/lattice/LatticeP$NBestOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/lattice/LatticeP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NBestOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    }
.end annotation


# static fields
.field public static final INCLUDE_COSTS_FIELD_NUMBER:I = 0x5

.field public static final INCLUDE_EDGES_FIELD_NUMBER:I = 0x3

.field public static final INCLUDE_LABELS_FIELD_NUMBER:I = 0x4

.field public static final NUM_PATHS_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNIQUE_TEXT_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;


# instance fields
.field private bitField0_:I

.field private includeCosts_:Z

.field private includeEdges_:Z

.field private includeLabels_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private numPaths_:I

.field private uniqueText_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5521
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$1;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$1;-><init>()V

    sput-object v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 5945
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    .line 5946
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->initFields()V

    .line 5947
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

    .line 5467
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5594
    iput-byte v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->memoizedIsInitialized:B

    .line 5623
    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->memoizedSerializedSize:I

    .line 5468
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->initFields()V

    .line 5469
    const/4 v2, 0x0

    .line 5471
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 5472
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_7b

    .line 5473
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 5474
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_80

    .line 5479
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 5481
    const/4 v0, 0x1

    goto :goto_d

    .line 5476
    :sswitch_1e
    const/4 v0, 0x1

    .line 5477
    goto :goto_d

    .line 5486
    :sswitch_20
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

    .line 5487
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->numPaths_:I
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 5512
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 5513
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 5518
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->makeExtensionsImmutable()V

    throw v4

    .line 5491
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

    .line 5492
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->uniqueText_:Z
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 5514
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 5515
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

    .line 5496
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

    .line 5497
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->includeEdges_:Z

    goto :goto_d

    .line 5501
    :sswitch_61
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

    .line 5502
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->includeLabels_:Z

    goto :goto_d

    .line 5506
    :sswitch_6e
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

    .line 5507
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->includeCosts_:Z
    :try_end_7a
    .catchall {:try_start_54 .. :try_end_7a} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_7a} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_7a} :catch_45

    goto :goto_d

    .line 5518
    .end local v3           #tag:I
    :cond_7b
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->makeExtensionsImmutable()V

    .line 5520
    return-void

    .line 5474
    nop

    :sswitch_data_80
    .sparse-switch
        0x0 -> :sswitch_1e
        0x8 -> :sswitch_20
        0x10 -> :sswitch_38
        0x18 -> :sswitch_54
        0x20 -> :sswitch_61
        0x28 -> :sswitch_6e
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
    .line 5445
    invoke-direct {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 5450
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 5594
    iput-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->memoizedIsInitialized:B

    .line 5623
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->memoizedSerializedSize:I

    .line 5452
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/aksara/lattice/LatticeP$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5445
    invoke-direct {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5453
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5594
    iput-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->memoizedIsInitialized:B

    .line 5623
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->memoizedSerializedSize:I

    .line 5453
    return-void
.end method

.method static synthetic access$6502(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5445
    iput p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->numPaths_:I

    return p1
.end method

.method static synthetic access$6602(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5445
    iput-boolean p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->uniqueText_:Z

    return p1
.end method

.method static synthetic access$6702(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5445
    iput-boolean p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->includeEdges_:Z

    return p1
.end method

.method static synthetic access$6802(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5445
    iput-boolean p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->includeLabels_:Z

    return p1
.end method

.method static synthetic access$6902(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5445
    iput-boolean p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->includeCosts_:Z

    return p1
.end method

.method static synthetic access$7002(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5445
    iput p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
    .registers 1

    .prologue
    .line 5457
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 5588
    iput v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->numPaths_:I

    .line 5589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->uniqueText_:Z

    .line 5590
    iput-boolean v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->includeEdges_:Z

    .line 5591
    iput-boolean v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->includeLabels_:Z

    .line 5592
    iput-boolean v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->includeCosts_:Z

    .line 5593
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    .registers 1

    .prologue
    .line 5712
    #calls: Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->access$6300()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 5715
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5692
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5698
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5662
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5668
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5703
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5709
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5682
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5688
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5672
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5678
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5445
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
    .registers 2

    .prologue
    .line 5461
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    return-object v0
.end method

.method public getIncludeCosts()Z
    .registers 2

    .prologue
    .line 5584
    iget-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->includeCosts_:Z

    return v0
.end method

.method public getIncludeEdges()Z
    .registers 2

    .prologue
    .line 5564
    iget-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->includeEdges_:Z

    return v0
.end method

.method public getIncludeLabels()Z
    .registers 2

    .prologue
    .line 5574
    iget-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->includeLabels_:Z

    return v0
.end method

.method public getNumPaths()I
    .registers 2

    .prologue
    .line 5544
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->numPaths_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5533
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5625
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->memoizedSerializedSize:I

    .line 5626
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 5650
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 5628
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 5629
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 5630
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->numPaths_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5633
    :cond_18
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_25

    .line 5634
    iget-boolean v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->uniqueText_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5637
    :cond_25
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_33

    .line 5638
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->includeEdges_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5641
    :cond_33
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_42

    .line 5642
    iget-boolean v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->includeLabels_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5645
    :cond_42
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_52

    .line 5646
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->includeCosts_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5649
    :cond_52
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->memoizedSerializedSize:I

    move v1, v0

    .line 5650
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getUniqueText()Z
    .registers 2

    .prologue
    .line 5554
    iget-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->uniqueText_:Z

    return v0
.end method

.method public hasIncludeCosts()Z
    .registers 3

    .prologue
    .line 5581
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

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

.method public hasIncludeEdges()Z
    .registers 3

    .prologue
    .line 5561
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

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

.method public hasIncludeLabels()Z
    .registers 3

    .prologue
    .line 5571
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

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

.method public hasNumPaths()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5541
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUniqueText()Z
    .registers 3

    .prologue
    .line 5551
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

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

    .line 5596
    iget-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->memoizedIsInitialized:B

    .line 5597
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 5600
    :goto_8
    return v1

    .line 5597
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 5599
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5445
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->newBuilderForType()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    .registers 2

    .prologue
    .line 5713
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5445
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->toBuilder()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    .registers 2

    .prologue
    .line 5717
    invoke-static {p0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->newBuilder(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

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
    .line 5656
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

    .line 5605
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->getSerializedSize()I

    .line 5606
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 5607
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->numPaths_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5609
    :cond_11
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 5610
    iget-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->uniqueText_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5612
    :cond_1c
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_28

    .line 5613
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->includeEdges_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5615
    :cond_28
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_35

    .line 5616
    iget-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->includeLabels_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5618
    :cond_35
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_43

    .line 5619
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->includeCosts_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5621
    :cond_43
    return-void
.end method
