.class public Landroid/support/v4/util/LogWriter;
.super Ljava/io/Writer;
.source "LogWriter.java"


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "tag"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    .line 43
    iput-object p1, p0, Landroid/support/v4/util/LogWriter;->mTag:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private flushBuilder()V
    .registers 4

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v4/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1f

    .line 68
    iget-object v0, p0, Landroid/support/v4/util/LogWriter;->mTag:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Landroid/support/v4/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v4/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 71
    :cond_1f
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/util/LogWriter;->flushBuilder()V

    .line 48
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/util/LogWriter;->flushBuilder()V

    .line 52
    return-void
.end method

.method public write([CII)V
    .registers 7
    .parameter "buf"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 55
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p3, :cond_17

    .line 56
    add-int v2, p2, v1

    aget-char v0, p1, v2

    .line 57
    .local v0, c:C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_11

    .line 58
    invoke-direct {p0}, Landroid/support/v4/util/LogWriter;->flushBuilder()V

    .line 55
    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61
    :cond_11
    iget-object v2, p0, Landroid/support/v4/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 64
    .end local v0           #c:C
    :cond_17
    return-void
.end method
