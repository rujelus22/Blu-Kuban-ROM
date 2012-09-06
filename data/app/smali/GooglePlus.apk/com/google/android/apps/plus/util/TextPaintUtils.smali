.class public Lcom/google/android/apps/plus/util/TextPaintUtils;
.super Ljava/lang/Object;
.source "TextPaintUtils.java"


# static fields
.field private static sFontSizeObserver:Landroid/database/ContentObserver;

.field private static final sTextPaintsAndSizeResIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/text/TextPaint;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/util/TextPaintUtils;->sTextPaintsAndSizeResIds:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/apps/plus/util/TextPaintUtils;->sTextPaintsAndSizeResIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static createConstrainedStaticLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/text/StaticLayout;
    .registers 15
    .parameter "textPaint"
    .parameter "src"
    .parameter "maxWidth"
    .parameter "maxLines"

    .prologue
    .line 82
    if-nez p3, :cond_13

    .line 84
    const-string v2, ""

    .line 106
    .local v2, layoutSrc:Ljava/lang/CharSequence;
    :goto_4
    new-instance v1, Landroid/text/StaticLayout;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v1

    .end local v2           #layoutSrc:Ljava/lang/CharSequence;
    :cond_12
    return-object v0

    .line 85
    :cond_13
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1d

    .line 87
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, p0, p2, v1}, Lcom/google/android/apps/plus/util/TextPaintUtils;->smartEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2       #layoutSrc:Ljava/lang/CharSequence;
    goto :goto_4

    .line 89
    .end local v2           #layoutSrc:Ljava/lang/CharSequence;
    :cond_1d
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 91
    .local v0, layout:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-le v1, p3, :cond_12

    .line 97
    add-int/lit8 v1, p3, -0x2

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v10

    .line 98
    .local v10, end:I
    new-instance v9, Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 100
    .local v9, builder:Landroid/text/SpannableStringBuilder;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v10, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, p0, p2, v3}, Lcom/google/android/apps/plus/util/TextPaintUtils;->smartEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 102
    move-object v2, v9

    .restart local v2       #layoutSrc:Ljava/lang/CharSequence;
    goto :goto_4
.end method

.method public static init(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 42
    sget-object v3, Lcom/google/android/apps/plus/util/TextPaintUtils;->sFontSizeObserver:Landroid/database/ContentObserver;

    if-nez v3, :cond_28

    .line 43
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    .local v1, mainHandler:Landroid/os/Handler;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 45
    .local v2, res:Landroid/content/res/Resources;
    new-instance v3, Lcom/google/android/apps/plus/util/TextPaintUtils$1;

    invoke-direct {v3, v1, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils$1;-><init>(Landroid/os/Handler;Landroid/content/res/Resources;)V

    sput-object v3, Lcom/google/android/apps/plus/util/TextPaintUtils;->sFontSizeObserver:Landroid/database/ContentObserver;

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 55
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v3, "font_scale"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/google/android/apps/plus/util/TextPaintUtils;->sFontSizeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 59
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v1           #mainHandler:Landroid/os/Handler;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_28
    return-void
.end method

.method public static registerTextPaint(Landroid/text/TextPaint;I)V
    .registers 5
    .parameter "textPaint"
    .parameter "resId"

    .prologue
    .line 68
    sget-object v0, Lcom/google/android/apps/plus/util/TextPaintUtils;->sTextPaintsAndSizeResIds:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public static smartEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    .registers 11
    .parameter "src"
    .parameter "textPaint"
    .parameter "width"
    .parameter "truncateAt"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, srcString:Ljava/lang/String;
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 122
    .local v1, rIndex:I
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 124
    .local v0, nIndex:I
    if-ne v1, v5, :cond_1d

    if-ne v0, v5, :cond_1d

    .line 125
    move-object v3, p0

    .line 133
    .local v3, srcToProcess:Ljava/lang/CharSequence;
    :goto_17
    int-to-float v4, p2

    invoke-static {v3, p1, v4, p3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    .line 126
    .end local v3           #srcToProcess:Ljava/lang/CharSequence;
    :cond_1d
    if-ne v1, v5, :cond_24

    .line 127
    invoke-interface {p0, v6, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .restart local v3       #srcToProcess:Ljava/lang/CharSequence;
    goto :goto_17

    .line 128
    .end local v3           #srcToProcess:Ljava/lang/CharSequence;
    :cond_24
    if-ne v0, v5, :cond_2b

    .line 129
    invoke-interface {p0, v6, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .restart local v3       #srcToProcess:Ljava/lang/CharSequence;
    goto :goto_17

    .line 131
    .end local v3           #srcToProcess:Ljava/lang/CharSequence;
    :cond_2b
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {p0, v6, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .restart local v3       #srcToProcess:Ljava/lang/CharSequence;
    goto :goto_17
.end method
