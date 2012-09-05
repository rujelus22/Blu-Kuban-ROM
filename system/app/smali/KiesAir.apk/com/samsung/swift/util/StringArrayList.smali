.class public Lcom/samsung/swift/util/StringArrayList;
.super Ljava/lang/Object;
.source "StringArrayList.java"


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/swift/util/StringArrayList;->totalSize:I

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/swift/util/StringArrayList;->items:Ljava/util/ArrayList;

    .line 101
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/swift/util/StringArrayList;->totalSize:I

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/swift/util/StringArrayList;->items:Ljava/util/ArrayList;

    .line 105
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 3
    .parameter "field"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/swift/util/StringArrayList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {p0}, Lcom/samsung/swift/util/StringArrayList;->incTotalSize()V

    .line 143
    return-void
.end method

.method public asArray()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 109
    iget-object v1, p0, Lcom/samsung/swift/util/StringArrayList;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 110
    .local v0, array:[Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/swift/util/StringArrayList;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 111
    return-object v0
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/swift/util/StringArrayList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public incTotalSize()V
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Lcom/samsung/swift/util/StringArrayList;->totalSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/swift/util/StringArrayList;->totalSize:I

    .line 137
    return-void
.end method

.method public setTotalSize(I)V
    .registers 2
    .parameter "size"

    .prologue
    .line 131
    iput p1, p0, Lcom/samsung/swift/util/StringArrayList;->totalSize:I

    .line 132
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/swift/util/StringArrayList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public totalSize()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lcom/samsung/swift/util/StringArrayList;->totalSize:I

    return v0
.end method
