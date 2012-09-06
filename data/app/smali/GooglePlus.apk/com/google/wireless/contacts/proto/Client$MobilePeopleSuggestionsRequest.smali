.class public final Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobilePeopleSuggestionsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private fallbackSuggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 7594
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    .line 7595
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->initFields()V

    .line 7596
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 7304
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 7331
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->memoizedIsInitialized:B

    .line 7348
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->memoizedSerializedSize:I

    .line 7305
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7299
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 7306
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7331
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->memoizedIsInitialized:B

    .line 7348
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->memoizedSerializedSize:I

    .line 7306
    return-void
.end method

.method static synthetic access$10002(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7299
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->bitField0_:I

    return p1
.end method

.method static synthetic access$9902(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7299
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->fallbackSuggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;
    .registers 1

    .prologue
    .line 7310
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 7329
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->fallbackSuggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    .line 7330
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;
    .registers 1

    .prologue
    .line 7436
    #calls: Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->access$9700()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 7439
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7299
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;
    .registers 2

    .prologue
    .line 7314
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    return-object v0
.end method

.method public getFallbackSuggestionType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;
    .registers 2

    .prologue
    .line 7325
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->fallbackSuggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 7350
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->memoizedSerializedSize:I

    .line 7351
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 7359
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 7353
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 7354
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 7355
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->fallbackSuggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7358
    :cond_16
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 7359
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasFallbackSuggestionType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 7322
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->bitField0_:I

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

    .line 7333
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->memoizedIsInitialized:B

    .line 7334
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 7337
    :goto_8
    return v1

    .line 7334
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 7336
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7299
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->newBuilderForType()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;
    .registers 2

    .prologue
    .line 7437
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7299
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->toBuilder()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;
    .registers 2

    .prologue
    .line 7441
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->newBuilder(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

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
    .line 7366
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 7342
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->getSerializedSize()I

    .line 7343
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 7344
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->fallbackSuggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7346
    :cond_f
    return-void
.end method
