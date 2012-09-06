.class public final Lcom/google/goggles/FlowProtos$FlowData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FlowProtos.java"

# interfaces
.implements Lcom/google/goggles/FlowProtos$FlowDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/FlowProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlowData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/FlowProtos$FlowData$Builder;
    }
.end annotation


# static fields
.field public static final FRAME_CHANGE_FIELD_NUMBER:I = 0x1

.field public static final PRE_PACKED_CORRESPONDENCES_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/goggles/FlowProtos$FlowData;

.field private static final serialVersionUID:J


# instance fields
.field private frameChange_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/FlowProtos$FrameChange;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private prePackedCorrespondences_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 817
    new-instance v0, Lcom/google/goggles/FlowProtos$FlowData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/FlowProtos$FlowData;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/FlowProtos$FlowData;->defaultInstance:Lcom/google/goggles/FlowProtos$FlowData;

    .line 818
    sget-object v0, Lcom/google/goggles/FlowProtos$FlowData;->defaultInstance:Lcom/google/goggles/FlowProtos$FlowData;

    invoke-direct {v0}, Lcom/google/goggles/FlowProtos$FlowData;->initFields()V

    .line 819
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/FlowProtos$FlowData$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 368
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 420
    iput-byte v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->memoizedIsInitialized:B

    .line 440
    iput v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->memoizedSerializedSize:I

    .line 369
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/FlowProtos$FlowData$Builder;Lcom/google/goggles/FlowProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/google/goggles/FlowProtos$FlowData;-><init>(Lcom/google/goggles/FlowProtos$FlowData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 370
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 420
    iput-byte v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->memoizedIsInitialized:B

    .line 440
    iput v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->memoizedSerializedSize:I

    .line 370
    return-void
.end method

.method static synthetic access$700(Lcom/google/goggles/FlowProtos$FlowData;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->frameChange_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/goggles/FlowProtos$FlowData;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/google/goggles/FlowProtos$FlowData;->frameChange_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/goggles/FlowProtos$FlowData;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->prePackedCorrespondences_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/goggles/FlowProtos$FlowData;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/google/goggles/FlowProtos$FlowData;->prePackedCorrespondences_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/FlowProtos$FlowData;
    .registers 1

    .prologue
    .line 374
    sget-object v0, Lcom/google/goggles/FlowProtos$FlowData;->defaultInstance:Lcom/google/goggles/FlowProtos$FlowData;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 417
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->frameChange_:Ljava/util/List;

    .line 418
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->prePackedCorrespondences_:Ljava/util/List;

    .line 419
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 1

    .prologue
    .line 537
    #calls: Lcom/google/goggles/FlowProtos$FlowData$Builder;->create()Lcom/google/goggles/FlowProtos$FlowData$Builder;
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->access$500()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/FlowProtos$FlowData;)Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 2
    .parameter

    .prologue
    .line 540
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData;->newBuilder()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->mergeFrom(Lcom/google/goggles/FlowProtos$FlowData;)Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/FlowProtos$FlowData;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData;->newBuilder()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    .line 507
    invoke-virtual {v0, p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 508
    #calls: Lcom/google/goggles/FlowProtos$FlowData$Builder;->buildParsed()Lcom/google/goggles/FlowProtos$FlowData;
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->access$400(Lcom/google/goggles/FlowProtos$FlowData$Builder;)Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    .line 510
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FlowProtos$FlowData;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 517
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData;->newBuilder()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    .line 518
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 519
    #calls: Lcom/google/goggles/FlowProtos$FlowData$Builder;->buildParsed()Lcom/google/goggles/FlowProtos$FlowData;
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->access$400(Lcom/google/goggles/FlowProtos$FlowData$Builder;)Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    .line 521
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/FlowProtos$FlowData;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData;->newBuilder()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FlowProtos$FlowData$Builder;

    #calls: Lcom/google/goggles/FlowProtos$FlowData$Builder;->buildParsed()Lcom/google/goggles/FlowProtos$FlowData;
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->access$400(Lcom/google/goggles/FlowProtos$FlowData$Builder;)Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FlowProtos$FlowData;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 479
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData;->newBuilder()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FlowProtos$FlowData$Builder;

    #calls: Lcom/google/goggles/FlowProtos$FlowData$Builder;->buildParsed()Lcom/google/goggles/FlowProtos$FlowData;
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->access$400(Lcom/google/goggles/FlowProtos$FlowData$Builder;)Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/FlowProtos$FlowData;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData;->newBuilder()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FlowProtos$FlowData$Builder;

    #calls: Lcom/google/goggles/FlowProtos$FlowData$Builder;->buildParsed()Lcom/google/goggles/FlowProtos$FlowData;
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->access$400(Lcom/google/goggles/FlowProtos$FlowData$Builder;)Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FlowProtos$FlowData;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData;->newBuilder()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/FlowProtos$FlowData$Builder;->buildParsed()Lcom/google/goggles/FlowProtos$FlowData;
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->access$400(Lcom/google/goggles/FlowProtos$FlowData$Builder;)Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/FlowProtos$FlowData;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData;->newBuilder()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FlowProtos$FlowData$Builder;

    #calls: Lcom/google/goggles/FlowProtos$FlowData$Builder;->buildParsed()Lcom/google/goggles/FlowProtos$FlowData;
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->access$400(Lcom/google/goggles/FlowProtos$FlowData$Builder;)Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FlowProtos$FlowData;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData;->newBuilder()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FlowProtos$FlowData$Builder;

    #calls: Lcom/google/goggles/FlowProtos$FlowData$Builder;->buildParsed()Lcom/google/goggles/FlowProtos$FlowData;
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->access$400(Lcom/google/goggles/FlowProtos$FlowData$Builder;)Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/FlowProtos$FlowData;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 484
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData;->newBuilder()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FlowProtos$FlowData$Builder;

    #calls: Lcom/google/goggles/FlowProtos$FlowData$Builder;->buildParsed()Lcom/google/goggles/FlowProtos$FlowData;
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->access$400(Lcom/google/goggles/FlowProtos$FlowData$Builder;)Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FlowProtos$FlowData;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 490
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData;->newBuilder()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FlowProtos$FlowData$Builder;

    #calls: Lcom/google/goggles/FlowProtos$FlowData$Builder;->buildParsed()Lcom/google/goggles/FlowProtos$FlowData;
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->access$400(Lcom/google/goggles/FlowProtos$FlowData$Builder;)Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/FlowProtos$FlowData;
    .registers 2

    .prologue
    .line 378
    sget-object v0, Lcom/google/goggles/FlowProtos$FlowData;->defaultInstance:Lcom/google/goggles/FlowProtos$FlowData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FlowData;->getDefaultInstanceForType()Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    return-object v0
.end method

.method public getFrameChange(I)Lcom/google/goggles/FlowProtos$FrameChange;
    .registers 3
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->frameChange_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FlowProtos$FrameChange;

    return-object v0
.end method

.method public getFrameChangeCount()I
    .registers 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->frameChange_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFrameChangeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/FlowProtos$FrameChange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->frameChange_:Ljava/util/List;

    return-object v0
.end method

.method public getFrameChangeOrBuilder(I)Lcom/google/goggles/FlowProtos$FrameChangeOrBuilder;
    .registers 3
    .parameter

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->frameChange_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FlowProtos$FrameChangeOrBuilder;

    return-object v0
.end method

.method public getFrameChangeOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/FlowProtos$FrameChangeOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->frameChange_:Ljava/util/List;

    return-object v0
.end method

.method public getPrePackedCorrespondences(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->prePackedCorrespondences_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPrePackedCorrespondencesCount()I
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->prePackedCorrespondences_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPrePackedCorrespondencesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->prePackedCorrespondences_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 442
    iget v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->memoizedSerializedSize:I

    .line 443
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 460
    :goto_6
    return v0

    :cond_7
    move v1, v2

    move v3, v2

    .line 446
    :goto_9
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->frameChange_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 447
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->frameChange_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 446
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_23
    move v1, v2

    .line 452
    :goto_24
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->prePackedCorrespondences_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3d

    .line 453
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->prePackedCorrespondences_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v1

    .line 452
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_24

    .line 456
    :cond_3d
    add-int v0, v3, v1

    .line 457
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FlowData;->getPrePackedCorrespondencesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 459
    iput v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->memoizedSerializedSize:I

    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 422
    iget-byte v1, p0, Lcom/google/goggles/FlowProtos$FlowData;->memoizedIsInitialized:B

    .line 423
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 426
    :goto_8
    return v0

    .line 423
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 425
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 2

    .prologue
    .line 538
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData;->newBuilder()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FlowData;->newBuilderForType()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 2

    .prologue
    .line 542
    invoke-static {p0}, Lcom/google/goggles/FlowProtos$FlowData;->newBuilder(Lcom/google/goggles/FlowProtos$FlowData;)Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FlowData;->toBuilder()Lcom/google/goggles/FlowProtos$FlowData$Builder;

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
    .line 467
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 431
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FlowData;->getSerializedSize()I

    move v1, v2

    .line 432
    :goto_5
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->frameChange_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 433
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->frameChange_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 432
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 435
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->prePackedCorrespondences_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_34

    .line 436
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData;->prePackedCorrespondences_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 435
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 438
    :cond_34
    return-void
.end method
