.class public Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;
.super Landroid/app/AlertDialog;
.source "ColorPickerAlertDialog.java"

# interfaces
.implements Lcom/infraware/polarisoffice/common/ColorPickerHueView$OnColorPickerHueListener;
.implements Lcom/infraware/polarisoffice/common/ColorPickerMainView$OnColorPickerMainListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$OnColorPickerListener;
    }
.end annotation


# instance fields
.field private mColor:I

.field private mColorValueView:Landroid/widget/TextView;

.field private mColorView:Landroid/widget/ImageView;

.field private mHueView:Lcom/infraware/polarisoffice/common/ColorPickerHueView;

.field private mListener:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$OnColorPickerListener;

.field private mMainView:Lcom/infraware/polarisoffice/common/ColorPickerMainView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mMainView:Lcom/infraware/polarisoffice/common/ColorPickerMainView;

    .line 16
    iput-object v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mHueView:Lcom/infraware/polarisoffice/common/ColorPickerHueView;

    .line 17
    iput-object v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mColorView:Landroid/widget/ImageView;

    .line 18
    iput-object v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mColorValueView:Landroid/widget/TextView;

    .line 19
    const/high16 v1, -0x1

    iput v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mColor:I

    .line 20
    iput-object v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mListener:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$OnColorPickerListener;

    .line 29
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->setView(Landroid/view/View;)V

    .line 31
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->setInverseBackgroundForced(Z)V

    .line 32
    const/4 v1, -0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$1;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$1;-><init>(Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 38
    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/ColorPickerMainView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mMainView:Lcom/infraware/polarisoffice/common/ColorPickerMainView;

    .line 39
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mMainView:Lcom/infraware/polarisoffice/common/ColorPickerMainView;

    iget v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mColor:I

    invoke-virtual {v1, p0, v2}, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->Init(Lcom/infraware/polarisoffice/common/ColorPickerMainView$OnColorPickerMainListener;I)V

    .line 40
    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/ColorPickerHueView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mHueView:Lcom/infraware/polarisoffice/common/ColorPickerHueView;

    .line 41
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mHueView:Lcom/infraware/polarisoffice/common/ColorPickerHueView;

    iget v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mColor:I

    invoke-virtual {v1, p0, v2}, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->Init(Lcom/infraware/polarisoffice/common/ColorPickerHueView$OnColorPickerHueListener;I)V

    .line 42
    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mColorView:Landroid/widget/ImageView;

    .line 43
    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mColorValueView:Landroid/widget/TextView;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;)Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$OnColorPickerListener;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mListener:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$OnColorPickerListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;)I
    .registers 2
    .parameter

    .prologue
    .line 19
    iget v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mColor:I

    return v0
.end method


# virtual methods
.method public Init(Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$OnColorPickerListener;I)V
    .registers 3
    .parameter "listener"
    .parameter "titleId"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mListener:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$OnColorPickerListener;

    .line 48
    invoke-virtual {p0, p2}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->setTitle(I)V

    .line 49
    return-void
.end method

.method public OnChangeColorAndValue(I)V
    .registers 12
    .parameter "color"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 53
    iput p1, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mColor:I

    .line 54
    new-array v2, v8, [I

    iget v5, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mColor:I

    aput v5, v2, v9

    .line 55
    .local v2, colors:[I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v8, v8, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 56
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 58
    const-string v5, "%02x"

    new-array v6, v8, [Ljava/lang/Object;

    iget v7, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mColor:I

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, r:Ljava/lang/String;
    const-string v5, "%02x"

    new-array v6, v8, [Ljava/lang/Object;

    iget v7, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mColor:I

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, g:Ljava/lang/String;
    const-string v5, "%02x"

    new-array v6, v8, [Ljava/lang/Object;

    iget v7, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mColor:I

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, b:Ljava/lang/String;
    iget-object v5, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mColorValueView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "#"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method public OnChangeHueBarColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mMainView:Lcom/infraware/polarisoffice/common/ColorPickerMainView;

    invoke-virtual {v0, p1}, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->UpdateMainColors(I)V

    .line 67
    return-void
.end method
