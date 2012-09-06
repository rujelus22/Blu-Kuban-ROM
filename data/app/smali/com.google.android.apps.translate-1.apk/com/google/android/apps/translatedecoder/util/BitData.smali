.class public abstract Lcom/google/android/apps/translatedecoder/util/BitData;
.super Ljava/lang/Object;
.source "BitData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = 0x3ae176ad111e5747L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/google/android/apps/translatedecoder/util/BitData;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/util/BitData;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/BitData;
    .registers 6
    .parameter "buf"

    .prologue
    const/4 v4, 0x1

    .line 41
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 42
    .local v0, classId:I
    if-ne v0, v4, :cond_c

    .line 43
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/util/ByteBufferBasedBitData;->readFromByteBufferHelper(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/BitData;

    move-result-object v1

    .line 47
    :goto_b
    return-object v1

    .line 45
    :cond_c
    sget-object v1, Lcom/google/android/apps/translatedecoder/util/BitData;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown class id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 46
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 47
    const/4 v1, 0x0

    goto :goto_b
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract get(I)Z
.end method

.method public abstract length()I
.end method

.method public abstract nextSetBit(I)I
.end method

.method public set(I)V
    .registers 3
    .parameter "bitIndex"

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/translatedecoder/util/BitData;->set(IZ)V

    .line 30
    return-void
.end method

.method public abstract set(IZ)V
.end method

.method public abstract size()I
.end method

.method public abstract writeToByteBuffer(Ljava/nio/ByteBuffer;)V
.end method
