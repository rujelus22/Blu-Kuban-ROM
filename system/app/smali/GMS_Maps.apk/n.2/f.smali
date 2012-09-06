.class public abstract LN/f;
.super Ld/m;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/view/accessibility/AccessibilityManager;

.field private final b:Landroid/graphics/Rect;

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Rect;

.field private e:Landroid/view/View;

.field private f:I

.field private final g:Landroid/util/SparseArray;

.field private final h:Landroid/support/v4/view/a;


# direct methods
.method private b(Ljava/lang/Object;I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 310
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 311
    new-instance v1, Ld/u;

    invoke-direct {v1, v0}, Ld/u;-><init>(Ljava/lang/Object;)V

    .line 312
    invoke-virtual {p0, p1}, LN/f;->a(Ljava/lang/Object;)I

    move-result v2

    .line 315
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 318
    invoke-virtual {p0, p1, v0}, LN/f;->a(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 320
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 321
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must add text or a content description in populateEventForItem()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v3, p0, LN/f;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v3, p0, LN/f;->e:Landroid/view/View;

    invoke-virtual {v1, v3, v2}, Ld/u;->a(Landroid/view/View;I)V

    .line 330
    return-object v0
.end method

.method private b(Ljava/lang/Object;)Ld/f;
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 355
    invoke-static {}, Ld/f;->b()Ld/f;

    move-result-object v0

    .line 356
    invoke-virtual {p0, p1}, LN/f;->a(Ljava/lang/Object;)I

    move-result v1

    .line 359
    invoke-virtual {v0, v2}, Ld/f;->d(Z)V

    .line 360
    invoke-virtual {v0, v2}, Ld/f;->b(Z)V

    .line 363
    invoke-virtual {p0, p1, v0}, LN/f;->a(Ljava/lang/Object;Ld/f;)V

    .line 365
    invoke-virtual {v0}, Ld/f;->c()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {v0}, Ld/f;->d()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 366
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must add text or a content description in populateNodeForItem()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_2e
    iget-object v2, p0, LN/f;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ld/f;->a(Ljava/lang/CharSequence;)V

    .line 372
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ld/f;->b(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v2, p0, LN/f;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Ld/f;->b(Landroid/view/View;)V

    .line 374
    iget-object v2, p0, LN/f;->e:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Ld/f;->a(Landroid/view/View;I)V

    .line 376
    iget v2, p0, LN/f;->f:I

    if-ne v2, v1, :cond_7b

    .line 377
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ld/f;->a(I)V

    .line 383
    :goto_59
    iget-object v1, p0, LN/f;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ld/f;->a(Landroid/graphics/Rect;)V

    .line 384
    iget-object v1, p0, LN/f;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ld/f;->c(Landroid/graphics/Rect;)V

    .line 386
    iget-object v1, p0, LN/f;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, p0, LN/f;->b:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 387
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must set parent or screen bounds in populateNodeForItem()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_7b
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ld/f;->a(I)V

    goto :goto_59

    .line 391
    :cond_81
    iget-object v1, p0, LN/f;->b:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_91

    iget-object v1, p0, LN/f;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 392
    :cond_91
    iget-object v1, p0, LN/f;->e:Landroid/view/View;

    iget-object v2, p0, LN/f;->d:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 394
    iget-object v1, p0, LN/f;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 395
    iget-object v2, p0, LN/f;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 397
    iget-object v3, p0, LN/f;->b:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 398
    iget-object v3, p0, LN/f;->b:Landroid/graphics/Rect;

    iget-object v4, p0, LN/f;->c:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 399
    iget-object v3, p0, LN/f;->b:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 400
    iget-object v1, p0, LN/f;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ld/f;->d(Landroid/graphics/Rect;)V

    .line 408
    :cond_b9
    :goto_b9
    return-object v0

    .line 402
    :cond_ba
    iget-object v3, p0, LN/f;->c:Landroid/graphics/Rect;

    iget-object v4, p0, LN/f;->b:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 403
    iget-object v3, p0, LN/f;->c:Landroid/graphics/Rect;

    neg-int v1, v1

    neg-int v2, v2

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 404
    iget-object v1, p0, LN/f;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ld/f;->b(Landroid/graphics/Rect;)V

    goto :goto_b9
.end method

.method private b()V
    .registers 3

    .prologue
    .line 264
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, LN/f;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 265
    iget-object v0, p0, LN/f;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 266
    iget-object v0, p0, LN/f;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/f;

    invoke-virtual {v0}, Ld/f;->e()V

    .line 264
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 270
    :cond_21
    iget-object v0, p0, LN/f;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 271
    return-void
.end method

.method private c()Ld/f;
    .registers 5

    .prologue
    .line 337
    iget-object v0, p0, LN/f;->e:Landroid/view/View;

    invoke-static {v0}, Ld/f;->a(Landroid/view/View;)Ld/f;

    move-result-object v0

    .line 338
    iget-object v1, p0, LN/f;->e:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/view/M;->a(Landroid/view/View;Ld/f;)V

    .line 340
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 341
    invoke-virtual {p0, v1}, LN/f;->a(Ljava/util/List;)V

    .line 343
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 344
    invoke-virtual {p0, v2}, LN/f;->a(Ljava/lang/Object;)I

    move-result v2

    .line 345
    iget-object v3, p0, LN/f;->e:Landroid/view/View;

    invoke-virtual {v0, v3, v2}, Ld/f;->b(Landroid/view/View;I)V

    goto :goto_17

    .line 348
    :cond_2b
    return-object v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)I
.end method

.method public a(I)Ld/f;
    .registers 5
    .parameter

    .prologue
    .line 203
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 204
    invoke-direct {p0}, LN/f;->c()Ld/f;

    move-result-object v0

    .line 222
    :cond_7
    :goto_7
    return-object v0

    .line 207
    :cond_8
    iget-object v0, p0, LN/f;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/f;

    .line 208
    if-nez v0, :cond_7

    .line 212
    invoke-virtual {p0, p1}, LN/f;->c(I)Ljava/lang/Object;

    move-result-object v1

    .line 213
    if-nez v1, :cond_1a

    .line 214
    const/4 v0, 0x0

    goto :goto_7

    .line 217
    :cond_1a
    invoke-direct {p0, v1}, LN/f;->b(Ljava/lang/Object;)Ld/f;

    move-result-object v1

    .line 220
    iget-object v2, p0, LN/f;->g:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v1

    .line 222
    goto :goto_7
.end method

.method protected a(Ljava/lang/Object;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, LN/f;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0}, Ld/a;->a(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 304
    :goto_8
    return-void

    .line 300
    :cond_9
    invoke-direct {p0, p1, p2}, LN/f;->b(Ljava/lang/Object;I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 301
    iget-object v0, p0, LN/f;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 303
    iget-object v2, p0, LN/f;->e:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_8
.end method

.method protected abstract a(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method protected abstract a(Ljava/lang/Object;Ld/f;)V
.end method

.method protected abstract a(Ljava/util/List;)V
.end method

.method public a(IILandroid/os/Bundle;)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 227
    const/4 v2, -0x1

    if-ne p1, v2, :cond_e

    .line 228
    iget-object v0, p0, LN/f;->h:Landroid/support/v4/view/a;

    iget-object v1, p0, LN/f;->e:Landroid/view/View;

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v4/view/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v1

    .line 257
    :cond_d
    :goto_d
    return v1

    .line 231
    :cond_e
    invoke-virtual {p0, p1}, LN/f;->c(I)Ljava/lang/Object;

    move-result-object v2

    .line 232
    if-eqz v2, :cond_d

    .line 238
    sparse-switch p2, :sswitch_data_3a

    :cond_17
    move v0, v1

    .line 255
    :goto_18
    invoke-virtual {p0, v2, p2, p3}, LN/f;->a(Ljava/lang/Object;ILandroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v1, v0

    .line 257
    goto :goto_d

    .line 240
    :sswitch_1e
    iget v3, p0, LN/f;->f:I

    if-eq v3, p1, :cond_17

    .line 241
    iput p1, p0, LN/f;->f:I

    .line 242
    const v1, 0x8000

    invoke-virtual {p0, v2, v1}, LN/f;->a(Ljava/lang/Object;I)V

    goto :goto_18

    .line 247
    :sswitch_2b
    iget v3, p0, LN/f;->f:I

    if-ne v3, p1, :cond_17

    .line 248
    const/high16 v1, -0x8000

    iput v1, p0, LN/f;->f:I

    .line 249
    const/high16 v1, 0x1

    invoke-virtual {p0, v2, v1}, LN/f;->a(Ljava/lang/Object;I)V

    goto :goto_18

    .line 238
    nop

    :sswitch_data_3a
    .sparse-switch
        0x40 -> :sswitch_1e
        0x80 -> :sswitch_2b
    .end sparse-switch
.end method

.method protected abstract a(Ljava/lang/Object;ILandroid/os/Bundle;)Z
.end method

.method protected abstract c(I)Ljava/lang/Object;
.end method

.method public e()V
    .registers 3

    .prologue
    .line 175
    invoke-direct {p0}, LN/f;->b()V

    .line 177
    iget-object v0, p0, LN/f;->e:Landroid/view/View;

    iget-object v1, p0, LN/f;->h:Landroid/support/v4/view/a;

    invoke-static {v0, v1}, Landroid/support/v4/view/M;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 179
    iget-object v0, p0, LN/f;->e:Landroid/view/View;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 180
    return-void
.end method
