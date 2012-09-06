.class public final Lcom/google/wireless/tacotruck/proto/Data$Comment;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$CommentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Comment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Comment;

.field private static final serialVersionUID:J


# instance fields
.field private authorGaiaId_:J

.field private bitField0_:I

.field private commentInModeration_:Z

.field private contentHtml_:Ljava/lang/Object;

.field private creationTimestampMsec_:J

.field private focusObfuscatedAuthorId_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private lastUpdateTimestampMsec_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

.field private truncated_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5733
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Comment;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    .line 5734
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->initFields()V

    .line 5735
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4908
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 5089
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->memoizedIsInitialized:B

    .line 5130
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->memoizedSerializedSize:I

    .line 4909
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4903
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4910
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5089
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->memoizedIsInitialized:B

    .line 5130
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->memoizedSerializedSize:I

    .line 4910
    return-void
.end method

.method static synthetic access$6202(Lcom/google/wireless/tacotruck/proto/Data$Comment;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4903
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6302(Lcom/google/wireless/tacotruck/proto/Data$Comment;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4903
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->authorGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$6402(Lcom/google/wireless/tacotruck/proto/Data$Comment;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4903
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/google/wireless/tacotruck/proto/Data$Comment;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4903
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->contentHtml_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6602(Lcom/google/wireless/tacotruck/proto/Data$Comment;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4903
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->creationTimestampMsec_:J

    return-wide p1
.end method

.method static synthetic access$6702(Lcom/google/wireless/tacotruck/proto/Data$Comment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4903
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->truncated_:Z

    return p1
.end method

.method static synthetic access$6802(Lcom/google/wireless/tacotruck/proto/Data$Comment;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4903
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->lastUpdateTimestampMsec_:J

    return-wide p1
.end method

.method static synthetic access$6902(Lcom/google/wireless/tacotruck/proto/Data$Comment;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4903
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object p1
.end method

.method static synthetic access$7002(Lcom/google/wireless/tacotruck/proto/Data$Comment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4903
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->commentInModeration_:Z

    return p1
.end method

.method static synthetic access$7102(Lcom/google/wireless/tacotruck/proto/Data$Comment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4903
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    return p1
.end method

.method private getContentHtmlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 5017
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->contentHtml_:Ljava/lang/Object;

    .line 5018
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 5019
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5021
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->contentHtml_:Ljava/lang/Object;

    .line 5024
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .registers 1

    .prologue
    .line 4914
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    return-object v0
.end method

.method private getFocusObfuscatedAuthorIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4985
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 4986
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4987
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4989
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 4992
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

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4943
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->id_:Ljava/lang/Object;

    .line 4944
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4945
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4947
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->id_:Ljava/lang/Object;

    .line 4950
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

.method private initFields()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 5079
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->id_:Ljava/lang/Object;

    .line 5080
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->authorGaiaId_:J

    .line 5081
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 5082
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->contentHtml_:Ljava/lang/Object;

    .line 5083
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->creationTimestampMsec_:J

    .line 5084
    iput-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->truncated_:Z

    .line 5085
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->lastUpdateTimestampMsec_:J

    .line 5086
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 5087
    iput-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->commentInModeration_:Z

    .line 5088
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 1

    .prologue
    .line 5250
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->access$6000()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 5253
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthorGaiaId()J
    .registers 3

    .prologue
    .line 4961
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->authorGaiaId_:J

    return-wide v0
.end method

.method public getCommentInModeration()Z
    .registers 2

    .prologue
    .line 5075
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->commentInModeration_:Z

    return v0
.end method

.method public getContentHtml()Ljava/lang/String;
    .registers 5

    .prologue
    .line 5003
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->contentHtml_:Ljava/lang/Object;

    .line 5004
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 5005
    check-cast v1, Ljava/lang/String;

    .line 5013
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 5007
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5009
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5010
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 5011
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->contentHtml_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 5013
    goto :goto_8
.end method

.method public getCreationTimestampMsec()J
    .registers 3

    .prologue
    .line 5035
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->creationTimestampMsec_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4903
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .registers 2

    .prologue
    .line 4918
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    return-object v0
.end method

.method public getFocusObfuscatedAuthorId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4971
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 4972
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4973
    check-cast v1, Ljava/lang/String;

    .line 4981
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4975
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4977
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4978
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4979
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4981
    goto :goto_8
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4929
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->id_:Ljava/lang/Object;

    .line 4930
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4931
    check-cast v1, Ljava/lang/String;

    .line 4939
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4933
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4935
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4936
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4937
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4939
    goto :goto_8
.end method

.method public getLastUpdateTimestampMsec()J
    .registers 3

    .prologue
    .line 5055
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->lastUpdateTimestampMsec_:J

    return-wide v0
.end method

.method public getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2

    .prologue
    .line 5065
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5132
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->memoizedSerializedSize:I

    .line 5133
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 5173
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 5135
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 5136
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 5137
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5140
    :cond_1c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 5141
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->authorGaiaId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5144
    :cond_29
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_39

    .line 5145
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getContentHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5148
    :cond_39
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_48

    .line 5149
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->creationTimestampMsec_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5152
    :cond_48
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_58

    .line 5153
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->truncated_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5156
    :cond_58
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_68

    .line 5157
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->lastUpdateTimestampMsec_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5160
    :cond_68
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_78

    .line 5161
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5164
    :cond_78
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_87

    .line 5165
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getFocusObfuscatedAuthorIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5168
    :cond_87
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_98

    .line 5169
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->commentInModeration_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5172
    :cond_98
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->memoizedSerializedSize:I

    move v1, v0

    .line 5173
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getTruncated()Z
    .registers 2

    .prologue
    .line 5045
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->truncated_:Z

    return v0
.end method

.method public hasAuthorGaiaId()Z
    .registers 3

    .prologue
    .line 4958
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

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

.method public hasCommentInModeration()Z
    .registers 3

    .prologue
    .line 5072
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasContentHtml()Z
    .registers 3

    .prologue
    .line 5000
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

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
    .line 5032
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

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
    .line 4968
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

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

    .line 4926
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

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
    .line 5052
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

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
    .line 5062
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

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
    .line 5042
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 5091
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->memoizedIsInitialized:B

    .line 5092
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 5095
    :goto_8
    return v1

    .line 5092
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 5094
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4903
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 2

    .prologue
    .line 5251
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4903
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 2

    .prologue
    .line 5255
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

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
    .line 5180
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

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
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 5100
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getSerializedSize()I

    .line 5101
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 5102
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5104
    :cond_15
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 5105
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->authorGaiaId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 5107
    :cond_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_2e

    .line 5108
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getContentHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5110
    :cond_2e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3b

    .line 5111
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->creationTimestampMsec_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 5113
    :cond_3b
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_49

    .line 5114
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->truncated_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5116
    :cond_49
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_57

    .line 5117
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->lastUpdateTimestampMsec_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 5119
    :cond_57
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_65

    .line 5120
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5122
    :cond_65
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_72

    .line 5123
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getFocusObfuscatedAuthorIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5125
    :cond_72
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_81

    .line 5126
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->commentInModeration_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5128
    :cond_81
    return-void
.end method
