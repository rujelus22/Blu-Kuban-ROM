.class public Lcom/anddoes/launcher/preference/GridPickerPreference;
.super Landroid/preference/DialogPreference;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/widget/NumberPicker;

.field private g:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput v2, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->a:I

    .line 17
    iput v2, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->b:I

    .line 18
    iput v2, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->c:I

    .line 19
    iput v2, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->d:I

    .line 20
    iput v2, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->e:I

    .line 27
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

    iput v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->c:I

    .line 28
    iget v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->c:I

    iput v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->b:I

    iput v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->a:I

    .line 29
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

    iput v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->d:I

    .line 32
    :try_start_42
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

    iput v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->e:I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_59} :catch_60

    .line 35
    :goto_59
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/GridPickerPreference;->setDialogLayoutResource(I)V

    .line 36
    return-void

    :catch_60
    move-exception v0

    goto :goto_59
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 41
    const v0, 0x7f080024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->f:Landroid/widget/NumberPicker;

    .line 42
    iget-object v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->f:Landroid/widget/NumberPicker;

    iget v2, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->d:I

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 43
    iget-object v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->f:Landroid/widget/NumberPicker;

    iget v2, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->e:I

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 44
    iget-object v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->f:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 46
    const v0, 0x7f080025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->g:Landroid/widget/NumberPicker;

    .line 47
    iget-object v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->g:Landroid/widget/NumberPicker;

    iget v2, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->d:I

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 48
    iget-object v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->g:Landroid/widget/NumberPicker;

    iget v2, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->e:I

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 49
    iget-object v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->g:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 51
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v2

    .line 52
    iget-object v3, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->f:Landroid/widget/NumberPicker;

    iget v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->a:I

    if-eqz v0, :cond_5c

    iget v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->a:I

    :goto_4d
    invoke-virtual {v3, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 53
    iget-object v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->g:Landroid/widget/NumberPicker;

    iget v3, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->b:I

    if-eqz v3, :cond_62

    iget v1, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->b:I

    :cond_58
    :goto_58
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 54
    return-void

    .line 52
    :cond_5c
    if-eqz v2, :cond_60

    const/4 v0, 0x6

    goto :goto_4d

    :cond_60
    move v0, v1

    goto :goto_4d

    .line 53
    :cond_62
    if-eqz v2, :cond_58

    const/16 v1, 0x8

    goto :goto_58
.end method

.method protected onDialogClosed(Z)V
    .registers 8
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 72
    if-eqz p1, :cond_72

    .line 73
    iget-object v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->f:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->g:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/GridPickerPreference;->shouldPersist()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/preference/GridPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 79
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/GridPickerPreference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/GridPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_rows"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/GridPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_columns"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 83
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/preference/GridPickerPreference;->persistString(Ljava/lang/String;)Z

    .line 86
    :cond_72
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 59
    if-eqz p1, :cond_52

    .line 60
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/GridPickerPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 61
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/GridPickerPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/GridPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_rows"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->a:I

    .line 62
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/GridPickerPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/GridPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_columns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->b:I

    .line 67
    :cond_51
    :goto_51
    return-void

    .line 65
    :cond_52
    iget v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->c:I

    iput v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->b:I

    iput v0, p0, Lcom/anddoes/launcher/preference/GridPickerPreference;->a:I

    goto :goto_51
.end method
