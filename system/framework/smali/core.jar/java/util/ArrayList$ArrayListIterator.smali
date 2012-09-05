.class Ljava/util/ArrayList$ArrayListIterator;
.super Ljava/lang/Object;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private expectedModCount:I

.field private remaining:I

.field private removalIndex:I

.field final synthetic this$0:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;)V
    .registers 3
    .parameter

    .prologue
    .line 551
    .local p0, this:Ljava/util/ArrayList$ArrayListIterator;,"Ljava/util/ArrayList<TE;>.ArrayListIterator;"
    iput-object p1, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iget-object v0, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->size:I

    iput v0, p0, Ljava/util/ArrayList$ArrayListIterator;->remaining:I

    .line 556
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayList$ArrayListIterator;->removalIndex:I

    .line 559
    iget-object v0, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$ArrayListIterator;->expectedModCount:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 551
    .local p0, this:Ljava/util/ArrayList$ArrayListIterator;,"Ljava/util/ArrayList<TE;>.ArrayListIterator;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList$ArrayListIterator;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 562
    .local p0, this:Ljava/util/ArrayList$ArrayListIterator;,"Ljava/util/ArrayList<TE;>.ArrayListIterator;"
    iget v0, p0, Ljava/util/ArrayList$ArrayListIterator;->remaining:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 566
    .local p0, this:Ljava/util/ArrayList$ArrayListIterator;,"Ljava/util/ArrayList<TE;>.ArrayListIterator;"
    iget-object v0, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    .line 567
    .local v0, ourList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    iget v1, p0, Ljava/util/ArrayList$ArrayListIterator;->remaining:I

    .line 568
    .local v1, rem:I
    iget v2, v0, Ljava/util/AbstractList;->modCount:I

    iget v3, p0, Ljava/util/ArrayList$ArrayListIterator;->expectedModCount:I

    if-eq v2, v3, :cond_10

    .line 569
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 571
    :cond_10
    if-nez v1, :cond_18

    .line 572
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 574
    :cond_18
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ljava/util/ArrayList$ArrayListIterator;->remaining:I

    .line 575
    iget-object v2, v0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v3, v0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v3, v1

    iput v3, p0, Ljava/util/ArrayList$ArrayListIterator;->removalIndex:I

    aget-object v2, v2, v3

    return-object v2
.end method

.method public remove()V
    .registers 5

    .prologue
    .line 579
    .local p0, this:Ljava/util/ArrayList$ArrayListIterator;,"Ljava/util/ArrayList<TE;>.ArrayListIterator;"
    iget-object v2, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    iget-object v0, v2, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 580
    .local v0, a:[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayList$ArrayListIterator;->removalIndex:I

    .line 581
    .local v1, removalIdx:I
    iget-object v2, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    iget v3, p0, Ljava/util/ArrayList$ArrayListIterator;->expectedModCount:I

    if-eq v2, v3, :cond_14

    .line 582
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 584
    :cond_14
    if-gez v1, :cond_1c

    .line 585
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 587
    :cond_1c
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Ljava/util/ArrayList$ArrayListIterator;->remaining:I

    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 588
    iget-object v2, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    iget v3, v2, Ljava/util/ArrayList;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Ljava/util/ArrayList;->size:I

    const/4 v2, 0x0

    aput-object v2, v0, v3

    .line 589
    const/4 v2, -0x1

    iput v2, p0, Ljava/util/ArrayList$ArrayListIterator;->removalIndex:I

    .line 590
    iget-object v2, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    iget v3, v2, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljava/util/AbstractList;->modCount:I

    iput v3, p0, Ljava/util/ArrayList$ArrayListIterator;->expectedModCount:I

    .line 591
    return-void
.end method
