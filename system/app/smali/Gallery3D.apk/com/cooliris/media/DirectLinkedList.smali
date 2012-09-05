.class public final Lcom/cooliris/media/DirectLinkedList;
.super Ljava/lang/Object;
.source "DirectLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/DirectLinkedList$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHead:Lcom/cooliris/media/DirectLinkedList$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cooliris/media/DirectLinkedList$Entry",
            "<TE;>;"
        }
    .end annotation
.end field

.field private mSize:I

.field private mTail:Lcom/cooliris/media/DirectLinkedList$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cooliris/media/DirectLinkedList$Entry",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    .local p0, this:Lcom/cooliris/media/DirectLinkedList;,"Lcom/cooliris/media/DirectLinkedList<TE;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/DirectLinkedList;->mSize:I

    .line 42
    return-void
.end method


# virtual methods
.method public add(Lcom/cooliris/media/DirectLinkedList$Entry;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cooliris/media/DirectLinkedList$Entry",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lcom/cooliris/media/DirectLinkedList;,"Lcom/cooliris/media/DirectLinkedList<TE;>;"
    .local p1, entry:Lcom/cooliris/media/DirectLinkedList$Entry;,"Lcom/cooliris/media/DirectLinkedList$Entry<TE;>;"
    iget-object v0, p0, Lcom/cooliris/media/DirectLinkedList;->mTail:Lcom/cooliris/media/DirectLinkedList$Entry;

    .line 55
    .local v0, tail:Lcom/cooliris/media/DirectLinkedList$Entry;,"Lcom/cooliris/media/DirectLinkedList$Entry<TE;>;"
    if-eqz v0, :cond_14

    .line 56
    iput-object p1, v0, Lcom/cooliris/media/DirectLinkedList$Entry;->next:Lcom/cooliris/media/DirectLinkedList$Entry;

    .line 57
    iput-object v0, p1, Lcom/cooliris/media/DirectLinkedList$Entry;->previous:Lcom/cooliris/media/DirectLinkedList$Entry;

    .line 61
    :goto_8
    iput-object p1, p0, Lcom/cooliris/media/DirectLinkedList;->mTail:Lcom/cooliris/media/DirectLinkedList$Entry;

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/cooliris/media/DirectLinkedList$Entry;->inserted:Z

    .line 63
    iget v1, p0, Lcom/cooliris/media/DirectLinkedList;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/cooliris/media/DirectLinkedList;->mSize:I

    .line 64
    return-void

    .line 59
    :cond_14
    iput-object p1, p0, Lcom/cooliris/media/DirectLinkedList;->mHead:Lcom/cooliris/media/DirectLinkedList$Entry;

    goto :goto_8
.end method

.method public clear()V
    .registers 2

    .prologue
    .local p0, this:Lcom/cooliris/media/DirectLinkedList;,"Lcom/cooliris/media/DirectLinkedList<TE;>;"
    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/cooliris/media/DirectLinkedList;->mHead:Lcom/cooliris/media/DirectLinkedList$Entry;

    .line 99
    iput-object v0, p0, Lcom/cooliris/media/DirectLinkedList;->mTail:Lcom/cooliris/media/DirectLinkedList$Entry;

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/DirectLinkedList;->mSize:I

    .line 101
    return-void
.end method

.method public getHead()Lcom/cooliris/media/DirectLinkedList$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cooliris/media/DirectLinkedList$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, this:Lcom/cooliris/media/DirectLinkedList;,"Lcom/cooliris/media/DirectLinkedList<TE;>;"
    iget-object v0, p0, Lcom/cooliris/media/DirectLinkedList;->mHead:Lcom/cooliris/media/DirectLinkedList$Entry;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 45
    .local p0, this:Lcom/cooliris/media/DirectLinkedList;,"Lcom/cooliris/media/DirectLinkedList<TE;>;"
    iget v0, p0, Lcom/cooliris/media/DirectLinkedList;->mSize:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public remove(Lcom/cooliris/media/DirectLinkedList$Entry;)Lcom/cooliris/media/DirectLinkedList$Entry;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cooliris/media/DirectLinkedList$Entry",
            "<TE;>;)",
            "Lcom/cooliris/media/DirectLinkedList$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/cooliris/media/DirectLinkedList;,"Lcom/cooliris/media/DirectLinkedList<TE;>;"
    .local p1, entry:Lcom/cooliris/media/DirectLinkedList$Entry;,"Lcom/cooliris/media/DirectLinkedList$Entry<TE;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 68
    iget-object v1, p1, Lcom/cooliris/media/DirectLinkedList$Entry;->previous:Lcom/cooliris/media/DirectLinkedList$Entry;

    .line 69
    .local v1, previous:Lcom/cooliris/media/DirectLinkedList$Entry;,"Lcom/cooliris/media/DirectLinkedList$Entry<TE;>;"
    iget-object v0, p1, Lcom/cooliris/media/DirectLinkedList$Entry;->next:Lcom/cooliris/media/DirectLinkedList$Entry;

    .line 70
    .local v0, next:Lcom/cooliris/media/DirectLinkedList$Entry;,"Lcom/cooliris/media/DirectLinkedList$Entry<TE;>;"
    if-eqz v0, :cond_21

    .line 71
    iput-object v1, v0, Lcom/cooliris/media/DirectLinkedList$Entry;->previous:Lcom/cooliris/media/DirectLinkedList$Entry;

    .line 72
    iput-object v2, p1, Lcom/cooliris/media/DirectLinkedList$Entry;->next:Lcom/cooliris/media/DirectLinkedList$Entry;

    .line 76
    :goto_c
    if-eqz v1, :cond_24

    .line 77
    iput-object v0, v1, Lcom/cooliris/media/DirectLinkedList$Entry;->next:Lcom/cooliris/media/DirectLinkedList$Entry;

    .line 78
    iput-object v2, p1, Lcom/cooliris/media/DirectLinkedList$Entry;->previous:Lcom/cooliris/media/DirectLinkedList$Entry;

    .line 82
    :goto_12
    iput-boolean v3, p1, Lcom/cooliris/media/DirectLinkedList$Entry;->inserted:Z

    .line 83
    iget v2, p0, Lcom/cooliris/media/DirectLinkedList;->mSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/cooliris/media/DirectLinkedList;->mSize:I

    .line 84
    iget v2, p0, Lcom/cooliris/media/DirectLinkedList;->mSize:I

    if-gez v2, :cond_20

    .line 85
    iput v3, p0, Lcom/cooliris/media/DirectLinkedList;->mSize:I

    .line 86
    :cond_20
    return-object v0

    .line 74
    :cond_21
    iput-object v1, p0, Lcom/cooliris/media/DirectLinkedList;->mTail:Lcom/cooliris/media/DirectLinkedList$Entry;

    goto :goto_c

    .line 80
    :cond_24
    iput-object v0, p0, Lcom/cooliris/media/DirectLinkedList;->mHead:Lcom/cooliris/media/DirectLinkedList$Entry;

    goto :goto_12
.end method

.method public size()I
    .registers 2

    .prologue
    .line 49
    .local p0, this:Lcom/cooliris/media/DirectLinkedList;,"Lcom/cooliris/media/DirectLinkedList<TE;>;"
    iget v0, p0, Lcom/cooliris/media/DirectLinkedList;->mSize:I

    return v0
.end method
