.class public final Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$CommentEditResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$CommentEditResponse;",
        "Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$CommentEditResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private commentId_:Ljava/lang/Object;

.field private htmlContent_:Ljava/lang/Object;

.field private plainContent_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1927
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2055
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->commentId_:Ljava/lang/Object;

    .line 2091
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->plainContent_:Ljava/lang/Object;

    .line 2127
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->htmlContent_:Ljava/lang/Object;

    .line 1928
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->maybeForceBuilderInitialization()V

    .line 1929
    return-void
.end method

.method static synthetic access$2000(Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1922
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;
    .registers 1

    .prologue
    .line 1922
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->create()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1966
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v0

    .line 1967
    .local v0, result:Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1968
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1971
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;
    .registers 1

    .prologue
    .line 1934
    new-instance v0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1932
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    .registers 3

    .prologue
    .line 1957
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v0

    .line 1958
    .local v0, result:Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1959
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1961
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1922
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->build()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    .registers 6

    .prologue
    .line 1975
    new-instance v0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;-><init>(Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 1976
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    .line 1977
    const/4 v2, 0x0

    .line 1978
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1979
    or-int/lit8 v2, v2, 0x1

    .line 1981
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->commentId_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->commentId_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->access$2302(Lcom/google/feedreader/extrpc/Client$CommentEditResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1982
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1983
    or-int/lit8 v2, v2, 0x2

    .line 1985
    :cond_1c
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->plainContent_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->plainContent_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->access$2402(Lcom/google/feedreader/extrpc/Client$CommentEditResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1986
    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_31

    .line 1987
    or-int/lit8 v1, v2, 0x4

    .line 1989
    :goto_28
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->htmlContent_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->htmlContent_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->access$2502(Lcom/google/feedreader/extrpc/Client$CommentEditResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1990
    #setter for: Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->access$2602(Lcom/google/feedreader/extrpc/Client$CommentEditResponse;I)I

    .line 1991
    return-object v0

    :cond_31
    move v1, v2

    goto :goto_28
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1922
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;
    .registers 2

    .prologue
    .line 1938
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1939
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->commentId_:Ljava/lang/Object;

    .line 1940
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    .line 1941
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->plainContent_:Ljava/lang/Object;

    .line 1942
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    .line 1943
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->htmlContent_:Ljava/lang/Object;

    .line 1944
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    .line 1945
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1922
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->clear()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1922
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->clear()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCommentId()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;
    .registers 2

    .prologue
    .line 2079
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    .line 2080
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->getCommentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->commentId_:Ljava/lang/Object;

    .line 2082
    return-object p0
.end method

.method public clearHtmlContent()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;
    .registers 2

    .prologue
    .line 2151
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    .line 2152
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->getHtmlContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->htmlContent_:Ljava/lang/Object;

    .line 2154
    return-object p0
.end method

.method public clearPlainContent()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;
    .registers 2

    .prologue
    .line 2115
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    .line 2116
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->getPlainContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->plainContent_:Ljava/lang/Object;

    .line 2118
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;
    .registers 3

    .prologue
    .line 1949
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->create()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$CommentEditResponse;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1922
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->clone()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1922
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->clone()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1922
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->clone()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

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
    .line 1922
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->clone()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2060
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->commentId_:Ljava/lang/Object;

    .line 2061
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 2062
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2063
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->commentId_:Ljava/lang/Object;

    move-object v2, v1

    .line 2066
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

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    .registers 2

    .prologue
    .line 1953
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1922
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1922
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlContent()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->htmlContent_:Ljava/lang/Object;

    .line 2133
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 2134
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2135
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->htmlContent_:Ljava/lang/Object;

    move-object v2, v1

    .line 2138
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

.method public getPlainContent()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2096
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->plainContent_:Ljava/lang/Object;

    .line 2097
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 2098
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2099
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->plainContent_:Ljava/lang/Object;

    move-object v2, v1

    .line 2102
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

.method public hasCommentId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2057
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasHtmlContent()Z
    .registers 3

    .prologue
    .line 2129
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

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

.method public hasPlainContent()Z
    .registers 3

    .prologue
    .line 2093
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

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
    .line 2009
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->hasCommentId()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2011
    const/4 v0, 0x0

    .line 2013
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$CommentEditResponse;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1995
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 2005
    :goto_7
    return-object v0

    .line 1996
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->hasCommentId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1997
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->setCommentId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    .line 1999
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->hasPlainContent()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2000
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->getPlainContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->setPlainContent(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    .line 2002
    :cond_22
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->hasHtmlContent()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2003
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->getHtmlContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->setHtmlContent(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    :cond_2f
    move-object v0, p0

    .line 2005
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2021
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2022
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 2027
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2029
    :sswitch_d
    return-object p0

    .line 2034
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    .line 2035
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->commentId_:Ljava/lang/Object;

    goto :goto_0

    .line 2039
    :sswitch_1b
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    .line 2040
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->plainContent_:Ljava/lang/Object;

    goto :goto_0

    .line 2044
    :sswitch_28
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    .line 2045
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->htmlContent_:Ljava/lang/Object;

    goto :goto_0

    .line 2022
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
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
    .line 1922
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1922
    check-cast p1, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$CommentEditResponse;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

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
    .line 1922
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCommentId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2070
    if-nez p1, :cond_8

    .line 2071
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2073
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    .line 2074
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->commentId_:Ljava/lang/Object;

    .line 2076
    return-object p0
.end method

.method setCommentId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 2085
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    .line 2086
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->commentId_:Ljava/lang/Object;

    .line 2088
    return-void
.end method

.method public setHtmlContent(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2142
    if-nez p1, :cond_8

    .line 2143
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2145
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    .line 2146
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->htmlContent_:Ljava/lang/Object;

    .line 2148
    return-object p0
.end method

.method setHtmlContent(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 2157
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    .line 2158
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->htmlContent_:Ljava/lang/Object;

    .line 2160
    return-void
.end method

.method public setPlainContent(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2106
    if-nez p1, :cond_8

    .line 2107
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2109
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    .line 2110
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->plainContent_:Ljava/lang/Object;

    .line 2112
    return-object p0
.end method

.method setPlainContent(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 2121
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->bitField0_:I

    .line 2122
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->plainContent_:Ljava/lang/Object;

    .line 2124
    return-void
.end method
