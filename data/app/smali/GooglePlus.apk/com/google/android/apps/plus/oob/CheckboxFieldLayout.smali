.class public Lcom/google/android/apps/plus/oob/CheckboxFieldLayout;
.super Lcom/google/android/apps/plus/oob/BaseFieldLayout;
.source "CheckboxFieldLayout.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mInput:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public bindToField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)V
    .registers 8
    .parameter "field"
    .parameter "id"
    .parameter "actionCallback"

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->bindToField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/CheckboxFieldLayout;->getInputView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/google/android/apps/plus/oob/CheckboxFieldLayout;->mInput:Landroid/widget/CheckBox;

    .line 62
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/CheckboxFieldLayout;->getField()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    .line 63
    .local v0, inputField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    iget-object v2, p0, Lcom/google/android/apps/plus/oob/CheckboxFieldLayout;->mInput:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/CheckboxFieldLayout;->getServerBooleanValue()Ljava/lang/Boolean;

    move-result-object v1

    .line 66
    .local v1, tacoTruckValue:Ljava/lang/Boolean;
    if-eqz v1, :cond_2b

    .line 67
    iget-object v2, p0, Lcom/google/android/apps/plus/oob/CheckboxFieldLayout;->mInput:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 70
    :cond_2b
    if-eqz p3, :cond_32

    .line 71
    iget-object v2, p0, Lcom/google/android/apps/plus/oob/CheckboxFieldLayout;->mInput:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    :cond_32
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/CheckboxFieldLayout;->mField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getMandatory()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/oob/CheckboxFieldLayout;->mInput:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public newFieldFromInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 4

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/CheckboxFieldLayout;->getField()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    .line 89
    .local v0, oobInputField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/oob/CheckboxFieldLayout;->mInput:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->setBoolValue(Z)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->setValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    .line 90
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v1

    return-object v1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/CheckboxFieldLayout;->mActionCallback:Lcom/google/android/apps/plus/oob/ActionCallback;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/oob/ActionCallback;->onInputChanged(Lcom/google/android/apps/plus/oob/BaseFieldLayout;)V

    .line 81
    return-void
.end method
