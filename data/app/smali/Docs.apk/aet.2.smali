.class public Laet;
.super Ljava/io/ByteArrayOutputStream;
.source "LoggingByteArrayOutputStream.java"


# instance fields
.field private a:I

.field private final a:Ljava/util/logging/Level;

.field private final a:Ljava/util/logging/Logger;

.field private a:Z

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Logger;

    iput-object v0, p0, Laet;->a:Ljava/util/logging/Logger;

    .line 66
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Level;

    iput-object v0, p0, Laet;->a:Ljava/util/logging/Level;

    .line 67
    if-ltz p3, :cond_1c

    const/4 v0, 0x1

    :goto_16
    invoke-static {v0}, LafQ;->a(Z)V

    .line 68
    iput p3, p0, Laet;->b:I

    .line 69
    return-void

    .line 67
    :cond_1c
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private static a(Ljava/lang/StringBuilder;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 131
    const-string v0, "1 byte"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :goto_8
    return-void

    .line 133
    :cond_9
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 6

    .prologue
    .line 96
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Laet;->a:Z

    if-nez v0, :cond_57

    .line 98
    iget v0, p0, Laet;->a:I

    if-eqz v0, :cond_54

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    iget v1, p0, Laet;->a:I

    invoke-static {v0, v1}, Laet;->a(Ljava/lang/StringBuilder;I)V

    .line 102
    iget v1, p0, Laet;->count:I

    if-eqz v1, :cond_32

    iget v1, p0, Laet;->count:I

    iget v2, p0, Laet;->a:I

    if-ge v1, v2, :cond_32

    .line 103
    const-string v1, " (logging first "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v1, p0, Laet;->count:I

    invoke-static {v0, v1}, Laet;->a(Ljava/lang/StringBuilder;I)V

    .line 105
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_32
    iget-object v1, p0, Laet;->a:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 109
    iget v0, p0, Laet;->count:I

    if-eqz v0, :cond_54

    .line 111
    iget-object v0, p0, Laet;->a:Ljava/util/logging/Logger;

    iget-object v1, p0, Laet;->a:Ljava/util/logging/Level;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Laet;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F]"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 115
    :cond_54
    const/4 v0, 0x1

    iput-boolean v0, p0, Laet;->a:Z
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_59

    .line 117
    :cond_57
    monitor-exit p0

    return-void

    .line 96
    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .registers 4
    .parameter

    .prologue
    .line 73
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Laet;->a:Z

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, LafQ;->a(Z)V

    .line 74
    iget v0, p0, Laet;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laet;->a:I

    .line 75
    iget v0, p0, Laet;->count:I

    iget v1, p0, Laet;->b:I

    if-ge v0, v1, :cond_18

    .line 76
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1c

    .line 78
    :cond_18
    monitor-exit p0

    return-void

    .line 73
    :cond_1a
    const/4 v0, 0x0

    goto :goto_6

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Laet;->a:Z

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, LafQ;->a(Z)V

    .line 83
    iget v0, p0, Laet;->a:I

    add-int/2addr v0, p3

    iput v0, p0, Laet;->a:I

    .line 84
    iget v0, p0, Laet;->count:I

    iget v1, p0, Laet;->b:I

    if-ge v0, v1, :cond_23

    .line 85
    iget v0, p0, Laet;->count:I

    add-int/2addr v0, p3

    .line 86
    iget v1, p0, Laet;->b:I

    if-le v0, v1, :cond_20

    .line 87
    iget v1, p0, Laet;->b:I

    sub-int v0, v1, v0

    add-int/2addr p3, v0

    .line 89
    :cond_20
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_27

    .line 91
    :cond_23
    monitor-exit p0

    return-void

    .line 82
    :cond_25
    const/4 v0, 0x0

    goto :goto_6

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method
