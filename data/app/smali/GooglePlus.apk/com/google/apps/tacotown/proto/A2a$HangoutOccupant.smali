.class public final Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "A2a.java"

# interfaces
.implements Lcom/google/apps/tacotown/proto/A2a$HangoutOccupantOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/tacotown/proto/A2a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HangoutOccupant"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;

.field private static final serialVersionUID:J


# instance fields
.field private avatarUrl_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private obfuscatedGaiaId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3647
    new-instance v0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;-><init>(Z)V

    sput-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->defaultInstance:Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;

    .line 3648
    sget-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->defaultInstance:Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->initFields()V

    .line 3649
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3150
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3265
    iput-byte v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->memoizedIsInitialized:B

    .line 3296
    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->memoizedSerializedSize:I

    .line 3151
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;Lcom/google/apps/tacotown/proto/A2a$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3145
    invoke-direct {p0, p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;-><init>(Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3152
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3265
    iput-byte v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->memoizedIsInitialized:B

    .line 3296
    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->memoizedSerializedSize:I

    .line 3152
    return-void
.end method

.method static synthetic access$4102(Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3145
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3145
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->avatarUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3145
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->obfuscatedGaiaId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3145
    iput p1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->bitField0_:I

    return p1
.end method

.method private getAvatarUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3217
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->avatarUrl_:Ljava/lang/Object;

    .line 3218
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3219
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3221
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->avatarUrl_:Ljava/lang/Object;

    .line 3224
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

.method public static getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;
    .registers 1

    .prologue
    .line 3156
    sget-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->defaultInstance:Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3185
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->name_:Ljava/lang/Object;

    .line 3186
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3187
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3189
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->name_:Ljava/lang/Object;

    .line 3192
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

.method private getObfuscatedGaiaIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3249
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->obfuscatedGaiaId_:Ljava/lang/Object;

    .line 3250
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3251
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3253
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->obfuscatedGaiaId_:Ljava/lang/Object;

    .line 3256
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
    .registers 2

    .prologue
    .line 3261
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->name_:Ljava/lang/Object;

    .line 3262
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->avatarUrl_:Ljava/lang/Object;

    .line 3263
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->obfuscatedGaiaId_:Ljava/lang/Object;

    .line 3264
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;
    .registers 1

    .prologue
    .line 3392
    #calls: Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->create()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->access$3900()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;)Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3395
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->newBuilder()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;)Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3203
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->avatarUrl_:Ljava/lang/Object;

    .line 3204
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3205
    check-cast v1, Ljava/lang/String;

    .line 3213
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3207
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3209
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3210
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3211
    iput-object v2, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->avatarUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3213
    goto :goto_8
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;
    .registers 2

    .prologue
    .line 3160
    sget-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->defaultInstance:Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3145
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3171
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->name_:Ljava/lang/Object;

    .line 3172
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3173
    check-cast v1, Ljava/lang/String;

    .line 3181
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3175
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3177
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3178
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3179
    iput-object v2, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3181
    goto :goto_8
.end method

.method public getObfuscatedGaiaId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3235
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->obfuscatedGaiaId_:Ljava/lang/Object;

    .line 3236
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3237
    check-cast v1, Ljava/lang/String;

    .line 3245
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3239
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3241
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3242
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3243
    iput-object v2, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->obfuscatedGaiaId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3245
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3298
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->memoizedSerializedSize:I

    .line 3299
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 3315
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 3301
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 3302
    iget v2, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 3303
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3306
    :cond_19
    iget v2, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 3307
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->getAvatarUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3310
    :cond_28
    iget v2, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 3311
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->getObfuscatedGaiaIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3314
    :cond_39
    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->memoizedSerializedSize:I

    move v1, v0

    .line 3315
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasAvatarUrl()Z
    .registers 3

    .prologue
    .line 3200
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3168
    iget v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasObfuscatedGaiaId()Z
    .registers 3

    .prologue
    .line 3232
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3267
    iget-byte v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->memoizedIsInitialized:B

    .line 3268
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 3279
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 3268
    goto :goto_9

    .line 3270
    :cond_c
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->hasName()Z

    move-result v3

    if-nez v3, :cond_16

    .line 3271
    iput-byte v2, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->memoizedIsInitialized:B

    move v1, v2

    .line 3272
    goto :goto_9

    .line 3274
    :cond_16
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->hasAvatarUrl()Z

    move-result v3

    if-nez v3, :cond_20

    .line 3275
    iput-byte v2, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->memoizedIsInitialized:B

    move v1, v2

    .line 3276
    goto :goto_9

    .line 3278
    :cond_20
    iput-byte v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;
    .registers 2

    .prologue
    .line 3393
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->newBuilder()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3145
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->newBuilderForType()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;
    .registers 2

    .prologue
    .line 3397
    invoke-static {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->newBuilder(Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;)Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3145
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->toBuilder()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;

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
    .line 3322
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3284
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->getSerializedSize()I

    .line 3285
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 3286
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3288
    :cond_12
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 3289
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->getAvatarUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3291
    :cond_1f
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 3292
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->getObfuscatedGaiaIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3294
    :cond_2e
    return-void
.end method
