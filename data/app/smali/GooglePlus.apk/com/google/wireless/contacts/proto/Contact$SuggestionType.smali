.class public final Lcom/google/wireless/contacts/proto/Contact$SuggestionType;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Contact.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Contact$SuggestionTypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuggestionType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;,
        Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5483
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    .line 5484
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->initFields()V

    .line 5485
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 5171
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 5239
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->memoizedIsInitialized:B

    .line 5256
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->memoizedSerializedSize:I

    .line 5172
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;Lcom/google/wireless/contacts/proto/Contact$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5166
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;-><init>(Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5173
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5239
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->memoizedIsInitialized:B

    .line 5256
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->memoizedSerializedSize:I

    .line 5173
    return-void
.end method

.method static synthetic access$7002(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5166
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->type_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    return-object p1
.end method

.method static synthetic access$7102(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5166
    iput p1, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;
    .registers 1

    .prologue
    .line 5177
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 5237
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->type_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    .line 5238
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;
    .registers 1

    .prologue
    .line 5344
    #calls: Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->access$6800()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 5347
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5166
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;
    .registers 2

    .prologue
    .line 5181
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 5258
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->memoizedSerializedSize:I

    .line 5259
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 5267
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 5261
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 5262
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 5263
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->type_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5266
    :cond_1a
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->memoizedSerializedSize:I

    move v1, v0

    .line 5267
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;
    .registers 2

    .prologue
    .line 5233
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->type_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    return-object v0
.end method

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5230
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->bitField0_:I

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

    .line 5241
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->memoizedIsInitialized:B

    .line 5242
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 5245
    :goto_8
    return v1

    .line 5242
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 5244
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5166
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->newBuilderForType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;
    .registers 2

    .prologue
    .line 5345
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5166
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->toBuilder()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;
    .registers 2

    .prologue
    .line 5349
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->newBuilder(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

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
    .line 5274
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

    .line 5250
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->getSerializedSize()I

    .line 5251
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 5252
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->type_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5254
    :cond_13
    return-void
.end method
