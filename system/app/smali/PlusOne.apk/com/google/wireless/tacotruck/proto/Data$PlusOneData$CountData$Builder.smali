.class public final Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;",
        "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private circleName_:Ljava/lang/Object;

.field private count_:I

.field private focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

.field private personFirstName_:Lcom/google/protobuf/LazyStringList;

.field private personId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 9063
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 9271
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    .line 9316
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    .line 9372
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->circleName_:Ljava/lang/Object;

    .line 9408
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    .line 9064
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->maybeForceBuilderInitialization()V

    .line 9065
    return-void
.end method

.method static synthetic access$11500()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 1

    .prologue
    .line 9058
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 1

    .prologue
    .line 9070
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureFocusObfuscatedPersonIdIsMutable()V
    .registers 3

    .prologue
    .line 9318
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 9319
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    .line 9320
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9322
    :cond_16
    return-void
.end method

.method private ensurePersonFirstNameIsMutable()V
    .registers 3

    .prologue
    .line 9410
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 9411
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    .line 9412
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9414
    :cond_17
    return-void
.end method

.method private ensurePersonIdIsMutable()V
    .registers 3

    .prologue
    .line 9273
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 9274
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    .line 9275
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9277
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 9068
    return-void
.end method


# virtual methods
.method public addAllFocusObfuscatedPersonId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;"
        }
    .end annotation

    .prologue
    .line 9354
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensureFocusObfuscatedPersonIdIsMutable()V

    .line 9355
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 9357
    return-object p0
.end method

.method public addAllPersonFirstName(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;"
        }
    .end annotation

    .prologue
    .line 9446
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensurePersonFirstNameIsMutable()V

    .line 9447
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 9449
    return-object p0
.end method

.method public addAllPersonId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;"
        }
    .end annotation

    .prologue
    .line 9303
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensurePersonIdIsMutable()V

    .line 9304
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 9306
    return-object p0
.end method

.method public addFocusObfuscatedPersonId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9344
    if-nez p1, :cond_8

    .line 9345
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9347
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensureFocusObfuscatedPersonIdIsMutable()V

    .line 9348
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 9350
    return-object p0
.end method

.method public addPersonFirstName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9436
    if-nez p1, :cond_8

    .line 9437
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9439
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensurePersonFirstNameIsMutable()V

    .line 9440
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 9442
    return-object p0
.end method

