.class public Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;
.super Landroid/widget/TextView;
.source "InfoTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView$1;,
        Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView$eFontStyle;
    }
.end annotation


# instance fields
.field private ClearColor:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mHeight:I

.field private mTextColor:I

.field private mTextFont:Landroid/graphics/Typeface;

.field private mTextGravity:I

.field private mTextSize:F

.field private mTxtBmp:Landroid/graphics/Bitmap;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 7
    .parameter "context"
    .parameter "_width"
    .parameter "_height"

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 14
    iput v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->ClearColor:I

    .line 16
    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mCanvas:Landroid/graphics/Canvas;

    .line 17
    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mTxtBmp:Landroid/graphics/Bitmap;

    .line 18
    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mWidth:I

    .line 19
    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mHeight:I

    .line 20
    const/high16 v0, 0x4170

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mTextSize:F

    .line 21
    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mTextFont:Landroid/graphics/Typeface;

    .line 22
    const/high16 v0, -0x100

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mTextColor:I

    .line 23
    const/16 v0, 0x11

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mTextGravity:I

    .line 70
    iput p2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mWidth:I

    .line 71
    iput p3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mHeight:I

    .line 72
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mTxtBmp:Landroid/graphics/Bitmap;

    .line 73
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mTxtBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 74
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mTxtBmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mCanvas:Landroid/graphics/Canvas;

    .line 78
    return-void
.end method


# virtual methods
.method public GetBitmapWithText(IILjava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "_width"
    .parameter "_height"
    .parameter "contactNameText"

    .prologue
    const/4 v3, 0x0

    .line 107
    iget v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->ClearColor:I

    invoke-virtual {p0, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->resetCanavsColor(I)V

    .line 108
    invoke-virtual {p0, p3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->setTextForView(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->measure(II)V

    .line 110
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->getMeasuredWidth()I

    move-result v1

    .line 111
    .local v1, w:I
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->getMeasuredHeight()I

    move-result v0

    .line 112
    .local v0, h:I
    invoke-virtual {p0, v3, v3, v1, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->layout(IIII)V

    .line 113
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->GetCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->draw(Landroid/graphics/Canvas;)V

    .line 114
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mTxtBmp:Landroid/graphics/Bitmap;

    return-object v2
.end method

.method public GetCanvas()Landroid/graphics/Canvas;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 139
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 144
    move v1, p1

    .line 145
    .local v1, w:I
    move v0, p2

    .line 146
    .local v0, h:I
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->getSuggestedMinimumWidth()I

    move-result v1

    .line 147
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->getSuggestedMinimumHeight()I

    move-result v0

    .line 148
    invoke-virtual {p0, v1, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->setMeasuredDimension(II)V

    .line 149
    return-void
.end method

.method public resetCanavsColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mTxtBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 89
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mTxtBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    return-void
.end method

.method public setTextColor(I)V
    .registers 2
    .parameter "color"

    .prologue
    .line 98
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mTextColor:I

    .line 99
    return-void
.end method

.method public setTextFont(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView$eFontStyle;)V
    .registers 6
    .parameter "style"

    .prologue
    .line 43
    const-string v0, "system/fonts/DroidSans.TTF"

    .line 45
    .local v0, fontPath:Ljava/lang/String;
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView$1;->$SwitchMap$com$sec$ccl$csp$app$secretwallpaper$themeone$InfoTextView$eFontStyle:[I

    invoke-virtual {p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView$eFontStyle;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_54

    .line 63
    :goto_d
    const-string v1, "TextViewExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Font Path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mTextFont:Landroid/graphics/Typeface;

    .line 65
    return-void

    .line 47
    :pswitch_2c
    const-string v0, "system/fonts/Clockopia.ttf"

    goto :goto_d

    .line 48
    :pswitch_2f
    const-string v0, "system/fonts/DroidSans.ttf"

    goto :goto_d

    .line 49
    :pswitch_32
    const-string v0, "system/fonts/DroidSans-Bold.ttf"

    goto :goto_d

    .line 50
    :pswitch_35
    const-string v0, "system/fonts/DroidSansArabic.ttf"

    goto :goto_d

    .line 51
    :pswitch_38
    const-string v0, "system/fonts/DroidSans_Subset.ttf"

    goto :goto_d

    .line 52
    :pswitch_3b
    const-string v0, "system/fonts/DroidSansHebrew.ttf"

    goto :goto_d

    .line 53
    :pswitch_3e
    const-string v0, "system/fonts/DroidSansMono.ttf"

    goto :goto_d

    .line 54
    :pswitch_41
    const-string v0, "system/fonts/DroidSansFallback.ttf"

    goto :goto_d

    .line 55
    :pswitch_44
    const-string v0, "system/fonts/DroidSansThai.ttf"

    goto :goto_d

    .line 56
    :pswitch_47
    const-string v0, "system/fonts/DroidSerif-Bold.ttf"

    goto :goto_d

    .line 57
    :pswitch_4a
    const-string v0, "system/fonts/DroidSerif-BoldItalic.ttf"

    goto :goto_d

    .line 58
    :pswitch_4d
    const-string v0, "system/fonts/DroidSerif-Italic.ttf"

    goto :goto_d

    .line 59
    :pswitch_50
    const-string v0, "system/fonts/DroidSerif-Regular.ttf"

    goto :goto_d

    .line 45
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_38
        :pswitch_3b
        :pswitch_3e
        :pswitch_41
        :pswitch_44
        :pswitch_47
        :pswitch_4a
        :pswitch_4d
        :pswitch_50
    .end packed-switch
.end method

.method public setTextForView(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 120
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mWidth:I

    invoke-super {p0, v0}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 121
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mHeight:I

    invoke-super {p0, v0}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 122
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mHeight:I

    invoke-super {p0, v0}, Landroid/widget/TextView;->setHeight(I)V

    .line 123
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mWidth:I

    invoke-super {p0, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 124
    invoke-super {p0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 125
    invoke-super {p0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 126
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mTextColor:I

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mTextSize:F

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 128
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mTextFont:Landroid/graphics/Typeface;

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 129
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 131
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mTextGravity:I

    invoke-super {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 133
    return-void
.end method

.method public setTextGravity(I)V
    .registers 2
    .parameter "_gravity"

    .prologue
    .line 102
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mTextGravity:I

    .line 103
    return-void
.end method

.method public setTextSize(F)V
    .registers 2
    .parameter "_size"

    .prologue
    .line 93
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->mTextSize:F

    .line 94
    return-void
.end method
