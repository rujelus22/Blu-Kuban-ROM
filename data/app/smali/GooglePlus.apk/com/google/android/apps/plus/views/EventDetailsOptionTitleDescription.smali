.class public Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;
.super Lcom/google/android/apps/plus/views/ExactLayout;
.source "EventDetailsOptionTitleDescription.java"


# static fields
.field private static sDescriptionColor:I

.field private static sDescriptionSize:F

.field private static sInitialized:Z

.field private static sTitleColor:I

.field private static sTitleSize:F


# instance fields
.field private mDescription:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/ExactLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/ExactLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/ExactLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "title"
    .parameter "description"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x1

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 47
    .local v7, resources:Landroid/content/res/Resources;
    sget-boolean v0, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->sInitialized:Z

    if-nez v0, :cond_2f

    .line 48
    const v0, 0x7f0a009c

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->sTitleColor:I

    .line 49
    const v0, 0x7f0d0118

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->sTitleSize:F

    .line 51
    const v0, 0x7f0a009d

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->sDescriptionColor:I

    .line 53
    const v0, 0x7f0d0119

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->sDescriptionSize:F

    .line 56
    sput-boolean v6, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->sInitialized:Z

    .line 59
    :cond_2f
    sget v0, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->sTitleSize:F

    sget v1, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->sTitleColor:I

    invoke-static {p1, p2, p3, v0, v1}, Lcom/google/android/apps/plus/views/TextViewUtils;->createBoldText(Landroid/content/Context;Landroid/util/AttributeSet;IFI)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->mTitle:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->addView(Landroid/view/View;)V

    .line 62
    sget v3, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->sDescriptionSize:F

    sget v4, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->sDescriptionColor:I

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/views/TextViewUtils;->createText(Landroid/content/Context;Landroid/util/AttributeSet;IFIZZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->mDescription:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->addView(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method protected measureChildren(II)V
    .registers 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, -0x8000

    const/4 v6, 0x0

    .line 69
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 70
    .local v4, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 72
    .local v1, height:I
    const/4 v3, 0x0

    .line 73
    .local v3, titleTop:I
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->mTitle:Landroid/widget/TextView;

    invoke-static {v5, v4, v7, v1, v6}, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->measure(Landroid/view/View;IIII)V

    .line 74
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->mTitle:Landroid/widget/TextView;

    invoke-static {v5, v6, v6}, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->setCorner(Landroid/view/View;II)V

    .line 75
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int v2, v3, v5

    .line 77
    .local v2, titleBottom:I
    move v0, v2

    .line 78
    .local v0, descriptionTop:I
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->mDescription:Landroid/widget/TextView;

    invoke-static {v5, v4, v7, v1, v6}, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->measure(Landroid/view/View;IIII)V

    .line 79
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->mDescription:Landroid/widget/TextView;

    invoke-static {v5, v6, v0}, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->setCorner(Landroid/view/View;II)V

    .line 80
    return-void
.end method
