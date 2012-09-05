.class La/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[Z

.field private final c:[D

.field private final d:[D

.field private e:I


# direct methods
.method private constructor <init>()V
    .registers 5

    const/4 v1, 0x0

    const/4 v3, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, La/c;->a:[Ljava/lang/String;

    new-array v0, v3, [Z

    iput-object v0, p0, La/c;->b:[Z

    new-array v0, v3, [D

    iput-object v0, p0, La/c;->c:[D

    new-array v0, v3, [D

    iput-object v0, p0, La/c;->d:[D

    iput v1, p0, La/c;->e:I

    move v0, v1

    :goto_18
    if-ge v0, v3, :cond_21

    iget-object v2, p0, La/c;->b:[Z

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_21
    return-void
.end method

.method synthetic constructor <init>(La/b;)V
    .registers 2

    invoke-direct {p0}, La/c;-><init>()V

    return-void
.end method

.method private a(Le/b;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Le/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Le/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Le/b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Le/b;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(La/c;Le/b;Li/B;)V
    .registers 3

    invoke-direct {p0, p1, p2}, La/c;->b(Le/b;Li/B;)V

    return-void
.end method

.method private a(Le/b;Li/B;)Z
    .registers 14

    const/4 v8, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v8

    :goto_6
    return v0

    :cond_7
    invoke-direct {p0, p1}, La/c;->a(Le/b;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2}, Li/B;->b()D

    move-result-wide v4

    invoke-interface {p2}, Li/B;->c()D

    move-result-wide v6

    move v9, v8

    :goto_14
    const/4 v0, 0x5

    if-ge v9, v0, :cond_3f

    iget-object v0, p0, La/c;->b:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_3b

    iget-object v0, p0, La/c;->a:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, La/c;->c:[D

    aget-wide v0, v0, v9

    iget-object v2, p0, La/c;->d:[D

    aget-wide v2, v2, v9

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/b;->c(DDDD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4049

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3b

    const/4 v0, 0x1

    goto :goto_6

    :cond_3b
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_14

    :cond_3f
    invoke-direct {p0, p1, p2}, La/c;->b(Le/b;Li/B;)V

    move v0, v8

    goto :goto_6
.end method

.method private b(Le/b;Li/B;)V
    .registers 7

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p1}, La/c;->a(Le/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/c;->a:[Ljava/lang/String;

    iget v2, p0, La/c;->e:I

    aput-object v0, v1, v2

    iget-object v0, p0, La/c;->c:[D

    iget v1, p0, La/c;->e:I

    invoke-interface {p2}, Li/B;->b()D

    move-result-wide v2

    aput-wide v2, v0, v1

    iget-object v0, p0, La/c;->d:[D

    iget v1, p0, La/c;->e:I

    invoke-interface {p2}, Li/B;->c()D

    move-result-wide v2

    aput-wide v2, v0, v1

    iget-object v0, p0, La/c;->b:[Z

    iget v1, p0, La/c;->e:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget v0, p0, La/c;->e:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, La/c;->e:I

    goto :goto_4
.end method

.method static synthetic b(La/c;Le/b;Li/B;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, La/c;->a(Le/b;Li/B;)Z

    move-result v0

    return v0
.end method
