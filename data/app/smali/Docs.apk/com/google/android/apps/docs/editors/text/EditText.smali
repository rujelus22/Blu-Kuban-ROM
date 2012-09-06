.class public Lcom/google/android/apps/docs/editors/text/EditText;
.super Lcom/google/android/apps/docs/editors/text/TextView;
.source "EditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/docs/editors/text/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/docs/editors/text/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/text/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method


# virtual methods
.method protected a()LDH;
    .registers 2

    .prologue
    .line 69
    invoke-static {}, LDu;->a()LDH;

    move-result-object v0

    return-object v0
.end method

.method public a()Landroid/text/Editable;
    .registers 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/EditText;->a()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method protected i()Z
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .registers 4
    .parameter

    .prologue
    .line 112
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_c

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EditText cannot use the ellipsize mode TextUtils.TruncateAt.MARQUEE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_c
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 117
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/EditText;->a()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 94
    return-void
.end method

.method public setSelection(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/EditText;->a()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 87
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;LCW;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 79
    sget-object v0, LCW;->c:LCW;

    invoke-super {p0, p1, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setText(Ljava/lang/CharSequence;LCW;)V

    .line 80
    return-void
.end method
