.class public Ld/an;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ld/an;

.field public static final b:Ld/an;

.field public static final c:Ld/an;

.field public static final d:Ld/an;

.field public static final e:Ld/an;

.field public static final f:Ld/an;

.field public static final g:Ld/an;

.field public static final h:Ld/an;

.field public static final i:Ld/an;

.field public static final j:Ljava/util/Set;

.field public static final k:Ljava/util/Set;


# instance fields
.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Ld/an;

    invoke-direct {v0, v3}, Ld/an;-><init>(I)V

    sput-object v0, Ld/an;->a:Ld/an;

    new-instance v0, Ld/an;

    invoke-direct {v0, v4}, Ld/an;-><init>(I)V

    sput-object v0, Ld/an;->b:Ld/an;

    new-instance v0, Ld/an;

    invoke-direct {v0, v5}, Ld/an;-><init>(I)V

    sput-object v0, Ld/an;->c:Ld/an;

    new-instance v0, Ld/an;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ld/an;-><init>(I)V

    sput-object v0, Ld/an;->d:Ld/an;

    new-instance v0, Ld/an;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ld/an;-><init>(I)V

    sput-object v0, Ld/an;->e:Ld/an;

    new-instance v0, Ld/an;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ld/an;-><init>(I)V

    sput-object v0, Ld/an;->f:Ld/an;

    new-instance v0, Ld/an;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ld/an;-><init>(I)V

    sput-object v0, Ld/an;->g:Ld/an;

    new-instance v0, Ld/an;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ld/an;-><init>(I)V

    sput-object v0, Ld/an;->h:Ld/an;

    new-instance v0, Ld/an;

    const/high16 v1, -0x8000

    invoke-direct {v0, v1}, Ld/an;-><init>(I)V

    sput-object v0, Ld/an;->i:Ld/an;

    const/16 v0, 0x8

    new-array v0, v0, [Ld/an;

    sget-object v1, Ld/an;->a:Ld/an;

    aput-object v1, v0, v6

    sget-object v1, Ld/an;->b:Ld/an;

    aput-object v1, v0, v3

    sget-object v1, Ld/an;->c:Ld/an;

    aput-object v1, v0, v4

    sget-object v1, Ld/an;->d:Ld/an;

    aput-object v1, v0, v7

    sget-object v1, Ld/an;->e:Ld/an;

    aput-object v1, v0, v5

    const/4 v1, 0x5

    sget-object v2, Ld/an;->f:Ld/an;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ld/an;->g:Ld/an;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ld/an;->h:Ld/an;

    aput-object v2, v0, v1

    invoke-static {v0}, Ld/an;->a([Ld/an;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ld/an;->j:Ljava/util/Set;

    new-array v0, v5, [Ld/an;

    sget-object v1, Ld/an;->c:Ld/an;

    aput-object v1, v0, v6

    sget-object v1, Ld/an;->d:Ld/an;

    aput-object v1, v0, v3

    sget-object v1, Ld/an;->e:Ld/an;

    aput-object v1, v0, v4

    sget-object v1, Ld/an;->f:Ld/an;

    aput-object v1, v0, v7

    invoke-static {v0}, Ld/an;->a([Ld/an;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ld/an;->k:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld/an;->l:I

    return-void
.end method

.method static a(Ljava/util/Set;)I
    .registers 4

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/an;

    iget v0, v0, Ld/an;->l:I

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_6

    :cond_17
    return v1
.end method

.method static a(I)Ljava/util/Set;
    .registers 5

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sget-object v0, Ld/an;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/an;

    iget v3, v0, Ld/an;->l:I

    and-int/2addr v3, p0

    if-eqz v3, :cond_b

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_20
    return-object v1
.end method

.method public static varargs a([Ld/an;)Ljava/util/Set;
    .registers 5

    new-instance v1, Ljava/util/HashSet;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_12

    aget-object v3, p0, v0

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    return-object v1
.end method

.method static b(I)Ld/an;
    .registers 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    sget-object v0, Ld/an;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v3

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/an;

    iget v5, v0, Ld/an;->l:I

    and-int/2addr v5, p0

    if-eqz v5, :cond_28

    add-int/lit8 v1, v1, 0x1

    move v6, v1

    move-object v1, v0

    move v0, v6

    :goto_1f
    move-object v2, v1

    move v1, v0

    goto :goto_9

    :cond_22
    const/4 v0, 0x1

    if-ne v1, v0, :cond_26

    :goto_25
    return-object v2

    :cond_26
    move-object v2, v3

    goto :goto_25

    :cond_28
    move v0, v1

    move-object v1, v2

    goto :goto_1f
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Ld/an;->l:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Ld/an;->l:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
