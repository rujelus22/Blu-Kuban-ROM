.class public Lgnu/inet/nntp/LineIterator;
.super Ljava/lang/Object;
.source "LineIterator.java"

# interfaces
.implements Lgnu/inet/nntp/PendingData;
.implements Ljava/util/Iterator;


# instance fields
.field connection:Lgnu/inet/nntp/NNTPConnection;

.field current:Ljava/lang/String;

.field doneRead:Z


# direct methods
.method constructor <init>(Lgnu/inet/nntp/NNTPConnection;)V
    .registers 3
    .parameter

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/inet/nntp/LineIterator;->doneRead:Z

    .line 62
    iput-object p1, p0, Lgnu/inet/nntp/LineIterator;->connection:Lgnu/inet/nntp/NNTPConnection;

    .line 63
    return-void
.end method


# virtual methods
.method doRead()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-boolean v0, p0, Lgnu/inet/nntp/LineIterator;->doneRead:Z

    if-eqz v0, :cond_5

    .line 82
    :goto_4
    return-void

    .line 72
    :cond_5
    iget-object v0, p0, Lgnu/inet/nntp/LineIterator;->connection:Lgnu/inet/nntp/NNTPConnection;

    invoke-virtual {v0}, Lgnu/inet/nntp/NNTPConnection;->read()Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string v1, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/inet/nntp/LineIterator;->current:Ljava/lang/String;

    .line 81
    :goto_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/inet/nntp/LineIterator;->doneRead:Z

    goto :goto_4

    .line 79
    :cond_1a
    iput-object v0, p0, Lgnu/inet/nntp/LineIterator;->current:Ljava/lang/String;

    goto :goto_16
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 91
    :try_start_1
    invoke-virtual {p0}, Lgnu/inet/nntp/LineIterator;->doRead()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_a

    .line 97
    iget-object v1, p0, Lgnu/inet/nntp/LineIterator;->current:Ljava/lang/String;

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    :goto_9
    return v0

    .line 93
    :catch_a
    move-exception v1

    goto :goto_9
.end method

.method public next()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 107
    :try_start_0
    invoke-virtual {p0}, Lgnu/inet/nntp/LineIterator;->nextLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 109
    :catch_5
    move-exception v0

    .line 111
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I/O error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextLine()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Lgnu/inet/nntp/LineIterator;->doRead()V

    .line 122
    iget-object v0, p0, Lgnu/inet/nntp/LineIterator;->current:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 124
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 126
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/inet/nntp/LineIterator;->doneRead:Z

    .line 127
    iget-object v0, p0, Lgnu/inet/nntp/LineIterator;->current:Ljava/lang/String;

    return-object v0
.end method

.method public readToEOF()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    :cond_0
    invoke-virtual {p0}, Lgnu/inet/nntp/LineIterator;->doRead()V

    .line 148
    iget-object v0, p0, Lgnu/inet/nntp/LineIterator;->current:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 149
    return-void
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
