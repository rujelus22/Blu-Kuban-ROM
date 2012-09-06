.class public final Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobilePeopleSuggestionsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8050
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    .line 8051
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->initFields()V

    .line 8052
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 7619
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 7668
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->memoizedIsInitialized:B

    .line 7688
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->memoizedSerializedSize:I

    .line 7620
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7614
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;-><init>(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 7621
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7668
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->memoizedIsInitialized:B

    .line 7688
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->memoizedSerializedSize:I

    .line 7621
    return-void
.end method

.method static synthetic access$10400(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 7614
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->suggestion_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10402(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7614
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->suggestion_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10502(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7614
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->suggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    return-object p1
.end method

.method static synthetic access$10602(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7614
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;
    .registers 1

    .prologue
    .line 7625
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 7665
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->suggestion_:Ljava/util/List;

    .line 7666
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->suggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    .line 7667
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    .registers 1

    .prologue
    .line 7780
    #calls: Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->access$10200()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 7783
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7738
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    #calls: Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->buildParsed()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->access$10100(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7614
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;
    .registers 2

    .prologue
    .line 7629
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 7690
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->memoizedSerializedSize:I

    .line 7691
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 7703
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 7693
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 7694
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->suggestion_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 7695
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->suggestion_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7694
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 7698
    :cond_22
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_30

    .line 7699
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->suggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7702
    :cond_30
    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 7703
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public getSuggestion(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 3
    .parameter "index"

    .prologue
    .line 7647
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    return-object v0
.end method

.method public getSuggestionCount()I
    .registers 2

    .prologue
    .line 7644
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->suggestion_:Ljava/util/List;

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
    .line 7637
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->suggestion_:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestionOrBuilder(I)Lcom/google/wireless/contacts/proto/Contact$MobileContactOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 7651
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobileContactOrBuilder;

    return-object v0
.end method

.method public getSuggestionOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContactOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7641
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->suggestion_:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestionType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;
    .registers 2

    .prologue
    .line 7661
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->suggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    return-object v0
.end method

.method public hasSuggestionType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 7658
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 7670
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->memoizedIsInitialized:B

    .line 7671
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 7674
    :goto_8
    return v1

    .line 7671
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 7673
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7614
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->newBuilderForType()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    .registers 2

    .prologue
    .line 7781
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7614
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->toBuilder()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    .registers 2

    .prologue
    .line 7785
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->newBuilder(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

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
    .line 7710
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 7679
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->getSerializedSize()I

    .line 7680
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->suggestion_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 7681
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->suggestion_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7680
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 7683
    :cond_1b
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_27

    .line 7684
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->suggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7686
    :cond_27
    return-void
.end method
