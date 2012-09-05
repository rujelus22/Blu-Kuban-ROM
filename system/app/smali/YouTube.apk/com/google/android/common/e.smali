.class final Lcom/google/android/common/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/common/SwipeySwitcher;


# direct methods
.method constructor <init>(Lcom/google/android/common/SwipeySwitcher;)V
    .registers 2
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/google/android/common/e;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/android/common/e;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->b(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/f;

    move-result-object v0

    if-nez v0, :cond_9

    .line 590
    :cond_8
    :goto_8
    return-void

    .line 558
    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/google/android/common/e;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->g(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/h;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_69

    .line 559
    iget-object v1, p0, Lcom/google/android/common/e;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->g(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/h;

    move-result-object v1

    aget-object v1, v1, v0

    .line 560
    iget-object v2, p0, Lcom/google/android/common/e;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->i(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/k;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/common/k;->a(Lcom/google/android/common/h;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 561
    invoke-interface {v1}, Lcom/google/android/common/h;->c()Landroid/content/Intent;

    move-result-object v1

    .line 562
    if-eqz v1, :cond_66

    .line 563
    iget-object v1, p0, Lcom/google/android/common/e;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->j(Lcom/google/android/common/SwipeySwitcher;)I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 567
    iget-object v2, p0, Lcom/google/android/common/e;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->b(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/f;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/common/e;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v3, v1}, Lcom/google/android/common/SwipeySwitcher;->b(Lcom/google/android/common/SwipeySwitcher;I)I

    iget-object v1, p0, Lcom/google/android/common/e;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-interface {v2}, Lcom/google/android/common/f;->a()Lcom/google/android/common/h;

    move-result-object v1

    .line 569
    if-eqz v1, :cond_66

    .line 570
    iget-object v2, p0, Lcom/google/android/common/e;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v2}, Lcom/google/android/common/SwipeySwitcher;->getChildCount()I

    move-result v2

    if-le v2, v0, :cond_61

    .line 577
    iget-object v2, p0, Lcom/google/android/common/e;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->g(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/h;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/android/common/h;->a()V

    .line 578
    iget-object v2, p0, Lcom/google/android/common/e;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v2, v0}, Lcom/google/android/common/SwipeySwitcher;->removeViewAt(I)V

    .line 582
    :cond_61
    iget-object v2, p0, Lcom/google/android/common/e;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2, v1, v0}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/h;I)V

    .line 558
    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 587
    :cond_69
    iget-object v0, p0, Lcom/google/android/common/e;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->g(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/h;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_8

    .line 588
    iget-object v0, p0, Lcom/google/android/common/e;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->g(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/h;

    goto :goto_8
.end method
