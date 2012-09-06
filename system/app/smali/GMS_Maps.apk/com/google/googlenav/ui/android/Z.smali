.class Lcom/google/googlenav/ui/android/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/ax;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/r;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/r;)V
    .registers 2
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/google/googlenav/ui/android/z;->a:Lcom/google/googlenav/ui/android/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)Z
    .registers 6
    .parameter

    .prologue
    .line 561
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 562
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 563
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f100353

    if-ne v2, v3, :cond_1f

    .line 564
    iget-object v2, p0, Lcom/google/googlenav/ui/android/z;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v2}, Lcom/google/googlenav/ui/android/r;->d(Lcom/google/googlenav/ui/android/r;)Lcom/google/googlenav/ui/android/w;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/googlenav/ui/android/w;->i:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 561
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 567
    :cond_22
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 547
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-nez v0, :cond_c

    .line 556
    :cond_b
    return v4

    .line 550
    :cond_c
    const v0, 0x7f110001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 551
    const/4 v0, 0x0

    :goto_13
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 552
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 553
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x7f100353

    if-ne v1, v3, :cond_32

    const/16 v1, 0x34e

    :goto_28
    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 553
    :cond_32
    const/16 v1, 0x6b

    goto :goto_28
.end method

.method public a(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 572
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_16

    .line 582
    :goto_7
    const/4 v0, 0x1

    return v0

    .line 574
    :sswitch_9
    iget-object v0, p0, Lcom/google/googlenav/ui/android/z;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->b(Lcom/google/googlenav/ui/android/r;)V

    goto :goto_7

    .line 579
    :sswitch_f
    iget-object v0, p0, Lcom/google/googlenav/ui/android/z;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->c(Lcom/google/googlenav/ui/android/r;)V

    goto :goto_7

    .line 572
    nop

    :sswitch_data_16
    .sparse-switch
        0x102002c -> :sswitch_f
        0x7f100169 -> :sswitch_f
        0x7f100353 -> :sswitch_9
    .end sparse-switch
.end method
