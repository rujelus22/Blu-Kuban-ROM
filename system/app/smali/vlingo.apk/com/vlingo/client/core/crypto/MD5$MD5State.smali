.class Lcom/vlingo/client/core/crypto/MD5$MD5State;
.super Ljava/lang/Object;
.source "MD5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/crypto/MD5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MD5State"
.end annotation


# instance fields
.field buffer:[B

.field count:J

.field state:[I

.field final synthetic this$0:Lcom/vlingo/client/core/crypto/MD5;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/crypto/MD5;)V
    .registers 5
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/vlingo/client/core/crypto/MD5$MD5State;->this$0:Lcom/vlingo/client/core/crypto/MD5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/vlingo/client/core/crypto/MD5$MD5State;->buffer:[B

    .line 425
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vlingo/client/core/crypto/MD5$MD5State;->count:J

    .line 426
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vlingo/client/core/crypto/MD5$MD5State;->state:[I

    .line 427
    iget-object v0, p0, Lcom/vlingo/client/core/crypto/MD5$MD5State;->state:[I

    const/4 v1, 0x0

    const v2, 0x67452301

    aput v2, v0, v1

    .line 428
    iget-object v0, p0, Lcom/vlingo/client/core/crypto/MD5$MD5State;->state:[I

    const/4 v1, 0x1

    const v2, -0x10325477

    aput v2, v0, v1

    .line 429
    iget-object v0, p0, Lcom/vlingo/client/core/crypto/MD5$MD5State;->state:[I

    const/4 v1, 0x2

    const v2, -0x67452302

    aput v2, v0, v1

    .line 430
    iget-object v0, p0, Lcom/vlingo/client/core/crypto/MD5$MD5State;->state:[I

    const/4 v1, 0x3

    const v2, 0x10325476

    aput v2, v0, v1

    .line 431
    return-void
.end method

.method public constructor <init>(Lcom/vlingo/client/core/crypto/MD5;Lcom/vlingo/client/core/crypto/MD5$MD5State;)V
    .registers 6
    .parameter
    .parameter "from"

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/crypto/MD5$MD5State;-><init>(Lcom/vlingo/client/core/crypto/MD5;)V

    .line 436
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/vlingo/client/core/crypto/MD5$MD5State;->buffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 437
    iget-object v1, p0, Lcom/vlingo/client/core/crypto/MD5$MD5State;->buffer:[B

    iget-object v2, p2, Lcom/vlingo/client/core/crypto/MD5$MD5State;->buffer:[B

    aget-byte v2, v2, v0

    aput-byte v2, v1, v0

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 439
    :cond_14
    const/4 v0, 0x0

    :goto_15
    iget-object v1, p0, Lcom/vlingo/client/core/crypto/MD5$MD5State;->state:[I

    array-length v1, v1

    if-ge v0, v1, :cond_25

    .line 440
    iget-object v1, p0, Lcom/vlingo/client/core/crypto/MD5$MD5State;->state:[I

    iget-object v2, p2, Lcom/vlingo/client/core/crypto/MD5$MD5State;->state:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 442
    :cond_25
    iget-wide v1, p2, Lcom/vlingo/client/core/crypto/MD5$MD5State;->count:J

    iput-wide v1, p0, Lcom/vlingo/client/core/crypto/MD5$MD5State;->count:J

    .line 443
    return-void
.end method
