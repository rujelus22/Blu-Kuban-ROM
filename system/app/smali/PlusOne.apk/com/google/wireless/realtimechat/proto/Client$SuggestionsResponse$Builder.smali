.class public final Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private requestError_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private suggestion_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$Suggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 40882
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 41019
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 41043
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 41079
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    .line 40883
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->maybeForceBuilderInitialization()V

    .line 40884
    return-void
.end method

.method static synthetic access$56400()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 1

    .prologue
    .line 40877
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 1

    .prologue
    .line 40889
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSuggestionIsMutable()V
    .registers 3

    .prologue
    .line 41082
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 41083
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    .line 41084
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 41086
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 40887
    return-void
.end method


# virtual methods
.method public addAllSuggestion(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$Suggestion;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 41149
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Client$Suggestion;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 41150
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 41152
    return-object p0
.end method

.method public addSuggestion(ILcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 41142
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 41143
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 41145
    return-object p0
.end method

.method public addSuggestion(ILcom/google/wireless/realtimechat/proto/Client$Suggestion;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 41125
    if-nez p2, :cond_8

    .line 41126
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41128
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 41129
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 41131
    return-object p0
.end method

.method public addSuggestion(Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 41135
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 41136
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41138
    return-object p0
.end method

.method public addSuggestion(Lcom/google/wireless/realtimechat/proto/Client$Suggestion;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41115
    if-nez p1, :cond_8

    .line 41116
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41118
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 41119
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41121
    return-object p0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    .registers 3

    .prologue
    .line 40912
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    .line 40913
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 40914
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 40916
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40877
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    .registers 6

    .prologue
    .line 40930
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 40931
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 40932
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 40933
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 40934
    or-int/lit8 v2, v2, 0x1

    .line 40936
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->access$56602(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 40937
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 40938
    or-int/lit8 v2, v2, 0x2

    .line 40940
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->requestError_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->requestError_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->access$56702(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40941
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 40942
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    .line 40943
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 40945
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->suggestion_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->access$56802(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;Ljava/util/List;)Ljava/util/List;

    .line 40946
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->access$56902(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;I)I

    .line 40947
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40877
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40877
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 2

    .prologue
    .line 40893
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 40894
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 40895
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 40896
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 40897
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 40898
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    .line 40899
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 40900
    return-object p0
.end method

.method public clearRequestError()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 2

    .prologue
    .line 41067
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 41068
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 41070
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 2

    .prologue
    .line 41036
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 41037
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 41039
    return-object p0
.end method

.method public clearSuggestion()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 2

    .prologue
    .line 41155
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    .line 41156
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 41158
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 40877
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40877
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 3

    .prologue
    .line 40904
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

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
    .line 40877
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 40877
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40877
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    .registers 2

    .prologue
    .line 40908
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 4

    .prologue
    .line 41048
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 41049
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 41050
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 41051
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 41054
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

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 41024
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getSuggestion(I)Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    .registers 3
    .parameter "index"

    .prologue
    .line 41095
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    return-object v0
.end method

.method public getSuggestionCount()I
    .registers 2

    .prologue
    .line 41092
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSuggestionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$Suggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41089
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 41045
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 41021
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 40877
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

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
    .line 40877
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40980
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 40981
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_3e

    .line 40986
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 40988
    :sswitch_d
    return-object p0

    .line 40993
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 40994
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v3

    .line 40995
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v3, :cond_0

    .line 40996
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 40997
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 41002
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 41003
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->requestError_:Ljava/lang/Object;

    goto :goto_0

    .line 41007
    :sswitch_2e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

    move-result-object v1

    .line 41008
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 41009
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->addSuggestion(Lcom/google/wireless/realtimechat/proto/Client$Suggestion;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    goto :goto_0

    .line 40981
    nop

    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 40951
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 40968
    :cond_6
    :goto_6
    return-object p0

    .line 40952
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 40953
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    .line 40955
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->hasRequestError()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 40956
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    .line 40958
    :cond_21
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->suggestion_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->access$56800(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 40959
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 40960
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->suggestion_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->access$56800(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    .line 40961
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 40963
    :cond_40
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 40964
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->suggestion_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->access$56800(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41058
    if-nez p1, :cond_8

    .line 41059
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41061
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 41062
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 41064
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41027
    if-nez p1, :cond_8

    .line 41028
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41030
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 41031
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 41033
    return-object p0
.end method

.method public setSuggestion(ILcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 41109
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 41110
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 41112
    return-object p0
.end method

.method public setSuggestion(ILcom/google/wireless/realtimechat/proto/Client$Suggestion;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 41099
    if-nez p2, :cond_8

    .line 41100
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41102
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 41103
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 41105
    return-object p0
.end method
