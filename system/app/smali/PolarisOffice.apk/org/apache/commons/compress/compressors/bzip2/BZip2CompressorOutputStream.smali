.class public Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "BZip2CompressorOutputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/compressors/bzip2/BZip2Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    }
.end annotation


# static fields
.field private static final CLEARMASK:I = -0x200001

.field private static final DEPTH_THRESH:I = 0xa

.field private static final GREATER_ICOST:I = 0xf

.field private static final INCS:[I = null

.field private static final LESSER_ICOST:I = 0x0

.field public static final MAX_BLOCKSIZE:I = 0x9

.field public static final MIN_BLOCKSIZE:I = 0x1

.field private static final QSORT_STACK_SIZE:I = 0x3e8

.field private static final SETMASK:I = 0x200000

.field private static final SMALL_THRESH:I = 0x14

.field private static final WORK_FACTOR:I = 0x1e


# instance fields
.field private allowableBlockSize:I

.field private blockCRC:I

.field private blockRandomised:Z

.field private final blockSize100k:I

.field private bsBuff:I

.field private bsLive:I

.field private combinedCRC:I

.field private final crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

.field private currentChar:I

.field private data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

.field private firstAttempt:Z

.field private last:I

.field private nInUse:I

.field private nMTF:I

.field private origPtr:I

.field private out:Ljava/io/OutputStream;

.field private runLength:I

.field private workDone:I

.field private workLimit:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 161
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->INCS:[I

    return-void

    :array_a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x6ct 0x1t 0x0t 0x0t
        0x45t 0x4t 0x0t 0x0t
        0xd0t 0xct 0x0t 0x0t
        0x71t 0x26t 0x0t 0x0t
        0x54t 0x73t 0x0t 0x0t
        0xfdt 0x59t 0x1t 0x0t
        0xf8t 0xdt 0x4t 0x0t
        0xe9t 0x29t 0xct 0x0t
        0xbct 0x7dt 0x24t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 395
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 6
    .parameter "out"
    .parameter "blockSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    .line 336
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 350
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    .line 420
    const/4 v0, 0x1

    if-ge p2, v0, :cond_32

    .line 421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "blockSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") < 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_32
    const/16 v0, 0x9

    if-le p2, v0, :cond_55

    .line 425
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "blockSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") > 9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_55
    iput p2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    .line 430
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 431
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->init()V

    .line 432
    return-void
.end method

