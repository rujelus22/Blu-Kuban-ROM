.class final Lcom/actionbarsherlock/internal/widget/IcsView;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMeasuredStateInt(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, -0x100

    or-int/2addr v0, v1

    return v0
.end method

.method public static resolveSizeAndState(III)I
    .registers 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sparse-switch v1, :sswitch_data_1a

    :cond_b
    :goto_b
    :sswitch_b
    const/high16 v0, -0x100

    and-int/2addr v0, p2

    or-int/2addr v0, p0

    return v0

    :sswitch_10
    if-ge v0, p0, :cond_b

    const/high16 v1, 0x100

    or-int p0, v0, v1

    goto :goto_b

    :sswitch_17
    move p0, v0

    goto :goto_b

    nop

    :sswitch_data_1a
    .sparse-switch
        -0x80000000 -> :sswitch_10
        0x0 -> :sswitch_b
        0x40000000 -> :sswitch_17
    .end sparse-switch
.end method
