.class public Lcom/google/android/apps/plus/views/ClickableStaticLayout;
.super Landroid/text/StaticLayout;
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

.field private mContentRect:Landroid/graphics/Rect;

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
    .line 99
    invoke-direct/range {p0 .. p7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 101
    iput-object p8, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    .line 103
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_e

    .line 104
    check-cast p1, Landroid/text/Spanned;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mSpannedText:Landroid/text/Spanned;

    .line 108
    :goto_d
    return-void

    .line 106
    .restart local p1
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mSpannedText:Landroid/text/Spanned;

    goto :goto_d
.end method

.method public static buildStateSpans(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)Landroid/text/SpannableStringBuilder;
    .registers 12
    .parameter "context"
    .parameter "html"
    .parameter "maxSize"
    .parameter "searchQuery"
    .parameter "showSeeMoreLink"

    .prologue
    .line 338
    invoke-static {p0, p1, p2, p4}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->buildStateSpans(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 341
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    if-eqz p3, :cond_38

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_38

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_38

    .line 342
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, text:Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, index:I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 348
    .local v2, searchQueryLength:I
    :goto_23
    invoke-virtual {v3, p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_38

    .line 349
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int v5, v1, v2

    const/16 v6, 0x21

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 351
    add-int/2addr v1, v2

    goto :goto_23

    .line 355
    .end local v1           #index:I
    .end local v2           #searchQueryLength:I
    .end local v3           #text:Ljava/lang/String;
    :cond_38
    return-object v0
.end method

.method public static buildStateSpans(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/text/SpannableStringBuilder;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 275
    if-nez p1, :cond_9

    .line 277
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 308
    :goto_8
    return-object v0

    .line 280
    :cond_9
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 281
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 283
    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v4, Landroid/text/style/URLSpan;

    invoke-virtual {v2, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 284
    :goto_1e
    array-length v4, v0

    if-ge v1, v4, :cond_41

    .line 285
    aget-object v4, v0, v1

    .line 286
    new-instance v5, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 289
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 292
    :cond_41
    const/4 v0, -0x1

    if-eq p2, v0, :cond_8b

    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v0

    if-ge p2, v0, :cond_8b

    .line 293
    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v0

    invoke-virtual {v2, p2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 296
    const v1, 0x7f0702c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 298
    if-eqz p3, :cond_8b

    .line 299
    const v1, 0x7f0702ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 301
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, 0x7f09000b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 303
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_8b
    move-object v0, v2

    .line 308
    goto/16 :goto_8
.end method

.method public static buildStateSpans(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 4
    .parameter "html"

    .prologue
    .line 260
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->buildStateSpans(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static buildStateSpans(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 5
    .parameter "html"
    .parameter "searchQuery"

    .prologue
    .line 321
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, p1, v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->buildStateSpans(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private convertToLocalHorizontalCoordinate(F)F
    .registers 3
    .parameter "x"

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 212
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 213
    return p1
.end method

.method private getLineAtCoordinate(F)I
    .registers 3
    .parameter "y"

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 222
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 223
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
    .line 230
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->convertToLocalHorizontalCoordinate(F)F

    move-result p2

    .line 231
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
    .line 202
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getLineAtCoordinate(F)I

    move-result v0

    .line 203
    .local v0, line:I
    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getOffsetAtCoordinate(IF)I

    move-result v1

    return v1
.end method

.method public handleEvent(III)Z
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    const/4 v0, 0x3

    if-ne p3, v0, :cond_13

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    if-eqz v0, :cond_11

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;->setClicked(Z)V

    .line 134
    iput-object v5, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    :cond_11
    move v0, v1

    .line 187
    :goto_12
    return v0

    .line 139
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mSpannedText:Landroid/text/Spanned;

    if-nez v0, :cond_19

    move v0, v2

    .line 140
    goto :goto_12

    .line 143
    :cond_19
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_30

    .line 144
    if-ne p3, v1, :cond_2e

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    if-eqz v0, :cond_2e

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;->setClicked(Z)V

    .line 147
    iput-object v5, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    :cond_2e
    move v0, v2

    .line 150
    goto :goto_12

    .line 153
    :cond_30
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mContentRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mContentRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {p0, v0, v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getOffsetForPosition(FF)I

    move-result v0

    .line 154
    if-gez v0, :cond_46

    move v0, v2

    .line 155
    goto :goto_12

    .line 158
    :cond_46
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mSpannedText:Landroid/text/Spanned;

    const-class v4, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    invoke-interface {v3, v0, v0, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    .line 159
    array-length v3, v0

    if-nez v3, :cond_55

    move v0, v2

    .line 160
    goto :goto_12

    .line 163
    :cond_55
    packed-switch p3, :pswitch_data_82

    :cond_58
    :goto_58
    move v0, v1

    .line 187
    goto :goto_12

    .line 165
    :pswitch_5a
    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;->setClicked(Z)V

    goto :goto_58

    .line 171
    :pswitch_64
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    aget-object v4, v0, v2

    if-ne v3, v4, :cond_75

    iget-object v3, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    if-eqz v3, :cond_75

    .line 172
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    aget-object v0, v0, v2

    invoke-interface {v3, v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;->onSpanClick(Landroid/text/style/URLSpan;)V

    .line 175
    :cond_75
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    if-eqz v0, :cond_58

    .line 176
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;->setClicked(Z)V

    .line 177
    iput-object v5, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mClickedSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    goto :goto_58

    .line 163
    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_64
    .end packed-switch
.end method

.method public setPosition(II)V
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getWidth()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->mContentRect:Landroid/graphics/Rect;

    .line 116
    return-void
.end method
