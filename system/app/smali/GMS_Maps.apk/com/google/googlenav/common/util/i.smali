.class public Lcom/google/googlenav/common/util/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/common/util/h;

.field private b:I

.field private c:I

.field private d:Ljava/util/Enumeration;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/util/h;)V
    .registers 3
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/googlenav/common/util/i;->a:Lcom/google/googlenav/common/util/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/common/util/i;->b:I

    .line 37
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlenav/common/util/i;->c:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/common/util/i;->d:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 44
    iget v0, p0, Lcom/google/googlenav/common/util/i;->c:I

    const/high16 v2, -0x8000

    if-eq v0, v2, :cond_9

    move v0, v1

    .line 66
    :goto_8
    return v0

    .line 47
    :cond_9
    iget v0, p0, Lcom/google/googlenav/common/util/i;->b:I

    iget-object v2, p0, Lcom/google/googlenav/common/util/i;->a:Lcom/google/googlenav/common/util/h;

    invoke-static {v2}, Lcom/google/googlenav/common/util/h;->a(Lcom/google/googlenav/common/util/h;)I

    move-result v2

    if-gt v0, v2, :cond_3a

    .line 48
    :goto_13
    iget v0, p0, Lcom/google/googlenav/common/util/i;->b:I

    iget-object v2, p0, Lcom/google/googlenav/common/util/i;->a:Lcom/google/googlenav/common/util/h;

    invoke-static {v2}, Lcom/google/googlenav/common/util/h;->a(Lcom/google/googlenav/common/util/h;)I

    move-result v2

    if-gt v0, v2, :cond_3a

    .line 49
    iget-object v0, p0, Lcom/google/googlenav/common/util/i;->a:Lcom/google/googlenav/common/util/h;

    invoke-static {v0}, Lcom/google/googlenav/common/util/h;->b(Lcom/google/googlenav/common/util/h;)[Ljava/lang/Object;

    move-result-object v0

    iget v2, p0, Lcom/google/googlenav/common/util/i;->b:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_33

    .line 51
    iget v0, p0, Lcom/google/googlenav/common/util/i;->b:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/googlenav/common/util/i;->b:I

    iput v0, p0, Lcom/google/googlenav/common/util/i;->c:I

    move v0, v1

    .line 52
    goto :goto_8

    .line 48
    :cond_33
    iget v0, p0, Lcom/google/googlenav/common/util/i;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/common/util/i;->b:I

    goto :goto_13

    .line 56
    :cond_3a
    iget-object v0, p0, Lcom/google/googlenav/common/util/i;->a:Lcom/google/googlenav/common/util/h;

    invoke-static {v0}, Lcom/google/googlenav/common/util/h;->c(Lcom/google/googlenav/common/util/h;)Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 57
    iget-object v0, p0, Lcom/google/googlenav/common/util/i;->d:Ljava/util/Enumeration;

    if-nez v0, :cond_52

    .line 58
    iget-object v0, p0, Lcom/google/googlenav/common/util/i;->a:Lcom/google/googlenav/common/util/h;

    invoke-static {v0}, Lcom/google/googlenav/common/util/h;->c(Lcom/google/googlenav/common/util/h;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/common/util/i;->d:Ljava/util/Enumeration;

    .line 60
    :cond_52
    iget-object v0, p0, Lcom/google/googlenav/common/util/i;->d:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 61
    iget-object v0, p0, Lcom/google/googlenav/common/util/i;->d:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/common/util/i;->c:I

    move v0, v1

    .line 63
    goto :goto_8

    .line 66
    :cond_6a
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public b()I
    .registers 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/googlenav/common/util/i;->a()Z

    move-result v0

    if-nez v0, :cond_c

    .line 75
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 77
    :cond_c
    iget v0, p0, Lcom/google/googlenav/common/util/i;->c:I

    .line 78
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/google/googlenav/common/util/i;->c:I

    .line 79
    return v0
.end method
