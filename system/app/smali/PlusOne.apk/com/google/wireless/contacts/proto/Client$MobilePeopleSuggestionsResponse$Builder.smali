.class public final Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;",
        "Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private suggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

.field private suggestion_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 7792
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7915
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    .line 8004
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    .line 7793
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->maybeForceBuilderInitialization()V

    .line 7794
    return-void
.end method

.method static synthetic access$10100(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7787
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->buildParsed()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10200()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    .registers 1

    .prologue
    .line 7787
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7829
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    move-result-object v0

    .line 7830
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 7831
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 7834
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    .registers 1

    .prologue
    .line 7799
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSuggestionIsMutable()V
    .registers 3

    .prologue
    .line 7918
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 7919
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    .line 7920
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    .line 7922
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 7797
    return-void
.end method


# virtual methods
.method public addAllSuggestion(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 7985
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Contact$MobileContact;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 7986
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7988
    return-object p0
.end method

.method public addSuggestion(ILcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 7978
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 7979
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7981
    return-object p0
.end method

.method public addSuggestion(ILcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 7961
    if-nez p2, :cond_8

    .line 7962
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7964
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 7965
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7967
    return-object p0
.end method

.method public addSuggestion(Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 7971
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 7972
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7974
    return-object p0
.end method

.method public addSuggestion(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7951
    if-nez p1, :cond_8

    .line 7952
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7954
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 7955
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7957
    return-object p0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;
    .registers 3

    .prologue
    .line 7820
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    move-result-object v0

    .line 7821
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 7822
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 7824
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7787
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;
    .registers 6

    .prologue
    .line 7838
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;-><init>(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 7839
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    .line 7840
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 7841
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 7842
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    .line 7843
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    .line 7845
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->suggestion_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->access$10402(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;Ljava/util/List;)Ljava/util/List;

    .line 7846
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 7847
    or-int/lit8 v2, v2, 0x1

    .line 7849
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->suggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->access$10502(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    .line 7850
    #setter for: Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->access$10602(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;I)I

    .line 7851
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7787
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7787
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    .registers 2

    .prologue
    .line 7803
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 7804
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    .line 7805
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    .line 7806
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    .line 7807
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    .line 7808
    return-object p0
.end method

.method public clearSuggestion()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    .registers 2

    .prologue
    .line 7991
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    .line 7992
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    .line 7994
    return-object p0
.end method

.method public clearSuggestionType()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    .registers 2

    .prologue
    .line 8040
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    .line 8042
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    .line 8043
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 7787
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7787
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    .registers 3

    .prologue
    .line 7812
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

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
    .line 7787
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 7787
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7787
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;
    .registers 2

    .prologue
    .line 7816
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestion(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 3
    .parameter "index"

    .prologue
    .line 7931
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    return-object v0
.end method

.method public getSuggestionCount()I
    .registers 2

    .prologue
    .line 7928
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

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
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7925
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;
    .registers 2

    .prologue
    .line 8009
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    return-object v0
.end method

.method public hasSuggestionType()Z
    .registers 3

    .prologue
    .line 8006
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

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
    .line 7787
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

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
    .line 7787
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7881
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 7882
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3a

    .line 7887
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7889
    :sswitch_d
    return-object p0

    .line 7894
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    .line 7895
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 7896
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->addSuggestion(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    goto :goto_0

    .line 7900
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    :sswitch_1d
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    move-result-object v0

    .line 7901
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->hasSuggestionType()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 7902
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->getSuggestionType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    .line 7904
    :cond_2e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 7905
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->setSuggestionType(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    goto :goto_0

    .line 7882
    nop

    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 7855
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 7869
    :cond_6
    :goto_6
    return-object p0

    .line 7856
    :cond_7
    #getter for: Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->suggestion_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->access$10400(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 7857
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 7858
    #getter for: Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->suggestion_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->access$10400(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    .line 7859
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    .line 7866
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->hasSuggestionType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7867
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->getSuggestionType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->mergeSuggestionType(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    goto :goto_6

    .line 7861
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 7862
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    #getter for: Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->suggestion_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->access$10400(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public mergeSuggestionType(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 8028
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 8030
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->newBuilder(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    .line 8036
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    .line 8037
    return-object p0

    .line 8033
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    goto :goto_1f
.end method

.method public setSuggestion(ILcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 7945
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 7946
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7948
    return-object p0
.end method

.method public setSuggestion(ILcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 7935
    if-nez p2, :cond_8

    .line 7936
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7938
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->ensureSuggestionIsMutable()V

    .line 7939
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7941
    return-object p0
.end method

.method public setSuggestionType(Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 8022
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    .line 8024
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    .line 8025
    return-object p0
.end method

.method public setSuggestionType(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8012
    if-nez p1, :cond_8

    .line 8013
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8015
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->suggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    .line 8017
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->bitField0_:I

    .line 8018
    return-object p0
.end method
