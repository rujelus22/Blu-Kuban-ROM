.class public Lcom/sec/android/app/myfiles/fileselector/views/CenteredCheckBox;
.super Landroid/widget/CheckBox;
.source "CenteredCheckBox.java"


# instance fields
.field d:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/CenteredCheckBox;->d:Landroid/graphics/drawable/Drawable;

    .line 42
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/views/CenteredCheckBox$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/views/CenteredCheckBox$1;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/CenteredCheckBox;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/CenteredCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/CenteredCheckBox;->d:Landroid/graphics/drawable/Drawable;

    .line 58
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/views/CenteredCheckBox$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/views/CenteredCheckBox$2;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/CenteredCheckBox;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/CenteredCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/CenteredCheckBox;->d:Landroid/graphics/drawable/Drawable;

    .line 74
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/views/CenteredCheckBox$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/views/CenteredCheckBox$3;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/CenteredCheckBox;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/CenteredCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 99
    return-void
.end method
