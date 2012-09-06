.class public LCX;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/text/SpanWatcher;
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/text/TextView;

.field private a:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;)V
    .registers 2
    .parameter

    .prologue
    .line 6280
    iput-object p1, p0, LCX;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;LCR;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 6280
    invoke-direct {p0, p1}, LCX;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .parameter

    .prologue
    .line 6321
    iget-object v0, p0, LCX;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/text/Editable;)V

    .line 6323
    const/16 v0, 0x800

    invoke-static {p1, v0}, LDG;->a(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eqz v0, :cond_12

    .line 6324
    iget-object v0, p0, LCX;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0, p1}, LDG;->b(Landroid/view/View;Landroid/text/Spannable;)V

    .line 6326
    :cond_12
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6290
    iget-object v0, p0, LCX;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->b(Lcom/google/android/apps/docs/editors/text/TextView;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, LCX;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LCx;->a(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 6291
    add-int v0, p2, p3

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, LCX;->a:Ljava/lang/CharSequence;

    .line 6294
    :cond_20
    iget-object v0, p0, LCX;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;Ljava/lang/CharSequence;III)V

    .line 6295
    return-void
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 6340
    iget-object v0, p0, LCX;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, v3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    .line 6341
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6333
    iget-object v0, p0, LCX;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move v5, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    .line 6334
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 6347
    iget-object v0, p0, LCX;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    .line 6348
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6302
    iget-object v0, p0, LCX;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/apps/docs/editors/text/TextView;->c(Ljava/lang/CharSequence;III)V

    .line 6305
    iget-object v0, p0, LCX;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_33

    .line 6306
    const/16 v0, 0x10

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 6308
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 6309
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 6310
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 6311
    iget-object v1, p0, LCX;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 6312
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    add-int v2, p2, p4

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6313
    iget-object v1, p0, LCX;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6314
    const/4 v0, 0x0

    iput-object v0, p0, LCX;->a:Ljava/lang/CharSequence;

    .line 6316
    :cond_33
    return-void
.end method
