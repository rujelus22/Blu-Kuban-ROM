.class public final Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$CommentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Comment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Comment;",
        "Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$CommentOrBuilder;"
    }
.end annotation


# instance fields
.field private authorGaiaId_:J

.field private bitField0_:I

.field private contentHtml_:Ljava/lang/Object;

.field private creationTimestampMsec_:J

.field private focusObfuscatedAuthorId_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private lastUpdateTimestampMsec_:J

.field private plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

.field private truncated_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4899
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5097
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->id_:Ljava/lang/Object;

    .line 5154
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 5190
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->contentHtml_:Ljava/lang/Object;

    .line 5289
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 4900
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->maybeForceBuilderInitialization()V

    .line 4901
    return-void
.end method

.method static synthetic access$5600()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 1

    .prologue
    .line 4894
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 1

    .prologue
    .line 4906
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4904
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .registers 3

    .prologue
    .line 4939
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    .line 4940
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Comment;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4941
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4943
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4894
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .registers 6

    .prologue
    .line 4957
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Comment;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Comment;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 4958
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Comment;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 4959
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4960
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 4961
    or-int/lit8 v2, v2, 0x1

    .line 4963
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Comment;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->access$5802(Lcom/google/wireless/tacotruck/proto/Data$Comment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4964
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 4965
    or-int/lit8 v2, v2, 0x2

    .line 4967
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->authorGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Comment;->authorGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->access$5902(Lcom/google/wireless/tacotruck/proto/Data$Comment;J)J

    .line 4968
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 4969
    or-int/lit8 v2, v2, 0x4

    .line 4971
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Comment;->focusObfuscatedAuthorId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->access$6002(Lcom/google/wireless/tacotruck/proto/Data$Comment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4972
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 4973
    or-int/lit8 v2, v2, 0x8

    .line 4975
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->contentHtml_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Comment;->contentHtml_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->access$6102(Lcom/google/wireless/tacotruck/proto/Data$Comment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4976
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 4977
    or-int/lit8 v2, v2, 0x10

    .line 4979
    :cond_42
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->creationTimestampMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Comment;->creationTimestampMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->access$6202(Lcom/google/wireless/tacotruck/proto/Data$Comment;J)J

    .line 4980
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 4981
    or-int/lit8 v2, v2, 0x20

    .line 4983
    :cond_4f
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->truncated_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Comment;->truncated_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->access$6302(Lcom/google/wireless/tacotruck/proto/Data$Comment;Z)Z

    .line 4984
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 4985
    or-int/lit8 v2, v2, 0x40

    .line 4987
    :cond_5c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->lastUpdateTimestampMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Comment;->lastUpdateTimestampMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->access$6402(Lcom/google/wireless/tacotruck/proto/Data$Comment;J)J

    .line 4988
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 4989
    or-int/lit16 v2, v2, 0x80

    .line 4991
    :cond_69
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Comment;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->access$6502(Lcom/google/wireless/tacotruck/proto/Data$Comment;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 4992
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->access$6602(Lcom/google/wireless/tacotruck/proto/Data$Comment;I)I

    .line 4993
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4894
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4894
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 4910
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4911
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->id_:Ljava/lang/Object;

    .line 4912
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 4913
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->authorGaiaId_:J

    .line 4914
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 4915
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 4916
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 4917
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->contentHtml_:Ljava/lang/Object;

    .line 4918
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 4919
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->creationTimestampMsec_:J

    .line 4920
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 4921
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->truncated_:Z

    .line 4922
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 4923
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->lastUpdateTimestampMsec_:J

    .line 4924
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 4925
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 4926
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 4927
    return-object p0
.end method

.method public clearAuthorGaiaId()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 3

    .prologue
    .line 5147
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5148
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->authorGaiaId_:J

    .line 5150
    return-object p0
.end method

.method public clearContentHtml()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 2

    .prologue
    .line 5214
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5215
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getContentHtml()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->contentHtml_:Ljava/lang/Object;

    .line 5217
    return-object p0
.end method

.method public clearCreationTimestampMsec()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 3

    .prologue
    .line 5240
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->creationTimestampMsec_:J

    .line 5243
    return-object p0
.end method

.method public clearFocusObfuscatedAuthorId()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 2

    .prologue
    .line 5178
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5179
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getFocusObfuscatedAuthorId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 5181
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 2

    .prologue
    .line 5121
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5122
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->id_:Ljava/lang/Object;

    .line 5124
    return-object p0
.end method

.method public clearLastUpdateTimestampMsec()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 3

    .prologue
    .line 5282
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5283
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->lastUpdateTimestampMsec_:J

    .line 5285
    return-object p0
.end method

.method public clearPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 2

    .prologue
    .line 5325
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 5327
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5328
    return-object p0
.end method

.method public clearTruncated()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 2

    .prologue
    .line 5261
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->truncated_:Z

    .line 5264
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4894
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4894
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 3

    .prologue
    .line 4931
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

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
    .line 4894
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorGaiaId()J
    .registers 3

    .prologue
    .line 5138
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->authorGaiaId_:J

    return-wide v0
.end method

.method public getContentHtml()Ljava/lang/String;
    .registers 4

    .prologue
    .line 5195
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->contentHtml_:Ljava/lang/Object;

    .line 5196
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 5197
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5198
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->contentHtml_:Ljava/lang/Object;

    .line 5201
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

.method public getCreationTimestampMsec()J
    .registers 3

    .prologue
    .line 5231
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->creationTimestampMsec_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4894
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4894
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .registers 2

    .prologue
    .line 4935
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedAuthorId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 5159
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 5160
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 5161
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5162
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 5165
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

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 5102
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->id_:Ljava/lang/Object;

    .line 5103
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 5104
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5105
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->id_:Ljava/lang/Object;

    .line 5108
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

.method public getLastUpdateTimestampMsec()J
    .registers 3

    .prologue
    .line 5273
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->lastUpdateTimestampMsec_:J

    return-wide v0
.end method

.method public getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2

    .prologue
    .line 5294
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object v0
.end method

.method public getTruncated()Z
    .registers 2

    .prologue
    .line 5252
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->truncated_:Z

    return v0
.end method

.method public hasAuthorGaiaId()Z
    .registers 3

    .prologue
    .line 5135
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

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

.method public hasContentHtml()Z
    .registers 3

    .prologue
    .line 5192
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

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

.method public hasCreationTimestampMsec()Z
    .registers 3

    .prologue
    .line 5228
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

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

.method public hasFocusObfuscatedAuthorId()Z
    .registers 3

    .prologue
    .line 5156
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5099
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLastUpdateTimestampMsec()Z
    .registers 3

    .prologue
    .line 5270
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPlusoneData()Z
    .registers 3

    .prologue
    .line 5291
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTruncated()Z
    .registers 3

    .prologue
    .line 5249
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
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
    .line 4894
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

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
    .line 4894
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5034
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5035
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_86

    .line 5040
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5042
    :sswitch_d
    return-object p0

    .line 5047
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5048
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 5052
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5053
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->authorGaiaId_:J

    goto :goto_0

    .line 5057
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5058
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->contentHtml_:Ljava/lang/Object;

    goto :goto_0

    .line 5062
    :sswitch_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5063
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->creationTimestampMsec_:J

    goto :goto_0

    .line 5067
    :sswitch_42
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5068
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->truncated_:Z

    goto :goto_0

    .line 5072
    :sswitch_4f
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5073
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->lastUpdateTimestampMsec_:J

    goto :goto_0

    .line 5077
    :sswitch_5c
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    .line 5078
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->hasPlusoneData()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 5079
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 5081
    :cond_6d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5082
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    goto :goto_0

    .line 5086
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    :sswitch_78
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5087
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 5035
    :sswitch_data_86
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x20 -> :sswitch_35
        0x28 -> :sswitch_42
        0x30 -> :sswitch_4f
        0x3a -> :sswitch_5c
        0x42 -> :sswitch_78
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 4997
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 5022
    :cond_6
    :goto_6
    return-object p0

    .line 4998
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4999
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    .line 5001
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasAuthorGaiaId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5002
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getAuthorGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->setAuthorGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    .line 5004
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasFocusObfuscatedAuthorId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 5005
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getFocusObfuscatedAuthorId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->setFocusObfuscatedAuthorId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    .line 5007
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasContentHtml()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 5008
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getContentHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->setContentHtml(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    .line 5010
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasCreationTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 5011
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getCreationTimestampMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->setCreationTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    .line 5013
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasTruncated()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 5014
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getTruncated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->setTruncated(Z)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    .line 5016
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasLastUpdateTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 5017
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getLastUpdateTimestampMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->setLastUpdateTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    .line 5019
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasPlusoneData()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5020
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->mergePlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    goto :goto_6
.end method

.method public mergePlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5313
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 5315
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 5321
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5322
    return-object p0

    .line 5318
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    goto :goto_20
.end method

.method public setAuthorGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5141
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5142
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->authorGaiaId_:J

    .line 5144
    return-object p0
.end method

.method public setContentHtml(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5205
    if-nez p1, :cond_8

    .line 5206
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5208
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5209
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->contentHtml_:Ljava/lang/Object;

    .line 5211
    return-object p0
.end method

.method public setCreationTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5234
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5235
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->creationTimestampMsec_:J

    .line 5237
    return-object p0
.end method

.method public setFocusObfuscatedAuthorId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5169
    if-nez p1, :cond_8

    .line 5170
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5172
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5173
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 5175
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5112
    if-nez p1, :cond_8

    .line 5113
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5115
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5116
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->id_:Ljava/lang/Object;

    .line 5118
    return-object p0
.end method

.method public setLastUpdateTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5276
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5277
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->lastUpdateTimestampMsec_:J

    .line 5279
    return-object p0
.end method

.method public setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 5307
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 5309
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5310
    return-object p0
.end method

.method public setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5297
    if-nez p1, :cond_8

    .line 5298
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5300
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 5302
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5303
    return-object p0
.end method

.method public setTruncated(Z)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5255
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5256
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->truncated_:Z

    .line 5258
    return-object p0
.end method
