.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputFieldOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutOfBoxInputField"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;,
        Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private hasError_:Z

.field private helpText_:Ljava/lang/Object;

.field private id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field private label_:Ljava/lang/Object;

.field private mandatory_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

.field private valueOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;",
            ">;"
        }
    .end annotation
.end field

.field private value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34014
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    .line 34015
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->initFields()V

    .line 34016
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 33026
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 33336
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->memoizedIsInitialized:B

    .line 33374
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->memoizedSerializedSize:I

    .line 33027
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33021
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 33028
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 33336
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->memoizedIsInitialized:B

    .line 33374
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->memoizedSerializedSize:I

    .line 33028
    return-void
.end method

.method static synthetic access$45102(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33021
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    return-object p1
.end method

.method static synthetic access$45202(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33021
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    return-object p1
.end method

.method static synthetic access$45302(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33021
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$45402(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33021
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    return-object p1
.end method

.method static synthetic access$45502(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33021
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->mandatory_:Z

    return p1
.end method

.method static synthetic access$45602(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33021
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasError_:Z

    return p1
.end method

.method static synthetic access$45700(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33021
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$45702(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33021
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$45802(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33021
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->helpText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$45902(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33021
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 1

    .prologue
    .line 33032
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    return-object v0
.end method

.method private getHelpTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 33315
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->helpText_:Ljava/lang/Object;

    .line 33316
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 33317
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 33319
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->helpText_:Ljava/lang/Object;

    .line 33322
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

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 33232
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->label_:Ljava/lang/Object;

    .line 33233
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 33234
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 33236
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->label_:Ljava/lang/Object;

    .line 33239
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
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 33327
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->FIRST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33328
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->TEXT_INPUT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    .line 33329
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->label_:Ljava/lang/Object;

    .line 33330
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 33331
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->mandatory_:Z

    .line 33332
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasError_:Z

    .line 33333
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;

    .line 33334
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->helpText_:Ljava/lang/Object;

    .line 33335
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 1

    .prologue
    .line 33490
    #calls: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->access$44900()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 33493
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33021
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 2

    .prologue
    .line 33036
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    return-object v0
.end method

.method public getHasError()Z
    .registers 2

    .prologue
    .line 33270
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasError_:Z

    return v0
.end method

.method public getHelpText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 33301
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->helpText_:Ljava/lang/Object;

    .line 33302
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 33303
    check-cast v1, Ljava/lang/String;

    .line 33311
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 33305
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 33307
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 33308
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 33309
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->helpText_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 33311
    goto :goto_8
.end method

.method public getId()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;
    .registers 2

    .prologue
    .line 33198
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 5

    .prologue
    .line 33218
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->label_:Ljava/lang/Object;

    .line 33219
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 33220
    check-cast v1, Ljava/lang/String;

    .line 33228
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 33222
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 33224
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 33225
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 33226
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->label_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 33228
    goto :goto_8
.end method

.method public getMandatory()Z
    .registers 2

    .prologue
    .line 33260
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->mandatory_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 33376
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->memoizedSerializedSize:I

    .line 33377
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    move v2, v1

    .line 33413
    .end local v1           #size:I
    .local v2, size:I
    :goto_b
    return v2

    .line 33379
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_c
    const/4 v1, 0x0

    .line 33380
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1e

    .line 33381
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->getNumber()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 33384
    :cond_1e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2f

    .line 33385
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->getNumber()I

    move-result v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 33388
    :cond_2f
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_3f

    .line 33389
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 33392
    :cond_3f
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_4c

    .line 33393
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 33396
    :cond_4c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5c

    .line 33397
    const/4 v3, 0x5

    iget-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->mandatory_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 33400
    :cond_5c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6c

    .line 33401
    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasError_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 33404
    :cond_6c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6d
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_86

    .line 33405
    const/4 v4, 0x7

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 33404
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 33408
    :cond_86
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_97

    .line 33409
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getHelpTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 33412
    :cond_97
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->memoizedSerializedSize:I

    move v2, v1

    .line 33413
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_b
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;
    .registers 2

    .prologue
    .line 33208
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    return-object v0
.end method

.method public getValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    .registers 2

    .prologue
    .line 33250
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    return-object v0
.end method

.method public getValueOption(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    .registers 3
    .parameter "index"

    .prologue
    .line 33287
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    return-object v0
.end method

.method public getValueOptionCount()I
    .registers 2

    .prologue
    .line 33284
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getValueOptionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33277
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;

    return-object v0
.end method

.method public getValueOptionOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOptionOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 33291
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOptionOrBuilder;

    return-object v0
.end method

.method public getValueOptionOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOptionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33281
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;

    return-object v0
.end method

.method public hasHasError()Z
    .registers 3

    .prologue
    .line 33267
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

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

.method public hasHelpText()Z
    .registers 3

    .prologue
    .line 33298
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 33195
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLabel()Z
    .registers 3

    .prologue
    .line 33215
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

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

.method public hasMandatory()Z
    .registers 3

    .prologue
    .line 33257
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    .line 33205
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

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

.method public hasValue()Z
    .registers 3

    .prologue
    .line 33247
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 33338
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->memoizedIsInitialized:B

    .line 33339
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 33342
    :goto_8
    return v1

    .line 33339
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 33341
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33021
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 2

    .prologue
    .line 33491
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33021
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 2

    .prologue
    .line 33495
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

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
    .line 33420
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 33347
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getSerializedSize()I

    .line 33348
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 33349
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 33351
    :cond_17
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_26

    .line 33352
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 33354
    :cond_26
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_34

    .line 33355
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 33357
    :cond_34
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3f

    .line 33358
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 33360
    :cond_3f
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4d

    .line 33361
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->mandatory_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 33363
    :cond_4d
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5b

    .line 33364
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasError_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 33366
    :cond_5b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5c
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_73

    .line 33367
    const/4 v2, 0x7

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 33366
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 33369
    :cond_73
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_82

    .line 33370
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getHelpTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 33372
    :cond_82
    return-void
.end method