.method private blockSort()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1390
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    mul-int/lit8 v3, v3, 0x1e

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workLimit:I

    .line 1391
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workDone:I

    .line 1392
    iput-boolean v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockRandomised:Z

    .line 1393
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->firstAttempt:Z

    .line 1394
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->mainSort()V

    .line 1396
    iget-boolean v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->firstAttempt:Z

    if-eqz v3, :cond_27

    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workDone:I

    iget v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workLimit:I

    if-le v3, v4, :cond_27

    .line 1397
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->randomiseBlock()V

    .line 1398
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workDone:I

    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workLimit:I

    .line 1399
    iput-boolean v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->firstAttempt:Z

    .line 1400
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->mainSort()V

    .line 1403
    :cond_27
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v0, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 1404
    .local v0, fmap:[I
    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->origPtr:I

    .line 1405
    const/4 v1, 0x0

    .local v1, i:I
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .local v2, lastShadow:I
    :goto_31
    if-gt v1, v2, :cond_39

    .line 1406
    aget v3, v0, v1

    if-nez v3, :cond_3a

    .line 1407
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->origPtr:I

    .line 1413
    :cond_39
    return-void

    .line 1405
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_31
.end method

.method private bsFinishedWithStream()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    :goto_0
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    if-lez v1, :cond_1a

    .line 702
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    shr-int/lit8 v0, v1, 0x18

    .line 703
    .local v0, ch:I
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 704
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 705
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    goto :goto_0

    .line 707
    .end local v0           #ch:I
    :cond_1a
    return-void
.end method

.method private bsPutInt(I)V
    .registers 4
    .parameter "u"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 729
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 730
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 731
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 732
    and-int/lit16 v0, p1, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 733
    return-void
.end method

.method private bsPutUByte(I)V
    .registers 3
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 726
    return-void
.end method

.method private bsW(II)V
    .registers 7
    .parameter "n"
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 710
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 711
    .local v2, outShadow:Ljava/io/OutputStream;
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 712
    .local v1, bsLiveShadow:I
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 714
    .local v0, bsBuffShadow:I
    :goto_6
    const/16 v3, 0x8

    if-lt v1, v3, :cond_14

    .line 715
    shr-int/lit8 v3, v0, 0x18

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 716
    shl-int/lit8 v0, v0, 0x8

    .line 717
    add-int/lit8 v1, v1, -0x8

    goto :goto_6

    .line 720
    :cond_14
    rsub-int/lit8 v3, v1, 0x20

    sub-int/2addr v3, p1

    shl-int v3, p2, v3

    or-int/2addr v3, v0

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 721
    add-int v3, v1, p1

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 722
    return-void
.end method

.method public static chooseBlockSize(J)I
    .registers 6
    .parameter "inputLength"

    .prologue
    .line 377
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_16

    const-wide/32 v0, 0x203a0

    div-long v0, p0, v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x9

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_15
    return v0

    :cond_16
    const/16 v0, 0x9

    goto :goto_15
.end method

.method private endBlock()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x59

    const/4 v2, 0x1

    .line 573
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->getFinalCRC()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockCRC:I

    .line 574
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    .line 575
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockCRC:I

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    .line 578
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_23

    .line 615
    :goto_22
    return-void

    .line 583
    :cond_23
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSort()V

    .line 596
    const/16 v0, 0x31

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 597
    const/16 v0, 0x41

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 598
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 599
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 600
    const/16 v0, 0x53

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 601
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 604
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockCRC:I

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutInt(I)V

    .line 607
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockRandomised:Z

    if-eqz v0, :cond_50

    .line 608
    invoke-direct {p0, v2, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 614
    :goto_4c
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->moveToFrontCodeAndSend()V

    goto :goto_22

    .line 610
    :cond_50
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    goto :goto_4c
.end method

.method private endCompression()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 625
    const/16 v0, 0x72

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 626
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 627
    const/16 v0, 0x38

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 628
    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 629
    const/16 v0, 0x90

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 631
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutInt(I)V

    .line 632
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsFinishedWithStream()V

    .line 633
    return-void
.end method

.method private generateMTFValues()V
    .registers 23

    .prologue
    .line 1716
    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 1717
    .local v9, lastShadow:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 1718
    .local v3, dataShadow:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v7, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    .line 1719
    .local v7, inUse:[Z
    iget-object v2, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 1720
    .local v2, block:[B
    iget-object v5, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 1721
    .local v5, fmap:[I
    iget-object v13, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    .line 1722
    .local v13, sfmap:[C
    iget-object v11, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->mtfFreq:[I

    .line 1723
    .local v11, mtfFreq:[I
    iget-object v0, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->unseqToSeq:[B

    move-object/from16 v16, v0

    .line 1724
    .local v16, unseqToSeq:[B
    iget-object v0, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->generateMTFValues_yy:[B

    move-object/from16 v18, v0

    .line 1727
    .local v18, yy:[B
    const/4 v12, 0x0

    .line 1728
    .local v12, nInUseShadow:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1c
    const/16 v20, 0x100

    move/from16 v0, v20

    if-ge v6, v0, :cond_30

    .line 1729
    aget-boolean v20, v7, v6

    if-eqz v20, :cond_2d

    .line 1730
    int-to-byte v0, v12

    move/from16 v20, v0

    aput-byte v20, v16, v6

    .line 1731
    add-int/lit8 v12, v12, 0x1

    .line 1728
    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 1734
    :cond_30
    move-object/from16 v0, p0

    iput v12, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nInUse:I

    .line 1736
    add-int/lit8 v4, v12, 0x1

    .line 1738
    .local v4, eob:I
    move v6, v4

    :goto_37
    if-ltz v6, :cond_40

    .line 1739
    const/16 v20, 0x0

    aput v20, v11, v6

    .line 1738
    add-int/lit8 v6, v6, -0x1

    goto :goto_37

    .line 1742
    :cond_40
    move v6, v12

    :goto_41
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_4b

    .line 1743
    int-to-byte v0, v6

    move/from16 v20, v0

    aput-byte v20, v18, v6

    goto :goto_41

    .line 1746
    :cond_4b
    const/16 v17, 0x0

    .line 1747
    .local v17, wr:I
    const/16 v19, 0x0

    .line 1749
    .local v19, zPend:I
    const/4 v6, 0x0

    :goto_50
    if-gt v6, v9, :cond_c0

    .line 1750
    aget v20, v5, v6

    aget-byte v20, v2, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    aget-byte v10, v16, v20

    .line 1751
    .local v10, ll_i:B
    const/16 v20, 0x0

    aget-byte v14, v18, v20

    .line 1752
    .local v14, tmp:B
    const/4 v8, 0x0

    .line 1754
    .local v8, j:I
    :goto_63
    if-eq v10, v14, :cond_6d

    .line 1755
    add-int/lit8 v8, v8, 0x1

    .line 1756
    move v15, v14

    .line 1757
    .local v15, tmp2:B
    aget-byte v14, v18, v8

    .line 1758
    aput-byte v15, v18, v8

    goto :goto_63

    .line 1760
    .end local v15           #tmp2:B
    :cond_6d
    const/16 v20, 0x0

    aput-byte v14, v18, v20

    .line 1762
    if-nez v8, :cond_78

    .line 1763
    add-int/lit8 v19, v19, 0x1

    .line 1749
    :goto_75
    add-int/lit8 v6, v6, 0x1

    goto :goto_50

    .line 1765
    :cond_78
    if-lez v19, :cond_ac

    .line 1766
    add-int/lit8 v19, v19, -0x1

    .line 1768
    :goto_7c
    and-int/lit8 v20, v19, 0x1

    if-nez v20, :cond_9b

    .line 1769
    const/16 v20, 0x0

    aput-char v20, v13, v17

    .line 1770
    add-int/lit8 v17, v17, 0x1

    .line 1771
    const/16 v20, 0x0

    aget v21, v11, v20

    add-int/lit8 v21, v21, 0x1

    aput v21, v11, v20

    .line 1778
    :goto_8e
    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_aa

    .line 1779
    add-int/lit8 v20, v19, -0x2

    shr-int/lit8 v19, v20, 0x1

    goto :goto_7c

    .line 1773
    :cond_9b
    const/16 v20, 0x1

    aput-char v20, v13, v17

    .line 1774
    add-int/lit8 v17, v17, 0x1

    .line 1775
    const/16 v20, 0x1

    aget v21, v11, v20

    add-int/lit8 v21, v21, 0x1

    aput v21, v11, v20

    goto :goto_8e

    .line 1784
    :cond_aa
    const/16 v19, 0x0

    .line 1786
    :cond_ac
    add-int/lit8 v20, v8, 0x1

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v20, v0

    aput-char v20, v13, v17

    .line 1787
    add-int/lit8 v17, v17, 0x1

    .line 1788
    add-int/lit8 v20, v8, 0x1

    aget v21, v11, v20

    add-int/lit8 v21, v21, 0x1

    aput v21, v11, v20

    goto :goto_75

    .line 1792
    .end local v8           #j:I
    .end local v10           #ll_i:B
    .end local v14           #tmp:B
    :cond_c0
    if-lez v19, :cond_f2

    .line 1793
    add-int/lit8 v19, v19, -0x1

    .line 1795
    :goto_c4
    and-int/lit8 v20, v19, 0x1

    if-nez v20, :cond_e3

    .line 1796
    const/16 v20, 0x0

    aput-char v20, v13, v17

    .line 1797
    add-int/lit8 v17, v17, 0x1

    .line 1798
    const/16 v20, 0x0

    aget v21, v11, v20

    add-int/lit8 v21, v21, 0x1

    aput v21, v11, v20

    .line 1805
    :goto_d6
    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_f2

    .line 1806
    add-int/lit8 v20, v19, -0x2

    shr-int/lit8 v19, v20, 0x1

    goto :goto_c4

    .line 1800
    :cond_e3
    const/16 v20, 0x1

    aput-char v20, v13, v17

    .line 1801
    add-int/lit8 v17, v17, 0x1

    .line 1802
    const/16 v20, 0x1

    aget v21, v11, v20

    add-int/lit8 v21, v21, 0x1

    aput v21, v11, v20

    goto :goto_d6

    .line 1813
    :cond_f2
    int-to-char v0, v4

    move/from16 v20, v0

    aput-char v20, v13, v17

    .line 1814
    aget v20, v11, v4

    add-int/lit8 v20, v20, 0x1

    aput v20, v11, v4

    .line 1815
    add-int/lit8 v20, v17, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    .line 1816
    return-void
.end method

.method private static hbAssignCodes([I[BIII)V
    .registers 9
    .parameter "code"
    .parameter "length"
    .parameter "minLen"
    .parameter "maxLen"
    .parameter "alphaSize"

    .prologue
    .line 688
    const/4 v2, 0x0

    .line 689
    .local v2, vec:I
    move v1, p2

    .local v1, n:I
    :goto_2
    if-gt v1, p3, :cond_19

    .line 690
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, p4, :cond_14

    .line 691
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v1, :cond_11

    .line 692
    aput v2, p0, v0

    .line 693
    add-int/lit8 v2, v2, 0x1

    .line 690
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 696
    :cond_14
    shl-int/lit8 v2, v2, 0x1

    .line 689
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 698
    .end local v0           #i:I
    :cond_19
    return-void
.end method

.method private static hbMakeCodeLengths([B[ILorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;II)V
    .registers 28
    .parameter "len"
    .parameter "freq"
    .parameter "dat"
    .parameter "alphaSize"
    .parameter "maxLen"

    .prologue
    .line 172
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->heap:[I

    .line 173
    .local v2, heap:[I
    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->weight:[I

    .line 174
    .local v14, weight:[I
    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->parent:[I

    .line 176
    .local v10, parent:[I
    move/from16 v3, p3

    .local v3, i:I
    :goto_e
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_22

    .line 177
    add-int/lit8 v21, v3, 0x1

    aget v20, p1, v3

    if-nez v20, :cond_1f

    const/16 v20, 0x1

    :goto_1a
    shl-int/lit8 v20, v20, 0x8

    aput v20, v14, v21

    goto :goto_e

    :cond_1f
    aget v20, p1, v3

    goto :goto_1a

    .line 180
    :cond_22
    const/4 v13, 0x1

    .local v13, tooLong:Z
    :cond_23
    if-eqz v13, :cond_18c

    .line 181
    const/4 v13, 0x0

    .line 183
    move/from16 v9, p3

    .line 184
    .local v9, nNodes:I
    const/4 v8, 0x0

    .line 185
    .local v8, nHeap:I
    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v2, v20

    .line 186
    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v14, v20

    .line 187
    const/16 v20, 0x0

    const/16 v21, -0x2

    aput v21, v10, v20

    .line 189
    const/4 v3, 0x1

    :goto_3c
    move/from16 v0, p3

    if-gt v3, v0, :cond_6a

    .line 190
    const/16 v20, -0x1

    aput v20, v10, v3

    .line 191
    add-int/lit8 v8, v8, 0x1

    .line 192
    aput v3, v2, v8

    .line 194
    move/from16 v19, v8

    .line 195
    .local v19, zz:I
    aget v12, v2, v19

    .line 196
    .local v12, tmp:I
    :goto_4c
    aget v20, v14, v12

    shr-int/lit8 v21, v19, 0x1

    aget v21, v2, v21

    aget v21, v14, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_63

    .line 197
    shr-int/lit8 v20, v19, 0x1

    aget v20, v2, v20

    aput v20, v2, v19

    .line 198
    shr-int/lit8 v19, v19, 0x1

    goto :goto_4c

    .line 200
    :cond_63
    aput v12, v2, v19

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 287
    .local v6, n1:I
    .local v7, n2:I
    .local v15, weight_n1:I
    .local v16, weight_n2:I
    .local v17, weight_tmp:I
    .local v18, yy:I
    :cond_68
    aput v12, v2, v19

    .line 203
    .end local v6           #n1:I
    .end local v7           #n2:I
    .end local v12           #tmp:I
    .end local v15           #weight_n1:I
    .end local v16           #weight_n2:I
    .end local v17           #weight_tmp:I
    .end local v18           #yy:I
    .end local v19           #zz:I
    :cond_6a
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v8, v0, :cond_158

    .line 204
    const/16 v20, 0x1

    aget v6, v2, v20

    .line 205
    .restart local v6       #n1:I
    const/16 v20, 0x1

    aget v21, v2, v8

    aput v21, v2, v20

    .line 206
    add-int/lit8 v8, v8, -0x1

    .line 208
    const/16 v18, 0x0

    .line 209
    .restart local v18       #yy:I
    const/16 v19, 0x1

    .line 210
    .restart local v19       #zz:I
    const/16 v20, 0x1

    aget v12, v2, v20

    .line 213
    .restart local v12       #tmp:I
    :goto_84
    shl-int/lit8 v18, v19, 0x1

    .line 215
    move/from16 v0, v18

    if-le v0, v8, :cond_fc

    .line 232
    :cond_8a
    aput v12, v2, v19

    .line 234
    const/16 v20, 0x1

    aget v7, v2, v20

    .line 235
    .restart local v7       #n2:I
    const/16 v20, 0x1

    aget v21, v2, v8

    aput v21, v2, v20

    .line 236
    add-int/lit8 v8, v8, -0x1

    .line 238
    const/16 v18, 0x0

    .line 239
    const/16 v19, 0x1

    .line 240
    const/16 v20, 0x1

    aget v12, v2, v20

    .line 243
    :goto_a0
    shl-int/lit8 v18, v19, 0x1

    .line 245
    move/from16 v0, v18

    if-le v0, v8, :cond_126

    .line 262
    :cond_a6
    aput v12, v2, v19

    .line 263
    add-int/lit8 v9, v9, 0x1

    .line 264
    aput v9, v10, v7

    aput v9, v10, v6

    .line 266
    aget v15, v14, v6

    .line 267
    .restart local v15       #weight_n1:I
    aget v16, v14, v7

    .line 268
    .restart local v16       #weight_n2:I
    and-int/lit16 v0, v15, -0x100

    move/from16 v20, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, -0x100

    move/from16 v21, v0

    add-int v21, v21, v20

    and-int/lit16 v0, v15, 0xff

    move/from16 v20, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_150

    and-int/lit16 v0, v15, 0xff

    move/from16 v20, v0

    :goto_d2
    add-int/lit8 v20, v20, 0x1

    or-int v20, v20, v21

    aput v20, v14, v9

    .line 275
    const/16 v20, -0x1

    aput v20, v10, v9

    .line 276
    add-int/lit8 v8, v8, 0x1

    .line 277
    aput v9, v2, v8

    .line 279
    const/4 v12, 0x0

    .line 280
    move/from16 v19, v8

    .line 281
    aget v12, v2, v19

    .line 282
    aget v17, v14, v12

    .line 283
    .restart local v17       #weight_tmp:I
    :goto_e7
    shr-int/lit8 v20, v19, 0x1

    aget v20, v2, v20

    aget v20, v14, v20

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_68

    .line 284
    shr-int/lit8 v20, v19, 0x1

    aget v20, v2, v20

    aput v20, v2, v19

    .line 285
    shr-int/lit8 v19, v19, 0x1

    goto :goto_e7

    .line 219
    .end local v7           #n2:I
    .end local v15           #weight_n1:I
    .end local v16           #weight_n2:I
    .end local v17           #weight_tmp:I
    :cond_fc
    move/from16 v0, v18

    if-ge v0, v8, :cond_112

    add-int/lit8 v20, v18, 0x1

    aget v20, v2, v20

    aget v20, v14, v20

    aget v21, v2, v18

    aget v21, v14, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_112

    .line 221
    add-int/lit8 v18, v18, 0x1

    .line 224
    :cond_112
    aget v20, v14, v12

    aget v21, v2, v18

    aget v21, v14, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_8a

    .line 228
    aget v20, v2, v18

    aput v20, v2, v19

    .line 229
    move/from16 v19, v18

    goto/16 :goto_84

    .line 249
    .restart local v7       #n2:I
    :cond_126
    move/from16 v0, v18

    if-ge v0, v8, :cond_13c

    add-int/lit8 v20, v18, 0x1

    aget v20, v2, v20

    aget v20, v14, v20

    aget v21, v2, v18

    aget v21, v14, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_13c

    .line 251
    add-int/lit8 v18, v18, 0x1

    .line 254
    :cond_13c
    aget v20, v14, v12

    aget v21, v2, v18

    aget v21, v14, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_a6

    .line 258
    aget v20, v2, v18

    aput v20, v2, v19

    .line 259
    move/from16 v19, v18

    goto/16 :goto_a0

    .line 268
    .restart local v15       #weight_n1:I
    .restart local v16       #weight_n2:I
    :cond_150
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    goto/16 :goto_d2

    .line 291
    .end local v6           #n1:I
    .end local v7           #n2:I
    .end local v12           #tmp:I
    .end local v15           #weight_n1:I
    .end local v16           #weight_n2:I
    .end local v18           #yy:I
    .end local v19           #zz:I
    :cond_158
    const/4 v3, 0x1

    :goto_159
    move/from16 v0, p3

    if-gt v3, v0, :cond_176

    .line 292
    const/4 v4, 0x0

    .line 293
    .local v4, j:I
    move v5, v3

    .line 295
    .local v5, k:I
    :goto_15f
    aget v11, v10, v5

    .local v11, parent_k:I
    if-ltz v11, :cond_167

    .line 296
    move v5, v11

    .line 297
    add-int/lit8 v4, v4, 0x1

    goto :goto_15f

    .line 300
    :cond_167
    add-int/lit8 v20, v3, -0x1

    int-to-byte v0, v4

    move/from16 v21, v0

    aput-byte v21, p0, v20

    .line 301
    move/from16 v0, p4

    if-le v4, v0, :cond_173

    .line 302
    const/4 v13, 0x1

    .line 291
    :cond_173
    add-int/lit8 v3, v3, 0x1

    goto :goto_159

    .line 306
    .end local v4           #j:I
    .end local v5           #k:I
    .end local v11           #parent_k:I
    :cond_176
    if-eqz v13, :cond_23

    .line 307
    const/4 v3, 0x1

    :goto_179
    move/from16 v0, p3

    if-ge v3, v0, :cond_23

    .line 308
    aget v20, v14, v3

    shr-int/lit8 v4, v20, 0x8

    .line 309
    .restart local v4       #j:I
    shr-int/lit8 v20, v4, 0x1

    add-int/lit8 v4, v20, 0x1

    .line 310
    shl-int/lit8 v20, v4, 0x8

    aput v20, v14, v3

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto :goto_179

    .line 314
    .end local v4           #j:I
    .end local v8           #nHeap:I
    .end local v9           #nNodes:I
    :cond_18c
    return-void
.end method

.method private init()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    const/16 v0, 0x42

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 545
    const/16 v0, 0x5a

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 547
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 550
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 551
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    add-int/lit8 v0, v0, 0x30

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 553
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    .line 554
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->initBlock()V

    .line 555
    return-void
.end method

.method private initBlock()V
    .registers 5

    .prologue
    .line 559
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v2}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->initialiseCRC()V

    .line 560
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 563
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v1, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    .line 564
    .local v1, inUse:[Z
    const/16 v0, 0x100

    .local v0, i:I
    :goto_e
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_16

    .line 565
    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    goto :goto_e

    .line 569
    :cond_16
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    const v3, 0x186a0

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x14

    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->allowableBlockSize:I

    .line 570
    return-void
.end method

.method private mainQSort3(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;III)V
    .registers 32
    .parameter "dataShadow"
    .parameter "loSt"
    .parameter "hiSt"
    .parameter "dSt"

    .prologue
    .line 1420
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->stack_ll:[I

    move-object/from16 v18, v0

    .line 1421
    .local v18, stack_ll:[I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->stack_hh:[I

    move-object/from16 v17, v0

    .line 1422
    .local v17, stack_hh:[I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->stack_dd:[I

    move-object/from16 v16, v0

    .line 1423
    .local v16, stack_dd:[I
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 1424
    .local v5, fmap:[I
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 1426
    .local v2, block:[B
    const/16 v24, 0x0

    aput p2, v18, v24

    .line 1427
    const/16 v24, 0x0

    aput p3, v17, v24

    .line 1428
    const/16 v24, 0x0

    aput p4, v16, v24

    .line 1430
    const/4 v15, 0x1

    .local v15, sp:I
    :cond_27
    :goto_27
    add-int/lit8 v15, v15, -0x1

    if-ltz v15, :cond_4b

    .line 1431
    aget v9, v18, v15

    .line 1432
    .local v9, lo:I
    aget v8, v17, v15

    .line 1433
    .local v8, hi:I
    aget v3, v16, v15

    .line 1435
    .local v3, d:I
    sub-int v24, v8, v9

    const/16 v25, 0x14

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_41

    const/16 v24, 0xa

    move/from16 v0, v24

    if-le v3, v0, :cond_4c

    .line 1436
    :cond_41
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v8, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->mainSimpleSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;III)Z

    move-result v24

    if-eqz v24, :cond_27

    .line 1520
    .end local v3           #d:I
    .end local v8           #hi:I
    .end local v9           #lo:I
    :cond_4b
    return-void

    .line 1440
    .restart local v3       #d:I
    .restart local v8       #hi:I
    .restart local v9       #lo:I
    :cond_4c
    add-int/lit8 v4, v3, 0x1

    .line 1441
    .local v4, d1:I
    aget v24, v5, v9

    add-int v24, v24, v4

    aget-byte v24, v2, v24

    aget v25, v5, v8

    add-int v25, v25, v4

    aget-byte v25, v2, v25

    add-int v26, v9, v8

    ushr-int/lit8 v26, v26, 0x1

    aget v26, v5, v26

    add-int v26, v26, v4

    aget-byte v26, v2, v26

    invoke-static/range {v24 .. v26}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->med3(BBB)B

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v13, v0, 0xff

    .line 1444
    .local v13, med:I
    move/from16 v22, v9

    .line 1445
    .local v22, unLo:I
    move/from16 v20, v8

    .line 1446
    .local v20, unHi:I
    move v10, v9

    .line 1447
    .local v10, ltLo:I
    move v6, v8

    .local v6, gtHi:I
    move v11, v10

    .end local v10           #ltLo:I
    .local v11, ltLo:I
    move/from16 v23, v22

    .line 1450
    .end local v22           #unLo:I
    .local v23, unLo:I
    :goto_75
    move/from16 v0, v23

    move/from16 v1, v20

    if-gt v0, v1, :cond_149

    .line 1451
    aget v24, v5, v23

    add-int v24, v24, v4

    aget-byte v24, v2, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    sub-int v14, v24, v13

    .line 1453
    .local v14, n:I
    if-nez v14, :cond_9b

    .line 1454
    aget v19, v5, v23

    .line 1455
    .local v19, temp:I
    add-int/lit8 v22, v23, 0x1

    .end local v23           #unLo:I
    .restart local v22       #unLo:I
    aget v24, v5, v11

    aput v24, v5, v23

    .line 1456
    add-int/lit8 v10, v11, 0x1

    .end local v11           #ltLo:I
    .restart local v10       #ltLo:I
    aput v19, v5, v11

    .end local v19           #temp:I
    :goto_97
    move v11, v10

    .end local v10           #ltLo:I
    .restart local v11       #ltLo:I
    move/from16 v23, v22

    .line 1462
    .end local v22           #unLo:I
    .restart local v23       #unLo:I
    goto :goto_75

    .line 1457
    :cond_9b
    if-gez v14, :cond_149

    .line 1458
    add-int/lit8 v22, v23, 0x1

    .end local v23           #unLo:I
    .restart local v22       #unLo:I
    move v10, v11

    .end local v11           #ltLo:I
    .restart local v10       #ltLo:I
    goto :goto_97

    .line 1464
    .end local v6           #gtHi:I
    .end local v10           #ltLo:I
    .end local v14           #n:I
    .end local v20           #unHi:I
    .end local v22           #unLo:I
    .local v7, gtHi:I
    .restart local v11       #ltLo:I
    .local v21, unHi:I
    .restart local v23       #unLo:I
    :goto_a1
    move/from16 v0, v23

    move/from16 v1, v21

    if-gt v0, v1, :cond_cd

    .line 1465
    aget v24, v5, v21

    add-int v24, v24, v4

    aget-byte v24, v2, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    sub-int v14, v24, v13

    .line 1467
    .restart local v14       #n:I
    if-nez v14, :cond_c7

    .line 1468
    aget v19, v5, v21

    .line 1469
    .restart local v19       #temp:I
    add-int/lit8 v20, v21, -0x1

    .end local v21           #unHi:I
    .restart local v20       #unHi:I
    aget v24, v5, v7

    aput v24, v5, v21

    .line 1470
    add-int/lit8 v6, v7, -0x1

    .end local v7           #gtHi:I
    .restart local v6       #gtHi:I
    aput v19, v5, v7

    .end local v19           #temp:I
    :goto_c3
    move v7, v6

    .end local v6           #gtHi:I
    .restart local v7       #gtHi:I
    move/from16 v21, v20

    .line 1476
    .end local v20           #unHi:I
    .restart local v21       #unHi:I
    goto :goto_a1

    .line 1471
    :cond_c7
    if-lez v14, :cond_cd

    .line 1472
    add-int/lit8 v20, v21, -0x1

    .end local v21           #unHi:I
    .restart local v20       #unHi:I
    move v6, v7

    .end local v7           #gtHi:I
    .restart local v6       #gtHi:I
    goto :goto_c3

    .line 1478
    .end local v6           #gtHi:I
    .end local v14           #n:I
    .end local v20           #unHi:I
    .restart local v7       #gtHi:I
    .restart local v21       #unHi:I
    :cond_cd
    move/from16 v0, v23

    move/from16 v1, v21

    if-gt v0, v1, :cond_e3

    .line 1479
    aget v19, v5, v23

    .line 1480
    .restart local v19       #temp:I
    add-int/lit8 v22, v23, 0x1

    .end local v23           #unLo:I
    .restart local v22       #unLo:I
    aget v24, v5, v21

    aput v24, v5, v23

    .line 1481
    add-int/lit8 v20, v21, -0x1

    .end local v21           #unHi:I
    .restart local v20       #unHi:I
    aput v19, v5, v21

    move v6, v7

    .end local v7           #gtHi:I
    .restart local v6       #gtHi:I
    move/from16 v23, v22

    .line 1482
    .end local v22           #unLo:I
    .restart local v23       #unLo:I
    goto :goto_75

    .line 1487
    .end local v6           #gtHi:I
    .end local v19           #temp:I
    .end local v20           #unHi:I
    .restart local v7       #gtHi:I
    .restart local v21       #unHi:I
    :cond_e3
    if-ge v7, v11, :cond_ef

    .line 1488
    aput v9, v18, v15

    .line 1489
    aput v8, v17, v15

    .line 1490
    aput v4, v16, v15

    .line 1491
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_27

    .line 1493
    :cond_ef
    sub-int v24, v11, v9

    sub-int v25, v23, v11

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_143

    sub-int v14, v11, v9

    .line 1495
    .restart local v14       #n:I
    :goto_fb
    sub-int v24, v23, v14

    move/from16 v0, v24

    invoke-static {v5, v9, v0, v14}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->vswap([IIII)V

    .line 1496
    sub-int v24, v8, v7

    sub-int v25, v7, v21

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_146

    sub-int v12, v8, v7

    .line 1498
    .local v12, m:I
    :goto_10e
    sub-int v24, v8, v12

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v5, v0, v1, v12}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->vswap([IIII)V

    .line 1500
    add-int v24, v9, v23

    sub-int v24, v24, v11

    add-int/lit8 v14, v24, -0x1

    .line 1501
    sub-int v24, v7, v21

    sub-int v24, v8, v24

    add-int/lit8 v12, v24, 0x1

    .line 1503
    aput v9, v18, v15

    .line 1504
    aput v14, v17, v15

    .line 1505
    aput v3, v16, v15

    .line 1506
    add-int/lit8 v15, v15, 0x1

    .line 1508
    add-int/lit8 v24, v14, 0x1

    aput v24, v18, v15

    .line 1509
    add-int/lit8 v24, v12, -0x1

    aput v24, v17, v15

    .line 1510
    aput v4, v16, v15

    .line 1511
    add-int/lit8 v15, v15, 0x1

    .line 1513
    aput v12, v18, v15

    .line 1514
    aput v8, v17, v15

    .line 1515
    aput v3, v16, v15

    .line 1516
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_27

    .line 1493
    .end local v12           #m:I
    .end local v14           #n:I
    :cond_143
    sub-int v14, v23, v11

    goto :goto_fb

    .line 1496
    .restart local v14       #n:I
    :cond_146
    sub-int v12, v7, v21

    goto :goto_10e

    .end local v7           #gtHi:I
    .end local v14           #n:I
    .end local v21           #unHi:I
    .restart local v6       #gtHi:I
    .restart local v20       #unHi:I
    :cond_149
    move v7, v6

    .end local v6           #gtHi:I
    .restart local v7       #gtHi:I
    move/from16 v21, v20

    .end local v20           #unHi:I
    .restart local v21       #unHi:I
    goto/16 :goto_a1
.end method

.method private mainSimpleSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;III)Z
    .registers 31
    .parameter "dataShadow"
    .parameter "lo"
    .parameter "hi"
    .parameter "d"

    .prologue
    .line 1193
    sub-int v24, p3, p2

    add-int/lit8 v3, v24, 0x1

    .line 1194
    .local v3, bigN:I
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ge v3, v0, :cond_2a

    .line 1195
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->firstAttempt:Z

    move/from16 v24, v0

    if-eqz v24, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workDone:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workLimit:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_27

    const/16 v24, 0x1

    .line 1372
    :goto_26
    return v24

    .line 1195
    :cond_27
    const/16 v24, 0x0

    goto :goto_26

    .line 1198
    :cond_2a
    const/4 v8, 0x0

    .line 1199
    .local v8, hp:I
    :goto_2b
    sget-object v24, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->INCS:[I

    aget v24, v24, v8

    move/from16 v0, v24

    if-ge v0, v3, :cond_36

    .line 1200
    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    .line 1203
    :cond_36
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 1204
    .local v6, fmap:[I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->quadrant:[C

    move-object/from16 v18, v0

    .line 1205
    .local v18, quadrant:[C
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 1206
    .local v4, block:[B
    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 1207
    .local v15, lastShadow:I
    add-int/lit8 v14, v15, 0x1

    .line 1208
    .local v14, lastPlus1:I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->firstAttempt:Z

    .line 1209
    .local v5, firstAttemptShadow:Z
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workLimit:I

    move/from16 v22, v0

    .line 1210
    .local v22, workLimitShadow:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workDone:I

    move/from16 v21, v0

    .line 1215
    .local v21, workDoneShadow:I
    :cond_5a
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_2c4

    .line 1216
    sget-object v24, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->INCS:[I

    aget v7, v24, v8

    .line 1217
    .local v7, h:I
    add-int v24, p2, v7

    add-int/lit8 v16, v24, -0x1

    .line 1219
    .local v16, mj:I
    add-int v9, p2, v7

    .local v9, i:I
    :cond_68
    move/from16 v0, p3

    if-gt v9, v0, :cond_5a

    .line 1221
    const/4 v13, 0x3

    .local v13, k:I
    :goto_6d
    move/from16 v0, p3

    if-gt v9, v0, :cond_2b8

    add-int/lit8 v13, v13, -0x1

    if-ltz v13, :cond_2b8

    .line 1222
    aget v19, v6, v9

    .line 1223
    .local v19, v:I
    add-int v20, v19, p4

    .line 1224
    .local v20, vd:I
    move v12, v9

    .line 1236
    .local v12, j:I
    const/16 v17, 0x0

    .line 1237
    .local v17, onceRunned:Z
    const/4 v2, 0x0

    .line 1240
    .local v2, a:I
    :goto_7d
    if-eqz v17, :cond_8b

    .line 1241
    aput v2, v6, v12

    .line 1242
    sub-int/2addr v12, v7

    move/from16 v0, v16

    if-gt v12, v0, :cond_8d

    .line 1361
    :cond_86
    aput v19, v6, v12

    .line 1221
    add-int/lit8 v9, v9, 0x1

    goto :goto_6d

    .line 1246
    :cond_8b
    const/16 v17, 0x1

    .line 1249
    :cond_8d
    sub-int v24, v12, v7

    aget v2, v6, v24

    .line 1250
    add-int v10, v2, p4

    .line 1251
    .local v10, i1:I
    move/from16 v11, v20

    .line 1255
    .local v11, i2:I
    add-int/lit8 v24, v10, 0x1

    aget-byte v24, v4, v24

    add-int/lit8 v25, v11, 0x1

    aget-byte v25, v4, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_29c

    .line 1256
    add-int/lit8 v24, v10, 0x2

    aget-byte v24, v4, v24

    add-int/lit8 v25, v11, 0x2

    aget-byte v25, v4, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_280

    .line 1257
    add-int/lit8 v24, v10, 0x3

    aget-byte v24, v4, v24

    add-int/lit8 v25, v11, 0x3

    aget-byte v25, v4, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_264

    .line 1258
    add-int/lit8 v24, v10, 0x4

    aget-byte v24, v4, v24

    add-int/lit8 v25, v11, 0x4

    aget-byte v25, v4, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_248

    .line 1259
    add-int/lit8 v24, v10, 0x5

    aget-byte v24, v4, v24

    add-int/lit8 v25, v11, 0x5

    aget-byte v25, v4, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_22c

    .line 1260
    add-int/lit8 v10, v10, 0x6

    aget-byte v24, v4, v10

    add-int/lit8 v11, v11, 0x6

    aget-byte v25, v4, v11

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_214

    .line 1261
    move/from16 v23, v15

    .line 1262
    .local v23, x:I
    :goto_eb
    if-lez v23, :cond_86

    .line 1263
    add-int/lit8 v23, v23, -0x4

    .line 1265
    add-int/lit8 v24, v10, 0x1

    aget-byte v24, v4, v24

    add-int/lit8 v25, v11, 0x1

    aget-byte v25, v4, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1f8

    .line 1266
    aget-char v24, v18, v10

    aget-char v25, v18, v11

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1ec

    .line 1267
    add-int/lit8 v24, v10, 0x2

    aget-byte v24, v4, v24

    add-int/lit8 v25, v11, 0x2

    aget-byte v25, v4, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1d0

    .line 1268
    add-int/lit8 v24, v10, 0x1

    aget-char v24, v18, v24

    add-int/lit8 v25, v11, 0x1

    aget-char v25, v18, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1c0

    .line 1269
    add-int/lit8 v24, v10, 0x3

    aget-byte v24, v4, v24

    add-int/lit8 v25, v11, 0x3

    aget-byte v25, v4, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1a4

    .line 1270
    add-int/lit8 v24, v10, 0x2

    aget-char v24, v18, v24

    add-int/lit8 v25, v11, 0x2

    aget-char v25, v18, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_194

    .line 1271
    add-int/lit8 v24, v10, 0x4

    aget-byte v24, v4, v24

    add-int/lit8 v25, v11, 0x4

    aget-byte v25, v4, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_178

    .line 1272
    add-int/lit8 v24, v10, 0x3

    aget-char v24, v18, v24

    add-int/lit8 v25, v11, 0x3

    aget-char v25, v18, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_168

    .line 1273
    add-int/lit8 v10, v10, 0x4

    if-lt v10, v14, :cond_160

    .line 1274
    sub-int/2addr v10, v14

    .line 1276
    :cond_160
    add-int/lit8 v11, v11, 0x4

    if-lt v11, v14, :cond_165

    .line 1277
    sub-int/2addr v11, v14

    .line 1279
    :cond_165
    add-int/lit8 v21, v21, 0x1

    .line 1280
    goto :goto_eb

    .line 1281
    :cond_168
    add-int/lit8 v24, v10, 0x3

    aget-char v24, v18, v24

    add-int/lit8 v25, v11, 0x3

    aget-char v25, v18, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_86

    goto/16 :goto_7d

    .line 1286
    :cond_178
    add-int/lit8 v24, v10, 0x4

    aget-byte v24, v4, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, v11, 0x4

    aget-byte v25, v4, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_86

    goto/16 :goto_7d

    .line 1291
    :cond_194
    add-int/lit8 v24, v10, 0x2

    aget-char v24, v18, v24

    add-int/lit8 v25, v11, 0x2

    aget-char v25, v18, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_86

    goto/16 :goto_7d

    .line 1296
    :cond_1a4
    add-int/lit8 v24, v10, 0x3

    aget-byte v24, v4, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, v11, 0x3

    aget-byte v25, v4, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_86

    goto/16 :goto_7d

    .line 1301
    :cond_1c0
    add-int/lit8 v24, v10, 0x1

    aget-char v24, v18, v24

    add-int/lit8 v25, v11, 0x1

    aget-char v25, v18, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_86

    goto/16 :goto_7d

    .line 1306
    :cond_1d0
    add-int/lit8 v24, v10, 0x2

    aget-byte v24, v4, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, v11, 0x2

    aget-byte v25, v4, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_86

    goto/16 :goto_7d

    .line 1311
    :cond_1ec
    aget-char v24, v18, v10

    aget-char v25, v18, v11

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_86

    goto/16 :goto_7d

    .line 1316
    :cond_1f8
    add-int/lit8 v24, v10, 0x1

    aget-byte v24, v4, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, v11, 0x1

    aget-byte v25, v4, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_86

    goto/16 :goto_7d

    .line 1326
    .end local v23           #x:I
    :cond_214
    aget-byte v24, v4, v10

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    aget-byte v25, v4, v11

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_86

    goto/16 :goto_7d

    .line 1332
    :cond_22c
    add-int/lit8 v24, v10, 0x5

    aget-byte v24, v4, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, v11, 0x5

    aget-byte v25, v4, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_86

    goto/16 :goto_7d

    .line 1337
    :cond_248
    add-int/lit8 v24, v10, 0x4

    aget-byte v24, v4, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, v11, 0x4

    aget-byte v25, v4, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_86

    goto/16 :goto_7d

    .line 1342
    :cond_264
    add-int/lit8 v24, v10, 0x3

    aget-byte v24, v4, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, v11, 0x3

    aget-byte v25, v4, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_86

    goto/16 :goto_7d

    .line 1347
    :cond_280
    add-int/lit8 v24, v10, 0x2

    aget-byte v24, v4, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, v11, 0x2

    aget-byte v25, v4, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_86

    goto/16 :goto_7d

    .line 1352
    :cond_29c
    add-int/lit8 v24, v10, 0x1

    aget-byte v24, v4, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, v11, 0x1

    aget-byte v25, v4, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_86

    goto/16 :goto_7d

    .line 1364
    .end local v2           #a:I
    .end local v10           #i1:I
    .end local v11           #i2:I
    .end local v12           #j:I
    .end local v17           #onceRunned:Z
    .end local v19           #v:I
    .end local v20           #vd:I
    :cond_2b8
    if-eqz v5, :cond_68

    move/from16 v0, p3

    if-gt v9, v0, :cond_68

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_68

    .line 1371
    .end local v7           #h:I
    .end local v9           #i:I
    .end local v13           #k:I
    .end local v16           #mj:I
    :cond_2c4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workDone:I

    .line 1372
    if-eqz v5, :cond_2d6

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2d6

    const/16 v24, 0x1

    goto/16 :goto_26

    :cond_2d6
    const/16 v24, 0x0

    goto/16 :goto_26
.end method

.method private mainSort()V
    .registers 40

    .prologue
    .line 1523
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 1524
    .local v14, dataShadow:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v0, v14, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->mainSort_runningOrder:[I

    move-object/from16 v30, v0

    .line 1525
    .local v30, runningOrder:[I
    iget-object v13, v14, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->mainSort_copy:[I

    .line 1526
    .local v13, copy:[I
    iget-object v9, v14, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->mainSort_bigDone:[Z

    .line 1527
    .local v9, bigDone:[Z
    iget-object v0, v14, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->ftab:[I

    move-object/from16 v18, v0

    .line 1528
    .local v18, ftab:[I
    iget-object v10, v14, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 1529
    .local v10, block:[B
    iget-object v0, v14, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    move-object/from16 v16, v0

    .line 1530
    .local v16, fmap:[I
    iget-object v0, v14, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->quadrant:[C

    move-object/from16 v28, v0

    .line 1531
    .local v28, quadrant:[C
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    move/from16 v25, v0

    .line 1532
    .local v25, lastShadow:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workLimit:I

    move/from16 v35, v0

    .line 1533
    .local v35, workLimitShadow:I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->firstAttempt:Z

    .line 1536
    .local v15, firstAttemptShadow:Z
    const v23, 0x10001

    .local v23, i:I
    :goto_2d
    add-int/lit8 v23, v23, -0x1

    if-ltz v23, :cond_36

    .line 1537
    const/16 v36, 0x0

    aput v36, v18, v23

    goto :goto_2d

    .line 1545
    :cond_36
    const/16 v23, 0x0

    :goto_38
    const/16 v36, 0x14

    move/from16 v0, v23

    move/from16 v1, v36

    if-ge v0, v1, :cond_51

    .line 1546
    add-int v36, v25, v23

    add-int/lit8 v36, v36, 0x2

    add-int/lit8 v37, v25, 0x1

    rem-int v37, v23, v37

    add-int/lit8 v37, v37, 0x1

    aget-byte v37, v10, v37

    aput-byte v37, v10, v36

    .line 1545
    add-int/lit8 v23, v23, 0x1

    goto :goto_38

    .line 1548
    :cond_51
    add-int/lit8 v36, v25, 0x14

    add-int/lit8 v23, v36, 0x1

    :goto_55
    add-int/lit8 v23, v23, -0x1

    if-ltz v23, :cond_5e

    .line 1549
    const/16 v36, 0x0

    aput-char v36, v28, v23

    goto :goto_55

    .line 1551
    :cond_5e
    const/16 v36, 0x0

    add-int/lit8 v37, v25, 0x1

    aget-byte v37, v10, v37

    aput-byte v37, v10, v36

    .line 1555
    const/16 v36, 0x0

    aget-byte v36, v10, v36

    move/from16 v0, v36

    and-int/lit16 v11, v0, 0xff

    .line 1556
    .local v11, c1:I
    const/16 v23, 0x0

    :goto_70
    move/from16 v0, v23

    move/from16 v1, v25

    if-gt v0, v1, :cond_8c

    .line 1557
    add-int/lit8 v36, v23, 0x1

    aget-byte v36, v10, v36

    move/from16 v0, v36

    and-int/lit16 v12, v0, 0xff

    .line 1558
    .local v12, c2:I
    shl-int/lit8 v36, v11, 0x8

    add-int v36, v36, v12

    aget v37, v18, v36

    add-int/lit8 v37, v37, 0x1

    aput v37, v18, v36

    .line 1559
    move v11, v12

    .line 1556
    add-int/lit8 v23, v23, 0x1

    goto :goto_70

    .line 1562
    .end local v12           #c2:I
    :cond_8c
    const/16 v23, 0x1

    :goto_8e
    const/high16 v36, 0x1

    move/from16 v0, v23

    move/from16 v1, v36

    if-gt v0, v1, :cond_a3

    .line 1563
    aget v36, v18, v23

    add-int/lit8 v37, v23, -0x1

    aget v37, v18, v37

    add-int v36, v36, v37

    aput v36, v18, v23

    .line 1562
    add-int/lit8 v23, v23, 0x1

    goto :goto_8e

    .line 1565
    :cond_a3
    const/16 v36, 0x1

    aget-byte v36, v10, v36

    move/from16 v0, v36

    and-int/lit16 v11, v0, 0xff

    .line 1566
    const/16 v23, 0x0

    :goto_ad
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_cb

    .line 1567
    add-int/lit8 v36, v23, 0x2

    aget-byte v36, v10, v36

    move/from16 v0, v36

    and-int/lit16 v12, v0, 0xff

    .line 1568
    .restart local v12       #c2:I
    shl-int/lit8 v36, v11, 0x8

    add-int v36, v36, v12

    aget v37, v18, v36

    add-int/lit8 v37, v37, -0x1

    aput v37, v18, v36

    aput v23, v16, v37

    .line 1569
    move v11, v12

    .line 1566
    add-int/lit8 v23, v23, 0x1

    goto :goto_ad

    .line 1572
    .end local v12           #c2:I
    :cond_cb
    add-int/lit8 v36, v25, 0x1

    aget-byte v36, v10, v36

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0xff

    move/from16 v36, v0

    shl-int/lit8 v36, v36, 0x8

    const/16 v37, 0x1

    aget-byte v37, v10, v37

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    add-int v36, v36, v37

    aget v37, v18, v36

    add-int/lit8 v37, v37, -0x1

    aput v37, v18, v36

    aput v25, v16, v37

    .line 1578
    const/16 v23, 0x100

    :goto_ed
    add-int/lit8 v23, v23, -0x1

    if-ltz v23, :cond_f8

    .line 1579
    const/16 v36, 0x0

    aput-boolean v36, v9, v23

    .line 1580
    aput v23, v30, v23

    goto :goto_ed

    .line 1583
    :cond_f8
    const/16 v20, 0x16c

    .local v20, h:I
    :cond_fa
    const/16 v36, 0x1

    move/from16 v0, v20

    move/from16 v1, v36

    if-eq v0, v1, :cond_146

    .line 1584
    div-int/lit8 v20, v20, 0x3

    .line 1585
    move/from16 v23, v20

    :goto_106
    const/16 v36, 0xff

    move/from16 v0, v23

    move/from16 v1, v36

    if-gt v0, v1, :cond_fa

    .line 1586
    aget v34, v30, v23

    .line 1587
    .local v34, vv:I
    add-int/lit8 v36, v34, 0x1

    shl-int/lit8 v36, v36, 0x8

    aget v36, v18, v36

    shl-int/lit8 v37, v34, 0x8

    aget v37, v18, v37

    sub-int v4, v36, v37

    .line 1588
    .local v4, a:I
    add-int/lit8 v6, v20, -0x1

    .line 1589
    .local v6, b:I
    move/from16 v24, v23

    .line 1590
    .local v24, j:I
    sub-int v36, v24, v20

    aget v29, v30, v36

    .local v29, ro:I
    :goto_124
    add-int/lit8 v36, v29, 0x1

    shl-int/lit8 v36, v36, 0x8

    aget v36, v18, v36

    shl-int/lit8 v37, v29, 0x8

    aget v37, v18, v37

    sub-int v36, v36, v37

    move/from16 v0, v36

    if-le v0, v4, :cond_13c

    .line 1592
    aput v29, v30, v24

    .line 1593
    sub-int v24, v24, v20

    .line 1594
    move/from16 v0, v24

    if-gt v0, v6, :cond_141

    .line 1598
    :cond_13c
    aput v34, v30, v24

    .line 1585
    add-int/lit8 v23, v23, 0x1

    goto :goto_106

    .line 1590
    :cond_141
    sub-int v36, v24, v20

    aget v29, v30, v36

    goto :goto_124

    .line 1605
    .end local v4           #a:I
    .end local v6           #b:I
    .end local v24           #j:I
    .end local v29           #ro:I
    .end local v34           #vv:I
    :cond_146
    const/16 v23, 0x0

    :goto_148
    const/16 v36, 0xff

    move/from16 v0, v23

    move/from16 v1, v36

    if-gt v0, v1, :cond_19f

    .line 1609
    aget v33, v30, v23

    .line 1618
    .local v33, ss:I
    const/16 v24, 0x0

    .restart local v24       #j:I
    :goto_154
    const/16 v36, 0xff

    move/from16 v0, v24

    move/from16 v1, v36

    if-gt v0, v1, :cond_1a9

    .line 1619
    shl-int/lit8 v36, v33, 0x8

    add-int v31, v36, v24

    .line 1620
    .local v31, sb:I
    aget v19, v18, v31

    .line 1621
    .local v19, ftab_sb:I
    const/high16 v36, 0x20

    and-int v36, v36, v19

    const/high16 v37, 0x20

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_1a6

    .line 1622
    const v36, -0x200001

    and-int v26, v19, v36

    .line 1623
    .local v26, lo:I
    add-int/lit8 v36, v31, 0x1

    aget v36, v18, v36

    const v37, -0x200001

    and-int v36, v36, v37

    add-int/lit8 v21, v36, -0x1

    .line 1624
    .local v21, hi:I
    move/from16 v0, v21

    move/from16 v1, v26

    if-le v0, v1, :cond_1a0

    .line 1625
    const/16 v36, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v21

    move/from16 v3, v36

    invoke-direct {v0, v14, v1, v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->mainQSort3(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;III)V

    .line 1626
    if-eqz v15, :cond_1a0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workDone:I

    move/from16 v36, v0

    move/from16 v0, v36

    move/from16 v1, v35

    if-le v0, v1, :cond_1a0

    .line 1685
    .end local v19           #ftab_sb:I
    .end local v21           #hi:I
    .end local v24           #j:I
    .end local v26           #lo:I
    .end local v31           #sb:I
    .end local v33           #ss:I
    :cond_19f
    return-void

    .line 1631
    .restart local v19       #ftab_sb:I
    .restart local v21       #hi:I
    .restart local v24       #j:I
    .restart local v26       #lo:I
    .restart local v31       #sb:I
    .restart local v33       #ss:I
    :cond_1a0
    const/high16 v36, 0x20

    or-int v36, v36, v19

    aput v36, v18, v31

    .line 1618
    .end local v21           #hi:I
    .end local v26           #lo:I
    :cond_1a6
    add-int/lit8 v24, v24, 0x1

    goto :goto_154

    .line 1639
    .end local v19           #ftab_sb:I
    .end local v31           #sb:I
    :cond_1a9
    const/16 v24, 0x0

    :goto_1ab
    const/16 v36, 0xff

    move/from16 v0, v24

    move/from16 v1, v36

    if-gt v0, v1, :cond_1c3

    .line 1640
    shl-int/lit8 v36, v24, 0x8

    add-int v36, v36, v33

    aget v36, v18, v36

    const v37, -0x200001

    and-int v36, v36, v37

    aput v36, v13, v24

    .line 1639
    add-int/lit8 v24, v24, 0x1

    goto :goto_1ab

    .line 1643
    :cond_1c3
    shl-int/lit8 v36, v33, 0x8

    aget v36, v18, v36

    const v37, -0x200001

    and-int v24, v36, v37

    add-int/lit8 v36, v33, 0x1

    shl-int/lit8 v36, v36, 0x8

    aget v36, v18, v36

    const v37, -0x200001

    and-int v22, v36, v37

    .local v22, hj:I
    :goto_1d7
    move/from16 v0, v24

    move/from16 v1, v22

    if-ge v0, v1, :cond_1fd

    .line 1644
    aget v17, v16, v24

    .line 1645
    .local v17, fmap_j:I
    aget-byte v36, v10, v17

    move/from16 v0, v36

    and-int/lit16 v11, v0, 0xff

    .line 1646
    aget-boolean v36, v9, v11

    if-nez v36, :cond_1f7

    .line 1647
    aget v37, v13, v11

    if-nez v17, :cond_1fa

    move/from16 v36, v25

    :goto_1ef
    aput v36, v16, v37

    .line 1648
    aget v36, v13, v11

    add-int/lit8 v36, v36, 0x1

    aput v36, v13, v11

    .line 1643
    :cond_1f7
    add-int/lit8 v24, v24, 0x1

    goto :goto_1d7

    .line 1647
    :cond_1fa
    add-int/lit8 v36, v17, -0x1

    goto :goto_1ef

    .line 1652
    .end local v17           #fmap_j:I
    :cond_1fd
    const/16 v24, 0x100

    :goto_1ff
    add-int/lit8 v24, v24, -0x1

    if-ltz v24, :cond_210

    .line 1653
    shl-int/lit8 v36, v24, 0x8

    add-int v36, v36, v33

    aget v37, v18, v36

    const/high16 v38, 0x20

    or-int v37, v37, v38

    aput v37, v18, v36

    goto :goto_1ff

    .line 1663
    :cond_210
    const/16 v36, 0x1

    aput-boolean v36, v9, v33

    .line 1665
    const/16 v36, 0xff

    move/from16 v0, v23

    move/from16 v1, v36

    if-ge v0, v1, :cond_264

    .line 1666
    shl-int/lit8 v36, v33, 0x8

    aget v36, v18, v36

    const v37, -0x200001

    and-int v8, v36, v37

    .line 1667
    .local v8, bbStart:I
    add-int/lit8 v36, v33, 0x1

    shl-int/lit8 v36, v36, 0x8

    aget v36, v18, v36

    const v37, -0x200001

    and-int v36, v36, v37

    sub-int v7, v36, v8

    .line 1668
    .local v7, bbSize:I
    const/16 v32, 0x0

    .line 1670
    .local v32, shifts:I
    :goto_234
    shr-int v36, v7, v32

    const v37, 0xfffe

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_242

    .line 1671
    add-int/lit8 v32, v32, 0x1

    goto :goto_234

    .line 1674
    :cond_242
    const/16 v24, 0x0

    :goto_244
    move/from16 v0, v24

    if-ge v0, v7, :cond_264

    .line 1675
    add-int v36, v8, v24

    aget v5, v16, v36

    .line 1676
    .local v5, a2update:I
    shr-int v36, v24, v32

    move/from16 v0, v36

    int-to-char v0, v0

    move/from16 v27, v0

    .line 1677
    .local v27, qVal:C
    aput-char v27, v28, v5

    .line 1678
    const/16 v36, 0x14

    move/from16 v0, v36

    if-ge v5, v0, :cond_261

    .line 1679
    add-int v36, v5, v25

    add-int/lit8 v36, v36, 0x1

    aput-char v27, v28, v36

    .line 1674
    :cond_261
    add-int/lit8 v24, v24, 0x1

    goto :goto_244

    .line 1605
    .end local v5           #a2update:I
    .end local v7           #bbSize:I
    .end local v8           #bbStart:I
    .end local v27           #qVal:C
    .end local v32           #shifts:I
    :cond_264
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_148
.end method

.method private static med3(BBB)B
    .registers 3
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1385
    if-ge p0, p1, :cond_b

    if-ge p1, p2, :cond_5

    .end local p1
    :cond_4
    :goto_4
    return p1

    .restart local p1
    :cond_5
    if-ge p0, p2, :cond_9

    move p1, p2

    goto :goto_4

    :cond_9
    move p1, p0

    goto :goto_4

    :cond_b
    if-gt p1, p2, :cond_4

    if-le p0, p2, :cond_11

    move p1, p2

    goto :goto_4

    :cond_11
    move p1, p0

    goto :goto_4
.end method

.method private moveToFrontCodeAndSend()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1176
    const/16 v0, 0x18

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->origPtr:I

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 1177
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->generateMTFValues()V

    .line 1178
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues()V

    .line 1179
    return-void
.end method

.method private randomiseBlock()V
    .registers 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1688
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v2, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    .line 1689
    .local v2, inUse:[Z
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v0, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 1690
    .local v0, block:[B
    iget v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 1692
    .local v4, lastShadow:I
    const/16 v1, 0x100

    .local v1, i:I
    :goto_e
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_15

    .line 1693
    aput-boolean v9, v2, v1

    goto :goto_e

    .line 1695
    :cond_15
    const/4 v5, 0x0

    .line 1696
    .local v5, rNToGo:I
    const/4 v6, 0x0

    .line 1697
    .local v6, rTPos:I
    const/4 v1, 0x0

    const/4 v3, 0x1

    .local v3, j:I
    :goto_19
    if-gt v1, v4, :cond_40

    .line 1698
    if-nez v5, :cond_29

    .line 1699
    invoke-static {v6}, Lorg/apache/commons/compress/compressors/bzip2/Rand;->rNums(I)I

    move-result v7

    int-to-char v5, v7

    .line 1700
    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x200

    if-ne v6, v7, :cond_29

    .line 1701
    const/4 v6, 0x0

    .line 1705
    :cond_29
    add-int/lit8 v5, v5, -0x1

    .line 1706
    aget-byte v10, v0, v3

    if-ne v5, v8, :cond_3e

    move v7, v8

    :goto_30
    xor-int/2addr v7, v10

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    .line 1709
    aget-byte v7, v0, v3

    and-int/lit16 v7, v7, 0xff

    aput-boolean v8, v2, v7

    .line 1697
    move v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_3e
    move v7, v9

    .line 1706
    goto :goto_30

    .line 1712
    :cond_40
    iput-boolean v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockRandomised:Z

    .line 1713
    return-void
.end method

.method private sendMTFValues()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 736
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v1, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 737
    .local v1, len:[[B
    iget v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nInUse:I

    add-int/lit8 v0, v7, 0x2

    .line 739
    .local v0, alphaSize:I
    const/4 v5, 0x6

    .local v5, t:I
    :cond_9
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_19

    .line 740
    aget-object v2, v1, v5

    .line 741
    .local v2, len_t:[B
    move v6, v0

    .local v6, v:I
    :goto_10
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_9

    .line 742
    const/16 v7, 0xf

    aput-byte v7, v2, v6

    goto :goto_10

    .line 748
    .end local v2           #len_t:[B
    .end local v6           #v:I
    :cond_19
    iget v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    const/16 v8, 0xc8

    if-ge v7, v8, :cond_3a

    const/4 v3, 0x2

    .line 752
    .local v3, nGroups:I
    :goto_20
    invoke-direct {p0, v3, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues0(II)V

    .line 757
    invoke-direct {p0, v3, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues1(II)I

    move-result v4

    .line 760
    .local v4, nSelectors:I
    invoke-direct {p0, v3, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues2(II)V

    .line 763
    invoke-direct {p0, v3, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues3(II)V

    .line 766
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues4()V

    .line 769
    invoke-direct {p0, v3, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues5(II)V

    .line 772
    invoke-direct {p0, v3, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues6(II)V

    .line 775
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues7(I)V

    .line 776
    return-void

    .line 748
    .end local v3           #nGroups:I
    .end local v4           #nSelectors:I
    :cond_3a
    iget v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    const/16 v8, 0x258

    if-ge v7, v8, :cond_42

    const/4 v3, 0x3

    goto :goto_20

    :cond_42
    iget v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    const/16 v8, 0x4b0

    if-ge v7, v8, :cond_4a

    const/4 v3, 0x4

    goto :goto_20

    :cond_4a
    iget v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    const/16 v8, 0x960

    if-ge v7, v8, :cond_52

    const/4 v3, 0x5

    goto :goto_20

    :cond_52
    const/4 v3, 0x6

    goto :goto_20
.end method

.method private sendMTFValues0(II)V
    .registers 16
    .parameter "nGroups"
    .parameter "alphaSize"

    .prologue
    .line 779
    iget-object v12, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v5, v12, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 780
    .local v5, len:[[B
    iget-object v12, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v7, v12, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->mtfFreq:[I

    .line 782
    .local v7, mtfFreq:[I
    iget v9, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    .line 783
    .local v9, remF:I
    const/4 v4, 0x0

    .line 785
    .local v4, gs:I
    move v8, p1

    .local v8, nPart:I
    :goto_c
    if-lez v8, :cond_4f

    .line 786
    div-int v10, v9, v8

    .line 787
    .local v10, tFreq:I
    add-int/lit8 v2, v4, -0x1

    .line 788
    .local v2, ge:I
    const/4 v1, 0x0

    .line 790
    .local v1, aFreq:I
    add-int/lit8 v0, p2, -0x1

    .local v0, a:I
    move v3, v2

    .end local v2           #ge:I
    .local v3, ge:I
    :goto_16
    if-ge v1, v10, :cond_21

    if-ge v3, v0, :cond_21

    .line 791
    add-int/lit8 v2, v3, 0x1

    .end local v3           #ge:I
    .restart local v2       #ge:I
    aget v12, v7, v2

    add-int/2addr v1, v12

    move v3, v2

    .end local v2           #ge:I
    .restart local v3       #ge:I
    goto :goto_16

    .line 794
    :cond_21
    if-le v3, v4, :cond_50

    if-eq v8, p1, :cond_50

    const/4 v12, 0x1

    if-eq v8, v12, :cond_50

    sub-int v12, p1, v8

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_50

    .line 796
    add-int/lit8 v2, v3, -0x1

    .end local v3           #ge:I
    .restart local v2       #ge:I
    aget v12, v7, v3

    sub-int/2addr v1, v12

    .line 799
    :goto_33
    add-int/lit8 v12, v8, -0x1

    aget-object v6, v5, v12

    .line 800
    .local v6, len_np:[B
    move v11, p2

    .local v11, v:I
    :goto_38
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_49

    .line 801
    if-lt v11, v4, :cond_44

    if-gt v11, v2, :cond_44

    .line 802
    const/4 v12, 0x0

    aput-byte v12, v6, v11

    goto :goto_38

    .line 804
    :cond_44
    const/16 v12, 0xf

    aput-byte v12, v6, v11

    goto :goto_38

    .line 808
    :cond_49
    add-int/lit8 v4, v2, 0x1

    .line 809
    sub-int/2addr v9, v1

    .line 785
    add-int/lit8 v8, v8, -0x1

    goto :goto_c

    .line 811
    .end local v0           #a:I
    .end local v1           #aFreq:I
    .end local v2           #ge:I
    .end local v6           #len_np:[B
    .end local v10           #tFreq:I
    .end local v11           #v:I
    :cond_4f
    return-void

    .restart local v0       #a:I
    .restart local v1       #aFreq:I
    .restart local v3       #ge:I
    .restart local v10       #tFreq:I
    :cond_50
    move v2, v3

    .end local v3           #ge:I
    .restart local v2       #ge:I
    goto :goto_33
.end method

.method private sendMTFValues1(II)I
    .registers 44
    .parameter "nGroups"
    .parameter "alphaSize"

    .prologue
    .line 814
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 815
    .local v15, dataShadow:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v0, v15, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_rfreq:[[I

    move-object/from16 v31, v0

    .line 816
    .local v31, rfreq:[[I
    iget-object v0, v15, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_fave:[I

    move-object/from16 v16, v0

    .line 817
    .local v16, fave:[I
    iget-object v7, v15, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_cost:[S

    .line 818
    .local v7, cost:[S
    iget-object v0, v15, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    move-object/from16 v35, v0

    .line 819
    .local v35, sfmap:[C
    iget-object v0, v15, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selector:[B

    move-object/from16 v34, v0

    .line 820
    .local v34, selector:[B
    iget-object v0, v15, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    move-object/from16 v22, v0

    .line 821
    .local v22, len:[[B
    const/16 v37, 0x0

    aget-object v23, v22, v37

    .line 822
    .local v23, len_0:[B
    const/16 v37, 0x1

    aget-object v24, v22, v37

    .line 823
    .local v24, len_1:[B
    const/16 v37, 0x2

    aget-object v25, v22, v37

    .line 824
    .local v25, len_2:[B
    const/16 v37, 0x3

    aget-object v26, v22, v37

    .line 825
    .local v26, len_3:[B
    const/16 v37, 0x4

    aget-object v27, v22, v37

    .line 826
    .local v27, len_4:[B
    const/16 v37, 0x5

    aget-object v28, v22, v37

    .line 827
    .local v28, len_5:[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    move/from16 v29, v0

    .line 829
    .local v29, nMTFShadow:I
    const/16 v30, 0x0

    .line 831
    .local v30, nSelectors:I
    const/16 v21, 0x0

    .local v21, iter:I
    :goto_3c
    const/16 v37, 0x4

    move/from16 v0, v21

    move/from16 v1, v37

    if-ge v0, v1, :cond_18a

    .line 832
    move/from16 v36, p1

    .local v36, t:I
    :cond_46
    add-int/lit8 v36, v36, -0x1

    if-ltz v36, :cond_5b

    .line 833
    const/16 v37, 0x0

    aput v37, v16, v36

    .line 834
    aget-object v33, v31, v36

    .line 835
    .local v33, rfreqt:[I
    move/from16 v19, p2

    .local v19, i:I
    :goto_52
    add-int/lit8 v19, v19, -0x1

    if-ltz v19, :cond_46

    .line 836
    const/16 v37, 0x0

    aput v37, v33, v19

    goto :goto_52

    .line 840
    .end local v19           #i:I
    .end local v33           #rfreqt:[I
    :cond_5b
    const/16 v30, 0x0

    .line 842
    const/16 v18, 0x0

    .local v18, gs:I
    :goto_5f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    move/from16 v37, v0

    move/from16 v0, v18

    move/from16 v1, v37

    if-ge v0, v1, :cond_162

    .line 850
    add-int/lit8 v37, v18, 0x32

    add-int/lit8 v37, v37, -0x1

    add-int/lit8 v38, v29, -0x1

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 852
    .local v17, ge:I
    const/16 v37, 0x6

    move/from16 v0, p1

    move/from16 v1, v37

    if-ne v0, v1, :cond_108

    .line 855
    const/4 v8, 0x0

    .line 856
    .local v8, cost0:S
    const/4 v9, 0x0

    .line 857
    .local v9, cost1:S
    const/4 v10, 0x0

    .line 858
    .local v10, cost2:S
    const/4 v11, 0x0

    .line 859
    .local v11, cost3:S
    const/4 v12, 0x0

    .line 860
    .local v12, cost4:S
    const/4 v13, 0x0

    .line 862
    .local v13, cost5:S
    move/from16 v19, v18

    .restart local v19       #i:I
    :goto_85
    move/from16 v0, v19

    move/from16 v1, v17

    if-gt v0, v1, :cond_de

    .line 863
    aget-char v20, v35, v19

    .line 864
    .local v20, icv:I
    aget-byte v37, v23, v20

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    add-int v37, v37, v8

    move/from16 v0, v37

    int-to-short v8, v0

    .line 865
    aget-byte v37, v24, v20

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    add-int v37, v37, v9

    move/from16 v0, v37

    int-to-short v9, v0

    .line 866
    aget-byte v37, v25, v20

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    add-int v37, v37, v10

    move/from16 v0, v37

    int-to-short v10, v0

    .line 867
    aget-byte v37, v26, v20

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    add-int v37, v37, v11

    move/from16 v0, v37

    int-to-short v11, v0

    .line 868
    aget-byte v37, v27, v20

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    add-int v37, v37, v12

    move/from16 v0, v37

    int-to-short v12, v0

    .line 869
    aget-byte v37, v28, v20

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    add-int v37, v37, v13

    move/from16 v0, v37

    int-to-short v13, v0

    .line 862
    add-int/lit8 v19, v19, 0x1

    goto :goto_85

    .line 872
    .end local v20           #icv:I
    :cond_de
    const/16 v37, 0x0

    aput-short v8, v7, v37

    .line 873
    const/16 v37, 0x1

    aput-short v9, v7, v37

    .line 874
    const/16 v37, 0x2

    aput-short v10, v7, v37

    .line 875
    const/16 v37, 0x3

    aput-short v11, v7, v37

    .line 876
    const/16 v37, 0x4

    aput-short v12, v7, v37

    .line 877
    const/16 v37, 0x5

    aput-short v13, v7, v37

    .line 896
    .end local v8           #cost0:S
    .end local v9           #cost1:S
    .end local v10           #cost2:S
    .end local v11           #cost3:S
    .end local v12           #cost4:S
    .end local v13           #cost5:S
    :cond_f6
    const/4 v6, -0x1

    .line 897
    .local v6, bt:I
    move/from16 v36, p1

    const v5, 0x3b9ac9ff

    .local v5, bc:I
    :cond_fc
    :goto_fc
    add-int/lit8 v36, v36, -0x1

    if-ltz v36, :cond_13c

    .line 898
    aget-short v14, v7, v36

    .line 899
    .local v14, cost_t:I
    if-ge v14, v5, :cond_fc

    .line 900
    move v5, v14

    .line 901
    move/from16 v6, v36

    goto :goto_fc

    .line 880
    .end local v5           #bc:I
    .end local v6           #bt:I
    .end local v14           #cost_t:I
    .end local v19           #i:I
    :cond_108
    move/from16 v36, p1

    :goto_10a
    add-int/lit8 v36, v36, -0x1

    if-ltz v36, :cond_113

    .line 881
    const/16 v37, 0x0

    aput-short v37, v7, v36

    goto :goto_10a

    .line 884
    :cond_113
    move/from16 v19, v18

    .restart local v19       #i:I
    :goto_115
    move/from16 v0, v19

    move/from16 v1, v17

    if-gt v0, v1, :cond_f6

    .line 885
    aget-char v20, v35, v19

    .line 886
    .restart local v20       #icv:I
    move/from16 v36, p1

    :goto_11f
    add-int/lit8 v36, v36, -0x1

    if-ltz v36, :cond_139

    .line 887
    aget-short v37, v7, v36

    aget-object v38, v22, v36

    aget-byte v38, v38, v20

    move/from16 v0, v38

    and-int/lit16 v0, v0, 0xff

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    int-to-short v0, v0

    move/from16 v37, v0

    aput-short v37, v7, v36

    goto :goto_11f

    .line 884
    :cond_139
    add-int/lit8 v19, v19, 0x1

    goto :goto_115

    .line 905
    .end local v20           #icv:I
    .restart local v5       #bc:I
    .restart local v6       #bt:I
    :cond_13c
    aget v37, v16, v6

    add-int/lit8 v37, v37, 0x1

    aput v37, v16, v6

    .line 906
    int-to-byte v0, v6

    move/from16 v37, v0

    aput-byte v37, v34, v30

    .line 907
    add-int/lit8 v30, v30, 0x1

    .line 912
    aget-object v32, v31, v6

    .line 913
    .local v32, rfreq_bt:[I
    move/from16 v19, v18

    :goto_14d
    move/from16 v0, v19

    move/from16 v1, v17

    if-gt v0, v1, :cond_15e

    .line 914
    aget-char v37, v35, v19

    aget v38, v32, v37

    add-int/lit8 v38, v38, 0x1

    aput v38, v32, v37

    .line 913
    add-int/lit8 v19, v19, 0x1

    goto :goto_14d

    .line 917
    :cond_15e
    add-int/lit8 v18, v17, 0x1

    .line 918
    goto/16 :goto_5f

    .line 923
    .end local v5           #bc:I
    .end local v6           #bt:I
    .end local v17           #ge:I
    .end local v19           #i:I
    .end local v32           #rfreq_bt:[I
    :cond_162
    const/16 v36, 0x0

    :goto_164
    move/from16 v0, v36

    move/from16 v1, p1

    if-ge v0, v1, :cond_186

    .line 924
    aget-object v37, v22, v36

    aget-object v38, v31, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    move-object/from16 v39, v0

    const/16 v40, 0x14

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, p2

    move/from16 v4, v40

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->hbMakeCodeLengths([B[ILorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;II)V

    .line 923
    add-int/lit8 v36, v36, 0x1

    goto :goto_164

    .line 831
    :cond_186
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3c

    .line 928
    .end local v18           #gs:I
    .end local v36           #t:I
    :cond_18a
    return v30
.end method

.method private sendMTFValues2(II)V
    .registers 13
    .parameter "nGroups"
    .parameter "nSelectors"

    .prologue
    const/4 v9, 0x0

    .line 934
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 935
    .local v0, dataShadow:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues2_pos:[B

    .line 937
    .local v4, pos:[B
    move v1, p1

    .local v1, i:I
    :goto_6
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_e

    .line 938
    int-to-byte v7, v1

    aput-byte v7, v4, v1

    goto :goto_6

    .line 941
    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-ge v1, p2, :cond_2c

    .line 942
    iget-object v7, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selector:[B

    aget-byte v3, v7, v1

    .line 943
    .local v3, ll_i:B
    aget-byte v5, v4, v9

    .line 944
    .local v5, tmp:B
    const/4 v2, 0x0

    .line 946
    .local v2, j:I
    :goto_18
    if-eq v3, v5, :cond_22

    .line 947
    add-int/lit8 v2, v2, 0x1

    .line 948
    move v6, v5

    .line 949
    .local v6, tmp2:B
    aget-byte v5, v4, v2

    .line 950
    aput-byte v6, v4, v2

    goto :goto_18

    .line 953
    .end local v6           #tmp2:B
    :cond_22
    aput-byte v5, v4, v9

    .line 954
    iget-object v7, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selectorMtf:[B

    int-to-byte v8, v2

    aput-byte v8, v7, v1

    .line 941
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 956
    .end local v2           #j:I
    .end local v3           #ll_i:B
    .end local v5           #tmp:B
    :cond_2c
    return-void
.end method

.method private sendMTFValues3(II)V
    .registers 13
    .parameter "nGroups"
    .parameter "alphaSize"

    .prologue
    .line 959
    iget-object v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v0, v8, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_code:[[I

    .line 960
    .local v0, code:[[I
    iget-object v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v3, v8, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 962
    .local v3, len:[[B
    const/4 v7, 0x0

    .local v7, t:I
    :goto_9
    if-ge v7, p1, :cond_2a

    .line 963
    const/16 v6, 0x20

    .line 964
    .local v6, minLen:I
    const/4 v5, 0x0

    .line 965
    .local v5, maxLen:I
    aget-object v4, v3, v7

    .line 966
    .local v4, len_t:[B
    move v1, p2

    .local v1, i:I
    :cond_11
    :goto_11
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_20

    .line 967
    aget-byte v8, v4, v1

    and-int/lit16 v2, v8, 0xff

    .line 968
    .local v2, l:I
    if-le v2, v5, :cond_1c

    .line 969
    move v5, v2

    .line 971
    :cond_1c
    if-ge v2, v6, :cond_11

    .line 972
    move v6, v2

    goto :goto_11

    .line 979
    .end local v2           #l:I
    :cond_20
    aget-object v8, v0, v7

    aget-object v9, v3, v7

    invoke-static {v8, v9, v6, v5, p2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->hbAssignCodes([I[BIII)V

    .line 962
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 981
    .end local v1           #i:I
    .end local v4           #len_t:[B
    .end local v5           #maxLen:I
    .end local v6           #minLen:I
    :cond_2a
    return-void
.end method

.method private sendMTFValues4()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/16 v11, 0x10

    const/4 v9, 0x1

    .line 984
    iget-object v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v4, v8, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    .line 985
    .local v4, inUse:[Z
    iget-object v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v5, v8, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sentMTFValues4_inUse16:[Z

    .line 987
    .local v5, inUse16:[Z
    const/16 v2, 0x10

    .local v2, i:I
    :cond_e
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_25

    .line 988
    aput-boolean v10, v5, v2

    .line 989
    mul-int/lit8 v3, v2, 0x10

    .line 990
    .local v3, i16:I
    const/16 v6, 0x10

    .local v6, j:I
    :cond_18
    :goto_18
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_e

    .line 991
    add-int v8, v3, v6

    aget-boolean v8, v4, v8

    if-eqz v8, :cond_18

    .line 992
    aput-boolean v9, v5, v2

    goto :goto_18

    .line 997
    .end local v3           #i16:I
    .end local v6           #j:I
    :cond_25
    const/4 v2, 0x0

    :goto_26
    if-ge v2, v11, :cond_35

    .line 998
    aget-boolean v8, v5, v2

    if-eqz v8, :cond_33

    move v8, v9

    :goto_2d
    invoke-direct {p0, v9, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 997
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_33
    move v8, v10

    .line 998
    goto :goto_2d

    .line 1001
    :cond_35
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 1002
    .local v7, outShadow:Ljava/io/OutputStream;
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1003
    .local v1, bsLiveShadow:I
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1005
    .local v0, bsBuffShadow:I
    const/4 v2, 0x0

    :goto_3c
    if-ge v2, v11, :cond_6a

    .line 1006
    aget-boolean v8, v5, v2

    if-eqz v8, :cond_67

    .line 1007
    mul-int/lit8 v3, v2, 0x10

    .line 1008
    .restart local v3       #i16:I
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_45
    if-ge v6, v11, :cond_67

    .line 1010
    :goto_47
    const/16 v8, 0x8

    if-lt v1, v8, :cond_55

    .line 1011
    shr-int/lit8 v8, v0, 0x18

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write(I)V

    .line 1012
    shl-int/lit8 v0, v0, 0x8

    .line 1013
    add-int/lit8 v1, v1, -0x8

    goto :goto_47

    .line 1015
    :cond_55
    add-int v8, v3, v6

    aget-boolean v8, v4, v8

    if-eqz v8, :cond_62

    .line 1016
    rsub-int/lit8 v8, v1, 0x20

    add-int/lit8 v8, v8, -0x1

    shl-int v8, v9, v8

    or-int/2addr v0, v8

    .line 1018
    :cond_62
    add-int/lit8 v1, v1, 0x1

    .line 1008
    add-int/lit8 v6, v6, 0x1

    goto :goto_45

    .line 1005
    .end local v3           #i16:I
    .end local v6           #j:I
    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 1023
    :cond_6a
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1024
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1025
    return-void
.end method

.method private sendMTFValues5(II)V
    .registers 13
    .parameter "nGroups"
    .parameter "nSelectors"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    .line 1029
    const/4 v7, 0x3

    invoke-direct {p0, v7, p1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 1030
    const/16 v7, 0xf

    invoke-direct {p0, v7, p2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 1032
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 1033
    .local v5, outShadow:Ljava/io/OutputStream;
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v6, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selectorMtf:[B

    .line 1035
    .local v6, selectorMtf:[B
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1036
    .local v1, bsLiveShadow:I
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1038
    .local v0, bsBuffShadow:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_16
    if-ge v3, p2, :cond_48

    .line 1039
    const/4 v4, 0x0

    .local v4, j:I
    aget-byte v7, v6, v3

    and-int/lit16 v2, v7, 0xff

    .local v2, hj:I
    :goto_1d
    if-ge v4, v2, :cond_37

    .line 1041
    :goto_1f
    if-lt v1, v9, :cond_2b

    .line 1042
    shr-int/lit8 v7, v0, 0x18

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write(I)V

    .line 1043
    shl-int/lit8 v0, v0, 0x8

    .line 1044
    add-int/lit8 v1, v1, -0x8

    goto :goto_1f

    .line 1046
    :cond_2b
    const/4 v7, 0x1

    rsub-int/lit8 v8, v1, 0x20

    add-int/lit8 v8, v8, -0x1

    shl-int/2addr v7, v8

    or-int/2addr v0, v7

    .line 1047
    add-int/lit8 v1, v1, 0x1

    .line 1039
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 1051
    :cond_37
    :goto_37
    if-lt v1, v9, :cond_43

    .line 1052
    shr-int/lit8 v7, v0, 0x18

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write(I)V

    .line 1053
    shl-int/lit8 v0, v0, 0x8

    .line 1054
    add-int/lit8 v1, v1, -0x8

    goto :goto_37

    .line 1057
    :cond_43
    add-int/lit8 v1, v1, 0x1

    .line 1038
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1060
    .end local v2           #hj:I
    .end local v4           #j:I
    :cond_48
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1061
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1062
    return-void
.end method

.method private sendMTFValues6(II)V
    .registers 15
    .parameter "nGroups"
    .parameter "alphaSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x8

    .line 1066
    iget-object v9, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v4, v9, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 1067
    .local v4, len:[[B
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 1069
    .local v7, outShadow:Ljava/io/OutputStream;
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1070
    .local v1, bsLiveShadow:I
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1072
    .local v0, bsBuffShadow:I
    const/4 v8, 0x0

    .local v8, t:I
    :goto_d
    if-ge v8, p1, :cond_79

    .line 1073
    aget-object v5, v4, v8

    .line 1074
    .local v5, len_t:[B
    const/4 v9, 0x0

    aget-byte v9, v5, v9

    and-int/lit16 v2, v9, 0xff

    .line 1077
    .local v2, curr:I
    :goto_16
    if-lt v1, v11, :cond_22

    .line 1078
    shr-int/lit8 v9, v0, 0x18

    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write(I)V

    .line 1079
    shl-int/lit8 v0, v0, 0x8

    .line 1080
    add-int/lit8 v1, v1, -0x8

    goto :goto_16

    .line 1082
    :cond_22
    rsub-int/lit8 v9, v1, 0x20

    add-int/lit8 v9, v9, -0x5

    shl-int v9, v2, v9

    or-int/2addr v0, v9

    .line 1083
    add-int/lit8 v1, v1, 0x5

    .line 1085
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2c
    if-ge v3, p2, :cond_76

    .line 1086
    aget-byte v9, v5, v3

    and-int/lit16 v6, v9, 0xff

    .line 1087
    .local v6, lti:I
    :goto_32
    if-ge v2, v6, :cond_57

    .line 1089
    :goto_34
    if-lt v1, v11, :cond_40

    .line 1090
    shr-int/lit8 v9, v0, 0x18

    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write(I)V

    .line 1091
    shl-int/lit8 v0, v0, 0x8

    .line 1092
    add-int/lit8 v1, v1, -0x8

    goto :goto_34

    .line 1094
    :cond_40
    const/4 v9, 0x2

    rsub-int/lit8 v10, v1, 0x20

    add-int/lit8 v10, v10, -0x2

    shl-int/2addr v9, v10

    or-int/2addr v0, v9

    .line 1095
    add-int/lit8 v1, v1, 0x2

    .line 1097
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 1107
    :cond_4c
    const/4 v9, 0x3

    rsub-int/lit8 v10, v1, 0x20

    add-int/lit8 v10, v10, -0x2

    shl-int/2addr v9, v10

    or-int/2addr v0, v9

    .line 1108
    add-int/lit8 v1, v1, 0x2

    .line 1110
    add-int/lit8 v2, v2, -0x1

    .line 1100
    :cond_57
    if-le v2, v6, :cond_65

    .line 1102
    :goto_59
    if-lt v1, v11, :cond_4c

    .line 1103
    shr-int/lit8 v9, v0, 0x18

    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write(I)V

    .line 1104
    shl-int/lit8 v0, v0, 0x8

    .line 1105
    add-int/lit8 v1, v1, -0x8

    goto :goto_59

    .line 1114
    :cond_65
    :goto_65
    if-lt v1, v11, :cond_71

    .line 1115
    shr-int/lit8 v9, v0, 0x18

    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write(I)V

    .line 1116
    shl-int/lit8 v0, v0, 0x8

    .line 1117
    add-int/lit8 v1, v1, -0x8

    goto :goto_65

    .line 1120
    :cond_71
    add-int/lit8 v1, v1, 0x1

    .line 1085
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 1072
    .end local v6           #lti:I
    :cond_76
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 1124
    .end local v2           #curr:I
    .end local v3           #i:I
    .end local v5           #len_t:[B
    :cond_79
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1125
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1126
    return-void
.end method

.method private sendMTFValues7(I)V
    .registers 22
    .parameter "nSelectors"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1129
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 1130
    .local v5, dataShadow:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v8, v5, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 1131
    .local v8, len:[[B
    iget-object v3, v5, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_code:[[I

    .line 1132
    .local v3, code:[[I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 1133
    .local v12, outShadow:Ljava/io/OutputStream;
    iget-object v14, v5, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selector:[B

    .line 1134
    .local v14, selector:[B
    iget-object v0, v5, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    move-object/from16 v16, v0

    .line 1135
    .local v16, sfmap:[C
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    .line 1137
    .local v11, nMTFShadow:I
    const/4 v13, 0x0

    .line 1139
    .local v13, selCtr:I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1140
    .local v2, bsLiveShadow:I
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1142
    .local v1, bsBuffShadow:I
    const/4 v7, 0x0

    .local v7, gs:I
    :goto_20
    if-ge v7, v11, :cond_65

    .line 1143
    add-int/lit8 v18, v7, 0x32

    add-int/lit8 v18, v18, -0x1

    add-int/lit8 v19, v11, -0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1144
    .local v6, ge:I
    aget-byte v18, v14, v13

    move/from16 v0, v18

    and-int/lit16 v15, v0, 0xff

    .line 1145
    .local v15, selector_selCtr:I
    aget-object v4, v3, v15

    .line 1146
    .local v4, code_selCtr:[I
    aget-object v9, v8, v15

    .line 1148
    .local v9, len_selCtr:[B
    :goto_36
    if-gt v7, v6, :cond_60

    .line 1149
    aget-char v17, v16, v7

    .line 1155
    .local v17, sfmap_i:I
    :goto_3a
    const/16 v18, 0x8

    move/from16 v0, v18

    if-lt v2, v0, :cond_4c

    .line 1156
    shr-int/lit8 v18, v1, 0x18

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1157
    shl-int/lit8 v1, v1, 0x8

    .line 1158
    add-int/lit8 v2, v2, -0x8

    goto :goto_3a

    .line 1160
    :cond_4c
    aget-byte v18, v9, v17

    move/from16 v0, v18

    and-int/lit16 v10, v0, 0xff

    .line 1161
    .local v10, n:I
    aget v18, v4, v17

    rsub-int/lit8 v19, v2, 0x20

    sub-int v19, v19, v10

    shl-int v18, v18, v19

    or-int v1, v1, v18

    .line 1162
    add-int/2addr v2, v10

    .line 1164
    add-int/lit8 v7, v7, 0x1

    .line 1165
    goto :goto_36

    .line 1167
    .end local v10           #n:I
    .end local v17           #sfmap_i:I
    :cond_60
    add-int/lit8 v7, v6, 0x1

    .line 1168
    add-int/lit8 v13, v13, 0x1

    .line 1169
    goto :goto_20

    .line 1171
    .end local v4           #code_selCtr:[I
    .end local v6           #ge:I
    .end local v9           #len_selCtr:[B
    .end local v15           #selector_selCtr:I
    :cond_65
    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1172
    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1173
    return-void
.end method

.method private static vswap([IIII)V
    .registers 8
    .parameter "fmap"
    .parameter "p1"
    .parameter "p2"
    .parameter "n"

    .prologue
    .line 1376
    add-int/2addr p3, p1

    move v1, p2

    .end local p2
    .local v1, p2:I
    move v0, p1

    .line 1377
    .end local p1
    .local v0, p1:I
    :goto_3
    if-ge v0, p3, :cond_14

    .line 1378
    aget v2, p0, v0

    .line 1379
    .local v2, t:I
    add-int/lit8 p1, v0, 0x1

    .end local v0           #p1:I
    .restart local p1
    aget v3, p0, v1

    aput v3, p0, v0

    .line 1380
    add-int/lit8 p2, v1, 0x1

    .end local v1           #p2:I
    .restart local p2
    aput v2, p0, v1

    move v1, p2

    .end local p2
    .restart local v1       #p2:I
    move v0, p1

    .line 1381
    .end local p1
    .restart local v0       #p1:I
    goto :goto_3

    .line 1382
    .end local v2           #t:I
    :cond_14
    return-void
.end method

.method private write0(I)V
    .registers 5
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 665
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    if-eq v0, v2, :cond_27

    .line 666
    and-int/lit16 p1, p1, 0xff

    .line 667
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    if-ne v0, p1, :cond_1e

    .line 668
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    const/16 v1, 0xfe

    if-le v0, v1, :cond_1d

    .line 669
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->writeRun()V

    .line 670
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 671
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    .line 683
    :cond_1d
    :goto_1d
    return-void

    .line 675
    :cond_1e
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->writeRun()V

    .line 676
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    .line 677
    iput p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    goto :goto_1d

    .line 680
    :cond_27
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 681
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    goto :goto_1d
.end method

.method private writeRun()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 444
    iget v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 446
    .local v4, lastShadow:I
    iget v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->allowableBlockSize:I

    if-ge v4, v6, :cond_6b

    .line 447
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 448
    .local v2, currentCharShadow:I
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 449
    .local v3, dataShadow:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v6, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    aput-boolean v7, v6, v2

    .line 450
    int-to-byte v1, v2

    .line 452
    .local v1, ch:B
    iget v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    .line 453
    .local v5, runLengthShadow:I
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v6, v2, v5}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(II)V

    .line 455
    packed-switch v5, :pswitch_data_76

    .line 477
    add-int/lit8 v5, v5, -0x4

    .line 478
    iget-object v6, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    aput-boolean v7, v6, v5

    .line 479
    iget-object v0, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 480
    .local v0, block:[B
    add-int/lit8 v6, v4, 0x2

    aput-byte v1, v0, v6

    .line 481
    add-int/lit8 v6, v4, 0x3

    aput-byte v1, v0, v6

    .line 482
    add-int/lit8 v6, v4, 0x4

    aput-byte v1, v0, v6

    .line 483
    add-int/lit8 v6, v4, 0x5

    aput-byte v1, v0, v6

    .line 484
    add-int/lit8 v6, v4, 0x6

    int-to-byte v7, v5

    aput-byte v7, v0, v6

    .line 485
    add-int/lit8 v6, v4, 0x5

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 495
    .end local v0           #block:[B
    .end local v1           #ch:B
    .end local v2           #currentCharShadow:I
    .end local v3           #dataShadow:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .end local v5           #runLengthShadow:I
    :goto_3b
    return-void

    .line 457
    .restart local v1       #ch:B
    .restart local v2       #currentCharShadow:I
    .restart local v3       #dataShadow:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .restart local v5       #runLengthShadow:I
    :pswitch_3c
    iget-object v6, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v7, v4, 0x2

    aput-byte v1, v6, v7

    .line 458
    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    goto :goto_3b

    .line 462
    :pswitch_47
    iget-object v6, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v7, v4, 0x2

    aput-byte v1, v6, v7

    .line 463
    iget-object v6, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v7, v4, 0x3

    aput-byte v1, v6, v7

    .line 464
    add-int/lit8 v6, v4, 0x2

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    goto :goto_3b

    .line 468
    :pswitch_58
    iget-object v0, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 469
    .restart local v0       #block:[B
    add-int/lit8 v6, v4, 0x2

    aput-byte v1, v0, v6

    .line 470
    add-int/lit8 v6, v4, 0x3

    aput-byte v1, v0, v6

    .line 471
    add-int/lit8 v6, v4, 0x4

    aput-byte v1, v0, v6

    .line 472
    add-int/lit8 v6, v4, 0x3

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    goto :goto_3b

    .line 491
    .end local v0           #block:[B
    .end local v1           #ch:B
    .end local v2           #currentCharShadow:I
    .end local v3           #dataShadow:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .end local v5           #runLengthShadow:I
    :cond_6b
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->endBlock()V

    .line 492
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->initBlock()V

    .line 493
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->writeRun()V

    goto :goto_3b

    .line 455
    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_47
        :pswitch_58
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_c

    .line 524
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 525
    .local v0, outShadow:Ljava/io/OutputStream;
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->finish()V

    .line 526
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 528
    .end local v0           #outShadow:Ljava/io/OutputStream;
    :cond_c
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 501
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->finish()V

    .line 502
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 503
    return-void
.end method

.method public finish()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 507
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_19

    .line 509
    :try_start_5
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    if-lez v0, :cond_c

    .line 510
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->writeRun()V

    .line 512
    :cond_c
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 513
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->endBlock()V

    .line 514
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->endCompression()V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1a

    .line 516
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 517
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 520
    :cond_19
    return-void

    .line 516
    :catchall_1a
    move-exception v0

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 517
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    throw v0
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 532
    .local v0, outShadow:Ljava/io/OutputStream;
    if-eqz v0, :cond_7

    .line 533
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 535
    :cond_7
    return-void
.end method

.method public final getBlockSize()I
    .registers 2

    .prologue
    .line 639
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    return v0
.end method

.method public write(I)V
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_8

    .line 437
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->write0(I)V

    .line 441
    return-void

    .line 439
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)V
    .registers 9
    .parameter "buf"
    .parameter "offs"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    if-gez p2, :cond_21

    .line 645
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "offs("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") < 0."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 647
    :cond_21
    if-gez p3, :cond_42

    .line 648
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "len("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") < 0."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 650
    :cond_42
    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_7b

    .line 651
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "offs("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") + len("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") > buf.length("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 655
    :cond_7b
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    if-nez v2, :cond_87

    .line 656
    new-instance v2, Ljava/io/IOException;

    const-string v3, "stream closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 659
    :cond_87
    add-int v0, p2, p3

    .local v0, hi:I
    move v1, p2

    .end local p2
    .local v1, offs:I
    :goto_8a
    if-ge v1, v0, :cond_95

    .line 660
    add-int/lit8 p2, v1, 0x1

    .end local v1           #offs:I
    .restart local p2
    aget-byte v2, p1, v1

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->write0(I)V

    move v1, p2

    .end local p2
    .restart local v1       #offs:I
    goto :goto_8a

    .line 662
    :cond_95
    return-void
.end method
