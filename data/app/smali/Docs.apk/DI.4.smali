.class public LDI;
.super LDv;
.source "MultiTapKeyListener.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static a:[LDI;


# instance fields
.field private final a:LDX;

.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 39
    invoke-static {}, LDX;->values()[LDX;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [LDI;

    sput-object v0, LDI;->a:[LDI;

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, LDI;->a:Landroid/util/SparseArray;

    .line 48
    sget-object v0, LDI;->a:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, ".,1!@#$%^&*:/?\'=()"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    sget-object v0, LDI;->a:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const-string v2, "abc2ABC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    sget-object v0, LDI;->a:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string v2, "def3DEF"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, LDI;->a:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const-string v2, "ghi4GHI"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v0, LDI;->a:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const-string v2, "jkl5JKL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, LDI;->a:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const-string v2, "mno6MNO"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    sget-object v0, LDI;->a:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const-string v2, "pqrs7PQRS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v0, LDI;->a:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const-string v2, "tuv8TUV"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v0, LDI;->a:Landroid/util/SparseArray;

    const/16 v1, 0x10

    const-string v2, "wxyz9WXYZ"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, LDI;->a:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "0+"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    sget-object v0, LDI;->a:Landroid/util/SparseArray;

    const/16 v1, 0x12

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    return-void
.end method

.method public constructor <init>(LDX;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, LDv;-><init>()V

    .line 63
    iput-object p1, p0, LDI;->a:LDX;

    .line 64
    iput-boolean p2, p0, LDI;->a:Z

    .line 65
    return-void
.end method

.method public static a(ZLDX;)LDI;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-virtual {p1}, LDX;->ordinal()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    if-eqz p0, :cond_1e

    const/4 v0, 0x1

    :goto_9
    add-int/2addr v0, v1

    .line 75
    sget-object v1, LDI;->a:[LDI;

    aget-object v1, v1, v0

    if-nez v1, :cond_19

    .line 76
    sget-object v1, LDI;->a:[LDI;

    new-instance v2, LDI;

    invoke-direct {v2, p1, p0}, LDI;-><init>(LDX;Z)V

    aput-object v2, v1, v0

    .line 79
    :cond_19
    sget-object v1, LDI;->a:[LDI;

    aget-object v0, v1, v0

    return-object v0

    .line 73
    :cond_1e
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static d(Landroid/text/Spannable;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v2, LDJ;

    invoke-interface {p0, v1, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LDJ;

    .line 249
    :goto_d
    array-length v2, v0

    if-ge v1, v2, :cond_1f

    .line 250
    aget-object v2, v0, v1

    .line 252
    invoke-virtual {v2, v2}, LDJ;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    const/4 v3, 0x0

    invoke-static {v2, v3}, LDJ;->a(LDJ;Landroid/text/Editable;)Landroid/text/Editable;

    .line 254
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 256
    :cond_1f
    return-void
.end method


# virtual methods
.method public getInputType()I
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, LDI;->a:LDX;

    iget-boolean v1, p0, LDI;->a:Z

    invoke-static {v0, v1}, LDI;->a(LDX;Z)I

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x11

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 91
    .line 93
    if-eqz p1, :cond_166

    .line 94
    invoke-static {}, LDW;->a()LDW;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LDW;->a(Landroid/content/Context;)I

    move-result v0

    .line 98
    :goto_12
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 99
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 102
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 105
    sget-object v3, LDW;->b:Ljava/lang/Object;

    invoke-interface {p2, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 106
    sget-object v4, LDW;->b:Ljava/lang/Object;

    invoke-interface {p2, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 113
    sget-object v5, LDW;->b:Ljava/lang/Object;

    invoke-interface {p2, v5}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    const/high16 v8, -0x100

    and-int/2addr v5, v8

    ushr-int/lit8 v5, v5, 0x18

    .line 116
    if-ne v3, v1, :cond_143

    if-ne v4, v2, :cond_143

    sub-int v3, v2, v1

    if-ne v3, v7, :cond_143

    if-ltz v5, :cond_143

    sget-object v3, LDI;->a:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v5, v3, :cond_143

    .line 119
    if-ne p3, v9, :cond_87

    .line 120
    invoke-interface {p2, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    .line 122
    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 123
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 125
    invoke-static {p2}, LDI;->d(Landroid/text/Spannable;)V

    .line 126
    new-instance v0, LDJ;

    invoke-direct {v0, p0, p2}, LDJ;-><init>(LDI;Landroid/text/Editable;)V

    move v0, v7

    .line 234
    :goto_6b
    return v0

    .line 130
    :cond_6c
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 131
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 133
    invoke-static {p2}, LDI;->d(Landroid/text/Spannable;)V

    .line 134
    new-instance v0, LDJ;

    invoke-direct {v0, p0, p2}, LDJ;-><init>(LDI;Landroid/text/Editable;)V

    move v0, v7

    .line 136
    goto :goto_6b

    .line 140
    :cond_87
    sget-object v3, LDI;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ne v3, v5, :cond_b9

    .line 141
    sget-object v3, LDI;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 142
    invoke-interface {p2, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    .line 143
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 145
    if-ltz v4, :cond_b9

    .line 146
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rem-int v4, v0, v4

    .line 148
    add-int/lit8 v5, v4, 0x1

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 149
    invoke-static {p2}, LDI;->d(Landroid/text/Spannable;)V

    .line 150
    new-instance v0, LDJ;

    invoke-direct {v0, p0, p2}, LDJ;-><init>(LDI;Landroid/text/Editable;)V

    move v0, v7

    .line 152
    goto :goto_6b

    .line 161
    :cond_b9
    sget-object v3, LDI;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    .line 163
    if-ltz v3, :cond_163

    .line 164
    invoke-static {p2, v2, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    move v8, v3

    move v1, v2

    .line 171
    :goto_c6
    if-ltz v8, :cond_15b

    .line 176
    sget-object v3, LDI;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 179
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_161

    iget-object v0, p0, LDI;->a:LDX;

    invoke-static {v0, p2, v1}, LDW;->a(LDX;Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_161

    move v0, v6

    .line 181
    :goto_dd
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_161

    .line 182
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_14c

    move v4, v0

    .line 189
    :goto_ee
    if-eq v1, v2, :cond_f3

    .line 190
    invoke-static {p2, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 193
    :cond_f3
    sget-object v0, LDI;->a:Ljava/lang/Object;

    invoke-interface {p2, v0, v1, v1, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 196
    add-int/lit8 v5, v4, 0x1

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 198
    sget-object v0, LDI;->a:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 199
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 201
    if-eq v1, v0, :cond_11d

    .line 202
    invoke-static {p2, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 204
    sget-object v2, LDW;->e:Ljava/lang/Object;

    const/16 v3, 0x21

    invoke-interface {p2, v2, v0, v1, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 208
    sget-object v2, LDW;->b:Ljava/lang/Object;

    shl-int/lit8 v3, v8, 0x18

    or-int/lit8 v3, v3, 0x21

    invoke-interface {p2, v2, v0, v1, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 215
    :cond_11d
    invoke-static {p2}, LDI;->d(Landroid/text/Spannable;)V

    .line 216
    new-instance v0, LDJ;

    invoke-direct {v0, p0, p2}, LDJ;-><init>(LDI;Landroid/text/Editable;)V

    .line 221
    invoke-interface {p2, p0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_158

    .line 222
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v1, Landroid/text/method/KeyListener;

    invoke-interface {p2, v6, v0, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/KeyListener;

    .line 224
    array-length v2, v0

    move v1, v6

    :goto_139
    if-ge v1, v2, :cond_14f

    aget-object v3, v0, v1

    .line 225
    invoke-interface {p2, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_139

    .line 168
    :cond_143
    sget-object v3, LDI;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    move v8, v3

    goto/16 :goto_c6

    .line 181
    :cond_14c
    add-int/lit8 v0, v0, 0x1

    goto :goto_dd

    .line 227
    :cond_14f
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x12

    invoke-interface {p2, p0, v6, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_158
    move v0, v7

    .line 231
    goto/16 :goto_6b

    .line 234
    :cond_15b
    invoke-super {p0, p1, p2, p3, p4}, LDv;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_6b

    :cond_161
    move v4, v6

    goto :goto_ee

    :cond_163
    move v8, v3

    goto/16 :goto_c6

    :cond_166
    move v0, v6

    goto/16 :goto_12
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v0, :cond_c

    .line 241
    sget-object v0, LDW;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 242
    invoke-static {p1}, LDI;->d(Landroid/text/Spannable;)V

    .line 244
    :cond_c
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    return-void
.end method
