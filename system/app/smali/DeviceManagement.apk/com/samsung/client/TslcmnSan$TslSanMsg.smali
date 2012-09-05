.class public Lcom/samsung/client/TslcmnSan$TslSanMsg;
.super Ljava/lang/Object;
.source "TslcmnSan.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/TslcmnSan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TslSanMsg"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x77533f230528bdc8L


# instance fields
.field body:[B

.field bodyLen:I

.field initiator:I

.field msg:[B

.field msgLen:I

.field sessionId:I

.field srvrId:[B

.field uiMode:I

.field version:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDuplicate(Lcom/samsung/client/TslcmnSan$TslSanMsg;)Z
    .registers 6
    .parameter "sanMsg"

    .prologue
    const/4 v1, 0x0

    .line 29
    iget v2, p0, Lcom/samsung/client/TslcmnSan$TslSanMsg;->msgLen:I

    iget v3, p1, Lcom/samsung/client/TslcmnSan$TslSanMsg;->msgLen:I

    if-eq v2, v3, :cond_8

    .line 39
    :cond_7
    :goto_7
    return v1

    .line 33
    :cond_8
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget v2, p0, Lcom/samsung/client/TslcmnSan$TslSanMsg;->msgLen:I

    if-ge v0, v2, :cond_1a

    .line 34
    iget-object v2, p0, Lcom/samsung/client/TslcmnSan$TslSanMsg;->msg:[B

    aget-byte v2, v2, v0

    iget-object v3, p1, Lcom/samsung/client/TslcmnSan$TslSanMsg;->msg:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_7

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 39
    :cond_1a
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public isErroneous()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 43
    iget v1, p0, Lcom/samsung/client/TslcmnSan$TslSanMsg;->uiMode:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_a

    iget v1, p0, Lcom/samsung/client/TslcmnSan$TslSanMsg;->uiMode:I

    if-gez v1, :cond_b

    .line 55
    :cond_a
    :goto_a
    return v0

    .line 47
    :cond_b
    iget v1, p0, Lcom/samsung/client/TslcmnSan$TslSanMsg;->initiator:I

    if-gt v1, v0, :cond_a

    .line 51
    iget v1, p0, Lcom/samsung/client/TslcmnSan$TslSanMsg;->version:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1b

    iget v1, p0, Lcom/samsung/client/TslcmnSan$TslSanMsg;->version:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_a

    .line 55
    :cond_1b
    const/4 v0, 0x0

    goto :goto_a
.end method
