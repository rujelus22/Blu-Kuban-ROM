.class public final Lah/i;
.super Ljava/lang/Object;

# interfaces
.implements Laf/j;
.implements Lah/g;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lah/f;

.field private final c:Ljava/lang/Integer;

.field private volatile d:[Lah/f;


# direct methods
.method public constructor <init>(Lah/f;C)V
    .registers 4

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lah/i;-><init>(Lah/f;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lah/f;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lah/i;-><init>(Ljava/lang/Integer;Lah/f;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Integer;Lah/f;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lah/i;->b:Lah/f;

    iput-object p1, p0, Lah/i;->c:Ljava/lang/Integer;

    iput-object p3, p0, Lah/i;->a:Ljava/lang/String;

    if-nez p2, :cond_10

    if-eqz p1, :cond_10

    invoke-static {p0}, Laf/l;->a(Laf/j;)V

    :cond_10
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lah/i;-><init>(Ljava/lang/Integer;Lah/f;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lah/f;I)Lah/f;
    .registers 10

    iget-object v0, p0, Lah/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    :goto_9
    return-object p1

    :cond_a
    invoke-interface {p1}, Lah/f;->a()I

    move-result v0

    iget-object v1, p0, Lah/i;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    div-int v3, v0, v1

    invoke-interface {p1}, Lah/f;->b()I

    move-result v4

    mul-int v1, p2, v3

    const/4 v2, 0x0

    move-object v0, p1

    move v5, v3

    move v6, v4

    invoke-interface/range {v0 .. v6}, Lah/f;->a(IIIIII)Lah/f;

    move-result-object p1

    goto :goto_9
.end method

.method private a(Lah/f;)V
    .registers 5

    iget-object v0, p0, Lah/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [Lah/f;

    const/4 v0, 0x0

    :goto_9
    array-length v2, v1

    if-ge v0, v2, :cond_15

    invoke-direct {p0, p1, v0}, Lah/i;->a(Lah/f;I)Lah/f;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_15
    iput-object v1, p0, Lah/i;->d:[Lah/f;

    return-void
.end method

.method private c()[Lah/f;
    .registers 2

    iget-object v0, p0, Lah/i;->d:[Lah/f;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lah/i;->b()V

    :cond_7
    iget-object v0, p0, Lah/i;->d:[Lah/f;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lah/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lah/i;->d:[Lah/f;

    return-void
.end method

.method public a(C)Z
    .registers 3

    iget-object v0, p0, Lah/i;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public a(CLah/e;II)Z
    .registers 6

    invoke-virtual {p0, p1}, Lah/i;->e(C)Lah/f;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-interface {p2, v0, p3, p4}, Lah/e;->a(Lah/f;II)V

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public b(C)I
    .registers 3

    invoke-virtual {p0, p1}, Lah/i;->a(C)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lah/i;->e(C)Lah/f;

    move-result-object v0

    invoke-interface {v0}, Lah/f;->b()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method protected b()V
    .registers 5

    iget-object v0, p0, Lah/i;->b:Lah/f;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lah/i;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1c

    :try_start_8
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->o()Lah/h;

    move-result-object v0

    iget-object v1, p0, Lah/i;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lah/h;->b(I)Lah/f;

    move-result-object v0

    iput-object v0, p0, Lah/i;->b:Lah/f;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1c} :catch_7a

    :cond_1c
    iget-object v0, p0, Lah/i;->b:Lah/f;

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lah/i;->b:Lah/f;

    invoke-interface {v0}, Lah/f;->a()I

    move-result v0

    iget-object v1, p0, Lah/i;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/2addr v0, v1

    if-eqz v0, :cond_a9

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image strip "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lah/i;->c:Ljava/lang/Integer;

    if-nez v0, :cond_85

    const-string v0, ""

    :goto_42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " width "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lah/i;->b:Lah/f;

    invoke-interface {v2}, Lah/f;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "divisible by number of icons "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lah/i;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": find it in R.java"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_7a
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lah/i;->c:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    :cond_a9
    iget-object v0, p0, Lah/i;->b:Lah/f;

    invoke-direct {p0, v0}, Lah/i;->a(Lah/f;)V

    :cond_ae
    return-void
.end method

.method public c(C)I
    .registers 3

    invoke-virtual {p0, p1}, Lah/i;->a(C)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lah/i;->e(C)Lah/f;

    move-result-object v0

    invoke-interface {v0}, Lah/f;->a()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public d(C)I
    .registers 3

    const/4 v0, 0x2

    return v0
.end method

.method public e(C)Lah/f;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lah/i;->a(C)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lah/i;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_10

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    invoke-direct {p0}, Lah/i;->c()[Lah/f;

    move-result-object v0

    aget-object v0, v0, v1

    goto :goto_f
.end method

.method public g()Lar/k;
    .registers 7

    const/4 v0, 0x0

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v1, p0, Lah/i;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v1, p0, Lah/i;->b:Lah/f;

    if-eqz v1, :cond_1f

    new-instance v1, Lar/k;

    const-string v4, "imageStrip"

    iget-object v5, p0, Lah/i;->b:Lah/f;

    invoke-interface {v5}, Lah/f;->g()I

    move-result v5

    invoke-direct {v1, v4, v5}, Lar/k;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    iget-object v1, p0, Lah/i;->d:[Lah/f;

    if-eqz v1, :cond_3f

    move v1, v0

    :goto_24
    iget-object v4, p0, Lah/i;->d:[Lah/f;

    array-length v4, v4

    if-ge v0, v4, :cond_35

    iget-object v4, p0, Lah/i;->d:[Lah/f;

    aget-object v4, v4, v0

    invoke-interface {v4}, Lah/f;->g()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_35
    new-instance v0, Lar/k;

    const-string v4, "icons"

    invoke-direct {v0, v4, v1}, Lar/k;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3f
    iget-object v0, p0, Lah/i;->c:Ljava/lang/Integer;

    if-nez v0, :cond_4b

    const-string v0, "ImageStripIconProvider"

    :goto_45
    new-instance v1, Lar/k;

    invoke-direct {v1, v0, v3, v2}, Lar/k;-><init>(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Image_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lah/i;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_45
.end method
