.class public Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;
.super Landroid/preference/DialogPreference;
.source "MPrintNumberPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference$SavedState;
    }
.end annotation


# instance fields
.field private mPicker:Landroid/widget/NumberPicker;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->mPicker:Landroid/widget/NumberPicker;

    .line 61
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->setDialogLayoutResource(I)V

    .line 62
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->setPositiveButtonText(I)V

    .line 63
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->setNegativeButtonText(I)V

    .line 64
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public hideSoftInput()V
    .registers 4

    .prologue
    .line 80
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->mPicker:Landroid/widget/NumberPicker;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->mPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 81
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 82
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->mPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 84
    .end local v0           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_22
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 88
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 90
    const v0, 0x7f0c0002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->mPicker:Landroid/widget/NumberPicker;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->mPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->mPicker:Landroid/widget/NumberPicker;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->mPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->mValue:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->mPicker:Landroid/widget/NumberPicker;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->mValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 97
    :cond_3a
    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 5
    .parameter "positiveResult"

    .prologue
    .line 101
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->mPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 102
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 104
    if-eqz p1, :cond_25

    .line 105
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->mPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 106
    .local v0, current:I
    const/4 v2, 0x1

    if-lt v0, v2, :cond_17

    const/16 v2, 0x3e7

    if-le v0, v2, :cond_18

    .line 107
    :cond_17
    const/4 v0, 0x1

    .line 109
    :cond_18
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 111
    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->setValue(Ljava/lang/String;)V

    .line 114
    .end local v0           #current:I
    .end local v1           #value:Ljava/lang/String;
    :cond_25
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4
    .parameter "a"
    .parameter "index"

    .prologue
    .line 118
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 141
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 143
    :cond_e
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 150
    :goto_11
    return-void

    :cond_12
    move-object v0, p1

    .line 147
    check-cast v0, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference$SavedState;

    .line 148
    .local v0, myState:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference$SavedState;
    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 149
    iget-object v1, v0, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->setValue(Ljava/lang/String;)V

    goto :goto_11
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 128
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 129
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 136
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_a
    return-object v1

    .line 134
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_b
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 135
    .local v0, myState:Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference$SavedState;
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference$SavedState;->value:Ljava/lang/String;

    move-object v1, v0

    .line 136
    goto :goto_a
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 4
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 123
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :goto_8
    invoke-virtual {p0, p2}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->setValue(Ljava/lang/String;)V

    .line 124
    return-void

    .line 123
    .restart local p2
    :cond_c
    check-cast p2, Ljava/lang/String;

    goto :goto_8
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->mValue:Ljava/lang/String;

    .line 72
    invoke-virtual {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintNumberPickerPreference;->persistString(Ljava/lang/String;)Z

    .line 73
    return-void
.end method
