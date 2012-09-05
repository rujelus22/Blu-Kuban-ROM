.class public Lcom/infraware/polarisoffice/common/StateToggleButton;
.super Landroid/widget/CheckBox;
.source "StateToggleButton.java"


# instance fields
.field private mBtnDrawableID:I

.field protected mInit:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/common/StateToggleButton;->mInit:Z

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/polarisoffice/common/StateToggleButton;->mBtnDrawableID:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/common/StateToggleButton;->mInit:Z

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/polarisoffice/common/StateToggleButton;->mBtnDrawableID:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/common/StateToggleButton;->mInit:Z

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/polarisoffice/common/StateToggleButton;->mBtnDrawableID:I

    .line 37
    return-void
.end method


# virtual methods
.method public GetState()I
    .registers 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/common/StateToggleButton;->mInit:Z

    if-eqz v0, :cond_e

    .line 48
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/StateToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 49
    const/4 v0, 0x1

    .line 58
    :goto_b
    return v0

    .line 51
    :cond_c
    const/4 v0, 0x0

    goto :goto_b

    .line 55
    :cond_e
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/StateToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 56
    const/16 v0, 0xb

    goto :goto_b

    .line 58
    :cond_17
    const/16 v0, 0xa

    goto :goto_b
.end method

.method public SetButtonImg(I)V
    .registers 2
    .parameter "btnID"

    .prologue
    .line 40
    iput p1, p0, Lcom/infraware/polarisoffice/common/StateToggleButton;->mBtnDrawableID:I

    .line 42
    return-void
.end method

.method public SetState(I)V
    .registers 5
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/StateToggleButton;->GetState()I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 109
    :goto_8
    return-void

    .line 81
    :cond_9
    sparse-switch p1, :sswitch_data_26

    goto :goto_8

    .line 84
    :sswitch_d
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/common/StateToggleButton;->mInit:Z

    .line 85
    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/StateToggleButton;->setChecked(Z)V

    goto :goto_8

    .line 88
    :sswitch_13
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/common/StateToggleButton;->mInit:Z

    .line 89
    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/common/StateToggleButton;->setChecked(Z)V

    goto :goto_8

    .line 93
    :sswitch_19
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/common/StateToggleButton;->mInit:Z

    .line 94
    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/StateToggleButton;->setChecked(Z)V

    goto :goto_8

    .line 98
    :sswitch_1f
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/common/StateToggleButton;->mInit:Z

    .line 99
    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/common/StateToggleButton;->setChecked(Z)V

    goto :goto_8

    .line 81
    nop

    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0x1 -> :sswitch_13
        0xa -> :sswitch_19
        0xb -> :sswitch_1f
    .end sparse-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_b

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/common/StateToggleButton;->mInit:Z

    .line 223
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .registers 2
    .parameter "pressed"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->dispatchSetPressed(Z)V

    .line 158
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/common/StateToggleButton;->mInit:Z

    .line 208
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .registers 1

    .prologue
    .line 162
    invoke-super {p0}, Landroid/widget/CheckBox;->drawableStateChanged()V

    .line 163
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 3
    .parameter "extraSpace"

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, img:Landroid/graphics/Bitmap;
    iget v8, p0, Lcom/infraware/polarisoffice/common/StateToggleButton;->mBtnDrawableID:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_17

    .line 120
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/StateToggleButton;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/infraware/polarisoffice/common/StateToggleButton;->mBtnDrawableID:I

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    :cond_17
    if-eqz v0, :cond_3f

    .line 141
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 142
    .local v7, paint:Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/StateToggleButton;->getHeight()I

    move-result v1

    .line 145
    .local v1, nHeight:I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/StateToggleButton;->getWidth()I

    move-result v6

    .line 146
    .local v6, nWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 147
    .local v2, nImgHeight:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 149
    .local v3, nImgWidth:I
    sub-int v8, v6, v3

    div-int/lit8 v4, v8, 0x2

    .line 150
    .local v4, nLeft:I
    sub-int v8, v1, v2

    div-int/lit8 v5, v8, 0x2

    .line 151
    .local v5, nTop:I
    int-to-float v8, v4

    int-to-float v9, v5

    invoke-virtual {p1, v0, v8, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 153
    .end local v1           #nHeight:I
    .end local v2           #nImgHeight:I
    .end local v3           #nImgWidth:I
    .end local v4           #nLeft:I
    .end local v5           #nTop:I
    .end local v6           #nWidth:I
    .end local v7           #paint:Landroid/graphics/Paint;
    :cond_3f
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method
