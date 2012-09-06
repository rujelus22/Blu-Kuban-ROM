.class public Lcom/google/android/apps/plus/views/TextViewUtils;
.super Ljava/lang/Object;
.source "TextViewUtils.java"


# direct methods
.method public static createBoldText(Landroid/content/Context;Landroid/util/AttributeSet;IFI)Landroid/widget/TextView;
    .registers 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "size"
    .parameter "color"

    .prologue
    const/4 v5, 0x1

    .line 20
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/views/TextViewUtils;->createText(Landroid/content/Context;Landroid/util/AttributeSet;IFIZZ)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public static createText(Landroid/content/Context;Landroid/util/AttributeSet;IFIZZ)Landroid/widget/TextView;
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "size"
    .parameter "color"
    .parameter "bold"
    .parameter "singleLine"

    .prologue
    .line 25
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    .local v0, view:Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 28
    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 29
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 32
    if-eqz p5, :cond_1b

    .line 33
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 36
    :cond_1b
    return-object v0
.end method
