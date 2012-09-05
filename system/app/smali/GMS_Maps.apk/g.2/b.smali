.class public Lg/b;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field private final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lg/b;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/b;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lg/b;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lg/b;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Ljava/io/DataInputStream;)Lg/b;
    .registers 6

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-instance v2, Lg/b;

    invoke-direct {v2, v1}, Lg/b;-><init>(I)V

    invoke-virtual {v2, v0}, Lg/b;->a(I)V

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v1, :cond_1f

    invoke-static {p0}, Lg/c;->a(Ljava/io/DataInputStream;)Lg/c;

    move-result-object v3

    iget-object v4, v2, Lg/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1f
    return-object v2
.end method


# virtual methods
.method public a([F)F
    .registers 5

    iget v0, p0, Lg/b;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not compute value of regression tree. No root of the tree was defined"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget v0, p0, Lg/b;->a:I

    :goto_f
    iget-object v1, p0, Lg/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/c;

    invoke-static {v0}, Lg/c;->a(Lg/c;)Lg/d;

    move-result-object v1

    sget-object v2, Lg/d;->a:Lg/d;

    if-ne v1, v2, :cond_28

    invoke-static {v0}, Lg/c;->b(Lg/c;)Lg/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/e;->a([F)F

    move-result v0

    return v0

    :cond_28
    invoke-static {v0}, Lg/c;->c(Lg/c;)I

    move-result v1

    aget v1, p1, v1

    invoke-static {v0}, Lg/c;->d(Lg/c;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3b

    invoke-static {v0}, Lg/c;->e(Lg/c;)I

    move-result v0

    goto :goto_f

    :cond_3b
    invoke-static {v0}, Lg/c;->f(Lg/c;)I

    move-result v0

    goto :goto_f
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lg/b;->a:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lg/b;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lg/b;

    iget v2, p0, Lg/b;->a:I

    iget v3, p1, Lg/b;->a:I

    if-ne v2, v3, :cond_1d

    iget-object v2, p0, Lg/b;->b:Ljava/util/ArrayList;

    iget-object v3, p1, Lg/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1d
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lg/b;->a:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Root: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lg/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    :goto_25
    iget-object v0, p0, Lg/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_52

    const-string v4, "(%d) %s\n"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const/4 v6, 0x1

    iget-object v0, p0, Lg/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/c;

    invoke-virtual {v0}, Lg/c;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    :cond_52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
