.class public final Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroupOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;",
        "Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroupOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private groupId_:J

.field private isReadOnly_:Z

.field private isSharing_:Z

.field private name_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 13754
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 13938
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->name_:Ljava/lang/Object;

    .line 13755
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->maybeForceBuilderInitialization()V

    .line 13756
    return-void
.end method

.method static synthetic access$16600(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13749
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16700()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
    .registers 1

    .prologue
    .line 13749
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->create()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13795
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v0

    .line 13796
    .local v0, result:Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 13797
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 13800
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
    .registers 1

    .prologue
    .line 13761
    new-instance v0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 13759
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    .registers 3

    .prologue
    .line 13786
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v0

    .line 13787
    .local v0, result:Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 13788
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 13790
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13749
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->build()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    .registers 6

    .prologue
    .line 13804
    new-instance v0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;-><init>(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 13805
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    .line 13806
    const/4 v2, 0x0

    .line 13807
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 13808
    or-int/lit8 v2, v2, 0x1

    .line 13810
    :cond_10
    iget-wide v3, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->groupId_:J

    #setter for: Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->groupId_:J
    invoke-static {v0, v3, v4}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->access$16902(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;J)J

    .line 13811
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 13812
    or-int/lit8 v2, v2, 0x2

    .line 13814
    :cond_1c
    iget-boolean v3, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->isReadOnly_:Z

    #setter for: Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->isReadOnly_:Z
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->access$17002(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;Z)Z

    .line 13815
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 13816
    or-int/lit8 v2, v2, 0x4

    .line 13818
    :cond_28
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->name_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->access$17102(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13819
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3e

    .line 13820
    or-int/lit8 v1, v2, 0x8

    .line 13822
    :goto_35
    iget-boolean v2, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->isSharing_:Z

    #setter for: Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->isSharing_:Z
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->access$17202(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;Z)Z

    .line 13823
    #setter for: Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->access$17302(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;I)I

    .line 13824
    return-object v0

    :cond_3e
    move v1, v2

    goto :goto_35
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13749
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 13765
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 13766
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->groupId_:J

    .line 13767
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    .line 13768
    iput-boolean v2, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->isReadOnly_:Z

    .line 13769
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    .line 13770
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->name_:Ljava/lang/Object;

    .line 13771
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    .line 13772
    iput-boolean v2, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->isSharing_:Z

    .line 13773
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    .line 13774
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13749
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->clear()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13749
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->clear()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearGroupId()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
    .registers 3

    .prologue
    .line 13910
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    .line 13911
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->groupId_:J

    .line 13913
    return-object p0
.end method

.method public clearIsReadOnly()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
    .registers 2

    .prologue
    .line 13931
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    .line 13932
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->isReadOnly_:Z

    .line 13934
    return-object p0
.end method

.method public clearIsSharing()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
    .registers 2

    .prologue
    .line 13988
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    .line 13989
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->isSharing_:Z

    .line 13991
    return-object p0
.end method

.method public clearName()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
    .registers 2

    .prologue
    .line 13962
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    .line 13963
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->name_:Ljava/lang/Object;

    .line 13965
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
    .registers 3

    .prologue
    .line 13778
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->create()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 13749
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->clone()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13749
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->clone()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13749
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->clone()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

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
    .line 13749
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->clone()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    .registers 2

    .prologue
    .line 13782
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 13749
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13749
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()J
    .registers 3

    .prologue
    .line 13901
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->groupId_:J

    return-wide v0
.end method

.method public getIsReadOnly()Z
    .registers 2

    .prologue
    .line 13922
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->isReadOnly_:Z

    return v0
.end method

.method public getIsSharing()Z
    .registers 2

    .prologue
    .line 13979
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->isSharing_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 13943
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->name_:Ljava/lang/Object;

    .line 13944
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 13945
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13946
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->name_:Ljava/lang/Object;

    move-object v2, v1

    .line 13949
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

.method public hasGroupId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 13898
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasIsReadOnly()Z
    .registers 3

    .prologue
    .line 13919
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

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

.method public hasIsSharing()Z
    .registers 3

    .prologue
    .line 13976
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 13940
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 13845
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->hasGroupId()Z

    move-result v0

    if-nez v0, :cond_8

    .line 13847
    const/4 v0, 0x0

    .line 13849
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
    .registers 4
    .parameter

    .prologue
    .line 13828
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 13841
    :goto_7
    return-object v0

    .line 13829
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->hasGroupId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 13830
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->getGroupId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->setGroupId(J)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    .line 13832
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->hasIsReadOnly()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 13833
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->getIsReadOnly()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->setIsReadOnly(Z)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    .line 13835
    :cond_22
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 13836
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->setName(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    .line 13838
    :cond_2f
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->hasIsSharing()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 13839
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->getIsSharing()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->setIsSharing(Z)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    :cond_3c
    move-object v0, p0

    .line 13841
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13857
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 13858
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 13863
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13865
    :sswitch_d
    return-object p0

    .line 13870
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    .line 13871
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->groupId_:J

    goto :goto_0

    .line 13875
    :sswitch_1b
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    .line 13876
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->isReadOnly_:Z

    goto :goto_0

    .line 13880
    :sswitch_28
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    .line 13881
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 13885
    :sswitch_35
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    .line 13886
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->isSharing_:Z

    goto :goto_0

    .line 13858
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x20 -> :sswitch_35
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
    .line 13749
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 13749
    check-cast p1, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

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
    .line 13749
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setGroupId(J)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 13904
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    .line 13905
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->groupId_:J

    .line 13907
    return-object p0
.end method

.method public setIsReadOnly(Z)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13925
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    .line 13926
    iput-boolean p1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->isReadOnly_:Z

    .line 13928
    return-object p0
.end method

.method public setIsSharing(Z)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13982
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    .line 13983
    iput-boolean p1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->isSharing_:Z

    .line 13985
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13953
    if-nez p1, :cond_8

    .line 13954
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13956
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    .line 13957
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->name_:Ljava/lang/Object;

    .line 13959
    return-object p0
.end method

.method setName(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 13968
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->bitField0_:I

    .line 13969
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->name_:Ljava/lang/Object;

    .line 13971
    return-void
.end method
