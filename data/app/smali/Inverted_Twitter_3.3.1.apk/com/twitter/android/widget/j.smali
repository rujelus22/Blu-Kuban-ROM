.class public final Lcom/twitter/android/widget/j;
.super Landroid/text/method/ArrowKeyMovementMethod;


# static fields
.field private static final a:Lcom/twitter/android/widget/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/twitter/android/widget/j;

    invoke-direct {v0}, Lcom/twitter/android/widget/j;-><init>()V

    sput-object v0, Lcom/twitter/android/widget/j;->a:Lcom/twitter/android/widget/j;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    return-void
.end method

.method public static a()Landroid/text/method/MovementMethod;
    .registers 1

    sget-object v0, Lcom/twitter/android/widget/j;->a:Lcom/twitter/android/widget/j;

    return-object v0
.end method


# virtual methods
.method public final onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .registers 13

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/ArrowKeyMovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v1

    packed-switch p3, :pswitch_data_56

    move v0, v1

    :goto_8
    return v0

    :pswitch_9
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v0, Lcom/twitter/android/widget/k;

    invoke-interface {p2, v4, v4, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/widget/k;

    array-length v5, v0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v5, :cond_30

    aget-object v6, v0, v2

    invoke-interface {p2, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p2, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v3, v4, :cond_33

    if-le v4, v7, :cond_33

    if-ge v4, v6, :cond_33

    invoke-static {p2, v7, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_30
    :goto_30
    or-int/lit8 v0, v1, 0x0

    goto :goto_8

    :cond_33
    if-gt v3, v7, :cond_43

    if-le v4, v7, :cond_43

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p2, v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_30

    :cond_43
    if-lt v3, v6, :cond_53

    if-ge v4, v6, :cond_53

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p2, v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_30

    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :pswitch_data_56
    .packed-switch 0x13
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public final onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_a

    if-nez v2, :cond_53

    :cond_a
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    int-to-float v0, v0

    invoke-virtual {v4, v3, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    const-class v3, Lcom/twitter/android/widget/k;

    invoke-interface {p2, v0, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/widget/k;

    array-length v3, v0

    if-eqz v3, :cond_53

    if-nez v2, :cond_51

    aget-object v2, v0, v5

    invoke-interface {p2, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    aget-object v0, v0, v5

    invoke-interface {p2, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p2, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_51
    move v0, v1

    :goto_52
    return v0

    :cond_53
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/ArrowKeyMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_52
.end method
