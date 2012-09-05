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
    .line 31233
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    .line 31234
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->initFields()V

    .line 31235
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 30245
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 30555
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->memoizedIsInitialized:B

    .line 30593
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->memoizedSerializedSize:I

    .line 30246
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30240
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 30247
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 30555
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->memoizedIsInitialized:B

    .line 30593
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->memoizedSerializedSize:I

    .line 30247
    return-void
.end method

.method static synthetic access$41602(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30240
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    return-object p1
.end method

.method static synthetic access$41702(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30240
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    return-object p1
.end method

.method static synthetic access$41802(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30240
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$41902(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30240
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    return-object p1
.end method

.method static synthetic access$42002(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30240
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->mandatory_:Z

    return p1
.end method

.method static synthetic access$42102(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30240
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasError_:Z

    return p1
.end method

.method static synthetic access$42200(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30240
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$42202(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30240
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$42302(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30240
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->helpText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$42402(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30240
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 1

    .prologue
    .line 30251
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    return-object v0
.end method

.method private getHelpTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 30534
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->helpText_:Ljava/lang/Object;

    .line 30535
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 30536
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30538
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->helpText_:Ljava/lang/Object;

    .line 30541
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
    .line 30451
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->label_:Ljava/lang/Object;

    .line 30452
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 30453
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30455
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->label_:Ljava/lang/Object;

    .line 30458
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

    .line 30546
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->FIRST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 30547
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->TEXT_INPUT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    .line 30548
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->label_:Ljava/lang/Object;

    .line 30549
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 30550
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->mandatory_:Z

    .line 30551
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasError_:Z

    .line 30552
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;

    .line 30553
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->helpText_:Ljava/lang/Object;

    .line 30554
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 1

    .prologue
    .line 30709
    #calls: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->access$41400()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 30712
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
    .line 30240
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 2

    .prologue
    .line 30255
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    return-object v0
.end method

.method public getHasError()Z
    .registers 2

    .prologue
    .line 30489
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasError_:Z

    return v0
.end method

.method public getHelpText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 30520
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->helpText_:Ljava/lang/Object;

    .line 30521
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 30522
    check-cast v1, Ljava/lang/String;

    .line 30530
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 30524
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 30526
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 30527
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 30528
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->helpText_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 30530
    goto :goto_8
.end method

.method public getId()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;
    .registers 2

    .prologue
    .line 30417
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 5

    .prologue
    .line 30437
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->label_:Ljava/lang/Object;

    .line 30438
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 30439
    check-cast v1, Ljava/lang/String;

    .line 30447
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 30441
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 30443
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 30444
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 30445
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->label_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 30447
    goto :goto_8
.end method

.method public getMandatory()Z
    .registers 2

    .prologue
    .line 30479
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

    .line 30595
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->memoizedSerializedSize:I

    .line 30596
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    move v2, v1

    .line 30632
    .end local v1           #size:I
    .local v2, size:I
    :goto_b
    return v2

    .line 30598
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_c
    const/4 v1, 0x0

    .line 30599
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1e

    .line 30600
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->getNumber()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 30603
    :cond_1e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2f

    .line 30604
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->getNumber()I

    move-result v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 30607
    :cond_2f
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_3f

    .line 30608
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 30611
    :cond_3f
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_4c

    .line 30612
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 30615
    :cond_4c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5c

    .line 30616
    const/4 v3, 0x5

    iget-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->mandatory_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 30619
    :cond_5c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6c

    .line 30620
    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasError_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 30623
    :cond_6c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6d
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_86

    .line 30624
    const/4 v4, 0x7

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 30623
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 30627
    :cond_86
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_97

    .line 30628
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getHelpTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 30631
    :cond_97
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->memoizedSerializedSize:I

    move v2, v1

    .line 30632
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_b
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;
    .registers 2

    .prologue
    .line 30427
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    return-object v0
.end method

.method public getValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    .registers 2

    .prologue
    .line 30469
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    return-object v0
.end method

.method public getValueOption(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    .registers 3
    .parameter "index"

    .prologue
    .line 30506
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    return-object v0
.end method

.method public getValueOptionCount()I
    .registers 2

    .prologue
    .line 30503
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
    .line 30496
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;

    return-object v0
.end method

.method public getValueOptionOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOptionOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 30510
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
    .line 30500
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;

    return-object v0
.end method

.method public hasHasError()Z
    .registers 3

    .prologue
    .line 30486
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
    .line 30517
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

    .line 30414
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
    .line 30434
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
    .line 30476
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
    .line 30424
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
    .line 30466
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

    .line 30557
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->memoizedIsInitialized:B

    .line 30558
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 30561
    :goto_8
    return v1

    .line 30558
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 30560
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 2

    .prologue
    .line 30714
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
    .line 30639
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

    .line 30566
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getSerializedSize()I

    .line 30567
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 30568
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 30570
    :cond_17
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_26

    .line 30571
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 30573
    :cond_26
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_34

    .line 30574
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 30576
    :cond_34
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3f

    .line 30577
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 30579
    :cond_3f
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4d

    .line 30580
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->mandatory_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 30582
    :cond_4d
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5b

    .line 30583
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasError_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 30585
    :cond_5b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5c
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_73

    .line 30586
    const/4 v2, 0x7

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 30585
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 30588
    :cond_73
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_82

    .line 30589
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getHelpTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 30591
    :cond_82
    return-void
.end method
