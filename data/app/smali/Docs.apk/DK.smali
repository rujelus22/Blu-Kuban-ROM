.class public abstract LDK;
.super LDv;
.source "NumberKeyListener.java"

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, LDv;-><init>()V

    return-void
.end method

.method protected static a([CC)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 83
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_e

    .line 84
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_b

    .line 85
    const/4 v0, 0x1

    .line 89
    :goto_a
    return v0

    .line 83
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 89
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method protected a(Landroid/view/KeyEvent;Landroid/text/Spannable;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-virtual {p0}, LDK;->a()[C

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-static {p2}, LDK;->a(Ljava/lang/CharSequence;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    return v0
.end method

.method protected abstract a()[C
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0}, LDK;->a()[C

    move-result-object v2

    move v1, p2

    .line 50
    :goto_5
    if-ge v1, p3, :cond_11

    .line 51
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v2, v0}, LDK;->a([CC)Z

    move-result v0

    if-nez v0, :cond_15

    .line 56
    :cond_11
    if-ne v1, p3, :cond_19

    .line 58
    const/4 v0, 0x0

    .line 79
    :cond_14
    :goto_14
    return-object v0

    .line 50
    :cond_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 61
    :cond_19
    sub-int v0, p3, p2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_21

    .line 63
    const-string v0, ""

    goto :goto_14

    .line 66
    :cond_21
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 68
    sub-int v3, v1, p2

    .line 69
    sub-int v1, p3, p2

    .line 71
    sub-int v4, v1, p2

    .line 73
    add-int/lit8 v1, v1, -0x1

    :goto_2e
    if-lt v1, v3, :cond_14

    .line 74
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v2, v4}, LDK;->a([CC)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 75
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 73
    :cond_3f
    add-int/lit8 v1, v1, -0x1

    goto :goto_2e
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x30

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 99
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 101
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 102
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 105
    if-ltz v3, :cond_18

    if-gez v2, :cond_67

    .line 107
    :cond_18
    invoke-static {p2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v3, v1

    move v4, v1

    .line 110
    :goto_1d
    if-eqz p4, :cond_3e

    invoke-virtual {p0, p4, p2}, LDK;->a(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v2

    .line 111
    :goto_23
    if-eqz p4, :cond_29

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 112
    :cond_29
    if-nez v1, :cond_40

    .line 113
    if-eqz v2, :cond_5f

    .line 114
    if-eq v4, v3, :cond_32

    .line 115
    invoke-static {p2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 118
    :cond_32
    int-to-char v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v4, v3, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 120
    invoke-static {p2}, LDK;->b(Landroid/text/Spannable;)V

    .line 135
    :goto_3d
    return v0

    :cond_3e
    move v2, v1

    .line 110
    goto :goto_23

    .line 123
    :cond_40
    if-ne v2, v5, :cond_5f

    if-ne v1, v0, :cond_5f

    .line 126
    if-ne v4, v3, :cond_5f

    if-lez v3, :cond_5f

    add-int/lit8 v1, v4, -0x1

    invoke-interface {p2, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_5f

    .line 128
    add-int/lit8 v1, v4, -0x1

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v3, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 129
    invoke-static {p2}, LDK;->b(Landroid/text/Spannable;)V

    goto :goto_3d

    .line 134
    :cond_5f
    invoke-static {p2}, LDK;->b(Landroid/text/Spannable;)V

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, LDv;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_3d

    :cond_67
    move v4, v3

    move v3, v2

    goto :goto_1d
.end method
