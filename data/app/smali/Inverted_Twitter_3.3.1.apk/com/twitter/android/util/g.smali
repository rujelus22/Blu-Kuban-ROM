.class public final Lcom/twitter/android/util/g;
.super Ljava/lang/Object;


# instance fields
.field private transient a:[Lcom/twitter/android/util/h;

.field private transient b:I

.field private c:I

.field private d:F


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x14

    const/high16 v1, 0x3f40

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/util/g;-><init>(IF)V

    return-void
.end method

.method private constructor <init>(IF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f40

    iput v0, p0, Lcom/twitter/android/util/g;->d:F

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/twitter/android/util/h;

    iput-object v0, p0, Lcom/twitter/android/util/g;->a:[Lcom/twitter/android/util/h;

    const/16 v0, 0xf

    iput v0, p0, Lcom/twitter/android/util/g;->c:I

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 12

    const v8, 0x7fffffff

    iget-object v1, p0, Lcom/twitter/android/util/g;->a:[Lcom/twitter/android/util/h;

    and-int v0, p1, v8

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-object v2, v1, v0

    :goto_b
    if-eqz v2, :cond_19

    iget v3, v2, Lcom/twitter/android/util/h;->a:I

    if-ne v3, p1, :cond_16

    iget-object v0, v2, Lcom/twitter/android/util/h;->c:Ljava/lang/Object;

    iput-object p2, v2, Lcom/twitter/android/util/h;->c:Ljava/lang/Object;

    :goto_15
    return-object v0

    :cond_16
    iget-object v2, v2, Lcom/twitter/android/util/h;->d:Lcom/twitter/android/util/h;

    goto :goto_b

    :cond_19
    iget v2, p0, Lcom/twitter/android/util/g;->b:I

    iget v3, p0, Lcom/twitter/android/util/g;->c:I

    if-lt v2, v3, :cond_51

    iget-object v0, p0, Lcom/twitter/android/util/g;->a:[Lcom/twitter/android/util/h;

    array-length v0, v0

    iget-object v3, p0, Lcom/twitter/android/util/g;->a:[Lcom/twitter/android/util/h;

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v4, v1, 0x1

    new-array v5, v4, [Lcom/twitter/android/util/h;

    int-to-float v1, v4

    iget v2, p0, Lcom/twitter/android/util/g;->d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/twitter/android/util/g;->c:I

    iput-object v5, p0, Lcom/twitter/android/util/g;->a:[Lcom/twitter/android/util/h;

    :goto_33
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_4b

    aget-object v0, v3, v1

    :goto_39
    if-eqz v0, :cond_49

    iget-object v2, v0, Lcom/twitter/android/util/h;->d:Lcom/twitter/android/util/h;

    iget v6, v0, Lcom/twitter/android/util/h;->a:I

    and-int/2addr v6, v8

    rem-int/2addr v6, v4

    aget-object v7, v5, v6

    iput-object v7, v0, Lcom/twitter/android/util/h;->d:Lcom/twitter/android/util/h;

    aput-object v0, v5, v6

    move-object v0, v2

    goto :goto_39

    :cond_49
    move v0, v1

    goto :goto_33

    :cond_4b
    iget-object v1, p0, Lcom/twitter/android/util/g;->a:[Lcom/twitter/android/util/h;

    and-int v0, p1, v8

    array-length v2, v1

    rem-int/2addr v0, v2

    :cond_51
    new-instance v2, Lcom/twitter/android/util/h;

    aget-object v3, v1, v0

    invoke-direct {v2, p1, p1, p2, v3}, Lcom/twitter/android/util/h;-><init>(IILjava/lang/Object;Lcom/twitter/android/util/h;)V

    aput-object v2, v1, v0

    iget v0, p0, Lcom/twitter/android/util/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/android/util/g;->b:I

    const/4 v0, 0x0

    goto :goto_15
.end method
