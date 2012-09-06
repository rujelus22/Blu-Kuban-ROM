.class public Lcom/google/common/logging/RotatingLogStream;
.super Ljava/io/OutputStream;
.source "RotatingLogStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/RotatingLogStream$SymbolicLinkProvider;,
        Lcom/google/common/logging/RotatingLogStream$Listener;
    }
.end annotation


# static fields
.field public static final kDefaultDateFormat:Ljava/text/SimpleDateFormat; = null

.field public static final kDefaultRotateSize:J = 0x70800000L

.field private static final skipLogSymLinkCreation:Lcom/google/common/flags/Flag;
    .annotation runtime Lcom/google/common/flags/FlagSpec;
        help = "If enabled, then rotating logs will not create symbolic links from the base filename to the current log.  This is provided to avoid the Runtime.exec() call in RotatingLogStream that can cause OutOfMemoryError due to fork() temporarily doubling memory footprint."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile symlinker:Lcom/google/common/logging/RotatingLogStream$SymbolicLinkProvider;


# instance fields
.field private final basename_:Ljava/lang/String;

.field private currentCombinedLogSize_:J

.field private currentFileDescriptor_:Ljava/io/FileDescriptor;

.field private currentFile_:Ljava/io/File;

.field private currentSize_:J

.field protected final dateFormat_:Ljava/text/DateFormat;

.field private final extension_:Ljava/lang/String;

.field private files_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final linkname_:Ljava/lang/String;

.field private final listeners_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/RotatingLogStream$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private maxCombinedLogSize_:J

.field private output_:Ljava/io/OutputStream;

.field private rotateSize_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 84
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "-yyyy_MM_dd_HH_mm_ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/logging/RotatingLogStream;->kDefaultDateFormat:Ljava/text/SimpleDateFormat;

    .line 92
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/flags/Flag;->value(Z)Lcom/google/common/flags/Flag;

    move-result-object v0

    sput-object v0, Lcom/google/common/logging/RotatingLogStream;->skipLogSymLinkCreation:Lcom/google/common/flags/Flag;

    .line 117
    new-instance v0, Lcom/google/common/logging/RotatingLogStream$1;

    invoke-direct {v0}, Lcom/google/common/logging/RotatingLogStream$1;-><init>()V

    sput-object v0, Lcom/google/common/logging/RotatingLogStream;->symlinker:Lcom/google/common/logging/RotatingLogStream$SymbolicLinkProvider;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "basename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    sget-object v0, Lcom/google/common/logging/RotatingLogStream;->kDefaultDateFormat:Ljava/text/SimpleDateFormat;

    invoke-direct {p0, p1, p1, v0}, Lcom/google/common/logging/RotatingLogStream;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;)V
    .registers 11
    .parameter "basename"
    .end parameter
    .parameter "linkname"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "extension"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "dateFormat"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    sget-object v0, Lcom/google/common/logging/RotatingLogStream;->skipLogSymLinkCreation:Lcom/google/common/flags/Flag;

    invoke-virtual {v0}, Lcom/google/common/flags/Flag;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v5, 0x1

    :goto_f
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/common/logging/RotatingLogStream;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;Z)V

    .line 188
    return-void

    .line 186
    :cond_18
    const/4 v5, 0x0

    goto :goto_f
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;Z)V
    .registers 8
    .parameter "basename"
    .end parameter
    .parameter "linkname"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "extension"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "dateFormat"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "allowSymLinkCreation"
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/RotatingLogStream;->listeners_:Ljava/util/List;

    .line 162
    iput-object p4, p0, Lcom/google/common/logging/RotatingLogStream;->dateFormat_:Ljava/text/DateFormat;

    .line 163
    iput-object p1, p0, Lcom/google/common/logging/RotatingLogStream;->basename_:Ljava/lang/String;

    .line 164
    if-eqz p5, :cond_21

    .end local p2
    :goto_14
    iput-object p2, p0, Lcom/google/common/logging/RotatingLogStream;->linkname_:Ljava/lang/String;

    .line 165
    iput-object p3, p0, Lcom/google/common/logging/RotatingLogStream;->extension_:Ljava/lang/String;

    .line 166
    const-wide/32 v0, 0x70800000

    iput-wide v0, p0, Lcom/google/common/logging/RotatingLogStream;->rotateSize_:J

    .line 167
    invoke-direct {p0}, Lcom/google/common/logging/RotatingLogStream;->openNewFile()V

    .line 168
    return-void

    .line 164
    .restart local p2
    :cond_21
    const/4 p2, 0x0

    goto :goto_14
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;)V
    .registers 5
    .parameter "basename"
    .end parameter
    .parameter "linkname"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "dateFormat"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/common/logging/RotatingLogStream;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;)V

    .line 202
    return-void
