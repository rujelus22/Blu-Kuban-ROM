.class public Lv/m;
.super Lv/h;


# static fields
.field private static final c:[I


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lv/m;->c:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0xf4t 0x0t 0xbt 0x7ft
        0xf5t 0x0t 0xbt 0x7ft
        0xf6t 0x0t 0xbt 0x7ft
        0xf7t 0x0t 0xbt 0x7ft
        0xf8t 0x0t 0xbt 0x7ft
        0xf9t 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lv/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput p3, p0, Lv/m;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lv/m;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 7

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    iget v0, p0, Lv/m;->b:I

    if-ne v0, v5, :cond_23

    move v0, v1

    :goto_8
    invoke-virtual {p0, v1}, Lv/m;->a(I)Lu/K;

    move-result-object v1

    if-eqz v1, :cond_29

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lv/m;->a:Landroid/content/Context;

    sget-object v4, Lv/m;->c:[I

    aget v0, v4, v0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lu/K;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_22
    return-object v0

    :cond_23
    iget v0, p0, Lv/m;->b:I

    if-ne v0, v1, :cond_34

    const/4 v0, 0x4

    goto :goto_8

    :cond_29
    iget-object v1, p0, Lv/m;->a:Landroid/content/Context;

    sget-object v2, Lv/m;->c:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_34
    move v0, v2

    goto :goto_8
.end method
