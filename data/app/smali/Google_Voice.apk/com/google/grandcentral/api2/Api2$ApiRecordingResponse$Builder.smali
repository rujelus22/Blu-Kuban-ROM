.class public final Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiRecordingResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;",
        "Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiRecordingResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private recording_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;",
            ">;"
        }
    .end annotation
.end field

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 22553
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 22661
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 22704
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->recording_:Ljava/util/List;

    .line 22554
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->maybeForceBuilderInitialization()V

    .line 22555
    return-void
.end method

.method static synthetic access$26900()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 1

    .prologue
    .line 22548
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 1

    .prologue
    .line 22560
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureRecordingIsMutable()V
    .registers 3

    .prologue
    .line 22707
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 22708
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->recording_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->recording_:Ljava/util/List;

    .line 22709
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    .line 22711
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 22558
    return-void
.end method


# virtual methods
.method public addAllRecording(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 22774
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->ensureRecordingIsMutable()V

    .line 22775
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->recording_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 22777
    return-object p0
.end method

.method public addRecording(ILcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 22767
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->ensureRecordingIsMutable()V

    .line 22768
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->recording_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 22770
    return-object p0
.end method

.method public addRecording(ILcom/google/grandcentral/api2/Api2$ApiVoiceRecording;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 22750
    if-nez p2, :cond_8

    .line 22751
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22753
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->ensureRecordingIsMutable()V

    .line 22754
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->recording_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 22756
    return-object p0
.end method

.method public addRecording(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 22760
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->ensureRecordingIsMutable()V

    .line 22761
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->recording_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22763
    return-object p0
.end method

.method public addRecording(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22740
    if-nez p1, :cond_8

    .line 22741
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22743
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->ensureRecordingIsMutable()V

    .line 22744
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->recording_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22746
    return-object p0
.end method

.method public build()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
    .registers 3

    .prologue
    .line 22581
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    move-result-object v0

    .line 22582
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 22583
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 22585
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22548
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
    .registers 6

    .prologue
    .line 22589
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 22590
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    .line 22591
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 22592
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 22593
    or-int/lit8 v2, v2, 0x1

    .line 22595
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->access$27102(Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 22596
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 22597
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->recording_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->recording_:Ljava/util/List;

    .line 22598
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    .line 22600
    :cond_2a
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->recording_:Ljava/util/List;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->recording_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->access$27202(Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;Ljava/util/List;)Ljava/util/List;

    .line 22601
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->access$27302(Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;I)I

    .line 22602
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22548
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 2

    .prologue
    .line 22564
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 22565
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 22566
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    .line 22567
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->recording_:Ljava/util/List;

    .line 22568
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    .line 22569
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22548
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22548
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearRecording()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 2

    .prologue
    .line 22780
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->recording_:Ljava/util/List;

    .line 22781
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    .line 22783
    return-object p0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 2

    .prologue
    .line 22697
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 22699
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    .line 22700
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 3

    .prologue
    .line 22573
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 22548
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22548
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22548
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 22548
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
    .registers 2

    .prologue
    .line 22577
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 22548
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22548
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRecording(I)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;
    .registers 3
    .parameter "index"

    .prologue
    .line 22720
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->recording_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    return-object v0
.end method

.method public getRecordingCount()I
    .registers 2

    .prologue
    .line 22717
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->recording_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecordingList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22714
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->recording_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 22666
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 22663
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

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
    const/4 v1, 0x0

    .line 22624
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->hasStatus()Z

    move-result v2

    if-nez v2, :cond_8

    .line 22638
    :cond_7
    :goto_7
    return v1

    .line 22628
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 22632
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->getRecordingCount()I

    move-result v2

    if-ge v0, v2, :cond_26

    .line 22633
    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->getRecording(I)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 22632
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 22638
    :cond_26
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 22606
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 22620
    :cond_6
    :goto_6
    return-object p0

    .line 22607
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 22608
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

    .line 22610
    :cond_14
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->recording_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->access$27200(Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 22611
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->recording_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 22612
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->recording_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->access$27200(Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->recording_:Ljava/util/List;

    .line 22613
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 22615
    :cond_33
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->ensureRecordingIsMutable()V

    .line 22616
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->recording_:Ljava/util/List;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->recording_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->access$27200(Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22645
    const/4 v2, 0x0

    .line 22647
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 22652
    if-eqz v2, :cond_10

    .line 22653
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

    .line 22656
    :cond_10
    return-object p0

    .line 22648
    :catch_11
    move-exception v1

    .line 22649
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    move-object v2, v0

    .line 22650
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 22652
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 22653
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

    :cond_21
    throw v3
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22548
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 22548
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22548
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 22685
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 22687
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 22693
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    .line 22694
    return-object p0

    .line 22690
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    goto :goto_1f
.end method

.method public removeRecording(I)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 3
    .parameter "index"

    .prologue
    .line 22786
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->ensureRecordingIsMutable()V

    .line 22787
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->recording_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 22789
    return-object p0
.end method

.method public setRecording(ILcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 22734
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->ensureRecordingIsMutable()V

    .line 22735
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->recording_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 22737
    return-object p0
.end method

.method public setRecording(ILcom/google/grandcentral/api2/Api2$ApiVoiceRecording;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 22724
    if-nez p2, :cond_8

    .line 22725
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22727
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->ensureRecordingIsMutable()V

    .line 22728
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->recording_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 22730
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 22679
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 22681
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    .line 22682
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22669
    if-nez p1, :cond_8

    .line 22670
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22672
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 22674
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->bitField0_:I

    .line 22675
    return-object p0
.end method
