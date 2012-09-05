.class Lcom/android/inputmethod/latin/Tutorial$Bubble;
.super Ljava/lang/Object;
.source "Tutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/Tutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Bubble"
.end annotation


# instance fields
.field bubbleBackground:Landroid/graphics/drawable/Drawable;

.field dismissOnClose:Z

.field dismissOnTouch:Z

.field gravity:I

.field inputView:Landroid/view/View;

.field text:Ljava/lang/CharSequence;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/inputmethod/latin/Tutorial;

.field width:I

.field window:Landroid/widget/PopupWindow;

.field x:I

.field y:I


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/Tutorial;Landroid/content/Context;Landroid/view/View;IIIII)V
    .registers 14
    .parameter
    .parameter "context"
    .parameter "inputView"
    .parameter "backgroundResource"
    .parameter "bx"
    .parameter "by"
    .parameter "textResource1"
    .parameter "textResource2"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->this$0:Lcom/android/inputmethod/latin/Tutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->bubbleBackground:Landroid/graphics/drawable/Drawable;

    .line 84
    iput p5, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->x:I

    .line 85
    iput p6, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->y:I

    .line 86
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3feccccccccccccdL

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->width:I

    .line 87
    const/16 v1, 0x33

    iput v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->gravity:I

    .line 88
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->text:Ljava/lang/CharSequence;

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->dismissOnTouch:Z

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->dismissOnClose:Z

    .line 94
    iput-object p3, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->inputView:Landroid/view/View;

    .line 95
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    .line 96
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 100
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->textView:Landroid/widget/TextView;

    .line 101
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->bubbleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 105
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 106
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 107
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 108
    return-void
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Landroid/view/View;Ljava/lang/CharSequence;Landroid/widget/TextView;)I
    .registers 17
    .parameter "pop"
    .parameter "parentView"
    .parameter "text"
    .parameter "tv"

    .prologue
    .line 111
    invoke-virtual/range {p4 .. p4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 112
    .local v11, wid:I
    invoke-virtual/range {p4 .. p4}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    .line 118
    .local v8, ht:I
    iget v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->width:I

    sub-int v3, v1, v11

    .line 120
    .local v3, cap:I
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual/range {p4 .. p4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 122
    .local v0, l:Landroid/text/Layout;
    const/4 v10, 0x0

    .line 123
    .local v10, max:F
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2a
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge v9, v1, :cond_3b

    .line 124
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 123
    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    .line 130
    :cond_3b
    iget v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->width:I

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 131
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 132
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    return v1
.end method


# virtual methods
.method hide()V
    .registers 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 158
    iget-object v0, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    iget-object v0, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 161
    :cond_13
    return-void
.end method

.method isShowing()Z
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method show(II)V
    .registers 9
    .parameter "offx"
    .parameter "offy"

    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->inputView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->text:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/inputmethod/latin/Tutorial$Bubble;->chooseSize(Landroid/widget/PopupWindow;Landroid/view/View;Ljava/lang/CharSequence;Landroid/widget/TextView;)I

    move-result v0

    .line 137
    .local v0, textHeight:I
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr p2, v1

    .line 138
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->inputView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_59

    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->inputView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_59

    .line 141
    :try_start_24
    iget v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->gravity:I

    and-int/lit8 v1, v1, 0x50

    const/16 v2, 0x50

    if-ne v1, v2, :cond_33

    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    sub-int/2addr p2, v1

    .line 142
    :cond_33
    iget v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->gravity:I

    and-int/lit8 v1, v1, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_41

    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 143
    :cond_41
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->textView:Landroid/widget/TextView;

    new-instance v2, Lcom/android/inputmethod/latin/Tutorial$Bubble$1;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/latin/Tutorial$Bubble$1;-><init>(Lcom/android/inputmethod/latin/Tutorial$Bubble;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->inputView:Landroid/view/View;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->x:I

    add-int/2addr v4, p1

    iget v5, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->y:I

    add-int/2addr v5, p2

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_59} :catch_5a

    .line 154
    :cond_59
    :goto_59
    return-void

    .line 150
    :catch_5a
    move-exception v1

    goto :goto_59
.end method
