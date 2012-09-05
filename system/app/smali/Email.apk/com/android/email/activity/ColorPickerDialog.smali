.class public Lcom/android/email/activity/ColorPickerDialog;
.super Landroid/app/AlertDialog;
.source "ColorPickerDialog.java"


# instance fields
.field private colorChangedListener:Lcom/android/email/activity/GradientColorPicker$ColorChangedListener;

.field private gradientView:Lcom/android/email/activity/GradientColorPicker;

.field private mColorPicker:Lcom/android/email/activity/ColorPickerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v2, Lcom/android/email/activity/ColorPickerDialog$1;

    invoke-direct {v2, p0}, Lcom/android/email/activity/ColorPickerDialog$1;-><init>(Lcom/android/email/activity/ColorPickerDialog;)V

    iput-object v2, p0, Lcom/android/email/activity/ColorPickerDialog;->colorChangedListener:Lcom/android/email/activity/GradientColorPicker$ColorChangedListener;

    .line 33
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 35
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04005c

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 36
    .local v1, layout:Landroid/widget/ScrollView;
    invoke-virtual {p0, v1}, Lcom/android/email/activity/ColorPickerDialog;->setView(Landroid/view/View;)V

    .line 37
    const v2, 0x7f1000f2

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/GradientColorPicker;

    iput-object v2, p0, Lcom/android/email/activity/ColorPickerDialog;->gradientView:Lcom/android/email/activity/GradientColorPicker;

    .line 38
    iget-object v2, p0, Lcom/android/email/activity/ColorPickerDialog;->gradientView:Lcom/android/email/activity/GradientColorPicker;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Lcom/android/email/activity/GradientColorPicker;->setBackgroundColor(I)V

    .line 39
    iget-object v2, p0, Lcom/android/email/activity/ColorPickerDialog;->gradientView:Lcom/android/email/activity/GradientColorPicker;

    iget-object v3, p0, Lcom/android/email/activity/ColorPickerDialog;->colorChangedListener:Lcom/android/email/activity/GradientColorPicker$ColorChangedListener;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/GradientColorPicker;->setColorchangedListener(Lcom/android/email/activity/GradientColorPicker$ColorChangedListener;)V

    .line 40
    const v2, 0x7f1000f1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/ColorPickerView;

    iput-object v2, p0, Lcom/android/email/activity/ColorPickerDialog;->mColorPicker:Lcom/android/email/activity/ColorPickerView;

    .line 41
    iget-object v2, p0, Lcom/android/email/activity/ColorPickerDialog;->mColorPicker:Lcom/android/email/activity/ColorPickerView;

    iget-object v3, p0, Lcom/android/email/activity/ColorPickerDialog;->mColorPicker:Lcom/android/email/activity/ColorPickerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/android/email/activity/ColorPickerView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 42
    iget-object v2, p0, Lcom/android/email/activity/ColorPickerDialog;->mColorPicker:Lcom/android/email/activity/ColorPickerView;

    invoke-virtual {v2, v4, v4}, Lcom/android/email/activity/ColorPickerView;->initColorPicker(II)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/ColorPickerDialog;)Lcom/android/email/activity/ColorPickerView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerDialog;->mColorPicker:Lcom/android/email/activity/ColorPickerView;

    return-object v0
.end method


# virtual methods
.method public GetCurColorIdx()I
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerDialog;->mColorPicker:Lcom/android/email/activity/ColorPickerView;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerView;->GetCurColorIdx()I

    move-result v0

    return v0
.end method

.method public SetColor(II)V
    .registers 4
    .parameter "Color"
    .parameter "_idx"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerDialog;->mColorPicker:Lcom/android/email/activity/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ColorPickerView;->setColor(I)V

    .line 62
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerDialog;->mColorPicker:Lcom/android/email/activity/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ColorPickerView;->setSelectorColor(I)V

    .line 63
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerDialog;->mColorPicker:Lcom/android/email/activity/ColorPickerView;

    invoke-virtual {v0, p2}, Lcom/android/email/activity/ColorPickerView;->SetCurColorIdx(I)V

    .line 64
    return-void
.end method

.method public getSelectedColor()I
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerDialog;->mColorPicker:Lcom/android/email/activity/ColorPickerView;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerView;->getSelectorColor()I

    move-result v0

    return v0
.end method
