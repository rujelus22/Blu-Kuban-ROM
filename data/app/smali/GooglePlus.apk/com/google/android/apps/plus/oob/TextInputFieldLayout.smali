.class public Lcom/google/android/apps/plus/oob/TextInputFieldLayout;
.super Lcom/google/android/apps/plus/oob/BaseFieldLayout;
.source "TextInputFieldLayout.java"


# instance fields
.field private mInput:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;-><init>(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method


# virtual methods
.method public bindToField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)V
    .registers 8
    .parameter "field"
    .parameter "id"
    .parameter "actionCallback"

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->bindToField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/TextInputFieldLayout;->getField()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    .line 64
    .local v0, inputField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/TextInputFieldLayout;->getLabelView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/TextInputFieldLayout;->getInputView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/plus/oob/TextInputFieldLayout;->mInput:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/TextInputFieldLayout;->getServerStringValue()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, tacoTruckValue:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 69
    iget-object v2, p0, Lcom/google/android/apps/plus/oob/TextInputFieldLayout;->mInput:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_2d
    if-eqz p3, :cond_39

    .line 73
    iget-object v2, p0, Lcom/google/android/apps/plus/oob/TextInputFieldLayout;->mInput:Landroid/widget/TextView;

    new-instance v3, Lcom/google/android/apps/plus/oob/TextInputFieldLayout$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/oob/TextInputFieldLayout$1;-><init>(Lcom/google/android/apps/plus/oob/TextInputFieldLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    :cond_39
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/TextInputFieldLayout;->mInput:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/apps/plus/oob/TextInputFieldLayout;->mInput:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public newFieldFromInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 4

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/TextInputFieldLayout;->getField()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    .line 113
    .local v0, oobInputField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/oob/TextInputFieldLayout;->mInput:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->setStringValue(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->setValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    .line 115
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v1

    return-object v1
.end method
