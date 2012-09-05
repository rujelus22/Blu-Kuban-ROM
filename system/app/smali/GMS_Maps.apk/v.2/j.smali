.class public Lv/j;
.super Lv/h;


# instance fields
.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lv/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput p3, p0, Lv/j;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x9

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lv/j;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lv/j;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lv/j;->a:Landroid/content/Context;

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget v0, p0, Lv/j;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lv/j;->a:Landroid/content/Context;

    const v1, 0x7f0b00f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_1e
    const/4 v0, 0x0

    goto :goto_e
.end method
