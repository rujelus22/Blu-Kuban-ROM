.class Lcom/sec/android/app/calculator/History;
.super Ljava/lang/Object;
.source "History.java"


# instance fields
.field mEntries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/app/calculator/HistoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field mObserver:Landroid/widget/BaseAdapter;

.field mPos:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    .line 40
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/History;->clear()V

    .line 41
    return-void
.end method

.method constructor <init>(ILjava/io/DataInput;)V
    .registers 8
    .parameter "version"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    .line 44
    const/4 v2, 0x1

    if-lt p1, v2, :cond_28

    .line 45
    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 46
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    if-ge v0, v1, :cond_21

    .line 47
    iget-object v2, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    new-instance v3, Lcom/sec/android/app/calculator/HistoryEntry;

    invoke-direct {v3, p1, p2}, Lcom/sec/android/app/calculator/HistoryEntry;-><init>(ILjava/io/DataInput;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 49
    :cond_21
    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/calculator/History;->mPos:I

    .line 52
    return-void

    .line 51
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_28
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private notifyChanged()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/calculator/History;->mObserver:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_9

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/calculator/History;->mObserver:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 61
    :cond_9
    return-void
.end method


# virtual methods
.method clear()V
    .registers 5

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    new-instance v1, Lcom/sec/android/app/calculator/HistoryEntry;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/calculator/HistoryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/calculator/History;->mPos:I

    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/calculator/History;->notifyChanged()V

    .line 69
    return-void
.end method

.method current(I)Lcom/sec/android/app/calculator/HistoryEntry;
    .registers 3
    .parameter "pos"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/calculator/HistoryEntry;

    return-object v0
.end method

.method enter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "text"
    .parameter "result"

    .prologue
    .line 92
    iget-object v1, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_10

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 95
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 96
    .local v0, hisSize:I
    iget-object v1, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_1f

    .line 97
    const/4 v0, 0x1

    .line 99
    :cond_1f
    iget-object v1, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    new-instance v2, Lcom/sec/android/app/calculator/HistoryEntry;

    invoke-direct {v2, p1, p2}, Lcom/sec/android/app/calculator/HistoryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 100
    iget-object v1, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/calculator/History;->mPos:I

    .line 101
    invoke-direct {p0}, Lcom/sec/android/app/calculator/History;->notifyChanged()V

    .line 102
    return-void
.end method

.method public isHistory()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/History;->current(I)Lcom/sec/android/app/calculator/HistoryEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/HistoryEntry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_18

    :cond_17
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_17
.end method

.method write(Ljava/io/DataOutput;)V
    .registers 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v2, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 84
    iget-object v2, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/calculator/HistoryEntry;

    .line 85
    .local v0, entry:Lcom/sec/android/app/calculator/HistoryEntry;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/calculator/HistoryEntry;->write(Ljava/io/DataOutput;)V

    goto :goto_f

    .line 87
    .end local v0           #entry:Lcom/sec/android/app/calculator/HistoryEntry;
    :cond_1f
    iget v2, p0, Lcom/sec/android/app/calculator/History;->mPos:I

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 88
    return-void
.end method
