.class final Landroid/support/v4/view/accessibility/k;
.super Landroid/support/v4/view/accessibility/m;
.source "AccessibilityNodeInfoCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 273
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 276
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 281
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 286
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 291
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 292
    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 311
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 312
    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 296
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 297
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 436
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 437
    return-void
.end method

.method public final a(Ljava/lang/Object;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 426
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 427
    return-void
.end method

.method public final b(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 306
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 316
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 317
    return-void
.end method

.method public final b(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 476
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 477
    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 446
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 447
    return-void
.end method

.method public final b(Ljava/lang/Object;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 431
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 432
    return-void
.end method

.method public final b(Ljava/lang/Object;I)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 411
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 326
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final synthetic c(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 273
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Landroid/support/v4/view/accessibility/l;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/support/v4/view/accessibility/l;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 416
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 417
    return-void
.end method

.method public final c(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 496
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 497
    return-void
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 471
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 472
    return-void
.end method

.method public final c(Ljava/lang/Object;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 441
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 442
    return-void
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 331
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 501
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 502
    return-void
.end method

.method public final d(Ljava/lang/Object;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 451
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 452
    return-void
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 336
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/Object;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 456
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 457
    return-void
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 341
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/Object;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 461
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 462
    return-void
.end method

.method public final g(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 4
    .parameter

    .prologue
    .line 346
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Landroid/support/v4/view/accessibility/l;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/support/v4/view/accessibility/l;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final g(Ljava/lang/Object;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 466
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 467
    return-void
.end method

.method public final h(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 351
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/Object;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 481
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 482
    return-void
.end method

.method public final i(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 356
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v0

    return v0
.end method

.method public final i(Ljava/lang/Object;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 486
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 487
    return-void
.end method

.method public final j(Ljava/lang/Object;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 491
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 492
    return-void
.end method

.method public final j(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 361
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public final k(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 366
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v0

    return v0
.end method

.method public final l(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 371
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    return v0
.end method

.method public final m(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 376
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final n(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 381
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v0

    return v0
.end method

.method public final o(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 386
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v0

    return v0
.end method

.method public final p(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 391
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v0

    return v0
.end method

.method public final q(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 396
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v0

    return v0
.end method

.method public final r(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 401
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v0

    return v0
.end method

.method public final s(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 406
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v0

    return v0
.end method

.method public final t(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 506
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 507
    return-void
.end method

.method public final synthetic u(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Landroid/support/v4/view/accessibility/k;->g(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method
