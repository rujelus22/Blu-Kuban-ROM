.class public Lcom/google/android/apps/plus/oob/DropDownFieldLayout;
.super Lcom/google/android/apps/plus/oob/BaseFieldLayout;
.source "DropDownFieldLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private mInput:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;-><init>(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method private dispatchOnInputChanged()V
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/DropDownFieldLayout;->mActionCallback:Lcom/google/android/apps/plus/oob/ActionCallback;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/oob/ActionCallback;->onInputChanged(Lcom/google/android/apps/plus/oob/BaseFieldLayout;)V

    .line 92
    return-void
.end method


# virtual methods
.method public bindToField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)V
    .registers 12
    .parameter "field"
    .parameter "id"
    .parameter "actionCallback"

    .prologue
    const/4 v6, -0x1

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->bindToField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/DropDownFieldLayout;->getField()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v1

    .line 68
    .local v1, inputField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/DropDownFieldLayout;->getLabelView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/DropDownFieldLayout;->getInputView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/google/android/apps/plus/oob/DropDownFieldLayout;->mInput:Landroid/widget/Spinner;

    .line 73
    iget-object v5, p0, Lcom/google/android/apps/plus/oob/DropDownFieldLayout;->mInput:Landroid/widget/Spinner;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getValueOptionList()Ljava/util/List;

    move-result-object v2

    .line 76
    .local v2, options:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;>;"
    new-instance v0, Lcom/google/android/apps/plus/oob/DropDownFieldAdapter;

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/oob/DropDownFieldAdapter;-><init>(Ljava/util/List;)V

    .line 77
    .local v0, adapter:Lcom/google/android/apps/plus/oob/DropDownFieldAdapter;
    iget-object v5, p0, Lcom/google/android/apps/plus/oob/DropDownFieldLayout;->mInput:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/DropDownFieldLayout;->getServerValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v4

    .line 80
    .local v4, serverValue:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    if-eqz v4, :cond_4f

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/oob/DropDownFieldAdapter;->indexOf(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)I

    move-result v3

    .line 81
    .local v3, selection:I
    :goto_40
    if-eq v3, v6, :cond_47

    .line 82
    iget-object v5, p0, Lcom/google/android/apps/plus/oob/DropDownFieldLayout;->mInput:Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 85
    :cond_47
    if-eqz p3, :cond_4e

    .line 86
    iget-object v5, p0, Lcom/google/android/apps/plus/oob/DropDownFieldLayout;->mInput:Landroid/widget/Spinner;

    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 88
    :cond_4e
    return-void

    .end local v3           #selection:I
    :cond_4f
    move v3, v6

    .line 80
    goto :goto_40
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/DropDownFieldLayout;->mInput:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public newFieldFromInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 4

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/DropDownFieldLayout;->getField()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    .line 116
    .local v0, oobInputField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    iget-object v2, p0, Lcom/google/android/apps/plus/oob/DropDownFieldLayout;->mInput:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    .line 117
    .local v1, selectedItem:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    if-eqz v1, :cond_1d

    .line 118
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->getValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->setValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    .line 120
    :cond_1d
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v2

    return-object v2
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lcom/google/android/apps/plus/oob/DropDownFieldLayout;->dispatchOnInputChanged()V

    .line 100
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lcom/google/android/apps/plus/oob/DropDownFieldLayout;->dispatchOnInputChanged()V

    .line 108
    return-void
.end method
