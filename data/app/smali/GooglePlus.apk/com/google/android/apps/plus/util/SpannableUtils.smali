.class public Lcom/google/android/apps/plus/util/SpannableUtils;
.super Ljava/lang/Object;
.source "SpannableUtils.java"


# direct methods
.method public static appendWithSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;)V
    .registers 6
    .parameter "builder"
    .parameter "text"
    .parameter "span"

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 20
    .local v0, originalLength:I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 21
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {p0, p2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 22
    return-void
.end method

.method public static setTextWithHighlight(Landroid/widget/TextView;Ljava/lang/String;ILandroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11
    .parameter "textView"
    .parameter "text"
    .parameter "startIndex"
    .parameter "stringBuilder"
    .parameter "highlightedText"
    .parameter "boldSpan"
    .parameter "colorSpan"

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 31
    :cond_d
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :goto_10
    return-void

    .line 35
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 36
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_20

    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 41
    :cond_20
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 42
    invoke-virtual {p3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 43
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    add-int v0, v1, v2

    .line 48
    .local v0, end:I
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-le v0, v2, :cond_36

    .line 49
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 52
    :cond_36
    invoke-virtual {p3, p5, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 53
    invoke-virtual {p3, p6, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 54
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method
