.class public LZ/c;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:LZ/b;

.field private b:I

.field private c:I

.field private d:Ljava/util/Enumeration;


# direct methods
.method public constructor <init>(LZ/b;)V
    .registers 3

    iput-object p1, p0, LZ/c;->a:LZ/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LZ/c;->b:I

    const/high16 v0, -0x8000

    iput v0, p0, LZ/c;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, LZ/c;->d:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 4

    const/4 v1, 0x1

    iget v0, p0, LZ/c;->c:I

    const/high16 v2, -0x8000

    if-eq v0, v2, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    iget v0, p0, LZ/c;->b:I

    iget-object v2, p0, LZ/c;->a:LZ/b;

    invoke-static {v2}, LZ/b;->a(LZ/b;)I

    move-result v2

    if-gt v0, v2, :cond_3a

    :goto_13
    iget v0, p0, LZ/c;->b:I

    iget-object v2, p0, LZ/c;->a:LZ/b;

    invoke-static {v2}, LZ/b;->a(LZ/b;)I

    move-result v2

    if-gt v0, v2, :cond_3a

    iget-object v0, p0, LZ/c;->a:LZ/b;

    invoke-static {v0}, LZ/b;->b(LZ/b;)[Ljava/lang/Object;

    move-result-object v0

    iget v2, p0, LZ/c;->b:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_33

    iget v0, p0, LZ/c;->b:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, LZ/c;->b:I

    iput v0, p0, LZ/c;->c:I

    move v0, v1

    goto :goto_8

    :cond_33
    iget v0, p0, LZ/c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LZ/c;->b:I

    goto :goto_13

    :cond_3a
    iget-object v0, p0, LZ/c;->a:LZ/b;

    invoke-static {v0}, LZ/b;->c(LZ/b;)Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, LZ/c;->d:Ljava/util/Enumeration;

    if-nez v0, :cond_52

    iget-object v0, p0, LZ/c;->a:LZ/b;

    invoke-static {v0}, LZ/b;->c(LZ/b;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, LZ/c;->d:Ljava/util/Enumeration;

    :cond_52
    iget-object v0, p0, LZ/c;->d:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, LZ/c;->d:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, LZ/c;->c:I

    move v0, v1

    goto :goto_8

    :cond_6a
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public b()I
    .registers 3

    invoke-virtual {p0}, LZ/c;->a()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    iget v0, p0, LZ/c;->c:I

    const/high16 v1, -0x8000

    iput v1, p0, LZ/c;->c:I

    return v0
.end method
