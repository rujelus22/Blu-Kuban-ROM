.class public Lcom/anddoes/launcher/preference/SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private a:Landroid/widget/SeekBar;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v2, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->i:I

    .line 43
    iput-object p1, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->d:Landroid/content/Context;

    .line 45
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "dialogMessage"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->e:Ljava/lang/String;

    .line 46
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "text"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->f:Ljava/lang/String;

    .line 47
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "defaultValue"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->g:I

    .line 48
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "max"

    const/16 v2, 0x64

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->h:I

    .line 49
    iget v0, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->g:I

    iput v0, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->i:I

    .line 50
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->a:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 91
    iget-object v0, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->a:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 92
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .registers 9

    .prologue
    const/16 v2, 0xf

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 54
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    invoke-virtual {v0, v2, v5, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 57
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 58
    const/4 v2, -0x1

    .line 59
    const/4 v3, -0x2

    .line 57
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->c:Landroid/widget/TextView;

    .line 62
    iget-object v2, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 63
    iget-object v2, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->c:Landroid/widget/TextView;

    const/high16 v3, 0x41a0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 64
    iget-object v2, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 65
    iget-object v2, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v2, Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->a:Landroid/widget/SeekBar;

    .line 68
    iget-object v2, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->a:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 69
    iget-object v2, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->b:Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->e:Ljava/lang/String;

    if-eqz v1, :cond_60

    .line 73
    iget-object v1, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_60
    iget-object v1, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v7, v4, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 76
    iget-object v1, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    iget-object v1, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->a:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->h:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 79
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/SeekBarPreference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 80
    iget v1, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->g:I

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/preference/SeekBarPreference;->getPersistedInt(I)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->i:I

    .line 82
    :cond_7f
    iget-object v1, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->a:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->i:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 83
    iget-object v1, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->a:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->i:I

    invoke-virtual {p0, v1, v2, v4}, Lcom/anddoes/launcher/preference/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 84
    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .registers 4
    .parameter

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 107
    if-eqz p1, :cond_17

    .line 108
    iget v0, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->i:I

    .line 109
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/SeekBarPreference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 110
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/SeekBarPreference;->persistInt(I)Z

    .line 112
    :cond_10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 114
    :cond_17
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->f:Ljava/lang/String;

    if-nez v2, :cond_10

    :goto_a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iput p2, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->i:I

    .line 122
    return-void

    .line 120
    :cond_10
    iget-object v2, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 97
    if-eqz p1, :cond_17

    .line 98
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/SeekBarPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->g:I

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    :goto_11
    iput v0, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->i:I

    .line 102
    :goto_13
    return-void

    .line 98
    :cond_14
    iget v0, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->g:I

    goto :goto_11

    .line 100
    :cond_17
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/preference/SeekBarPreference;->i:I

    goto :goto_13
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter

    .prologue
    .line 127
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter

    .prologue
    .line 132
    return-void
.end method
