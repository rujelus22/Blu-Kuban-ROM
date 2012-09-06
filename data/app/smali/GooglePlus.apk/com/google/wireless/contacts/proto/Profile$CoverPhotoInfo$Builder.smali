.class public final Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Profile.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;",
        "Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private coverPhotoId_:Ljava/lang/Object;

.field private leftOffset_:I

.field private topOffset_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2772
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2896
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->coverPhotoId_:Ljava/lang/Object;

    .line 2773
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->maybeForceBuilderInitialization()V

    .line 2774
    return-void
.end method

.method static synthetic access$3800()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;
    .registers 1

    .prologue
    .line 2767
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;
    .registers 1

    .prologue
    .line 2779
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2777
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2767
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;
    .registers 3

    .prologue
    .line 2802
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    move-result-object v0

    .line 2803
    .local v0, result:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2804
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2806
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2767
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;
    .registers 6

    .prologue
    .line 2820
    new-instance v1, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;-><init>(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;Lcom/google/wireless/contacts/proto/Profile$1;)V

    .line 2821
    .local v1, result:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    .line 2822
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2823
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 2824
    or-int/lit8 v2, v2, 0x1

    .line 2826
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->coverPhotoId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->coverPhotoId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->access$4002(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2827
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 2828
    or-int/lit8 v2, v2, 0x2

    .line 2830
    :cond_1c
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->topOffset_:I

    #setter for: Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->topOffset_:I
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->access$4102(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;I)I

    .line 2831
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 2832
    or-int/lit8 v2, v2, 0x4

    .line 2834
    :cond_28
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->leftOffset_:I

    #setter for: Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->leftOffset_:I
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->access$4202(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;I)I

    .line 2835
    #setter for: Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->access$4302(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;I)I

    .line 2836
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2767
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->clear()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2767
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->clear()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2783
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2784
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->coverPhotoId_:Ljava/lang/Object;

    .line 2785
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    .line 2786
    iput v1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->topOffset_:I

    .line 2787
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    .line 2788
    iput v1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->leftOffset_:I

    .line 2789
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    .line 2790
    return-object p0
.end method

.method public clearCoverPhotoId()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;
    .registers 2

    .prologue
    .line 2920
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    .line 2921
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->getCoverPhotoId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->coverPhotoId_:Ljava/lang/Object;

    .line 2923
    return-object p0
.end method

.method public clearLeftOffset()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;
    .registers 2

    .prologue
    .line 2967
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    .line 2968
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->leftOffset_:I

    .line 2970
    return-object p0
.end method

.method public clearTopOffset()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;
    .registers 2

    .prologue
    .line 2946
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    .line 2947
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->topOffset_:I

    .line 2949
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2767
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2767
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;
    .registers 3

    .prologue
    .line 2794
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;)Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

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
    .line 2767
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCoverPhotoId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2901
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->coverPhotoId_:Ljava/lang/Object;

    .line 2902
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2903
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2904
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->coverPhotoId_:Ljava/lang/Object;

    .line 2907
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2767
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2767
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;
    .registers 2

    .prologue
    .line 2798
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLeftOffset()I
    .registers 2

    .prologue
    .line 2958
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->leftOffset_:I

    return v0
.end method

.method public getTopOffset()I
    .registers 2

    .prologue
    .line 2937
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->topOffset_:I

    return v0
.end method

.method public hasCoverPhotoId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2898
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLeftOffset()Z
    .registers 3

    .prologue
    .line 2955
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

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

.method public hasTopOffset()Z
    .registers 3

    .prologue
    .line 2934
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 2854
    const/4 v0, 0x1

    return v0
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
    .line 2767
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2767
    check-cast p1, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;)Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

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
    .line 2767
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2862
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2863
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 2868
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2870
    :sswitch_d
    return-object p0

    .line 2875
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    .line 2876
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->coverPhotoId_:Ljava/lang/Object;

    goto :goto_0

    .line 2880
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    .line 2881
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->topOffset_:I

    goto :goto_0

    .line 2885
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    .line 2886
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->leftOffset_:I

    goto :goto_0

    .line 2863
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;)Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 2840
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2850
    :cond_6
    :goto_6
    return-object p0

    .line 2841
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->hasCoverPhotoId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2842
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->getCoverPhotoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->setCoverPhotoId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    .line 2844
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->hasTopOffset()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2845
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->getTopOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->setTopOffset(I)Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    .line 2847
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->hasLeftOffset()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2848
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->getLeftOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->setLeftOffset(I)Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    goto :goto_6
.end method

.method public setCoverPhotoId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2911
    if-nez p1, :cond_8

    .line 2912
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2914
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    .line 2915
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->coverPhotoId_:Ljava/lang/Object;

    .line 2917
    return-object p0
.end method

.method public setLeftOffset(I)Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2961
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    .line 2962
    iput p1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->leftOffset_:I

    .line 2964
    return-object p0
.end method

.method public setTopOffset(I)Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2940
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->bitField0_:I

    .line 2941
    iput p1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->topOffset_:I

    .line 2943
    return-object p0
.end method
