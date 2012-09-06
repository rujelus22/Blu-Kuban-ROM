.class public abstract Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;
.super Lcom/google/android/apps/docs/view/RoboFragment;
.source "ViewSwitcherFragment.java"


# instance fields
.field private a:I

.field private a:[I

.field protected a:[Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/RoboFragment;-><init>()V

    return-void
.end method

.method protected static a(Landroid/os/Bundle;[II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    const-string v0, "listOfIdsForEachPanel"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 34
    const-string v0, "visiblePanel"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    return-void
.end method

.method private e(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 63
    const-string v0, "visiblePanel"

    invoke-static {p1, v0}, LXx;->a(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;->b(I)V

    .line 64
    return-void
.end method

.method private p()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 100
    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;->a:[Landroid/view/View;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    .line 101
    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;->a:[Landroid/view/View;

    aget-object v3, v2, v0

    .line 102
    iget v2, p0, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;->a:I

    if-ne v0, v2, :cond_16

    move v2, v1

    :goto_10
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 102
    :cond_16
    const/16 v2, 0x8

    goto :goto_10

    .line 104
    :cond_19
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;->a:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;->a:[Landroid/view/View;

    .line 92
    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;->a:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_23

    .line 93
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;->a:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 94
    invoke-static {v1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;->a:[Landroid/view/View;

    aput-object v1, v2, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 97
    :cond_23
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->a(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    const-string v1, "listOfIdsForEachPanel"

    invoke-static {v0, v1}, LXx;->a(Landroid/os/Bundle;Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;->a:[I

    .line 59
    if-eqz p1, :cond_15

    :goto_11
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;->e(Landroid/os/Bundle;)V

    .line 60
    return-void

    :cond_15
    move-object p1, v0

    .line 59
    goto :goto_11
.end method

.method protected b(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    const-string v0, "ViewSwitcherFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in setVisiblePanel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-ltz p1, :cond_32

    move v0, v1

    :goto_1d
    invoke-static {v0}, LafQ;->a(Z)V

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;->a:[I

    array-length v0, v0

    if-ge p1, v0, :cond_34

    :goto_25
    invoke-static {v1}, LafQ;->a(Z)V

    .line 84
    iput p1, p0, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;->a:I

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;->a:[Landroid/view/View;

    if-eqz v0, :cond_31

    .line 86
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;->p()V

    .line 88
    :cond_31
    return-void

    :cond_32
    move v0, v2

    .line 82
    goto :goto_1d

    :cond_34
    move v1, v2

    .line 83
    goto :goto_25
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->c(Landroid/os/Bundle;)V

    .line 76
    const-string v0, "visiblePanel"

    iget v1, p0, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method public d_()V
    .registers 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->d_()V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;->a()V

    .line 70
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;->p()V

    .line 71
    return-void
.end method
