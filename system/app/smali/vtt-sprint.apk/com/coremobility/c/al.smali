.class public final Lcom/coremobility/c/al;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/coremobility/integration/file/a;

.field protected b:Ljava/util/Vector;

.field protected c:I

.field protected d:I

.field protected e:[I

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:I

.field protected j:I

.field protected final k:I


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coremobility/c/al;->e:[I

    iput v2, p0, Lcom/coremobility/c/al;->k:I

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/c/al;->a:Lcom/coremobility/integration/file/a;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    iput v2, p0, Lcom/coremobility/c/al;->c:I

    iput v1, p0, Lcom/coremobility/c/al;->d:I

    iput v1, p0, Lcom/coremobility/c/al;->f:I

    iput-object v3, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    iput-object v3, p0, Lcom/coremobility/c/al;->h:Ljava/lang/String;

    iput v1, p0, Lcom/coremobility/c/al;->i:I

    iput v1, p0, Lcom/coremobility/c/al;->j:I

    return-void
.end method

.method private a(Lcom/coremobility/c/am;Lcom/coremobility/integration/h/d;I)I
    .registers 11

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    iget v0, p0, Lcom/coremobility/c/al;->d:I

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move v0, v4

    :goto_e
    if-gt p3, v5, :cond_7b

    add-int v0, p3, v5

    shr-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/am;

    iget v2, p1, Lcom/coremobility/c/am;->g:I

    iget v6, v0, Lcom/coremobility/c/am;->g:I

    if-eq v2, v6, :cond_2e

    iget v2, p1, Lcom/coremobility/c/am;->g:I

    iget v0, v0, Lcom/coremobility/c/am;->g:I

    sub-int v0, v2, v0

    :goto_28
    if-lez v0, :cond_6d

    add-int/lit8 v0, v1, 0x1

    move p3, v0

    goto :goto_e

    :cond_2e
    iget v2, p1, Lcom/coremobility/c/am;->f:I

    iget v6, v0, Lcom/coremobility/c/am;->f:I

    if-eq v2, v6, :cond_45

    sget-object v2, Lcom/coremobility/c/an;->p:[Ljava/lang/String;

    iget v6, p1, Lcom/coremobility/c/am;->f:I

    aget-object v2, v2, v6

    sget-object v6, Lcom/coremobility/c/an;->p:[Ljava/lang/String;

    iget v0, v0, Lcom/coremobility/c/am;->f:I

    aget-object v0, v6, v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_28

    :cond_45
    iget-object v2, p1, Lcom/coremobility/c/am;->e:Ljava/lang/String;

    iget-object v6, v0, Lcom/coremobility/c/am;->e:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_51

    move v0, v2

    goto :goto_28

    :cond_51
    invoke-static {p1}, Lcom/coremobility/c/al;->b(Lcom/coremobility/c/am;)Z

    move-result v2

    if-nez v2, :cond_5c

    move v2, v3

    :goto_58
    if-eqz v2, :cond_5e

    const/4 v0, -0x1

    goto :goto_28

    :cond_5c
    move v2, v4

    goto :goto_58

    :cond_5e
    invoke-static {v0}, Lcom/coremobility/c/al;->b(Lcom/coremobility/c/am;)Z

    move-result v0

    if-nez v0, :cond_69

    move v0, v3

    :goto_65
    if-eqz v0, :cond_6b

    move v0, v3

    goto :goto_28

    :cond_69
    move v0, v4

    goto :goto_65

    :cond_6b
    move v0, v4

    goto :goto_28

    :cond_6d
    if-gez v0, :cond_74

    add-int/lit8 v0, v1, -0x1

    move v5, v0

    move v0, v1

    goto :goto_e

    :cond_74
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    move v0, v1

    :cond_7b
    return v0
.end method

.method private static a(Lcom/coremobility/c/al;Lcom/coremobility/c/al;Z)V
    .registers 15

    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/coremobility/c/al;->f:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v11, :cond_40

    move v1, v2

    :goto_a
    move v4, v3

    :goto_b
    iget v0, p0, Lcom/coremobility/c/al;->d:I

    if-ge v4, v0, :cond_b8

    iget v0, p1, Lcom/coremobility/c/al;->d:I

    if-eqz v0, :cond_b8

    invoke-virtual {p0, v4}, Lcom/coremobility/c/al;->b(I)Lcom/coremobility/c/am;

    move-result-object v5

    invoke-static {v5}, Lcom/coremobility/c/al;->b(Lcom/coremobility/c/am;)Z

    move-result v0

    if-eqz v0, :cond_3c

    new-instance v0, Lcom/coremobility/integration/h/d;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v5, v0, v3}, Lcom/coremobility/c/al;->a(Lcom/coremobility/c/am;Lcom/coremobility/integration/h/d;I)I

    move-result v6

    iget-object v0, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_42

    move v0, v3

    :goto_35
    if-gez v0, :cond_3c

    if-nez v1, :cond_3c

    invoke-virtual {p0, v4}, Lcom/coremobility/c/al;->a(I)V

    :cond_3c
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_b

    :cond_40
    move v1, v3

    goto :goto_a

    :cond_42
    const/16 v7, 0x1a

    const-string v8, "CM+DMT %x%c%x %d %d/%s"

    const/4 v0, 0x6

    new-array v9, v0, [Ljava/lang/Object;

    iget-object v0, p1, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/am;

    iget v0, v0, Lcom/coremobility/c/am;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v3

    if-eqz p2, :cond_a5

    const/16 v0, 0x5b

    :goto_5d
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v9, v2

    iget v0, v5, Lcom/coremobility/c/am;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v11

    const/4 v0, 0x3

    iget v10, v5, Lcom/coremobility/c/am;->g:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    const/4 v0, 0x4

    iget v10, v5, Lcom/coremobility/c/am;->f:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    const/4 v0, 0x5

    iget-object v10, v5, Lcom/coremobility/c/am;->e:Ljava/lang/String;

    aput-object v10, v9, v0

    invoke-static {v7, v8, v9}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/am;

    iget v0, v0, Lcom/coremobility/c/am;->d:I

    iget v7, v5, Lcom/coremobility/c/am;->d:I

    if-gt v0, v7, :cond_a3

    iget-object v0, p1, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/am;

    iget v0, v0, Lcom/coremobility/c/am;->d:I

    iget v5, v5, Lcom/coremobility/c/am;->d:I

    if-ne v0, v5, :cond_a8

    if-nez p2, :cond_a8

    :cond_a3
    const/4 v0, -0x1

    goto :goto_35

    :cond_a5
    const/16 v0, 0x5d

    goto :goto_5d

    :cond_a8
    iget v0, p1, Lcom/coremobility/c/al;->f:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v11, :cond_b6

    move v0, v2

    :goto_af
    if-nez v0, :cond_b4

    invoke-virtual {p1, v6}, Lcom/coremobility/c/al;->a(I)V

    :cond_b4
    move v0, v2

    goto :goto_35

    :cond_b6
    move v0, v3

    goto :goto_af

    :cond_b8
    return-void
.end method

.method private a(Lcom/coremobility/c/am;I)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p2, :cond_37

    iget v0, p0, Lcom/coremobility/c/al;->d:I

    if-gt p2, v0, :cond_37

    move v0, v1

    :goto_9
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/al;->e:[I

    iget v3, p1, Lcom/coremobility/c/am;->f:I

    aget v0, v0, v3

    if-ltz v0, :cond_39

    iget-object v0, p0, Lcom/coremobility/c/al;->e:[I

    iget v3, p1, Lcom/coremobility/c/am;->f:I

    aget v0, v0, v3

    iget v3, p0, Lcom/coremobility/c/al;->d:I

    if-gt v0, v3, :cond_39

    :goto_1e
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/c/al;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/c/al;->d:I

    iget-object v0, p0, Lcom/coremobility/c/al;->e:[I

    iget v1, p1, Lcom/coremobility/c/am;->f:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    :cond_37
    move v0, v2

    goto :goto_9

    :cond_39
    move v1, v2

    goto :goto_1e
.end method

.method public static a(Lcom/coremobility/integration/h;S)V
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v3

    new-instance v1, Lcom/coremobility/integration/r;

    invoke-direct {v1}, Lcom/coremobility/integration/r;-><init>()V

    array-length v2, v0

    iput v2, v1, Lcom/coremobility/integration/r;->a:I

    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, v3}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;II)I

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {p0, v0, v1}, Lcom/coremobility/integration/file/a;->b(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v0

    if-eqz v0, :cond_20

    :cond_1d
    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_20
    return-void
.end method

.method private static b(Lcom/coremobility/c/am;)Z
    .registers 2

    iget v0, p0, Lcom/coremobility/c/am;->g:I

    if-nez v0, :cond_11

    iget-byte v0, p0, Lcom/coremobility/c/am;->h:B

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    return-void
.end method

.method public final a(I)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_63

    iget v0, p0, Lcom/coremobility/c/al;->d:I

    if-ge p1, v0, :cond_63

    move v0, v1

    :goto_9
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/c/al;->d:I

    if-ne v0, v1, :cond_65

    invoke-virtual {p0}, Lcom/coremobility/c/al;->c()V

    invoke-virtual {p0}, Lcom/coremobility/c/al;->b()V

    :cond_16
    :goto_16
    if-ltz p1, :cond_89

    iget v0, p0, Lcom/coremobility/c/al;->d:I

    if-ge p1, v0, :cond_89

    move v0, v1

    :goto_1d
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v3, p0, Lcom/coremobility/c/al;->e:[I

    iget-object v0, p0, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/am;

    iget v0, v0, Lcom/coremobility/c/am;->f:I

    aget v0, v3, v0

    if-lez v0, :cond_8b

    iget-object v3, p0, Lcom/coremobility/c/al;->e:[I

    iget-object v0, p0, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/am;

    iget v0, v0, Lcom/coremobility/c/am;->f:I

    aget v0, v3, v0

    iget v3, p0, Lcom/coremobility/c/al;->d:I

    if-gt v0, v3, :cond_8b

    :goto_42
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v1, p0, Lcom/coremobility/c/al;->e:[I

    iget-object v0, p0, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/am;

    iget v0, v0, Lcom/coremobility/c/am;->f:I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    iget v0, p0, Lcom/coremobility/c/al;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/coremobility/c/al;->d:I

    iget-object v0, p0, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    return-void

    :cond_63
    move v0, v2

    goto :goto_9

    :cond_65
    iget-object v0, p0, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/am;

    iget-short v0, v0, Lcom/coremobility/c/am;->a:S

    new-instance v3, Lcom/coremobility/integration/h;

    invoke-direct {v3}, Lcom/coremobility/integration/h;-><init>()V

    iget-object v4, p0, Lcom/coremobility/c/al;->h:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v4

    if-nez v4, :cond_85

    invoke-static {v3, v0}, Lcom/coremobility/c/al;->a(Lcom/coremobility/integration/h;S)V

    invoke-static {v3}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    move-result v0

    if-eqz v0, :cond_16

    :cond_85
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto :goto_16

    :cond_89
    move v0, v2

    goto :goto_1d

    :cond_8b
    move v1, v2

    goto :goto_42
.end method

.method public final a(Lcom/coremobility/c/al;)V
    .registers 4

    iget v0, p0, Lcom/coremobility/c/al;->d:I

    iget v1, p1, Lcom/coremobility/c/al;->d:I

    if-ge v0, v1, :cond_b

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/coremobility/c/al;->a(Lcom/coremobility/c/al;Lcom/coremobility/c/al;Z)V

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/coremobility/c/al;->a(Lcom/coremobility/c/al;Lcom/coremobility/c/al;Z)V

    goto :goto_a
.end method

.method public final a(Lcom/coremobility/c/am;)V
    .registers 5

    const/4 v1, 0x0

    new-instance v0, Lcom/coremobility/integration/h/d;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/coremobility/c/al;->a(Lcom/coremobility/c/am;Lcom/coremobility/integration/h/d;I)I

    move-result v2

    iget-object v0, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_19
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-direct {p0, p1, v2}, Lcom/coremobility/c/al;->a(Lcom/coremobility/c/am;I)V

    return-void

    :cond_20
    move v0, v1

    goto :goto_19
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    :goto_5
    return-void

    :cond_6
    iput-object p1, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    goto :goto_5
.end method

.method public final a(S)V
    .registers 3

    invoke-static {p1}, Lcom/coremobility/c/c;->d(S)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/coremobility/c/am;Lcom/coremobility/integration/h;)Z
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/coremobility/integration/h/d;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0, v2}, Lcom/coremobility/c/al;->a(Lcom/coremobility/c/am;Lcom/coremobility/integration/h/d;I)I

    move-result v3

    iget-object v0, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-direct {p0, p1, v3}, Lcom/coremobility/c/al;->a(Lcom/coremobility/c/am;I)V

    move v0, v1

    :goto_1d
    return v0

    :cond_1e
    iget-object v0, p0, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/am;

    const/16 v3, 0x1a

    const-string v4, "CM+DMT %x[%x %d %d/%s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v0, Lcom/coremobility/c/am;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget v6, p1, Lcom/coremobility/c/am;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x2

    iget v7, p1, Lcom/coremobility/c/am;->g:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, p1, Lcom/coremobility/c/am;->f:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p1, Lcom/coremobility/c/am;->e:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v3, v0, Lcom/coremobility/c/am;->d:I

    iget v4, p1, Lcom/coremobility/c/am;->d:I

    if-le v3, v4, :cond_64

    iget-short v0, p1, Lcom/coremobility/c/am;->a:S

    invoke-static {p2, v0}, Lcom/coremobility/c/al;->a(Lcom/coremobility/integration/h;S)V

    move v0, v2

    goto :goto_1d

    :cond_64
    iget-short v0, v0, Lcom/coremobility/c/am;->a:S

    invoke-static {p2, v0}, Lcom/coremobility/c/al;->a(Lcom/coremobility/integration/h;S)V

    move v0, v1

    goto :goto_1d
.end method

.method public final b(I)Lcom/coremobility/c/am;
    .registers 3

    if-ltz p1, :cond_6

    iget v0, p0, Lcom/coremobility/c/al;->d:I

    if-lt p1, v0, :cond_c

    :cond_6
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/am;

    goto :goto_b
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto :goto_c

    :cond_1a
    iget-object v0, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/c/c;->a(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_a

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/c/al;->h:Ljava/lang/String;

    :goto_9
    return-void

    :cond_a
    iput-object p1, p0, Lcom/coremobility/c/al;->h:Ljava/lang/String;

    goto :goto_9
.end method

.method public final b(S)V
    .registers 3

    invoke-static {p1}, Lcom/coremobility/c/c;->d(S)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/c/al;->h:Ljava/lang/String;

    return-void
.end method

.method public final c(I)I
    .registers 3

    iget-object v0, p0, Lcom/coremobility/c/al;->e:[I

    aget v0, v0, p1

    return v0
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/coremobility/c/al;->h:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/coremobility/c/al;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/coremobility/c/al;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_19

    :cond_14
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/coremobility/c/al;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/c/c;->a(Ljava/lang/String;)V

    goto :goto_18
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/coremobility/c/al;->d:I

    return v0
.end method

.method public final d(I)V
    .registers 2

    iput p1, p0, Lcom/coremobility/c/al;->i:I

    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final e(I)V
    .registers 2

    iput p1, p0, Lcom/coremobility/c/al;->j:I

    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/c/al;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final f(I)V
    .registers 3

    iget v0, p0, Lcom/coremobility/c/al;->f:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/coremobility/c/al;->f:I

    return-void
.end method

.method public final g()V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_16

    :cond_d
    iget v1, p0, Lcom/coremobility/c/al;->i:I

    if-nez v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    new-instance v2, Lcom/coremobility/integration/h;

    invoke-direct {v2}, Lcom/coremobility/integration/h;-><init>()V

    iget-object v1, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v3

    if-nez v3, :cond_40

    new-instance v4, Lcom/coremobility/integration/r;

    invoke-direct {v4}, Lcom/coremobility/integration/r;-><init>()V

    invoke-static {v2, v4}, Lcom/coremobility/integration/file/a;->b(Lcom/coremobility/integration/h;Lcom/coremobility/integration/r;)I

    move-result v1

    iget v4, v4, Lcom/coremobility/integration/r;->a:I

    iput v4, p0, Lcom/coremobility/c/al;->i:I

    :goto_30
    if-nez v3, :cond_3a

    invoke-static {v2}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    move-result v2

    if-nez v2, :cond_3a

    if-eqz v1, :cond_15

    :cond_3a
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput v0, p0, Lcom/coremobility/c/al;->i:I

    goto :goto_15

    :cond_40
    move v1, v0

    goto :goto_30
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lcom/coremobility/c/al;->i:I

    return v0
.end method

.method public final i()I
    .registers 2

    iget v0, p0, Lcom/coremobility/c/al;->j:I

    return v0
.end method

.method public final j()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/coremobility/c/al;->f:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final k()I
    .registers 2

    iget v0, p0, Lcom/coremobility/c/al;->f:I

    return v0
.end method

.method public final l()V
    .registers 2

    iget v0, p0, Lcom/coremobility/c/al;->f:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/coremobility/c/al;->f:I

    return-void
.end method
