.class public abstract LA/a;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Ljava/util/LinkedList;

.field protected b:I

.field public c:Ljava/lang/Object;

.field public d:I

.field private final e:LA/e;

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:I


# direct methods
.method public constructor <init>(IILA/e;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LA/a;->a:Ljava/util/LinkedList;

    iput p2, p0, LA/a;->h:I

    const/4 v0, 0x1

    iget v1, p0, LA/a;->h:I

    shl-int/2addr v0, v1

    iput v0, p0, LA/a;->f:I

    iget v0, p0, LA/a;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LA/a;->g:I

    iput-object p3, p0, LA/a;->e:LA/e;

    invoke-direct {p0, p1}, LA/a;->d(I)I

    move-result v0

    iput v0, p0, LA/a;->i:I

    invoke-virtual {p0}, LA/a;->a()V

    return-void
.end method

.method private d(I)I
    .registers 4

    iget v0, p0, LA/a;->h:I

    shr-int v1, p1, v0

    iget v0, p0, LA/a;->g:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    add-int/2addr v0, v1

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .registers 5

    iget v0, p0, LA/a;->i:I

    if-le p1, v0, :cond_2f

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index out of bound : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(index) > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LA/a;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(size)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    :goto_2f
    iget-object v0, p0, LA/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt p1, v0, :cond_43

    iget-object v0, p0, LA/a;->a:Ljava/util/LinkedList;

    iget-object v1, p0, LA/a;->e:LA/e;

    invoke-virtual {v1}, LA/e;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_43
    iget-object v0, p0, LA/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, LA/a;->b:I

    iput v0, p0, LA/a;->d:I

    invoke-virtual {p0, v0}, LA/a;->a(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LA/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0}, LA/a;->a()V

    move v1, v2

    :goto_5
    if-ge v1, p2, :cond_2a

    iget v0, p0, LA/a;->f:I

    iget v3, p0, LA/a;->f:I

    add-int/2addr v3, v1

    if-le v3, p2, :cond_10

    sub-int v0, p2, v1

    :cond_10
    iget v3, p0, LA/a;->b:I

    invoke-virtual {p0, v3}, LA/a;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v0

    iget v3, p0, LA/a;->f:I

    if-ne v0, v3, :cond_27

    iget v0, p0, LA/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LA/a;->b:I

    iput v2, p0, LA/a;->d:I

    goto :goto_5

    :cond_27
    iput v0, p0, LA/a;->d:I

    goto :goto_5

    :cond_2a
    return-void
.end method

.method public b()I
    .registers 3

    iget-object v0, p0, LA/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, LA/a;->h:I

    shl-int/2addr v0, v1

    return v0
.end method

.method public b(I)V
    .registers 7

    iget v0, p0, LA/a;->f:I

    if-lt p1, v0, :cond_2a

    iget v0, p0, LA/a;->g:I

    and-int/2addr v0, p1

    iget v1, p0, LA/a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LA/a;->b:I

    iget v1, p0, LA/a;->b:I

    iget v2, p0, LA/a;->i:I

    if-eq v1, v2, :cond_27

    iget-object v1, p0, LA/a;->c:Ljava/lang/Object;

    iget v2, p0, LA/a;->b:I

    invoke-virtual {p0, v2}, LA/a;->a(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, LA/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_27

    iget v2, p0, LA/a;->f:I

    iget-object v3, p0, LA/a;->c:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_27
    iput v0, p0, LA/a;->d:I

    :goto_29
    return-void

    :cond_2a
    iput p1, p0, LA/a;->d:I

    goto :goto_29
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, LA/a;->e:LA/e;

    iget-object v1, p0, LA/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, LA/e;->a(Ljava/util/List;)V

    iget-object v0, p0, LA/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public c(I)V
    .registers 4

    invoke-direct {p0, p1}, LA/a;->d(I)I

    move-result v0

    iget v1, p0, LA/a;->i:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LA/a;->i:I

    return-void
.end method
