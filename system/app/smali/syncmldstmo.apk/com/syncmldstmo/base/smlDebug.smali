.class public Lcom/syncmldstmo/base/smlDebug;
.super Ljava/lang/Object;
.source "smlDebug.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syncmldstmo/base/smlDebug$RefInt;
    }
.end annotation


# static fields
.field public static SML_DEBUG_TAG:Ljava/lang/String;

.field public static SML_DS_PRIVATE_LOG_ON:Z

.field public static timeBegin:[J

.field public static timeCount:[J

.field public static timeDiff:[J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x14

    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/syncmldstmo/base/smlDebug;->SML_DS_PRIVATE_LOG_ON:Z

    .line 32
    new-array v0, v1, [J

    sput-object v0, Lcom/syncmldstmo/base/smlDebug;->timeBegin:[J

    .line 33
    new-array v0, v1, [J

    sput-object v0, Lcom/syncmldstmo/base/smlDebug;->timeDiff:[J

    .line 34
    new-array v0, v1, [J

    sput-object v0, Lcom/syncmldstmo/base/smlDebug;->timeCount:[J

    .line 36
    const-string v0, "SYNCMLDSTMO"

    sput-object v0, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG_TAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsEmpty(Ljava/lang/String;)Z
    .registers 2
    .parameter "s"

    .prologue
    .line 453
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 455
    const/4 v0, 0x1

    .line 458
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static SML_DEBUG(ILjava/lang/String;)V
    .registers 8
    .parameter "DBG_LVL"
    .parameter "fmt"

    .prologue
    const/4 v5, 0x1

    .line 157
    sparse-switch p0, :sswitch_data_5c

    .line 204
    :sswitch_4
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 205
    .local v3, trace:[Ljava/lang/StackTraceElement;
    const-string v1, ""

    .line 206
    .local v1, msg:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 208
    .local v2, strBuffer:Ljava/lang/StringBuffer;
    array-length v4, v3

    if-lt v4, v5, :cond_55

    .line 210
    aget-object v0, v3, v5

    .line 211
    .local v0, elt:Ljava/lang/StackTraceElement;
    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    invoke-static {}, Lcom/syncmldstmo/DSService;->wssGetReleaseVer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    const-string v4, "]["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    const-string v4, " Line:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 217
    const-string v4, "]["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    const-string v4, "] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .end local v0           #elt:Ljava/lang/StackTraceElement;
    :cond_55
    sget-object v4, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG_TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v1           #msg:Ljava/lang/String;
    .end local v2           #strBuffer:Ljava/lang/StringBuffer;
    .end local v3           #trace:[Ljava/lang/StackTraceElement;
    :sswitch_5a
    return-void

    .line 157
    nop

    :sswitch_data_5c
    .sparse-switch
        0x2 -> :sswitch_4
        0x8 -> :sswitch_4
        0x20 -> :sswitch_4
        0x20000 -> :sswitch_5a
        0x40000 -> :sswitch_4
        0x80000 -> :sswitch_4
        0x200000 -> :sswitch_4
    .end sparse-switch
.end method

.method public static smlLibPrintException(Ljava/lang/String;)V
    .registers 7
    .parameter "s"

    .prologue
    const/4 v5, 0x1

    .line 383
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 384
    .local v3, trace:[Ljava/lang/StackTraceElement;
    const-string v1, ""

    .line 385
    .local v1, msg:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 387
    .local v2, strBuffer:Ljava/lang/StringBuffer;
    array-length v4, v3

    if-lt v4, v5, :cond_52

    .line 389
    aget-object v0, v3, v5

    .line 390
    .local v0, elt:Ljava/lang/StackTraceElement;
    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    invoke-static {}, Lcom/syncmldstmo/DSService;->wssGetReleaseVer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    const-string v4, "]["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    const-string v4, " Line:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 396
    const-string v4, "]["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    const-string v4, "] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    .end local v0           #elt:Ljava/lang/StackTraceElement;
    :cond_52
    sget-object v4, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG_TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void
.end method

.method public static smlLibPrivateLog(Ljava/lang/String;)V
    .registers 8
    .parameter "content"

    .prologue
    const/4 v6, 0x1

    .line 336
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 337
    .local v4, trace:[Ljava/lang/StackTraceElement;
    const-string v2, ""

    .line 338
    .local v2, msg:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 340
    .local v3, strBuffer:Ljava/lang/StringBuffer;
    array-length v5, v4

    if-lt v5, v6, :cond_5a

    .line 342
    const-string v0, ""

    .line 344
    .local v0, base64Data:Ljava/lang/String;
    aget-object v1, v4, v6

    .line 345
    .local v1, elt:Ljava/lang/StackTraceElement;
    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    invoke-static {}, Lcom/syncmldstmo/DSService;->wssGetReleaseVer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    const-string v5, "]["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    const-string v5, " Line:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 351
    const-string v5, "]["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    const-string v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    invoke-static {p0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 357
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    :goto_56
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 375
    .end local v0           #base64Data:Ljava/lang/String;
    .end local v1           #elt:Ljava/lang/StackTraceElement;
    :cond_5a
    sget-object v5, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG_TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void

    .line 361
    .restart local v0       #base64Data:Ljava/lang/String;
    .restart local v1       #elt:Ljava/lang/StackTraceElement;
    :cond_60
    sget-boolean v5, Lcom/syncmldstmo/base/smlDebug;->SML_DS_PRIVATE_LOG_ON:Z

    if-eqz v5, :cond_75

    .line 363
    invoke-static {p0}, Lcom/syncmldstmo/database/smlDbAESCrypt;->smlEncryptor(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/syncmldstmo/base/smlBase64;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_73

    move-object v5, v0

    :goto_6f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_56

    :cond_73
    const/4 v5, 0x0

    goto :goto_6f

    .line 368
    :cond_75
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_56
.end method

.method public static strFormat(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter "fmt"
    .parameter "p1"

    .prologue
    .line 104
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 106
    .local v0, p:[Ljava/lang/Object;
    invoke-static {p0, v0}, Lcom/syncmldstmo/base/smlDebug;->strFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static strFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .parameter "fmt"
    .parameter "p"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    const-string v1, "%b"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_f

    .line 86
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 99
    :goto_e
    return-object v1

    .line 88
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v1, p1

    if-lt v0, v1, :cond_18

    .line 99
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 90
    :cond_18
    aget-object v1, p1, v0

    if-eqz v1, :cond_2e

    .line 92
    aget-object v1, p1, v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 93
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    .line 88
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 94
    :cond_31
    aget-object v1, p1, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    goto :goto_2e
.end method

.method public static timecheckReset()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x0

    .line 40
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    sget-object v1, Lcom/syncmldstmo/base/smlDebug;->timeDiff:[J

    array-length v1, v1

    if-lt v0, v1, :cond_9

    .line 46
    return-void

    .line 42
    :cond_9
    sget-object v1, Lcom/syncmldstmo/base/smlDebug;->timeBegin:[J

    aput-wide v2, v1, v0

    .line 43
    sget-object v1, Lcom/syncmldstmo/base/smlDebug;->timeDiff:[J

    aput-wide v2, v1, v0

    .line 44
    sget-object v1, Lcom/syncmldstmo/base/smlDebug;->timeCount:[J

    aput-wide v2, v1, v0

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static writeFile(Ljava/lang/String;[B)V
    .registers 5
    .parameter "file"
    .parameter "data"

    .prologue
    .line 412
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 413
    .local v1, fw:Ljava/io/DataOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 414
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 420
    .end local v1           #fw:Ljava/io/DataOutputStream;
    :goto_10
    return-void

    .line 416
    :catch_11
    move-exception v0

    .line 418
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_10
.end method
