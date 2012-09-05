.class public final Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Circles.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Circles$MobileCircleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Circles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileCircle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;,
        Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;,
        Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;,
        Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private memberCount_:I

.field private membershipStatus_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private semanticHints_:I

.field private type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 828
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->defaultInstance:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    .line 829
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->defaultInstance:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->initFields()V

    .line 830
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 43
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 337
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->memoizedIsInitialized:B

    .line 369
    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->memoizedSerializedSize:I

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;Lcom/google/wireless/contacts/proto/Circles$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;-><init>(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 45
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 337
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->memoizedIsInitialized:B

    .line 369
    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->memoizedSerializedSize:I

    .line 45
    return-void
.end method

.method static synthetic access$302(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->memberCount_:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->membershipStatus_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->semanticHints_:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->defaultInstance:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 246
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->id_:Ljava/lang/Object;

    .line 247
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 248
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 250
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->id_:Ljava/lang/Object;

    .line 253
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

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 288
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->name_:Ljava/lang/Object;

    .line 289
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 290
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 292
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->name_:Ljava/lang/Object;

    .line 295
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

    .line 330
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->id_:Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 332
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->name_:Ljava/lang/Object;

    .line 333
    iput v1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->memberCount_:I

    .line 334
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;->OWNER:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->membershipStatus_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    .line 335
    iput v1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->semanticHints_:I

    .line 336
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    .registers 1

    .prologue
    .line 477
    #calls: Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->create()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->access$100()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 480
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->newBuilder()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    .registers 2

    .prologue
    .line 53
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->defaultInstance:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 232
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->id_:Ljava/lang/Object;

    .line 233
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 234
    check-cast v1, Ljava/lang/String;

    .line 242
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 236
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 238
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 240
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 242
    goto :goto_8
.end method

.method public getMemberCount()I
    .registers 2

    .prologue
    .line 306
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->memberCount_:I

    return v0
.end method

.method public getMembershipStatus()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->membershipStatus_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 274
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->name_:Ljava/lang/Object;

    .line 275
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 276
    check-cast v1, Ljava/lang/String;

    .line 284
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 278
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 280
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 282
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 284
    goto :goto_8
.end method

.method public getSemanticHints()I
    .registers 2

    .prologue
    .line 326
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->semanticHints_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 371
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->memoizedSerializedSize:I

    .line 372
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 400
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 374
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 375
    iget v2, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 376
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 379
    :cond_1a
    iget v2, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 380
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 383
    :cond_2b
    iget v2, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3b

    .line 384
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 387
    :cond_3b
    iget v2, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4a

    .line 388
    iget v2, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->memberCount_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 391
    :cond_4a
    iget v2, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5e

    .line 392
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->membershipStatus_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 395
    :cond_5e
    iget v2, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6e

    .line 396
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->semanticHints_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 399
    :cond_6e
    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->memoizedSerializedSize:I

    move v1, v0

    .line 400
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    return-object v0
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 229
    iget v1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMemberCount()Z
    .registers 3

    .prologue
    .line 303
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->bitField0_:I

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

.method public hasMembershipStatus()Z
    .registers 3

    .prologue
    .line 313
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 271
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->bitField0_:I

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

.method public hasSemanticHints()Z
    .registers 3

    .prologue
    .line 323
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    .line 261
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 339
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->memoizedIsInitialized:B

    .line 340
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 343
    :goto_8
    return v1

    .line 340
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 342
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    .registers 2

    .prologue
    .line 482
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->newBuilder(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

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
    .line 407
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 348
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getSerializedSize()I

    .line 349
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 350
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 352
    :cond_13
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 353
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 355
    :cond_22
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 356
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 358
    :cond_30
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 359
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->memberCount_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 361
    :cond_3d
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4f

    .line 362
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->membershipStatus_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 364
    :cond_4f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5d

    .line 365
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->semanticHints_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 367
    :cond_5d
    return-void
.end method
