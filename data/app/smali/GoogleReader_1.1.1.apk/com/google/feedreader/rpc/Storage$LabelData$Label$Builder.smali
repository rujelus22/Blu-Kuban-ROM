.class public final Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Storage.java"

# interfaces
.implements Lcom/google/feedreader/rpc/Storage$LabelData$LabelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/rpc/Storage$LabelData$Label;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/rpc/Storage$LabelData$Label;",
        "Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;",
        ">;",
        "Lcom/google/feedreader/rpc/Storage$LabelData$LabelOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private disabled_:Z

.field private oldStreamId_:Ljava/lang/Object;

.field private streamId_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 752
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 894
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->streamId_:Ljava/lang/Object;

    .line 930
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->oldStreamId_:Ljava/lang/Object;

    .line 987
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->title_:Ljava/lang/Object;

    .line 753
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->maybeForceBuilderInitialization()V

    .line 754
    return-void
.end method

.method static synthetic access$600(Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 747
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
    .registers 1

    .prologue
    .line 747
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->create()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v0

    .line 794
    .local v0, result:Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 795
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 798
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
    .registers 1

    .prologue
    .line 759
    new-instance v0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 757
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    .registers 3

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v0

    .line 785
    .local v0, result:Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 786
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 788
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->build()Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    .registers 6

    .prologue
    .line 802
    new-instance v0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;-><init>(Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;Lcom/google/feedreader/rpc/Storage$1;)V

    .line 803
    iget v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    .line 804
    const/4 v2, 0x0

    .line 805
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 806
    or-int/lit8 v2, v2, 0x1

    .line 808
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->streamId_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/rpc/Storage$LabelData$Label;->streamId_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->access$902(Lcom/google/feedreader/rpc/Storage$LabelData$Label;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 810
    or-int/lit8 v2, v2, 0x2

    .line 812
    :cond_1c
    iget-object v3, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->oldStreamId_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/rpc/Storage$LabelData$Label;->oldStreamId_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->access$1002(Lcom/google/feedreader/rpc/Storage$LabelData$Label;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 814
    or-int/lit8 v2, v2, 0x4

    .line 816
    :cond_28
    iget-boolean v3, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->disabled_:Z

    #setter for: Lcom/google/feedreader/rpc/Storage$LabelData$Label;->disabled_:Z
    invoke-static {v0, v3}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->access$1102(Lcom/google/feedreader/rpc/Storage$LabelData$Label;Z)Z

    .line 817
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3e

    .line 818
    or-int/lit8 v1, v2, 0x8

    .line 820
    :goto_35
    iget-object v2, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/rpc/Storage$LabelData$Label;->title_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->access$1202(Lcom/google/feedreader/rpc/Storage$LabelData$Label;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    #setter for: Lcom/google/feedreader/rpc/Storage$LabelData$Label;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->access$1302(Lcom/google/feedreader/rpc/Storage$LabelData$Label;I)I

    .line 822
    return-object v0

    :cond_3e
    move v1, v2

    goto :goto_35
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
    .registers 2

    .prologue
    .line 763
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 764
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->streamId_:Ljava/lang/Object;

    .line 765
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    .line 766
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->oldStreamId_:Ljava/lang/Object;

    .line 767
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    .line 768
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->disabled_:Z

    .line 769
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    .line 770
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->title_:Ljava/lang/Object;

    .line 771
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    .line 772
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->clear()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->clear()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDisabled()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
    .registers 2

    .prologue
    .line 980
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    .line 981
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->disabled_:Z

    .line 983
    return-object p0
.end method

.method public clearOldStreamId()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
    .registers 2

    .prologue
    .line 954
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    .line 955
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->getOldStreamId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->oldStreamId_:Ljava/lang/Object;

    .line 957
    return-object p0
.end method

.method public clearStreamId()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
    .registers 2

    .prologue
    .line 918
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    .line 919
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->getStreamId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->streamId_:Ljava/lang/Object;

    .line 921
    return-object p0
.end method

.method public clearTitle()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
    .registers 2

    .prologue
    .line 1011
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    .line 1012
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->title_:Ljava/lang/Object;

    .line 1014
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
    .registers 3

    .prologue
    .line 776
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->create()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->mergeFrom(Lcom/google/feedreader/rpc/Storage$LabelData$Label;)Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->clone()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->clone()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->clone()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

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
    .line 747
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->clone()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    .registers 2

    .prologue
    .line 780
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v0

    return-object v0
.end method

.method public getDisabled()Z
    .registers 2

    .prologue
    .line 971
    iget-boolean v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->disabled_:Z

    return v0
.end method

.method public getOldStreamId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 935
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->oldStreamId_:Ljava/lang/Object;

    .line 936
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 937
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 938
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->oldStreamId_:Ljava/lang/Object;

    move-object v2, v1

    .line 941
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 899
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->streamId_:Ljava/lang/Object;

    .line 900
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 901
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 902
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->streamId_:Ljava/lang/Object;

    move-object v2, v1

    .line 905
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 992
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->title_:Ljava/lang/Object;

    .line 993
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 994
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 995
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->title_:Ljava/lang/Object;

    move-object v2, v1

    .line 998
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public hasDisabled()Z
    .registers 3

    .prologue
    .line 968
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

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

.method public hasOldStreamId()Z
    .registers 3

    .prologue
    .line 932
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

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

.method public hasStreamId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 896
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 989
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->hasStreamId()Z

    move-result v0

    if-nez v0, :cond_8

    .line 845
    const/4 v0, 0x0

    .line 847
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/feedreader/rpc/Storage$LabelData$Label;)Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
    .registers 3
    .parameter

    .prologue
    .line 826
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 839
    :goto_7
    return-object v0

    .line 827
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->hasStreamId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 828
    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->getStreamId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->setStreamId(Ljava/lang/String;)Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    .line 830
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->hasOldStreamId()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 831
    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->getOldStreamId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->setOldStreamId(Ljava/lang/String;)Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    .line 833
    :cond_22
    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 834
    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->getDisabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->setDisabled(Z)Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    .line 836
    :cond_2f
    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 837
    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->setTitle(Ljava/lang/String;)Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    :cond_3c
    move-object v0, p0

    .line 839
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 855
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 856
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 861
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 863
    :sswitch_d
    return-object p0

    .line 868
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    .line 869
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->oldStreamId_:Ljava/lang/Object;

    goto :goto_0

    .line 873
    :sswitch_1b
    iget v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    .line 874
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->disabled_:Z

    goto :goto_0

    .line 878
    :sswitch_28
    iget v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    .line 879
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 883
    :sswitch_35
    iget v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    .line 884
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->streamId_:Ljava/lang/Object;

    goto :goto_0

    .line 856
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0x12 -> :sswitch_e
        0x18 -> :sswitch_1b
        0x22 -> :sswitch_28
        0x2a -> :sswitch_35
    .end sparse-switch
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
    .line 747
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 747
    check-cast p1, Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->mergeFrom(Lcom/google/feedreader/rpc/Storage$LabelData$Label;)Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

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
    .line 747
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDisabled(Z)Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 974
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    .line 975
    iput-boolean p1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->disabled_:Z

    .line 977
    return-object p0
.end method

.method public setOldStreamId(Ljava/lang/String;)Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 945
    if-nez p1, :cond_8

    .line 946
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 948
    :cond_8
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    .line 949
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->oldStreamId_:Ljava/lang/Object;

    .line 951
    return-object p0
.end method

.method setOldStreamId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 960
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    .line 961
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->oldStreamId_:Ljava/lang/Object;

    .line 963
    return-void
.end method

.method public setStreamId(Ljava/lang/String;)Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 909
    if-nez p1, :cond_8

    .line 910
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 912
    :cond_8
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    .line 913
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->streamId_:Ljava/lang/Object;

    .line 915
    return-object p0
.end method

.method setStreamId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 924
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    .line 925
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->streamId_:Ljava/lang/Object;

    .line 927
    return-void
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1002
    if-nez p1, :cond_8

    .line 1003
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1005
    :cond_8
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    .line 1006
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->title_:Ljava/lang/Object;

    .line 1008
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1017
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->bitField0_:I

    .line 1018
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->title_:Ljava/lang/Object;

    .line 1020
    return-void
.end method
