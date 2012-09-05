.class public Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;
.super Landroid/widget/Button;
.source "ViewerBubbleButton.java"


# static fields
.field public static BUTTON_FONT_SIZE:I

.field private static BUTTON_HEIGHT:I

.field private static BUTTON_MARGIN_TOP:I

.field private static BUTTON_MAX_WIDTH:I

.field private static BUTTON_MIN_WIDTH:I

.field private static BUTTON_PADDING_BOTTOM:I

.field private static BUTTON_PADDING_LEFT:I

.field private static BUTTON_PADDING_RIGHT:I

.field private static BUTTON_PADDING_TOP:I


# instance fields
.field private mData:Lcom/android/email/activity/bubblelayout/BubbleData;

.field private mExpectedWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 27
    const/16 v0, 0x12c

    sput v0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_MAX_WIDTH:I

    .line 29
    const/16 v0, 0xb4

    sput v0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_MIN_WIDTH:I

    .line 31
    sput v2, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_PADDING_LEFT:I

    .line 32
    sput v2, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_PADDING_RIGHT:I

    .line 33
    sput v1, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_PADDING_TOP:I

    .line 34
    sput v1, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_PADDING_BOTTOM:I

    .line 35
    const/16 v0, 0x2e

    sput v0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_HEIGHT:I

    .line 36
    const/4 v0, 0x4

    sput v0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_MARGIN_TOP:I

    .line 40
    const/16 v0, 0x18

    sput v0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_FONT_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;)V
    .registers 3
    .parameter "context"
    .parameter "data"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p2, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mData:Lcom/android/email/activity/bubblelayout/BubbleData;

    .line 49
    invoke-direct {p0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->initButton()V

    .line 50
    return-void
.end method

.method private initButton()V
    .registers 9

    .prologue
    const v5, 0x7f0c0138

    const/4 v7, 0x0

    .line 57
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mData:Lcom/android/email/activity/bubblelayout/BubbleData;

    invoke-virtual {v3}, Lcom/android/email/activity/bubblelayout/BubbleData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, dataName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 59
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mData:Lcom/android/email/activity/bubblelayout/BubbleData;

    invoke-virtual {v3}, Lcom/android/email/activity/bubblelayout/BubbleData;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :goto_19
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c013b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_MAX_WIDTH:I

    .line 64
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c013c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_MIN_WIDTH:I

    .line 66
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c013d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_FONT_SIZE:I

    .line 67
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_PADDING_LEFT:I

    .line 68
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_PADDING_RIGHT:I

    .line 69
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c013a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_HEIGHT:I

    .line 70
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0139

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_MARGIN_TOP:I

    .line 72
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 75
    sget v3, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_FONT_SIZE:I

    int-to-float v3, v3

    invoke-virtual {p0, v7, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setTextSize(IF)V

    .line 76
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 77
    .local v2, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 78
    const v3, 0x7f0202ec

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setBackgroundResource(I)V

    .line 79
    const v3, 0x7f0b00cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setTextColor(I)V

    .line 84
    :goto_95
    sget v3, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_PADDING_LEFT:I

    sget v4, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_PADDING_TOP:I

    sget v5, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_PADDING_RIGHT:I

    sget v6, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_PADDING_BOTTOM:I

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setPadding(IIII)V

    .line 86
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setSingleLine(Z)V

    .line 88
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x2

    sget v4, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_HEIGHT:I

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 90
    .local v1, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    sget v3, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_MAX_WIDTH:I

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setMaxWidth(I)V

    .line 94
    sget v3, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_MARGIN_TOP:I

    const/16 v4, 0xa

    invoke-virtual {v1, v7, v3, v4, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 96
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    return-void

    .line 61
    .end local v1           #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_c1
    invoke-virtual {p0, v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    .line 81
    .restart local v2       #res:Landroid/content/res/Resources;
    :cond_c6
    const v3, 0x7f0202ed

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setBackgroundResource(I)V

    .line 82
    const v3, 0x7f0b00d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setTextColor(I)V

    goto :goto_95
.end method


# virtual methods
.method public getBubbleData()Lcom/android/email/activity/bubblelayout/BubbleData;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mData:Lcom/android/email/activity/bubblelayout/BubbleData;

    return-object v0
.end method

.method public getExpectedWidth()I
    .registers 4

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mExpectedWidth:I

    .line 109
    iget v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mExpectedWidth:I

    if-nez v0, :cond_26

    .line 110
    iget v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mExpectedWidth:I

    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_PADDING_LEFT:I

    add-int/2addr v1, v2

    sget v2, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_PADDING_RIGHT:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mExpectedWidth:I

    .line 114
    :cond_26
    iget v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mExpectedWidth:I

    sget v1, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_MAX_WIDTH:I

    if-le v0, v1, :cond_30

    .line 116
    sget v0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->BUTTON_MAX_WIDTH:I

    iput v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mExpectedWidth:I

    .line 124
    :cond_30
    iget v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mExpectedWidth:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mExpectedWidth:I

    .line 126
    iget v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mExpectedWidth:I

    return v0
.end method
