.class public Lcom/sec/android/app/myfiles/fileselector/views/CenteredRadioButton;
.super Landroid/widget/RadioButton;
.source "CenteredRadioButton.java"


# instance fields
.field d:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/CenteredRadioButton;->d:Landroid/graphics/drawable/Drawable;

    .line 26
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/views/CenteredRadioButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/views/CenteredRadioButton$1;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/CenteredRadioButton;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/CenteredRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/CenteredRadioButton;->d:Landroid/graphics/drawable/Drawable;

    .line 42
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/views/CenteredRadioButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/views/CenteredRadioButton$2;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/CenteredRadioButton;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/CenteredRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/CenteredRadioButton;->d:Landroid/graphics/drawable/Drawable;

    .line 58
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/views/CenteredRadioButton$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/views/CenteredRadioButton$3;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/CenteredRadioButton;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/CenteredRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/views/CenteredRadioButton;->getWidth()I

    move-result v1

    .line 72
    .local v1, width:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 74
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/CenteredRadioButton;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, v1, v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v0, v2, v3

    .line 76
    .local v0, fix:F
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 78
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 82
    return-void
.end method
