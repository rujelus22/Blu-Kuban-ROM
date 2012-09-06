.class public Lcom/anddoes/launcher/preference/NumberPickerPreference;
.super Landroid/preference/DialogPreference;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput v2, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->a:I

    .line 15
    iput v2, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->b:I

    .line 16
    iput v2, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->c:I

    .line 17
    iput v2, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->d:I

    .line 23
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

    iput v0, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->b:I

    .line 24
    iget v0, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->b:I

    iput v0, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->a:I

    .line 25
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

    iput v0, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->c:I

    .line 28
    :try_start_3e
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "text"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->d:I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_55} :catch_5c

    .line 31
    :goto_55
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/NumberPickerPreference;->setDialogLayoutResource(I)V

    .line 32
    return-void

    :catch_5c
    move-exception v0

    goto :goto_55
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->a:I

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 37
    const v0, 0x7f080041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/NumberPickerPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    const v0, 0x7f080042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->e:Landroid/widget/NumberPicker;

    .line 39
    iget-object v0, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->e:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 40
    iget-object v0, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->e:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 41
    iget-object v0, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->e:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 42
    iget-object v0, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->e:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 43
    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 4
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 58
    if-eqz p1, :cond_2c

    .line 59
    iget-object v0, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->e:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    iget v1, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->c:I

    if-le v0, v1, :cond_11

    iget v0, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->c:I

    :cond_11
    iget v1, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->d:I

    if-ge v0, v1, :cond_17

    iget v0, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->d:I

    :cond_17
    iput v0, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->a:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/NumberPickerPreference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/preference/NumberPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/NumberPickerPreference;->persistInt(I)Z

    .line 61
    :cond_2c
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 48
    if-eqz p1, :cond_17

    .line 49
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/NumberPickerPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->b:I

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/NumberPickerPreference;->getPersistedInt(I)I

    move-result v0

    :goto_11
    iput v0, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->a:I

    .line 53
    :goto_13
    return-void

    .line 49
    :cond_14
    iget v0, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->b:I

    goto :goto_11

    .line 51
    :cond_17
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/preference/NumberPickerPreference;->a:I

    goto :goto_13
.end method
