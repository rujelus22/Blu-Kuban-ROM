.class public LDF;
.super LDU;
.source "LinkMovementMethod.java"


# static fields
.field private static a:LDF;

.field private static a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 254
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, LDF;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, LDU;-><init>()V

    return-void
.end method

.method public static a()LDH;
    .registers 1

    .prologue
    .line 247
    sget-object v0, LDF;->a:LDF;

    if-nez v0, :cond_b

    .line 248
    new-instance v0, LDF;

    invoke-direct {v0}, LDF;-><init>()V

    sput-object v0, LDF;->a:LDF;

    .line 250
    :cond_b
    sget-object v0, LDF;->a:LDF;

    return-object v0
.end method

.method private a(ILcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v1, -0x1

    const v4, 0x7fffffff

    const/4 v2, 0x0

    .line 93
    invoke-virtual {p2}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v0

    .line 95
    invoke-virtual {p2}, Lcom/google/android/apps/docs/editors/text/TextView;->k()I

    move-result v3

    invoke-virtual {p2}, Lcom/google/android/apps/docs/editors/text/TextView;->l()I

    move-result v5

    add-int/2addr v3, v5

    .line 97
    invoke-virtual {p2}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v5

    .line 98
    invoke-virtual {p2}, Lcom/google/android/apps/docs/editors/text/TextView;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    sub-int v3, v6, v3

    .line 100
    invoke-virtual {v0, v5}, LCl;->g(I)I

    move-result v5

    .line 101
    invoke-virtual {v0, v3}, LCl;->g(I)I

    move-result v3

    .line 103
    invoke-virtual {v0, v5}, LCl;->c(I)I

    move-result v6

    .line 104
    invoke-virtual {v0, v3}, LCl;->i(I)I

    move-result v8

    .line 106
    const-class v0, LEf;

    invoke-interface {p3, v6, v8, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LEf;

    .line 108
    invoke-static {p3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 109
    invoke-static {p3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v9

    .line 111
    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 112
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 114
    if-gez v5, :cond_55

    .line 115
    sget-object v9, LDF;->a:Ljava/lang/Object;

    invoke-interface {p3, v9}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_55

    .line 116
    invoke-interface {p3}, Landroid/text/Spannable;->length()I

    move-result v3

    move v5, v3

    .line 120
    :cond_55
    if-le v5, v8, :cond_59

    move v3, v4

    move v5, v4

    .line 122
    :cond_59
    if-ge v3, v6, :cond_ba

    move v8, v1

    move v9, v1

    .line 125
    :goto_5d
    packed-switch p1, :pswitch_data_be

    .line 186
    :cond_60
    :goto_60
    return v2

    .line 127
    :pswitch_61
    if-eq v9, v8, :cond_60

    .line 131
    const-class v0, LEf;

    invoke-interface {p3, v9, v8, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LEf;

    .line 133
    array-length v1, v0

    if-ne v1, v7, :cond_60

    .line 136
    aget-object v0, v0, v2

    invoke-interface {v0, p2}, LEf;->a(Landroid/view/View;)V

    goto :goto_60

    :pswitch_74
    move v3, v1

    move v4, v1

    move v1, v2

    .line 145
    :goto_77
    array-length v5, v0

    if-ge v1, v5, :cond_90

    .line 146
    aget-object v5, v0, v1

    invoke-interface {p3, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 148
    if-lt v5, v8, :cond_84

    if-ne v9, v8, :cond_8d

    .line 149
    :cond_84
    if-le v5, v3, :cond_8d

    .line 150
    aget-object v3, v0, v1

    invoke-interface {p3, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    move v3, v5

    .line 145
    :cond_8d
    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    .line 156
    :cond_90
    if-ltz v4, :cond_60

    .line 157
    invoke-static {p3, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    move v2, v7

    .line 158
    goto :goto_60

    :pswitch_97
    move v1, v2

    move v3, v4

    move v5, v4

    .line 167
    :goto_9a
    array-length v6, v0

    if-ge v1, v6, :cond_b3

    .line 168
    aget-object v6, v0, v1

    invoke-interface {p3, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 170
    if-gt v6, v9, :cond_a7

    if-ne v9, v8, :cond_b0

    .line 171
    :cond_a7
    if-ge v6, v5, :cond_b0

    .line 173
    aget-object v3, v0, v1

    invoke-interface {p3, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    move v5, v6

    .line 167
    :cond_b0
    add-int/lit8 v1, v1, 0x1

    goto :goto_9a

    .line 178
    :cond_b3
    if-ge v3, v4, :cond_60

    .line 179
    invoke-static {p3, v5, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    move v2, v7

    .line 180
    goto :goto_60

    :cond_ba
    move v8, v3

    move v9, v5

    goto :goto_5d

    .line 125
    nop

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_61
        :pswitch_74
        :pswitch_97
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 231
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 232
    sget-object v0, LDF;->a:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 233
    return-void
.end method

.method public a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 237
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 239
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_10

    .line 240
    sget-object v0, LDF;->a:Ljava/lang/Object;

    const/16 v1, 0x22

    invoke-interface {p2, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 244
    :goto_f
    return-void

    .line 242
    :cond_10
    sget-object v0, LDF;->a:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_f
.end method

.method protected a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 76
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, LDF;->a(ILcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 77
    const/4 v0, 0x1

    .line 80
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2}, LDU;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_8
.end method

.method protected a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 42
    sparse-switch p3, :sswitch_data_22

    .line 53
    :cond_4
    invoke-super/range {p0 .. p5}, LDU;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_8
    return v0

    .line 45
    :sswitch_9
    invoke-static {p4}, LDE;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 46
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, v0, p1, p2}, LDF;->a(ILcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_8

    .line 42
    :sswitch_data_22
    .sparse-switch
        0x17 -> :sswitch_9
        0x42 -> :sswitch_9
    .end sparse-switch
.end method

.method protected b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 85
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, LDF;->a(ILcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 86
    const/4 v0, 0x1

    .line 89
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2}, LDU;->b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_8
.end method

.method public b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 192
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 194
    if-eq v2, v1, :cond_a

    if-nez v2, :cond_5e

    .line 196
    :cond_a
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 197
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 199
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->i()I

    move-result v4

    sub-int/2addr v0, v4

    .line 200
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->k()I

    move-result v4

    sub-int/2addr v3, v4

    .line 202
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v4

    add-int/2addr v0, v4

    .line 203
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    .line 205
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v4

    .line 206
    invoke-virtual {v4, v3}, LCl;->g(I)I

    move-result v3

    .line 207
    int-to-float v0, v0

    invoke-virtual {v4, v3, v0}, LCl;->a(IF)I

    move-result v0

    .line 209
    const-class v3, LEf;

    invoke-interface {p2, v0, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LEf;

    .line 211
    array-length v3, v0

    if-eqz v3, :cond_5b

    .line 212
    if-ne v2, v1, :cond_49

    .line 213
    aget-object v0, v0, v5

    invoke-interface {v0, p1}, LEf;->a(Landroid/view/View;)V

    :cond_47
    :goto_47
    move v0, v1

    .line 226
    :goto_48
    return v0

    .line 214
    :cond_49
    if-nez v2, :cond_47

    .line 215
    aget-object v2, v0, v5

    invoke-interface {p2, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    aget-object v0, v0, v5

    invoke-interface {p2, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p2, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_47

    .line 222
    :cond_5b
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 226
    :cond_5e
    invoke-super {p0, p1, p2, p3}, LDU;->b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_48
.end method

.method protected c(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, LDF;->a(ILcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 59
    const/4 v0, 0x1

    .line 62
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2}, LDU;->c(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_8
.end method

.method protected d(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, LDF;->a(ILcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 68
    const/4 v0, 0x1

    .line 71
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2}, LDU;->d(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_8
.end method
