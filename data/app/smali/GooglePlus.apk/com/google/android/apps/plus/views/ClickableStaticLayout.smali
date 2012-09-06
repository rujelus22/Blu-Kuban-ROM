.class public Lcom/google/android/apps/plus/views/ClickableStaticLayout;
.super Lcom/google/android/apps/plus/views/PositionedStaticLayout;
.source "ClickableStaticLayout.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ClickableItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;,
        Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;
    }
.end annotation


# instance fields
.field private final mClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

.field private mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

.field private final mSpannedText:Landroid/text/Spanned;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V
    .registers 10
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "clickListener"

    .prologue
    .line 96
    invoke-direct/range {p0 .. p7}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 98
    iput-object p8, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    .line 100
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_e

    .line 101
    check-cast p1, Landroid/text/Spanned;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mSpannedText:Landroid/text/Spanned;

    .line 105
    :goto_d
    return-void

    .line 103
    .restart local p1
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mSpannedText:Landroid/text/Spanned;

    goto :goto_d
.end method

.method public static buildStateSpans(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/text/SpannableStringBuilder;
    .registers 17
    .parameter "context"
    .parameter "html"
    .parameter "maxSize"
    .parameter "showSeeMoreLink"

    .prologue
    .line 246
    if-nez p1, :cond_8

    .line 248
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 282
    :cond_7
    :goto_7
    return-object v0

    .line 251
    :cond_8
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 252
    .local v1, content:Landroid/text/Spanned;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 254
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    const/4 v10, 0x0

    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v11

    const-class v12, Landroid/text/style/URLSpan;

    invoke-virtual {v0, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/URLSpan;

    .line 255
    .local v9, spans:[Landroid/text/style/URLSpan;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1f
    array-length v10, v9

    if-ge v2, v10, :cond_42

    .line 256
    aget-object v8, v9, v2

    .line 257
    .local v8, span:Landroid/text/style/URLSpan;
    new-instance v4, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    invoke-virtual {v8}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;-><init>(Ljava/lang/String;)V

    .line 258
    .local v4, newSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;
    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v0, v4, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 260
    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 263
    .end local v4           #newSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;
    .end local v8           #span:Landroid/text/style/URLSpan;
    :cond_42
    if-eqz p0, :cond_7

    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 265
    .local v5, res:Landroid/content/res/Resources;
    const/4 v10, -0x1

    if-eq p2, v10, :cond_95

    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v10

    if-ge p2, v10, :cond_95

    const/4 v3, 0x1

    .line 267
    .local v3, manuallyTruncated:Z
    :goto_52
    if-eqz v3, :cond_65

    .line 268
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v10

    invoke-virtual {v0, p2, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 269
    const v10, 0x7f0803a8

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 272
    :cond_65
    if-nez v3, :cond_69

    if-eqz p3, :cond_7

    .line 273
    :cond_69
    const v10, 0x7f0803a9

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 274
    .local v6, seeMore:Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 275
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const v10, 0x7f0a0013

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v7, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 277
    .local v7, seeMoreSpan:Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v0, v7, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_7

    .line 265
    .end local v3           #manuallyTruncated:Z
    .end local v6           #seeMore:Ljava/lang/String;
    .end local v7           #seeMoreSpan:Landroid/text/style/ForegroundColorSpan;
    :cond_95
    const/4 v3, 0x0

    goto :goto_52
.end method

.method public static buildStateSpans(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 4
    .parameter "html"

    .prologue
    .line 231
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->buildStateSpans(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private convertToLocalHorizontalCoordinate(F)F
    .registers 3
    .parameter "x"

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 201
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 202
    return p1
.end method

.method private getLineAtCoordinate(F)I
    .registers 3
    .parameter "y"

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 211
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 212
    float-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method private getOffsetAtCoordinate(IF)I
    .registers 4
    .parameter "line"
    .parameter "x"

    .prologue
    .line 219
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->convertToLocalHorizontalCoordinate(F)F

    move-result p2

    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getOffsetForPosition(FF)I
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 191
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getLineAtCoordinate(F)I

    move-result v0

    .line 192
    .local v0, line:I
    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getOffsetAtCoordinate(IF)I

    move-result v1

    return v1
.end method

.method public handleEvent(III)Z
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 120
    const/4 v4, 0x3

    if-ne p3, v4, :cond_12

    .line 121
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    if-eqz v4, :cond_11

    .line 122
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    invoke-virtual {v4, v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;->setClicked(Z)V

    .line 123
    iput-object v6, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    .line 176
    :cond_11
    :goto_11
    return v2

    .line 128
    :cond_12
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mSpannedText:Landroid/text/Spanned;

    if-nez v4, :cond_18

    move v2, v3

    .line 129
    goto :goto_11

    .line 132
    :cond_18
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mContentArea:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 133
    if-ne p3, v2, :cond_2d

    .line 134
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    if-eqz v2, :cond_2d

    .line 135
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;->setClicked(Z)V

    .line 136
    iput-object v6, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    :cond_2d
    move v2, v3

    .line 139
    goto :goto_11

    .line 142
    :cond_2f
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mContentArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, p1, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mContentArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getOffsetForPosition(FF)I

    move-result v0

    .line 143
    .local v0, offset:I
    if-gez v0, :cond_45

    move v2, v3

    .line 144
    goto :goto_11

    .line 147
    :cond_45
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mSpannedText:Landroid/text/Spanned;

    const-class v5, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    invoke-interface {v4, v0, v0, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    .line 148
    .local v1, spans:[Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;
    array-length v4, v1

    if-nez v4, :cond_54

    move v2, v3

    .line 149
    goto :goto_11

    .line 152
    :cond_54
    packed-switch p3, :pswitch_data_80

    goto :goto_11

    .line 154
    :pswitch_58
    aget-object v3, v1, v3

    iput-object v3, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    .line 155
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    invoke-virtual {v3, v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;->setClicked(Z)V

    goto :goto_11

    .line 160
    :pswitch_62
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    aget-object v5, v1, v3

    if-ne v4, v5, :cond_73

    iget-object v4, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    if-eqz v4, :cond_73

    .line 161
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    aget-object v5, v1, v3

    invoke-interface {v4, v5}, Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;->onSpanClick(Landroid/text/style/URLSpan;)V

    .line 164
    :cond_73
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    if-eqz v4, :cond_11

    .line 165
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    invoke-virtual {v4, v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;->setClicked(Z)V

    .line 166
    iput-object v6, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    goto :goto_11

    .line 152
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_58
        :pswitch_62
    .end packed-switch
.end method
