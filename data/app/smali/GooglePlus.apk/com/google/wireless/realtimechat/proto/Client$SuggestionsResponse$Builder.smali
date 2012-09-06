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
    .line 40987
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 41124
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 41148
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 41184
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    .line 40988
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->maybeForceBuilderInitialization()V

    .line 40989
    return-void
.end method

.method static synthetic access$56500()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 1

    .prologue
    .line 40982
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 1

    .prologue
    .line 40994
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSuggestionIsMutable()V
    .registers 3

    .prologue
    .line 41187
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 41188
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    .line 41189
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 41191
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 40992
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
    .line 41254
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Client$Suggestion;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 41255
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 41257
    return-object p0
.end method

.method public addSuggestion(ILcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 41247
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 41248
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 41250
    return-object p0
.end method

.method public addSuggestion(ILcom/google/wireless/realtimechat/proto/Client$Suggestion;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 41230
    if-nez p2, :cond_8

    .line 41231
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41233
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 41234
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 41236
    return-object p0
.end method

.method public addSuggestion(Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 41240
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 41241
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41243
    return-object p0
.end method

.method public addSuggestion(Lcom/google/wireless/realtimechat/proto/Client$Suggestion;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41220
    if-nez p1, :cond_8

    .line 41221
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41223
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 41224
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41226
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40982
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    .registers 3

    .prologue
    .line 41017
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    .line 41018
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 41019
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 41021
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40982
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    .registers 6

    .prologue
    .line 41035
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 41036
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 41037
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 41038
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 41039
    or-int/lit8 v2, v2, 0x1

    .line 41041
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->access$56702(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 41042
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 41043
    or-int/lit8 v2, v2, 0x2

    .line 41045
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->requestError_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->requestError_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->access$56802(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41046
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 41047
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    .line 41048
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 41050
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->suggestion_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->access$56902(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;Ljava/util/List;)Ljava/util/List;

    .line 41051
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->access$57002(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;I)I

    .line 41052
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40982
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40982
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 2

    .prologue
    .line 40998
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 40999
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 41000
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 41001
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 41002
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 41003
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    .line 41004
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 41005
    return-object p0
.end method

.method public clearRequestError()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 2

    .prologue
    .line 41172
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 41173
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 41175
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 2

    .prologue
    .line 41141
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 41142
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 41144
    return-object p0
.end method

.method public clearSuggestion()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 2

    .prologue
    .line 41260
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    .line 41261
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 41263
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 40982
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40982
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 3

    .prologue
    .line 41009
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
    .line 40982
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 40982
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40982
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    .registers 2

    .prologue
    .line 41013
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 4

    .prologue
    .line 41153
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 41154
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 41155
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 41156
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 41159
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
    .line 41129
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getSuggestion(I)Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    .registers 3
    .parameter "index"

    .prologue
    .line 41200
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    return-object v0
.end method

.method public getSuggestionCount()I
    .registers 2

    .prologue
    .line 41197
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
    .line 41194
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 41150
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

    .line 41126
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

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
    .line 41077
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
    .line 40982
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 40982
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

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
    .line 40982
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
    .line 41085
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 41086
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_3e

    .line 41091
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 41093
    :sswitch_d
    return-object p0

    .line 41098
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 41099
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v3

    .line 41100
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v3, :cond_0

    .line 41101
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 41102
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 41107
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 41108
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->requestError_:Ljava/lang/Object;

    goto :goto_0

    .line 41112
    :sswitch_2e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

    move-result-object v1

    .line 41113
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 41114
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->addSuggestion(Lcom/google/wireless/realtimechat/proto/Client$Suggestion;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    goto :goto_0

    .line 41086
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
    .line 41056
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 41073
    :cond_6
    :goto_6
    return-object p0

    .line 41057
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 41058
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    .line 41060
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->hasRequestError()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 41061
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    .line 41063
    :cond_21
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->suggestion_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->access$56900(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 41064
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 41065
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->suggestion_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->access$56900(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    .line 41066
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 41068
    :cond_40
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 41069
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->suggestion_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->access$56900(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41163
    if-nez p1, :cond_8

    .line 41164
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41166
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 41167
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 41169
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41132
    if-nez p1, :cond_8

    .line 41133
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41135
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->bitField0_:I

    .line 41136
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 41138
    return-object p0
.end method

.method public setSuggestion(ILcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 41214
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 41215
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 41217
    return-object p0
.end method

.method public setSuggestion(ILcom/google/wireless/realtimechat/proto/Client$Suggestion;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 41204
    if-nez p2, :cond_8

    .line 41205
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41207
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 41208
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 41210
    return-object p0
.end method
