.class Lcom/sec/android/app/calculator/HistoryEntry;
.super Ljava/lang/Object;
.source "HistoryEntry.java"


# instance fields
.field private mBase:Ljava/lang/String;

.field private mEdited:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/io/DataInput;)V
    .registers 6
    .parameter "version"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    if-lt p1, v0, :cond_13

    .line 37
    invoke-interface {p2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/calculator/HistoryEntry;->mBase:Ljava/lang/String;

    .line 38
    invoke-interface {p2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/calculator/HistoryEntry;->mEdited:Ljava/lang/String;

    .line 41
    return-void

    .line 40
    :cond_13
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "str"
    .parameter "rst"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sec/android/app/calculator/HistoryEntry;->mBase:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/sec/android/app/calculator/HistoryEntry;->mEdited:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method getBase()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/app/calculator/HistoryEntry;->mBase:Ljava/lang/String;

    return-object v0
.end method

.method getEdited()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/calculator/HistoryEntry;->mEdited:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/calculator/HistoryEntry;->mBase:Ljava/lang/String;

    return-object v0
.end method

.method write(Ljava/io/DataOutput;)V
    .registers 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/calculator/HistoryEntry;->mBase:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/sec/android/app/calculator/HistoryEntry;->mEdited:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 46
    return-void
.end method
