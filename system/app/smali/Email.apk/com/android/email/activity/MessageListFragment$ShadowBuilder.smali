.class Lcom/android/email/activity/MessageListFragment$ShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShadowBuilder"
.end annotation


# static fields
.field private static sBackground:Landroid/graphics/Bitmap;

.field private static sCountImage:Landroid/graphics/Bitmap;

.field private static sCountImageNinePatch:Landroid/graphics/NinePatch;

.field private static sCountImagePointXDefault:I

.field private static sCountImagePointXFour:I

.field private static sCountImagePointXOne:I

.field private static sCountImagePointXThree:I

.field private static sCountImagePointXTwo:I

.field private static sCountImageRightDefault:I

.field private static sCountImageRightFour:I

.field private static sCountImageRightThree:I

.field private static sCountImageRightTwo:I

.field private static sCountImageTop:I

.field private static sCountPaint:Landroid/text/TextPaint;

.field private static sCountTextPointXDefault:I

.field private static sCountTextPointXFour:I

.field private static sCountTextPointXOne:I

.field private static sCountTextPointXThree:I

.field private static sCountTextPointXTwo:I

.field private static sCountTextPointY:I

.field private static sEnvelopePointY:I

.field private static sMessagePaint:Landroid/text/TextPaint;

.field private static sTouchPoint:I

.field private static sTouchX:I


# instance fields
.field private mCountText:Ljava/lang/String;

.field private mDragHeight:I

.field private final mDragWidth:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1797
    invoke-direct {p0}, Landroid/view/View$DragShadowBuilder;-><init>()V

    .line 1817
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mDragWidth:I

    return-void
.end method

.method static synthetic access$1002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 1797
    sput p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    return p0
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 1944
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1945
    .local v1, countLength:I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1946
    .local v0, LineRect:Landroid/graphics/Rect;
    packed-switch v1, :pswitch_data_270

    .line 2032
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_22c

    .line 2033
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v3, v3

    sget-object v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2034
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXDefault:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 2035
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2036
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageRightDefault:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 2037
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 2038
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 2039
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXDefault:I

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2055
    :goto_45
    return-void

    .line 1948
    :pswitch_46
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_72

    .line 1949
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v3, v3

    sget-object v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1950
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImage:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1952
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXOne:I

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_45

    .line 1955
    :cond_72
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1957
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImage:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1960
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXOne:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_45

    .line 1965
    :pswitch_a9
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_e1

    .line 1966
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v3, v3

    sget-object v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1967
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXTwo:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1968
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1969
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageRightTwo:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1970
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1971
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1972
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXTwo:I

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_45

    .line 1975
    :cond_e1
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1977
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXTwo:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1978
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1979
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageRightTwo:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1980
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1981
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1982
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXTwo:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_45

    .line 1987
    :pswitch_12a
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_162

    .line 1988
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v3, v3

    sget-object v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1989
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXThree:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1990
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1991
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageRightThree:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1992
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1993
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1994
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXThree:I

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_45

    .line 1997
    :cond_162
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1999
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXThree:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 2000
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2001
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageRightThree:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 2002
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 2003
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 2004
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXThree:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_45

    .line 2010
    :pswitch_1ab
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_1e3

    .line 2011
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v3, v3

    sget-object v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2012
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXFour:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 2013
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2014
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageRightFour:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 2015
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 2016
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 2017
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXFour:I

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_45

    .line 2020
    :cond_1e3
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2022
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXFour:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 2023
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2024
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageRightFour:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 2025
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 2026
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 2027
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXFour:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_45

    .line 2042
    :cond_22c
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2044
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXDefault:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 2045
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2046
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 2047
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 2048
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 2049
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXDefault:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_45

    .line 1946
    nop

    :pswitch_data_270
    .packed-switch 0x1
        :pswitch_46
        :pswitch_a9
        :pswitch_12a
        :pswitch_1ab
    .end packed-switch
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 5
    .parameter "shadowSize"
    .parameter "shadowTouchPoint"

    .prologue
    .line 1938
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mDragHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 1939
    sget v0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    iget v1, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mDragHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 1940
    return-void
.end method
