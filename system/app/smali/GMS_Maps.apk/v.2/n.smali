.class public Lv/n;
.super Lv/h;


# static fields
.field private static final d:[I


# instance fields
.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lv/n;->d:[I

    return-void

    :array_a
    .array-data 0x4
        0xe3t 0x0t 0xbt 0x7ft
        0xe4t 0x0t 0xbt 0x7ft
        0xe5t 0x0t 0xbt 0x7ft
        0xe6t 0x0t 0xbt 0x7ft
        0xe7t 0x0t 0xbt 0x7ft
        0xe8t 0x0t 0xbt 0x7ft
        0xe9t 0x0t 0xbt 0x7ft
        0xeat 0x0t 0xbt 0x7ft
        0xebt 0x0t 0xbt 0x7ft
        0xect 0x0t 0xbt 0x7ft
        0xedt 0x0t 0xbt 0x7ft
        0xeet 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lv/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput p3, p0, Lv/n;->b:I

    iput p4, p0, Lv/n;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lv/n;->b:I

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lv/n;->c:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lv/n;->c:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2b

    move v0, v1

    :goto_9
    iget v4, p0, Lv/n;->b:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_31

    add-int/lit8 v0, v0, 0x2

    :cond_10
    :goto_10
    invoke-virtual {p0, v2}, Lv/n;->a(I)Lu/K;

    move-result-object v3

    if-eqz v3, :cond_40

    add-int/lit8 v0, v0, 0x6

    iget-object v4, p0, Lv/n;->a:Landroid/content/Context;

    sget-object v5, Lv/n;->d:[I

    aget v0, v5, v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Lu/K;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2a
    return-object v0

    :cond_2b
    iget v0, p0, Lv/n;->c:I

    if-eq v0, v1, :cond_4b

    move-object v0, v3

    goto :goto_2a

    :cond_31
    iget v4, p0, Lv/n;->b:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_39

    add-int/lit8 v0, v0, 0x4

    goto :goto_10

    :cond_39
    iget v4, p0, Lv/n;->b:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_10

    move-object v0, v3

    goto :goto_2a

    :cond_40
    iget-object v1, p0, Lv/n;->a:Landroid/content/Context;

    sget-object v2, Lv/n;->d:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_4b
    move v0, v2

    goto :goto_9
.end method
