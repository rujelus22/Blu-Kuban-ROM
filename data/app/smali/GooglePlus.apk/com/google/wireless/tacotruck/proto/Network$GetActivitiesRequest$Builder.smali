.class public final Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private maxCount_:I

.field private params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

.field private view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2696
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2834
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    .line 2879
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 2697
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->maybeForceBuilderInitialization()V

    .line 2698
    return-void
.end method

.method static synthetic access$3100()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 1

    .prologue
    .line 2691
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 1

    .prologue
    .line 2703
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2701
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2691
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;
    .registers 3

    .prologue
    .line 2726
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    move-result-object v0

    .line 2727
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2728
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2730
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2691
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;
    .registers 6

    .prologue
    .line 2744
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 2745
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2746
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2747
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 2748
    or-int/lit8 v2, v2, 0x1

    .line 2750
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->access$3302(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    .line 2751
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 2752
    or-int/lit8 v2, v2, 0x2

    .line 2754
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->maxCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->maxCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->access$3402(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;I)I

    .line 2755
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 2756
    or-int/lit8 v2, v2, 0x4

    .line 2758
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->access$3502(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 2759
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->access$3602(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;I)I

    .line 2760
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2691
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2691
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 2

    .prologue
    .line 2707
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2708
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    .line 2709
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2710
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->maxCount_:I

    .line 2711
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2712
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 2713
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2714
    return-object p0
.end method

.method public clearMaxCount()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2872
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2873
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->maxCount_:I

    .line 2875
    return-object p0
.end method

.method public clearParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 2

    .prologue
    .line 2915
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 2917
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2918
    return-object p0
.end method

.method public clearView()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2851
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2852
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    .line 2854
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2691
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2691
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 3

    .prologue
    .line 2718
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

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
    .line 2691
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2691
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2691
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;
    .registers 2

    .prologue
    .line 2722
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2863
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->maxCount_:I

    return v0
.end method

.method public getParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    .registers 2

    .prologue
    .line 2884
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    return-object v0
.end method

.method public getView()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2839
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    return-object v0
.end method

.method public hasMaxCount()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2860
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

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

.method public hasParams()Z
    .registers 3

    .prologue
    .line 2881
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

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

.method public hasView()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 2836
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 2778
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->hasParams()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2779
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->getParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2781
    const/4 v0, 0x0

    .line 2784
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
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
    .line 2691
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2691
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

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
    .line 2691
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2792
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 2793
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_4a

    .line 2798
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2800
    :sswitch_d
    return-object p0

    .line 2805
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2806
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    move-result-object v3

    .line 2807
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;
    if-eqz v3, :cond_0

    .line 2808
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2809
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    goto :goto_0

    .line 2814
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2815
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->maxCount_:I

    goto :goto_0

    .line 2819
    :sswitch_2e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v1

    .line 2820
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->hasParams()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 2821
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->getParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 2823
    :cond_3f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2824
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->setParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    goto :goto_0

    .line 2793
    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
        0x1a -> :sswitch_2e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 2764
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2774
    :cond_6
    :goto_6
    return-object p0

    .line 2765
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->hasView()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2766
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->getView()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->setView(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    .line 2768
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->hasMaxCount()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2769
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->getMaxCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->setMaxCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    .line 2771
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->hasParams()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2772
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->getParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->mergeParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    goto :goto_6
.end method

.method public mergeParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2903
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 2905
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 2911
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2912
    return-object p0

    .line 2908
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    goto :goto_1f
.end method

.method public setMaxCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2866
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2867
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->maxCount_:I

    .line 2869
    return-object p0
.end method

.method public setParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 2897
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 2899
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2900
    return-object p0
.end method

.method public setParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2887
    if-nez p1, :cond_8

    .line 2888
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2890
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 2892
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2893
    return-object p0
.end method

.method public setView(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2842
    if-nez p1, :cond_8

    .line 2843
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2845
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2846
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    .line 2848
    return-object p0
.end method
