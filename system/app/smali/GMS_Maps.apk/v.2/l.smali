.class public Lv/l;
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

    sput-object v0, Lv/l;->c:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0xfat 0x0t 0xbt 0x7ft
        0xfdt 0x0t 0xbt 0x7ft
        0xfbt 0x0t 0xbt 0x7ft
        0xfet 0x0t 0xbt 0x7ft
        0xfct 0x0t 0xbt 0x7ft
        0xfft 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lv/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput p3, p0, Lv/l;->b:I

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

    iget v0, p0, Lv/l;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 7

    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lv/l;->a(I)Lu/K;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lv/l;->a:Landroid/content/Context;

    const v3, 0x7f0b0100

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lu/K;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    iget v0, p0, Lv/l;->b:I

    if-ne v0, v5, :cond_3c

    move v0, v1

    :goto_21
    invoke-virtual {p0, v1}, Lv/l;->a(I)Lu/K;

    move-result-object v1

    if-eqz v1, :cond_42

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lv/l;->a:Landroid/content/Context;

    sget-object v4, Lv/l;->c:[I

    aget v0, v4, v0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lu/K;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_3c
    iget v0, p0, Lv/l;->b:I

    if-ne v0, v1, :cond_4d

    const/4 v0, 0x4

    goto :goto_21

    :cond_42
    iget-object v1, p0, Lv/l;->a:Landroid/content/Context;

    sget-object v2, Lv/l;->c:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_4d
    move v0, v2

    goto :goto_21
.end method
