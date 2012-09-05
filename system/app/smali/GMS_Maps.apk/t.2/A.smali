.class public Lt/A;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lt/b;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Lt/b;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/A;->a:Ljava/util/List;

    iput-object p2, p0, Lt/A;->b:Lt/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lt/A;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/B;

    invoke-virtual {v0}, Lt/B;->c()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v0}, Lt/B;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    invoke-virtual {v0}, Lt/B;->f()Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt/A;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILt/aa;[Ljava/lang/String;Lt/Z;Ljava/lang/String;)Lt/A;
    .registers 15

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v7, v0

    :goto_b
    if-ge v7, v8, :cond_1a

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lt/B;->a(Ljava/io/DataInput;ILt/aa;[Ljava/lang/String;Lt/Z;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_b

    :cond_1a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2b

    invoke-static {p0, p1}, Lt/b;->a(Ljava/io/DataInput;I)Lt/b;

    move-result-object v0

    :goto_25
    new-instance v1, Lt/A;

    invoke-direct {v1, v6, v0}, Lt/A;-><init>(Ljava/util/List;Lt/b;)V

    return-object v1

    :cond_2b
    sget-object v0, Lt/b;->b:Lt/b;

    goto :goto_25
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lt/A;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Lt/B;
    .registers 3

    iget-object v0, p0, Lt/A;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/B;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lt/A;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c()Lt/b;
    .registers 2

    iget-object v0, p0, Lt/A;->b:Lt/b;

    return-object v0
.end method

.method public d()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lt/A;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/B;

    invoke-virtual {v0}, Lt/B;->l()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_8

    :cond_1b
    add-int/lit8 v0, v1, 0x18

    iget-object v1, p0, Lt/A;->c:Ljava/lang/String;

    invoke-static {v1}, Lt/H;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lt/A;->b:Lt/b;

    invoke-virtual {v1}, Lt/b;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_5

    const/4 v0, 0x1

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_4

    check-cast p1, Lt/A;

    iget-object v1, p0, Lt/A;->b:Lt/b;

    if-nez v1, :cond_24

    iget-object v1, p1, Lt/A;->b:Lt/b;

    if-nez v1, :cond_4

    :cond_1b
    iget-object v0, p0, Lt/A;->a:Ljava/util/List;

    iget-object v1, p1, Lt/A;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_24
    iget-object v1, p0, Lt/A;->b:Lt/b;

    iget-object v2, p1, Lt/A;->b:Lt/b;

    invoke-virtual {v1, v2}, Lt/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lt/A;->b:Lt/b;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lt/A;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_11
    iget-object v0, p0, Lt/A;->b:Lt/b;

    invoke-virtual {v0}, Lt/b;->hashCode()I

    move-result v0

    goto :goto_5
.end method
