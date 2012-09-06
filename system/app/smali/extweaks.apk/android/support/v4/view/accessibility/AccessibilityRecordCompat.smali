.class public Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# static fields
.field private static final IMPL:Landroid/support/v4/view/accessibility/o;


# instance fields
.field private final mRecord:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 449
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    .line 450
    new-instance v0, Landroid/support/v4/view/accessibility/n;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/n;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    .line 454
    :goto_d
    return-void

    .line 452
    :cond_e
    new-instance v0, Landroid/support/v4/view/accessibility/p;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/p;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    goto :goto_d
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    .line 465
    return-void
.end method

.method public static obtain()Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .registers 2

    .prologue
    .line 492
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    invoke-interface {v1}, Landroid/support/v4/view/accessibility/o;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static obtain(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .registers 4
    .parameter

    .prologue
    .line 482
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v2, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 940
    if-ne p0, p1, :cond_5

    .line 957
    :cond_4
    :goto_4
    return v0

    .line 943
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 944
    goto :goto_4

    .line 946
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 947
    goto :goto_4

    .line 949
    :cond_15
    check-cast p1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    .line 950
    iget-object v2, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    if-nez v2, :cond_21

    .line 951
    iget-object v2, p1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    if-eqz v2, :cond_4

    move v0, v1

    .line 952
    goto :goto_4

    .line 954
    :cond_21
    iget-object v2, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    iget-object v3, p1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 955
    goto :goto_4
.end method

.method public getAddedCount()I
    .registers 3

    .prologue
    .line 795
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/o;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getBeforeText()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 865
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/o;->c(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 835
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/o;->d(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 885
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/o;->e(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItemIndex()I
    .registers 3

    .prologue
    .line 657
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/o;->f(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFromIndex()I
    .registers 3

    .prologue
    .line 680
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/o;->g(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getImpl()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 471
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemCount()I
    .registers 3

    .prologue
    .line 637
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/o;->h(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 905
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/o;->i(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedCount()I
    .registers 3

    .prologue
    .line 815
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/o;->j(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getScrollX()I
    .registers 3

    .prologue
    .line 723
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/o;->k(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getScrollY()I
    .registers 3

    .prologue
    .line 741
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/o;->l(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSource()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 4

    .prologue
    .line 519
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v2, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/o;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getText()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 856
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/o;->n(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToIndex()I
    .registers 3

    .prologue
    .line 704
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/o;->o(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getWindowId()I
    .registers 3

    .prologue
    .line 528
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/o;->p(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 934
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public isChecked()Z
    .registers 3

    .prologue
    .line 537
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/o;->q(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 3

    .prologue
    .line 557
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/o;->r(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .registers 3

    .prologue
    .line 597
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/o;->s(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .registers 3

    .prologue
    .line 577
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/o;->t(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .registers 3

    .prologue
    .line 617
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/o;->u(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .registers 3

    .prologue
    .line 929
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/o;->v(Ljava/lang/Object;)V

    .line 930
    return-void
.end method

.method public setAddedCount(I)V
    .registers 4
    .parameter

    .prologue
    .line 806
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/o;->a(Ljava/lang/Object;I)V

    .line 807
    return-void
.end method

.method public setBeforeText(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter

    .prologue
    .line 876
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/o;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 877
    return-void
.end method

.method public setChecked(Z)V
    .registers 4
    .parameter

    .prologue
    .line 548
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/o;->a(Ljava/lang/Object;Z)V

    .line 549
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter

    .prologue
    .line 846
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/o;->b(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 847
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter

    .prologue
    .line 896
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/o;->c(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 897
    return-void
.end method

.method public setCurrentItemIndex(I)V
    .registers 4
    .parameter

    .prologue
    .line 668
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/o;->b(Ljava/lang/Object;I)V

    .line 669
    return-void
.end method

.method public setEnabled(Z)V
    .registers 4
    .parameter

    .prologue
    .line 568
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/o;->b(Ljava/lang/Object;Z)V

    .line 569
    return-void
.end method

.method public setFromIndex(I)V
    .registers 4
    .parameter

    .prologue
    .line 694
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/o;->c(Ljava/lang/Object;I)V

    .line 695
    return-void
.end method

.method public setFullScreen(Z)V
    .registers 4
    .parameter

    .prologue
    .line 608
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/o;->c(Ljava/lang/Object;Z)V

    .line 609
    return-void
.end method

.method public setItemCount(I)V
    .registers 4
    .parameter

    .prologue
    .line 648
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/o;->d(Ljava/lang/Object;I)V

    .line 649
    return-void
.end method

.method public setParcelableData(Landroid/os/Parcelable;)V
    .registers 4
    .parameter

    .prologue
    .line 916
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/o;->a(Ljava/lang/Object;Landroid/os/Parcelable;)V

    .line 917
    return-void
.end method

.method public setPassword(Z)V
    .registers 4
    .parameter

    .prologue
    .line 588
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/o;->d(Ljava/lang/Object;Z)V

    .line 589
    return-void
.end method

.method public setRemovedCount(I)V
    .registers 4
    .parameter

    .prologue
    .line 826
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/o;->e(Ljava/lang/Object;I)V

    .line 827
    return-void
.end method

.method public setScrollX(I)V
    .registers 4
    .parameter

    .prologue
    .line 732
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/o;->f(Ljava/lang/Object;I)V

    .line 733
    return-void
.end method

.method public setScrollY(I)V
    .registers 4
    .parameter

    .prologue
    .line 750
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/o;->g(Ljava/lang/Object;I)V

    .line 751
    return-void
.end method

.method public setScrollable(Z)V
    .registers 4
    .parameter

    .prologue
    .line 628
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/o;->e(Ljava/lang/Object;Z)V

    .line 629
    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 503
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/o;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 504
    return-void
.end method

.method public setToIndex(I)V
    .registers 4
    .parameter

    .prologue
    .line 714
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/o;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/o;->h(Ljava/lang/Object;I)V

    .line 715
    return-void
.end method