.end method

.method private deleteOldestLogFiles(J)V
    .registers 14
    .parameter "totalExpectedLogsSize"

    .prologue
    .line 417
    :goto_0
    iget-wide v9, p0, Lcom/google/common/logging/RotatingLogStream;->maxCombinedLogSize_:J

    cmp-long v9, p1, v9

    if-ltz v9, :cond_f

    .line 418
    iget-object v9, p0, Lcom/google/common/logging/RotatingLogStream;->files_:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-gt v9, v10, :cond_10

    .line 439
    :cond_f
    return-void

    .line 421
    :cond_10
    const/4 v4, 0x0

    .line 422
    .local v4, oldestFileIdx:I
    iget-object v9, p0, Lcom/google/common/logging/RotatingLogStream;->files_:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 423
    .local v5, oldestFileTimestamp:J
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1e
    iget-object v9, p0, Lcom/google/common/logging/RotatingLogStream;->files_:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_3b

    .line 424
    iget-object v9, p0, Lcom/google/common/logging/RotatingLogStream;->files_:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    .line 425
    .local v7, timestamp:J
    cmp-long v9, v7, v5

    if-gez v9, :cond_38

    .line 426
    move-wide v5, v7

    .line 427
    move v4, v3

    .line 423
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 431
    .end local v7           #timestamp:J
    :cond_3b
    iget-object v9, p0, Lcom/google/common/logging/RotatingLogStream;->files_:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 432
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 433
    .local v1, fLength:J
    iget-wide v9, p0, Lcom/google/common/logging/RotatingLogStream;->currentCombinedLogSize_:J

    sub-long/2addr v9, v1

    iput-wide v9, p0, Lcom/google/common/logging/RotatingLogStream;->currentCombinedLogSize_:J

    .line 434
    sub-long/2addr p1, v1

    .line 437
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private findAllFilesWithBasenameAndExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 15
    .parameter "basename"
    .end parameter
    .parameter "extension"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    const-string v1, "."

    .line 448
    .local v1, dir:Ljava/lang/String;
    sget-char v10, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 449
    .local v2, dirSeparatorIdx:I
    const/4 v10, -0x1

    if-eq v2, v10, :cond_16

    .line 450
    const/4 v10, 0x0

    invoke-virtual {p1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 451
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 453
    :cond_16
    move-object v7, p1

    .line 454
    .local v7, relativeBaseName:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/common/logging/RotatingLogStream;->linkname_:Ljava/lang/String;

    if-eqz v10, :cond_46

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/google/common/logging/RotatingLogStream;->linkname_:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 458
    .local v8, relativeLinkName:Ljava/lang/String;
    :goto_26
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/google/common/logging/RotatingLogStream$2;

    invoke-direct {v11, p0, v8, v7, p2}, Lcom/google/common/logging/RotatingLogStream$2;-><init>(Lcom/google/common/logging/RotatingLogStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 478
    .local v4, files:[Ljava/io/File;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v9, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_3c
    if-ge v5, v6, :cond_48

    aget-object v3, v0, v5

    .line 480
    .local v3, file:Ljava/io/File;
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 454
    .end local v0           #arr$:[Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #files:[Ljava/io/File;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v8           #relativeLinkName:Ljava/lang/String;
    .end local v9           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_46
    const/4 v8, 0x0

    goto :goto_26

    .line 482
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v4       #files:[Ljava/io/File;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v8       #relativeLinkName:Ljava/lang/String;
    .restart local v9       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_48
    return-object v9
.end method

.method private openNewFile()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/google/common/logging/RotatingLogStream;->getNextFilename()Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, fn:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .local v7, newFile:Ljava/io/File;
    iget-object v9, p0, Lcom/google/common/logging/RotatingLogStream;->currentFile_:Ljava/io/File;

    invoke-virtual {v7, v9}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 366
    :cond_11
    return-void

    .line 316
    :cond_12
    iput-object v7, p0, Lcom/google/common/logging/RotatingLogStream;->currentFile_:Ljava/io/File;

    .line 317
    iget-object v9, p0, Lcom/google/common/logging/RotatingLogStream;->files_:Ljava/util/ArrayList;

    if-eqz v9, :cond_1f

    .line 318
    iget-object v9, p0, Lcom/google/common/logging/RotatingLogStream;->files_:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/google/common/logging/RotatingLogStream;->currentFile_:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_1f
    iget-object v9, p0, Lcom/google/common/logging/RotatingLogStream;->currentFile_:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, absFn:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/common/logging/RotatingLogStream;->currentFile_:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/google/common/logging/RotatingLogStream;->currentSize_:J

    .line 322
    iget-wide v9, p0, Lcom/google/common/logging/RotatingLogStream;->currentCombinedLogSize_:J

    iget-wide v11, p0, Lcom/google/common/logging/RotatingLogStream;->currentSize_:J

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/google/common/logging/RotatingLogStream;->currentCombinedLogSize_:J

    .line 327
    iget-wide v9, p0, Lcom/google/common/logging/RotatingLogStream;->rotateSize_:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5c

    iget-wide v9, p0, Lcom/google/common/logging/RotatingLogStream;->currentSize_:J

    iget-wide v11, p0, Lcom/google/common/logging/RotatingLogStream;->rotateSize_:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_5c

    .line 328
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current log files size >= rotate size for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 332
    :cond_5c
    iget-object v9, p0, Lcom/google/common/logging/RotatingLogStream;->currentFile_:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 333
    .local v8, parentFile:Ljava/io/File;
    if-eqz v8, :cond_67

    .line 335
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 338
    :cond_67
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v9, 0x1

    invoke-direct {v1, v2, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 339
    .local v1, fileOutputStream:Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    iput-object v9, p0, Lcom/google/common/logging/RotatingLogStream;->currentFileDescriptor_:Ljava/io/FileDescriptor;

    .line 341
    iget-object v9, p0, Lcom/google/common/logging/RotatingLogStream;->output_:Ljava/io/OutputStream;

    if-eqz v9, :cond_7c

    .line 342
    iget-object v9, p0, Lcom/google/common/logging/RotatingLogStream;->output_:Ljava/io/OutputStream;

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 344
    :cond_7c
    invoke-virtual {p0, v1}, Lcom/google/common/logging/RotatingLogStream;->wrapFileOutputStream(Ljava/io/FileOutputStream;)Ljava/io/OutputStream;

    move-result-object v9

    iput-object v9, p0, Lcom/google/common/logging/RotatingLogStream;->output_:Ljava/io/OutputStream;

    .line 348
    iget-object v9, p0, Lcom/google/common/logging/RotatingLogStream;->linkname_:Ljava/lang/String;

    if-eqz v9, :cond_ae

    .line 352
    move-object v5, v2

    .line 353
    .local v5, linkSrc:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/common/logging/RotatingLogStream;->linkname_:Ljava/lang/String;

    const/16 v10, 0x2f

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 354
    .local v4, lastSlash:I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_a7

    iget-object v9, p0, Lcom/google/common/logging/RotatingLogStream;->linkname_:Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a7

    .line 356
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 359
    :cond_a7
    sget-object v9, Lcom/google/common/logging/RotatingLogStream;->symlinker:Lcom/google/common/logging/RotatingLogStream$SymbolicLinkProvider;

    iget-object v10, p0, Lcom/google/common/logging/RotatingLogStream;->linkname_:Ljava/lang/String;

    invoke-interface {v9, v5, v10}, Lcom/google/common/logging/RotatingLogStream$SymbolicLinkProvider;->createSymbolicLink(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .end local v4           #lastSlash:I
    .end local v5           #linkSrc:Ljava/lang/String;
    :cond_ae
    iget-object v9, p0, Lcom/google/common/logging/RotatingLogStream;->listeners_:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_b4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/logging/RotatingLogStream$Listener;

    .line 364
    .local v6, listener:Lcom/google/common/logging/RotatingLogStream$Listener;
    iget-object v9, p0, Lcom/google/common/logging/RotatingLogStream;->output_:Ljava/io/OutputStream;

    invoke-interface {v6, v9}, Lcom/google/common/logging/RotatingLogStream$Listener;->logFileCreated(Ljava/io/OutputStream;)V

    goto :goto_b4
.end method

.method public static setSymbolicLinkProvider(Lcom/google/common/logging/RotatingLogStream$SymbolicLinkProvider;)V
    .registers 1
    .parameter "p"

    .prologue
    .line 140
    sput-object p0, Lcom/google/common/logging/RotatingLogStream;->symlinker:Lcom/google/common/logging/RotatingLogStream$SymbolicLinkProvider;

    .line 141
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/common/logging/RotatingLogStream$Listener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/common/logging/RotatingLogStream;->listeners_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    return-void
.end method

.method checkRotate(I)V
    .registers 6
    .parameter "lenToWrite"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/common/logging/RotatingLogStream;->files_:Ljava/util/ArrayList;

    if-nez v0, :cond_33

    .line 387
    iget-wide v0, p0, Lcom/google/common/logging/RotatingLogStream;->currentSize_:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/logging/RotatingLogStream;->rotateSize_:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_26

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/common/logging/RotatingLogStream;->getNextFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/logging/RotatingLogStream;->rotateSize_:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_26

    .line 389
    invoke-virtual {p0}, Lcom/google/common/logging/RotatingLogStream;->rotate()V

    .line 402
    :cond_26
    :goto_26
    iget-wide v0, p0, Lcom/google/common/logging/RotatingLogStream;->currentSize_:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/logging/RotatingLogStream;->currentSize_:J

    .line 403
    iget-wide v0, p0, Lcom/google/common/logging/RotatingLogStream;->currentCombinedLogSize_:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/logging/RotatingLogStream;->currentCombinedLogSize_:J

    .line 404
    return-void

    .line 392
    :cond_33
    iget-wide v0, p0, Lcom/google/common/logging/RotatingLogStream;->currentSize_:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/logging/RotatingLogStream;->rotateSize_:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_40

    .line 393
    invoke-virtual {p0}, Lcom/google/common/logging/RotatingLogStream;->rotate()V

    .line 396
    :cond_40
    iget-wide v0, p0, Lcom/google/common/logging/RotatingLogStream;->currentCombinedLogSize_:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/common/logging/RotatingLogStream;->deleteOldestLogFiles(J)V

    goto :goto_26
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/common/logging/RotatingLogStream;->output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/RotatingLogStream;->output_:Ljava/io/OutputStream;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 256
    monitor-exit p0

    return-void

    .line 254
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/common/logging/RotatingLogStream;->output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 261
    monitor-exit p0

    return-void

    .line 260
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getCurrentCombinedLogSize()J
    .registers 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 408
    iget-wide v0, p0, Lcom/google/common/logging/RotatingLogStream;->currentCombinedLogSize_:J

    return-wide v0
.end method

.method public getCurrentFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/common/logging/RotatingLogStream;->currentFile_:Ljava/io/File;

    return-object v0
.end method

.method public getCurrentFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/common/logging/RotatingLogStream;->currentFileDescriptor_:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method getCurrentLogSize()J
    .registers 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 413
    iget-wide v0, p0, Lcom/google/common/logging/RotatingLogStream;->currentSize_:J

    return-wide v0
.end method

.method getNextFilename()Ljava/lang/String;
    .registers 4

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/common/logging/RotatingLogStream;->extension_:Ljava/lang/String;

    if-nez v0, :cond_23

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/logging/RotatingLogStream;->basename_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/logging/RotatingLogStream;->dateFormat_:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    :goto_22
    return-object v0

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/logging/RotatingLogStream;->basename_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/logging/RotatingLogStream;->dateFormat_:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/logging/RotatingLogStream;->extension_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22
.end method

.method public declared-synchronized rotate()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/common/logging/RotatingLogStream;->flush()V

    .line 217
    invoke-direct {p0}, Lcom/google/common/logging/RotatingLogStream;->openNewFile()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 218
    monitor-exit p0

    return-void

    .line 216
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxCombinedLogSize(J)V
    .registers 9
    .parameter "maxCombinedLogSize"

    .prologue
    .line 232
    monitor-enter p0

    :try_start_1
    iget-wide v4, p0, Lcom/google/common/logging/RotatingLogStream;->rotateSize_:J

    cmp-long v4, p1, v4

    if-gez v4, :cond_12

    .line 233
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Max combined log size should be >= single log rotate size"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 232
    :catchall_f
    move-exception v4

    monitor-exit p0

    throw v4

    .line 237
    :cond_12
    :try_start_12
    iput-wide p1, p0, Lcom/google/common/logging/RotatingLogStream;->maxCombinedLogSize_:J

    .line 238
    iget-object v4, p0, Lcom/google/common/logging/RotatingLogStream;->files_:Ljava/util/ArrayList;

    if-nez v4, :cond_3e

    .line 240
    iget-object v4, p0, Lcom/google/common/logging/RotatingLogStream;->basename_:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/common/logging/RotatingLogStream;->extension_:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/google/common/logging/RotatingLogStream;->findAllFilesWithBasenameAndExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/common/logging/RotatingLogStream;->files_:Ljava/util/ArrayList;

    .line 241
    const-wide/16 v2, 0x0

    .line 242
    .local v2, length:J
    iget-object v4, p0, Lcom/google/common/logging/RotatingLogStream;->files_:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 243
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_2a

    .line 245
    .end local v0           #file:Ljava/io/File;
    :cond_3c
    iput-wide v2, p0, Lcom/google/common/logging/RotatingLogStream;->currentCombinedLogSize_:J
    :try_end_3e
    .catchall {:try_start_12 .. :try_end_3e} :catchall_f

    .line 247
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #length:J
    :cond_3e
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setRotateSize(J)V
    .registers 4
    .parameter "rotateSize"

    .prologue
    .line 222
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/common/logging/RotatingLogStream;->rotateSize_:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 223
    monitor-exit p0

    return-void

    .line 222
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected wrapFileOutputStream(Ljava/io/FileOutputStream;)Ljava/io/OutputStream;
    .registers 3
    .parameter "fileOutputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public declared-synchronized write(I)V
    .registers 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/common/logging/RotatingLogStream;->checkRotate(I)V

    .line 280
    iget-object v0, p0, Lcom/google/common/logging/RotatingLogStream;->output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    .line 281
    monitor-exit p0

    return-void

    .line 279
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([B)V
    .registers 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    monitor-enter p0

    :try_start_1
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/common/logging/RotatingLogStream;->checkRotate(I)V

    .line 266
    iget-object v0, p0, Lcom/google/common/logging/RotatingLogStream;->output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 267
    monitor-exit p0

    return-void

    .line 265
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .registers 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p3}, Lcom/google/common/logging/RotatingLogStream;->checkRotate(I)V

    .line 274
    iget-object v0, p0, Lcom/google/common/logging/RotatingLogStream;->output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 275
    monitor-exit p0

    return-void

    .line 273
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