.method public addPersonId(J)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 5
    .parameter "value"

    .prologue
    .line 9296
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensurePersonIdIsMutable()V

    .line 9297
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9299
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    .registers 3

    .prologue
    .line 9097
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v0

    .line 9098
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 9099
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 9101
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9058
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    .registers 6

    .prologue
    .line 9115
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 9116
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9117
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 9118
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 9119
    or-int/lit8 v2, v2, 0x1

    .line 9121
    :cond_10
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->count_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->count_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$11702(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;I)I

    .line 9122
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 9123
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    .line 9124
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9126
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$11802(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;Ljava/util/List;)Ljava/util/List;

    .line 9127
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_45

    .line 9128
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    .line 9130
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9132
    :cond_45
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$11902(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 9133
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_52

    .line 9134
    or-int/lit8 v2, v2, 0x2

    .line 9136
    :cond_52
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->circleName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->circleName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$12002(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9137
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6e

    .line 9138
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    .line 9140
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9142
    :cond_6e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$12102(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 9143
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$12202(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;I)I

    .line 9144
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9058
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9058
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 2

    .prologue
    .line 9074
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9075
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->count_:I

    .line 9076
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9077
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    .line 9078
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9079
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    .line 9080
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9081
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->circleName_:Ljava/lang/Object;

    .line 9082
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9083
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    .line 9084
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9085
    return-object p0
.end method

.method public clearCircleName()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 2

    .prologue
    .line 9396
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9397
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getCircleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->circleName_:Ljava/lang/Object;

    .line 9399
    return-object p0
.end method

.method public clearCount()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 2

    .prologue
    .line 9264
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9265
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->count_:I

    .line 9267
    return-object p0
.end method

.method public clearFocusObfuscatedPersonId()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 2

    .prologue
    .line 9360
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    .line 9361
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9363
    return-object p0
.end method

.method public clearPersonFirstName()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 2

    .prologue
    .line 9452
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    .line 9453
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9455
    return-object p0
.end method

.method public clearPersonId()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 2

    .prologue
    .line 9309
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    .line 9310
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9312
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 9058
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9058
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 3

    .prologue
    .line 9089
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

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
    .line 9058
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCircleName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 9377
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->circleName_:Ljava/lang/Object;

    .line 9378
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 9379
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9380
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->circleName_:Ljava/lang/Object;

    .line 9383
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

.method public getCount()I
    .registers 2

    .prologue
    .line 9255
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 9058
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9058
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    .registers 2

    .prologue
    .line 9093
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedPersonId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 9331
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFocusObfuscatedPersonIdCount()I
    .registers 2

    .prologue
    .line 9328
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getFocusObfuscatedPersonIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9325
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPersonFirstName(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 9423
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPersonFirstNameCount()I
    .registers 2

    .prologue
    .line 9420
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getPersonFirstNameList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9417
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPersonId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 9286
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPersonIdCount()I
    .registers 2

    .prologue
    .line 9283
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPersonIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9280
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCircleName()Z
    .registers 3

    .prologue
    .line 9374
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

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

.method public hasCount()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 9252
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

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
    .line 9058
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

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
    .line 9058
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9197
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 9198
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_6e

    .line 9203
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9205
    :sswitch_d
    return-object p0

    .line 9210
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9211
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->count_:I

    goto :goto_0

    .line 9215
    :sswitch_1b
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensurePersonIdIsMutable()V

    .line 9216
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9220
    :sswitch_2c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 9221
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 9222
    .local v1, limit:I
    :goto_34
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_42

    .line 9223
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->addPersonId(J)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    goto :goto_34

    .line 9225
    :cond_42
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 9229
    .end local v0           #length:I
    .end local v1           #limit:I
    :sswitch_46
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9230
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->circleName_:Ljava/lang/Object;

    goto :goto_0

    .line 9234
    :sswitch_53
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensurePersonFirstNameIsMutable()V

    .line 9235
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 9239
    :sswitch_60
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensureFocusObfuscatedPersonIdIsMutable()V

    .line 9240
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 9198
    nop

    :sswitch_data_6e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x12 -> :sswitch_2c
        0x1a -> :sswitch_46
        0x22 -> :sswitch_53
        0x2a -> :sswitch_60
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 9148
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 9185
    :cond_6
    :goto_6
    return-object p0

    .line 9149
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 9150
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->setCount(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    .line 9152
    :cond_14
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$11800(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 9153
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 9154
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$11800(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    .line 9155
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9162
    :cond_32
    :goto_32
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$11900(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    .line 9163
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 9164
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$11900(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    .line 9165
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9172
    :cond_50
    :goto_50
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->hasCircleName()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 9173
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getCircleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->setCircleName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    .line 9175
    :cond_5d
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$12100(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 9176
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 9177
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$12100(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    .line 9178
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    goto :goto_6

    .line 9157
    :cond_7c
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensurePersonIdIsMutable()V

    .line 9158
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$11800(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_32

    .line 9167
    :cond_89
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensureFocusObfuscatedPersonIdIsMutable()V

    .line 9168
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$11900(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_50

    .line 9180
    :cond_96
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensurePersonFirstNameIsMutable()V

    .line 9181
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$12100(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6
.end method

.method public setCircleName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9387
    if-nez p1, :cond_8

    .line 9388
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9390
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9391
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->circleName_:Ljava/lang/Object;

    .line 9393
    return-object p0
.end method

.method public setCount(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9258
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9259
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->count_:I

    .line 9261
    return-object p0
.end method

.method public setFocusObfuscatedPersonId(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 9335
    if-nez p2, :cond_8

    .line 9336
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9338
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensureFocusObfuscatedPersonIdIsMutable()V

    .line 9339
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9341
    return-object p0
.end method

.method public setPersonFirstName(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 9427
    if-nez p2, :cond_8

    .line 9428
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9430
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensurePersonFirstNameIsMutable()V

    .line 9431
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9433
    return-object p0
.end method

.method public setPersonId(IJ)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 9290
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensurePersonIdIsMutable()V

    .line 9291
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9293
    return-object p0
.end method
