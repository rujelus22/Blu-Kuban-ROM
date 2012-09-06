.class public LDu;
.super LDx;
.source "ArrowKeyMovementMethod.java"

# interfaces
.implements LDH;


# static fields
.field private static a:LDu;

.field private static final a:Ljava/lang/Object;


# instance fields
.field private final a:LDr;

.field private final a:LEe;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 401
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LDu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, LDx;-><init>()V

    .line 399
    new-instance v0, LEe;

    invoke-direct {v0}, LEe;-><init>()V

    iput-object v0, p0, LDu;->a:LEe;

    .line 400
    new-instance v0, LDr;

    invoke-direct {v0}, LDr;-><init>()V

    iput-object v0, p0, LDu;->a:LDr;

    return-void
.end method

.method private a(Landroid/text/Spannable;I)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, LDu;->a:LEe;

    invoke-virtual {v0, p1}, LEe;->a(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, LDu;->a:LEe;

    invoke-virtual {v0, p2}, LEe;->a(I)I

    move-result v0

    .line 363
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 364
    const/4 v0, 0x0

    .line 366
    :cond_f
    return v0
.end method

.method private a(Landroid/text/Spannable;LCl;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p2, v0}, LCl;->h(I)I

    move-result v0

    invoke-virtual {p2, v0}, LCl;->a(I)I

    move-result v0

    return v0
.end method

.method private a(Lcom/google/android/apps/docs/editors/text/TextView;)I
    .registers 4
    .parameter

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 52
    invoke-virtual {p1, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static a()LDH;
    .registers 1

    .prologue
    .line 392
    sget-object v0, LDu;->a:LDu;

    if-nez v0, :cond_b

    .line 393
    new-instance v0, LDu;

    invoke-direct {v0}, LDu;-><init>()V

    sput-object v0, LDu;->a:LDu;

    .line 396
    :cond_b
    sget-object v0, LDu;->a:LDu;

    return-object v0
.end method

.method private static a(Landroid/text/Spannable;)Z
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 39
    invoke-static {p0, v0}, LDG;->a(Ljava/lang/CharSequence;I)I

    move-result v1

    if-eq v1, v0, :cond_f

    const/16 v1, 0x800

    invoke-static {p0, v1}, LDG;->a(Ljava/lang/CharSequence;I)I

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 376
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 377
    return-void
.end method

.method public a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 381
    and-int/lit16 v0, p3, 0x82

    if-eqz v0, :cond_12

    .line 382
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v0

    if-nez v0, :cond_11

    .line 384
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 389
    :cond_11
    :goto_11
    return-void

    .line 387
    :cond_12
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_11
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 371
    const/4 v0, 0x1

    return v0
.end method

.method protected a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v0

    .line 76
    invoke-static {p2}, LDu;->a(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 77
    invoke-static {p2, v0}, LCr;->g(Landroid/text/Spannable;LCl;)Z

    move-result v0

    .line 79
    :goto_e
    return v0

    :cond_f
    invoke-static {p2, v0}, LCr;->c(Landroid/text/Spannable;LCl;)Z

    move-result v0

    goto :goto_e
.end method

.method protected a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    packed-switch p3, :pswitch_data_28

    .line 70
    :cond_3
    invoke-super/range {p0 .. p5}, LDx;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 60
    :pswitch_8
    invoke-static {p4}, LDE;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x800

    invoke-static {p2, v0}, LDG;->a(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->showContextMenu()Z

    move-result v0

    goto :goto_7

    .line 58
    nop

    :pswitch_data_28
    .packed-switch 0x17
        :pswitch_8
    .end packed-switch
.end method

.method public a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, LDu;->a:LDr;

    invoke-virtual {v0, p1, p2, p3}, LDr;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v0

    .line 86
    invoke-static {p2}, LDu;->a(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 87
    invoke-static {p2, v0}, LCr;->h(Landroid/text/Spannable;LCl;)Z

    move-result v0

    .line 89
    :goto_e
    return v0

    :cond_f
    invoke-static {p2, v0}, LCr;->d(Landroid/text/Spannable;LCl;)Z

    move-result v0

    goto :goto_e
.end method

.method public b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x1

    .line 265
    .line 267
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 269
    if-ne v4, v2, :cond_ec

    .line 270
    invoke-static {p1, p2}, LEb;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)I

    move-result v1

    .line 271
    invoke-static {p1, p2}, LEb;->b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)I

    move-result v0

    .line 274
    :goto_10
    invoke-static {p1, p2, p3}, LEb;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 276
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->o()Z

    move-result v5

    if-nez v5, :cond_44

    .line 277
    if-nez v4, :cond_46

    .line 278
    invoke-static {p2}, LDu;->a(Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 279
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(II)I

    move-result v0

    .line 281
    sget-object v1, LDu;->a:Ljava/lang/Object;

    const/16 v4, 0x22

    invoke-interface {p2, v1, v0, v0, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 287
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_44
    move v0, v3

    .line 357
    :goto_45
    return v0

    .line 289
    :cond_46
    const/4 v5, 0x2

    if-ne v4, v5, :cond_67

    .line 290
    invoke-static {p2}, LDu;->a(Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_44

    if-eqz v3, :cond_44

    .line 297
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->cancelLongPress()V

    .line 302
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(II)I

    move-result v0

    .line 304
    invoke-static {p2, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v0, v2

    .line 305
    goto :goto_45

    .line 307
    :cond_67
    if-ne v4, v2, :cond_44

    .line 312
    if-ltz v0, :cond_71

    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v3

    if-ne v0, v3, :cond_79

    :cond_71
    if-ltz v1, :cond_7e

    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v0

    if-eq v1, v0, :cond_7e

    .line 314
    :cond_79
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->m()Z

    move v0, v2

    .line 315
    goto :goto_45

    .line 318
    :cond_7e
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(II)I

    move-result v0

    .line 319
    invoke-static {p2}, LDu;->a(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 320
    sget-object v1, LDu;->a:Ljava/lang/Object;

    invoke-interface {p2, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 321
    invoke-static {p2, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 350
    :cond_9a
    :goto_9a
    invoke-static {p2}, LDG;->b(Landroid/text/Spannable;)V

    .line 351
    invoke-static {p2}, LDG;->c(Landroid/text/Spannable;)V

    move v0, v2

    .line 353
    goto :goto_45

    .line 323
    :cond_a2
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 324
    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 325
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, LCx;->a(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    .line 327
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v4

    .line 328
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_9a

    if-eqz v4, :cond_9a

    .line 329
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getSize()F

    move-result v5

    float-to-double v5, v5

    const-wide/high16 v7, 0x3fe0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_d4

    .line 332
    invoke-direct {p0, p2, v0}, LDu;->a(Landroid/text/Spannable;I)I

    move-result v0

    .line 333
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {v3, p2, v0, v1}, LCL;->a(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/CharSequence;II)V

    goto :goto_9a

    .line 337
    :cond_d4
    invoke-virtual {v4, v1}, LCl;->h(I)I

    move-result v1

    .line 338
    invoke-virtual {v4, v0}, LCl;->h(I)I

    move-result v3

    .line 339
    if-eq v1, v3, :cond_e2

    .line 340
    invoke-static {p1, p2, v0}, LCL;->a(Lcom/google/android/apps/docs/editors/text/TextView;Ljava/lang/CharSequence;I)V

    goto :goto_9a

    .line 342
    :cond_e2
    invoke-direct {p0, p2, v0}, LDu;->a(Landroid/text/Spannable;I)I

    move-result v0

    .line 343
    iget-object v1, p0, LDu;->a:LEe;

    invoke-static {p1, p2, v1, v0}, LCL;->a(Lcom/google/android/apps/docs/editors/text/TextView;Ljava/lang/CharSequence;LEe;I)V

    goto :goto_9a

    :cond_ec
    move v1, v0

    goto/16 :goto_10
.end method

.method protected c(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v0

    .line 96
    invoke-static {p2}, LDu;->a(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 97
    invoke-static {p2, v0}, LCr;->e(Landroid/text/Spannable;LCl;)Z

    move-result v0

    .line 102
    :goto_e
    return v0

    .line 99
    :cond_f
    invoke-static {p2, v0}, LCr;->a(Landroid/text/Spannable;LCl;)Z

    move-result v0

    .line 100
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p1, p2, v1}, LCL;->a(Lcom/google/android/apps/docs/editors/text/TextView;Ljava/lang/CharSequence;I)V

    goto :goto_e
.end method

.method protected d(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v0

    .line 109
    invoke-static {p2}, LDu;->a(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 110
    invoke-static {p2, v0}, LCr;->f(Landroid/text/Spannable;LCl;)Z

    move-result v0

    .line 115
    :goto_e
    return v0

    .line 112
    :cond_f
    invoke-static {p2, v0}, LCr;->b(Landroid/text/Spannable;LCl;)Z

    move-result v0

    .line 113
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p1, p2, v1}, LCL;->a(Lcom/google/android/apps/docs/editors/text/TextView;Ljava/lang/CharSequence;I)V

    goto :goto_e
.end method

.method protected e(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v1

    .line 122
    invoke-static {p2}, LDu;->a(Landroid/text/Spannable;)Z

    move-result v2

    .line 123
    invoke-direct {p0, p2, v1}, LDu;->a(Landroid/text/Spannable;LCl;)I

    move-result v0

    invoke-direct {p0, p1}, LDu;->a(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v3

    sub-int v3, v0, v3

    .line 124
    const/4 v0, 0x0

    .line 126
    :cond_13
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 127
    if-eqz v2, :cond_2c

    .line 128
    invoke-static {p2, v1}, LCr;->e(Landroid/text/Spannable;LCl;)Z

    .line 132
    :goto_1c
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    if-ne v5, v4, :cond_30

    .line 140
    :goto_22
    if-eqz v0, :cond_2b

    .line 141
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p1, p2, v1}, LCL;->a(Lcom/google/android/apps/docs/editors/text/TextView;Ljava/lang/CharSequence;I)V

    .line 144
    :cond_2b
    return v0

    .line 130
    :cond_2c
    invoke-static {p2, v1}, LCr;->a(Landroid/text/Spannable;LCl;)Z

    goto :goto_1c

    .line 135
    :cond_30
    const/4 v0, 0x1

    .line 136
    invoke-direct {p0, p2, v1}, LDu;->a(Landroid/text/Spannable;LCl;)I

    move-result v4

    if-gt v4, v3, :cond_13

    goto :goto_22
.end method

.method protected f(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v1

    .line 150
    invoke-static {p2}, LDu;->a(Landroid/text/Spannable;)Z

    move-result v2

    .line 151
    invoke-direct {p0, p2, v1}, LDu;->a(Landroid/text/Spannable;LCl;)I

    move-result v0

    invoke-direct {p0, p1}, LDu;->a(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v3

    add-int/2addr v3, v0

    .line 152
    const/4 v0, 0x0

    .line 154
    :cond_12
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 155
    if-eqz v2, :cond_2b

    .line 156
    invoke-static {p2, v1}, LCr;->f(Landroid/text/Spannable;LCl;)Z

    .line 160
    :goto_1b
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    if-ne v5, v4, :cond_2f

    .line 169
    :goto_21
    if-eqz v0, :cond_2a

    .line 170
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p1, p2, v1}, LCL;->a(Lcom/google/android/apps/docs/editors/text/TextView;Ljava/lang/CharSequence;I)V

    .line 173
    :cond_2a
    return v0

    .line 158
    :cond_2b
    invoke-static {p2, v1}, LCr;->b(Landroid/text/Spannable;LCl;)Z

    goto :goto_1b

    .line 163
    :cond_2f
    const/4 v0, 0x1

    .line 164
    invoke-direct {p0, p2, v1}, LDu;->a(Landroid/text/Spannable;LCl;)I

    move-result v4

    if-lt v4, v3, :cond_12

    goto :goto_21
.end method

.method protected g(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-static {p2}, LDu;->a(Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 179
    invoke-static {p2, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 186
    :goto_a
    const/4 v0, 0x1

    return v0

    .line 181
    :cond_c
    invoke-static {p2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 183
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p1, p2, v0}, LCL;->a(Lcom/google/android/apps/docs/editors/text/TextView;Ljava/lang/CharSequence;I)V

    goto :goto_a
.end method

.method protected h(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-static {p2}, LDu;->a(Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 192
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 199
    :goto_d
    const/4 v0, 0x1

    return v0

    .line 194
    :cond_f
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 196
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p1, p2, v0}, LCL;->a(Lcom/google/android/apps/docs/editors/text/TextView;Ljava/lang/CharSequence;I)V

    goto :goto_d
.end method

.method protected i(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v0

    .line 205
    invoke-static {p2}, LDu;->a(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 206
    invoke-static {p2, v0}, LCr;->i(Landroid/text/Spannable;LCl;)Z

    move-result v0

    .line 211
    :goto_e
    return v0

    .line 208
    :cond_f
    invoke-static {p2, v0}, LCr;->k(Landroid/text/Spannable;LCl;)Z

    move-result v0

    .line 209
    iget-object v1, p0, LDu;->a:LEe;

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {p1, p2, v1, v2}, LCL;->a(Lcom/google/android/apps/docs/editors/text/TextView;Ljava/lang/CharSequence;LEe;I)V

    goto :goto_e
.end method

.method protected j(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v0

    .line 218
    invoke-static {p2}, LDu;->a(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 219
    invoke-static {p2, v0}, LCr;->j(Landroid/text/Spannable;LCl;)Z

    move-result v0

    .line 224
    :goto_e
    return v0

    .line 221
    :cond_f
    invoke-static {p2, v0}, LCr;->l(Landroid/text/Spannable;LCl;)Z

    move-result v0

    .line 222
    iget-object v1, p0, LDu;->a:LEe;

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {p1, p2, v1, v2}, LCL;->a(Lcom/google/android/apps/docs/editors/text/TextView;Ljava/lang/CharSequence;LEe;I)V

    goto :goto_e
.end method

.method protected k(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, LDu;->a:LEe;

    invoke-virtual {v0, p2}, LEe;->a(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, LDu;->a:LEe;

    invoke-static {p2}, LDu;->a(Landroid/text/Spannable;)Z

    move-result v1

    invoke-static {p2, v0, v1}, LCr;->a(Landroid/text/Spannable;LCs;Z)Z

    move-result v0

    .line 233
    iget-object v1, p0, LDu;->a:LEe;

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {p1, p2, v1, v2}, LCL;->a(Lcom/google/android/apps/docs/editors/text/TextView;Ljava/lang/CharSequence;LEe;I)V

    .line 235
    return v0
.end method

.method protected l(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, LDu;->a:LEe;

    invoke-virtual {v0, p2}, LEe;->a(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, LDu;->a:LEe;

    invoke-static {p2}, LDu;->a(Landroid/text/Spannable;)Z

    move-result v1

    invoke-static {p2, v0, v1}, LCr;->b(Landroid/text/Spannable;LCs;Z)Z

    move-result v0

    .line 243
    iget-object v1, p0, LDu;->a:LEe;

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {p1, p2, v1, v2}, LCL;->a(Lcom/google/android/apps/docs/editors/text/TextView;Ljava/lang/CharSequence;LEe;I)V

    .line 245
    return v0
.end method

.method protected m(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-virtual {p0, p1, p2}, LDu;->i(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected n(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-virtual {p0, p1, p2}, LDu;->j(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method
