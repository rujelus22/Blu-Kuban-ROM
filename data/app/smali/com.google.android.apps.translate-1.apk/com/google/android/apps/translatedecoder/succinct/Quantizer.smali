.class public Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
.super Ljava/lang/Object;
.source "Quantizer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = -0x11efc11aaffeca72L


# instance fields
.field private final maxUnitValue:I

.field private final minValue:D

.field private final valPerUnit:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(DDI)V
    .registers 6
    .parameter "minValue"
    .parameter "valPerUnit"
    .parameter "maxUnitValue"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->minValue:D

    .line 32
    iput-wide p3, p0, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->valPerUnit:D

    .line 33
    iput p5, p0, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->maxUnitValue:I

    .line 34
    return-void
.end method

.method public static readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    .registers 7
    .parameter "buf"

    .prologue
    .line 90
    new-instance v0, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;-><init>(DDI)V

    return-object v0
.end method

.method public static readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    .registers 6
    .parameter "quanFile"

    .prologue
    const/4 v3, 0x0

    .line 76
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    .local v1, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    .line 78
    .local v2, res:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_14} :catch_1b

    .line 85
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .end local v2           #res:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    :goto_14
    return-object v2

    .line 80
    :catch_15
    move-exception v0

    .line 81
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 82
    goto :goto_14

    .line 83
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1b
    move-exception v0

    .line 84
    .local v0, ex:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v2, v3

    .line 85
    goto :goto_14
.end method


# virtual methods
.method public getUnit(D)I
    .registers 8
    .parameter "val"

    .prologue
    .line 48
    iget-wide v1, p0, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->minValue:D

    sub-double v1, p1, v1

    iget-wide v3, p0, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->valPerUnit:D

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v0, v1

    .line 49
    .local v0, res:I
    iget v1, p0, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->maxUnitValue:I

    if-le v0, v1, :cond_2a

    .line 50
    sget-object v1, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unit is large than max. The val is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 51
    iget v0, p0, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->maxUnitValue:I

    .line 53
    :cond_2a
    if-gez v0, :cond_45

    .line 54
    sget-object v1, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unit is smaller than min. The val is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    .line 57
    :cond_45
    return v0
.end method

.method public getValue(I)D
    .registers 8
    .parameter "unit"

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->maxUnitValue:I

    if-le p1, v0, :cond_f

    .line 38
    sget-object v0, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->logger:Ljava/util/logging/Logger;

    const-string v1, "unit is too large!"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 41
    :cond_f
    iget-wide v0, p0, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->minValue:D

    int-to-double v2, p1

    iget-wide v4, p0, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->valPerUnit:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public numBitsRequired()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->maxUnitValue:I

    invoke-static {v0}, Lcom/google/android/apps/translatedecoder/util/BitsUtil;->numBitsRequired(I)I

    move-result v0

    return v0
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->minValue:D

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 95
    iget-wide v0, p0, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->valPerUnit:D

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 96
    iget v0, p0, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->maxUnitValue:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 97
    return-void
.end method

.method public writeToFile(Ljava/lang/String;)V
    .registers 5
    .parameter "quanFile"

    .prologue
    .line 62
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 63
    .local v1, out:Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    .line 68
    .end local v1           #out:Ljava/io/ObjectOutputStream;
    :goto_10
    return-void

    .line 65
    :catch_11
    move-exception v0

    .line 66
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10
.end method
