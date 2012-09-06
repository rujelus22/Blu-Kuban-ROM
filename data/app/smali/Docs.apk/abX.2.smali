.class public LabX;
.super Ljava/lang/Object;
.source "SwipeySwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/common/SwipeySwitcher;


# direct methods
.method public constructor <init>(Lcom/google/android/common/SwipeySwitcher;)V
    .registers 2
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, LabX;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 555
    iget-object v0, p0, LabX;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;)LabY;

    move-result-object v0

    if-nez v0, :cond_a

    .line 590
    :cond_9
    :goto_9
    return-void

    .line 558
    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, LabX;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;)[Laca;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_6c

    .line 559
    iget-object v1, p0, LabX;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;)[Laca;

    move-result-object v1

    aget-object v1, v1, v0

    .line 560
    iget-object v2, p0, LabX;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;)Lacd;

    move-result-object v2

    invoke-virtual {v2, v1}, Lacd;->a(Laca;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 561
    invoke-interface {v1}, Laca;->a()Landroid/content/Intent;

    move-result-object v1

    .line 562
    if-nez v1, :cond_31

    .line 558
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 566
    :cond_31
    iget-object v1, p0, LabX;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;)I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 567
    iget-object v2, p0, LabX;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;)LabY;

    move-result-object v2

    iget-object v3, p0, LabX;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v3, v1}, Lcom/google/android/common/SwipeySwitcher;->b(Lcom/google/android/common/SwipeySwitcher;I)I

    move-result v1

    iget-object v3, p0, LabX;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-interface {v2, v1, v3}, LabY;->a(ILandroid/view/ViewGroup;)Laca;

    move-result-object v1

    .line 569
    if-eqz v1, :cond_2e

    .line 576
    iget-object v2, p0, LabX;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v2}, Lcom/google/android/common/SwipeySwitcher;->getChildCount()I

    move-result v2

    if-le v2, v0, :cond_66

    .line 577
    iget-object v2, p0, LabX;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;)[Laca;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v2}, Laca;->a()V

    .line 578
    iget-object v2, p0, LabX;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v2, v0}, Lcom/google/android/common/SwipeySwitcher;->removeViewAt(I)V

    .line 582
    :cond_66
    iget-object v2, p0, LabX;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2, v1, v0}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;Laca;I)V

    goto :goto_2e

    .line 587
    :cond_6c
    iget-object v0, p0, LabX;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;)[Laca;

    move-result-object v0

    aget-object v0, v0, v4

    if-eqz v0, :cond_9

    .line 588
    iget-object v0, p0, LabX;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;)[Laca;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-interface {v0}, Laca;->b()V

    goto :goto_9
.end method
