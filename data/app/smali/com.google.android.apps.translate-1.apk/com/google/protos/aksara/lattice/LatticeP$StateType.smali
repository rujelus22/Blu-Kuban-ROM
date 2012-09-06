.class public final Lcom/google/protos/aksara/lattice/LatticeP$StateType;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LatticeP.java"

# interfaces
.implements Lcom/google/protos/aksara/lattice/LatticeP$StateTypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/lattice/LatticeP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;
    }
.end annotation


# static fields
.field public static final DESCRIPTION_FIELD_NUMBER:I = 0xf

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$StateType;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$StateType;


# instance fields
.field private bitField0_:I

.field private description_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3514
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$1;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$1;-><init>()V

    sput-object v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->PARSER:Lcom/google/protobuf/Parser;

    .line 3917
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;-><init>(Z)V

    sput-object v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    .line 3918
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->initFields()V

    .line 3919
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

    .line 3469
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3585
    iput-byte v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->memoizedIsInitialized:B

    .line 3605
    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->memoizedSerializedSize:I

    .line 3470
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->initFields()V

    .line 3471
    const/4 v2, 0x0

    .line 3473
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 3474
    .local v0, done:Z
    :cond_e
    :goto_e
    if-nez v0, :cond_6c

    .line 3475
    :try_start_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 3476
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_7e

    .line 3481
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_e

    .line 3483
    const/4 v0, 0x1

    goto :goto_e

    .line 3478
    :sswitch_1f
    const/4 v0, 0x1

    .line 3479
    goto :goto_e

    .line 3488
    :sswitch_21
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->bitField0_:I

    .line 3489
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->name_:Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2d} :catch_5d

    goto :goto_e

    .line 3502
    .end local v3           #tag:I
    :catch_2e
    move-exception v1

    .line 3503
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2f
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_34

    .line 3508
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_34
    move-exception v4

    and-int/lit8 v5, v2, 0x2

    if-ne v5, v6, :cond_42

    .line 3509
    new-instance v5, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v6, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v5, v6}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->description_:Lcom/google/protobuf/LazyStringList;

    .line 3511
    :cond_42
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->makeExtensionsImmutable()V

    throw v4

    .line 3493
    .restart local v3       #tag:I
    :sswitch_46
    and-int/lit8 v4, v2, 0x2

    if-eq v4, v6, :cond_53

    .line 3494
    :try_start_4a
    new-instance v4, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->description_:Lcom/google/protobuf/LazyStringList;

    .line 3495
    or-int/lit8 v2, v2, 0x2

    .line 3497
    :cond_53
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_5c
    .catchall {:try_start_4a .. :try_end_5c} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4a .. :try_end_5c} :catch_2e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_5c} :catch_5d

    goto :goto_e

    .line 3504
    .end local v3           #tag:I
    :catch_5d
    move-exception v1

    .line 3505
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

    .line 3508
    .end local v1           #e:Ljava/io/IOException;
    :cond_6c
    and-int/lit8 v4, v2, 0x2

    if-ne v4, v6, :cond_79

    .line 3509
    new-instance v4, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v4, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->description_:Lcom/google/protobuf/LazyStringList;

    .line 3511
    :cond_79
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->makeExtensionsImmutable()V

    .line 3513
    return-void

    .line 3476
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
    .line 3447
    invoke-direct {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3452
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3585
    iput-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->memoizedIsInitialized:B

    .line 3605
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->memoizedSerializedSize:I

    .line 3454
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/aksara/lattice/LatticeP$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3447
    invoke-direct {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3455
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3585
    iput-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->memoizedIsInitialized:B

    .line 3605
    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->memoizedSerializedSize:I

    .line 3455
    return-void
.end method

.method static synthetic access$4300(Lcom/google/protos/aksara/lattice/LatticeP$StateType;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3447
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/google/protos/aksara/lattice/LatticeP$StateType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3447
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/google/protos/aksara/lattice/LatticeP$StateType;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3447
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->description_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/google/protos/aksara/lattice/LatticeP$StateType;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3447
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->description_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/google/protos/aksara/lattice/LatticeP$StateType;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3447
    iput p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$StateType;
    .registers 1

    .prologue
    .line 3459
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 3582
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->name_:Ljava/lang/Object;

    .line 3583
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->description_:Lcom/google/protobuf/LazyStringList;

    .line 3584
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;
    .registers 1

    .prologue
    .line 3687
    #calls: Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->access$4100()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/aksara/lattice/LatticeP$StateType;)Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3690
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$StateType;)Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/aksara/lattice/LatticeP$StateType;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3667
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$StateType;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3673
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$StateType;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3637
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$StateType;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3643
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/aksara/lattice/LatticeP$StateType;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3678
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$StateType;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3684
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/aksara/lattice/LatticeP$StateType;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3657
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$StateType;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3663
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/aksara/lattice/LatticeP$StateType;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3647
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$StateType;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3653
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3447
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$StateType;
    .registers 2

    .prologue
    .line 3463
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->defaultInstance:Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 3574
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 3578
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionCount()I
    .registers 2

    .prologue
    .line 3571
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->description_:Lcom/google/protobuf/LazyStringList;

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
    .line 3568
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->description_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3537
    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->name_:Ljava/lang/Object;

    .line 3538
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3539
    check-cast v1, Ljava/lang/String;

    .line 3547
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3541
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3543
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3544
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3545
    iput-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3547
    goto :goto_8
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3552
    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->name_:Ljava/lang/Object;

    .line 3553
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3554
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3556
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->name_:Ljava/lang/Object;

    .line 3559
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
            "Lcom/google/protos/aksara/lattice/LatticeP$StateType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3526
    sget-object v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 3607
    iget v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->memoizedSerializedSize:I

    .line 3608
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    move v3, v2

    .line 3625
    .end local v2           #size:I
    .local v3, size:I
    :goto_7
    return v3

    .line 3610
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_8
    const/4 v2, 0x0

    .line 3611
    iget v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_18

    .line 3612
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3616
    :cond_18
    const/4 v0, 0x0

    .line 3617
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_30

    .line 3618
    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 3617
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 3621
    :cond_30
    add-int/2addr v2, v0

    .line 3622
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->getDescriptionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 3624
    iput v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->memoizedSerializedSize:I

    move v3, v2

    .line 3625
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_7
.end method

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3534
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 3587
    iget-byte v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->memoizedIsInitialized:B

    .line 3588
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 3591
    :goto_8
    return v1

    .line 3588
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 3590
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3447
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->newBuilderForType()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;
    .registers 2

    .prologue
    .line 3688
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->newBuilder()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3447
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->toBuilder()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;
    .registers 2

    .prologue
    .line 3692
    invoke-static {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->newBuilder(Lcom/google/protos/aksara/lattice/LatticeP$StateType;)Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;

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
    .line 3631
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 3596
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->getSerializedSize()I

    .line 3597
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_11

    .line 3598
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3600
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 3601
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3600
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 3603
    :cond_28
    return-void
.end method
