.class public abstract LDv;
.super LDG;
.source "BaseKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# static fields
.field static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, LDv;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, LDG;-><init>()V

    .line 146
    return-void
.end method

.method static a(LDX;Z)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 136
    const/4 v0, 0x1

    .line 137
    sget-object v1, LDw;->a:[I

    invoke-virtual {p0}, LDX;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    .line 148
    :goto_c
    if-eqz p1, :cond_12

    .line 149
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 151
    :cond_12
    return v0

    .line 139
    :pswitch_13
    const/16 v0, 0x1001

    .line 140
    goto :goto_c

    .line 142
    :pswitch_16
    const/16 v0, 0x2001

    .line 143
    goto :goto_c

    .line 145
    :pswitch_19
    const/16 v0, 0x4001

    goto :goto_c

    .line 137
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_13
        :pswitch_16
        :pswitch_19
    .end packed-switch
.end method

.method private a(Landroid/view/View;Landroid/text/Editable;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 106
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 107
    if-ge v1, v0, :cond_13

    .line 112
    :goto_a
    if-eq v1, v0, :cond_11

    .line 113
    invoke-interface {p2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 114
    const/4 v0, 0x1

    .line 116
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10

    :cond_13
    move v2, v1

    move v1, v0

    move v0, v2

    goto :goto_a
.end method

.method private a(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 71
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    and-int/lit16 v2, v2, -0xf4

    invoke-static {v2}, LDE;->a(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 101
    :cond_e
    :goto_e
    return v0

    .line 77
    :cond_f
    invoke-direct {p0, p1, p2}, LDv;->a(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v0, v1

    .line 78
    goto :goto_e

    .line 82
    :cond_17
    invoke-virtual {p4}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, 0x2

    invoke-static {p2, v2}, LDv;->a(Ljava/lang/CharSequence;I)I

    move-result v2

    if-ne v2, v1, :cond_2c

    .line 83
    :cond_24
    invoke-direct {p0, p1, p2}, LDv;->b(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v2

    if-eqz v2, :cond_2c

    move v0, v1

    .line 84
    goto :goto_e

    .line 89
    :cond_2c
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 91
    if-nez p5, :cond_3e

    invoke-virtual {p4}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-static {p2, v1}, LDv;->a(Ljava/lang/CharSequence;I)I

    move-result v2

    if-ne v2, v1, :cond_51

    .line 93
    :cond_3e
    invoke-static {p2, v3}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 97
    :goto_42
    if-eq v3, v2, :cond_e

    .line 98
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {p2, v0, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    move v0, v1

    .line 99
    goto :goto_e

    .line 95
    :cond_51
    invoke-static {p2, v3}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    goto :goto_42
.end method

.method private b(Landroid/view/View;Landroid/text/Editable;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 120
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_23

    .line 121
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_23

    .line 123
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 125
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 126
    if-eq v0, v2, :cond_23

    .line 127
    invoke-interface {p2, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 128
    const/4 v0, 0x1

    .line 132
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LDv;->a(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LDv;->a(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    packed-switch p3, :pswitch_data_22

    .line 163
    const/4 v0, 0x0

    .line 164
    invoke-static {}, LCx;->a()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 165
    const/16 v1, 0x43

    if-ne p3, v1, :cond_12

    .line 166
    invoke-virtual {p0, p1, p2, p3, p4}, LDv;->b(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 172
    :cond_12
    :goto_12
    if-eqz v0, :cond_17

    .line 173
    invoke-static {p2}, LDv;->b(Landroid/text/Spannable;)V

    .line 176
    :cond_17
    invoke-super {p0, p1, p2, p3, p4}, LDG;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 160
    :pswitch_1c
    invoke-virtual {p0, p1, p2, p3, p4}, LDv;->a(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_12

    .line 158
    nop

    :pswitch_data_22
    .packed-switch 0x43
        :pswitch_1c
    .end packed-switch
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 185
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    move v0, v2

    .line 205
    :goto_f
    return v0

    .line 191
    :cond_10
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 192
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 193
    if-ge v1, v0, :cond_27

    .line 199
    :goto_1a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    .line 200
    if-nez v3, :cond_22

    move v0, v2

    .line 201
    goto :goto_f

    .line 204
    :cond_22
    invoke-interface {p2, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 205
    const/4 v0, 0x1

    goto :goto_f

    :cond_27
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_1a
.end method
