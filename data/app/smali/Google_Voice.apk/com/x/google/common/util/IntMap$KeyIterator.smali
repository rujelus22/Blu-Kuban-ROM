.class public Lcom/x/google/common/util/IntMap$KeyIterator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/google/common/util/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyIterator"
.end annotation


# instance fields
.field private currentKey:I

.field private higherKeyEnumerator:Ljava/util/Enumeration;

.field private oneAheadIndex:I

.field final synthetic this$0:Lcom/x/google/common/util/IntMap;


# direct methods
.method public constructor <init>(Lcom/x/google/common/util/IntMap;)V
    .registers 3

    iput-object p1, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->this$0:Lcom/x/google/common/util/IntMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->currentKey:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->higherKeyEnumerator:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    const/4 v1, 0x1

    iget v0, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->currentKey:I

    const/high16 v2, -0x8000

    if-eq v0, v2, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    iget-object v2, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->this$0:Lcom/x/google/common/util/IntMap;

    #getter for: Lcom/x/google/common/util/IntMap;->maxLowerKey:I
    invoke-static {v2}, Lcom/x/google/common/util/IntMap;->access$000(Lcom/x/google/common/util/IntMap;)I

    move-result v2

    if-gt v0, v2, :cond_3a

    :goto_13
    iget v0, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    iget-object v2, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->this$0:Lcom/x/google/common/util/IntMap;

    #getter for: Lcom/x/google/common/util/IntMap;->maxLowerKey:I
    invoke-static {v2}, Lcom/x/google/common/util/IntMap;->access$000(Lcom/x/google/common/util/IntMap;)I

    move-result v2

    if-gt v0, v2, :cond_3a

    iget-object v0, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->this$0:Lcom/x/google/common/util/IntMap;

    #getter for: Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/x/google/common/util/IntMap;->access$100(Lcom/x/google/common/util/IntMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v2, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    iput v0, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->currentKey:I

    move v0, v1

    goto :goto_8

    :cond_33
    iget v0, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    goto :goto_13

    :cond_3a
    iget-object v0, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->this$0:Lcom/x/google/common/util/IntMap;

    #getter for: Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/x/google/common/util/IntMap;->access$200(Lcom/x/google/common/util/IntMap;)Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->higherKeyEnumerator:Ljava/util/Enumeration;

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->this$0:Lcom/x/google/common/util/IntMap;

    #getter for: Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/x/google/common/util/IntMap;->access$200(Lcom/x/google/common/util/IntMap;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->higherKeyEnumerator:Ljava/util/Enumeration;

    :cond_52
    iget-object v0, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->higherKeyEnumerator:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->higherKeyEnumerator:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->currentKey:I

    move v0, v1

    goto :goto_8

    :cond_6a
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public next()I
    .registers 3

    invoke-virtual {p0}, Lcom/x/google/common/util/IntMap$KeyIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    iget v0, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->currentKey:I

    const/high16 v1, -0x8000

    iput v1, p0, Lcom/x/google/common/util/IntMap$KeyIterator;->currentKey:I

    return v0
.end method
