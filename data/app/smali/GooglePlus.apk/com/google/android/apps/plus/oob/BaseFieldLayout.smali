.class public abstract Lcom/google/android/apps/plus/oob/BaseFieldLayout;
.super Landroid/widget/LinearLayout;
.source "BaseFieldLayout.java"


# instance fields
.field protected mActionCallback:Lcom/google/android/apps/plus/oob/ActionCallback;

.field protected mField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

.field private mInputId:I

.field private mLabelId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method private setHasError()V
    .registers 4

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    .line 205
    .local v0, label:Landroid/view/View;
    if-eqz v0, :cond_16

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_16

    .line 206
    check-cast v0, Landroid/widget/TextView;

    .end local v0           #label:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f001d

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 208
    :cond_16
    return-void
.end method


# virtual methods
.method public bindToField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)V
    .registers 7
    .parameter "field"
    .parameter "id"
    .parameter "actionCallback"

    .prologue
    .line 86
    const v2, 0x7f09014c

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 87
    .local v1, labelView:Landroid/view/View;
    if-eqz v1, :cond_12

    .line 88
    iput p2, p0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->mLabelId:I

    .line 89
    iget v2, p0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->mLabelId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 90
    add-int/lit8 p2, p2, 0x1

    .line 93
    :cond_12
    const v2, 0x7f090253

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, inputView:Landroid/view/View;
    if-eqz v0, :cond_24

    .line 95
    iput p2, p0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->mInputId:I

    .line 96
    iget v2, p0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->mInputId:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 97
    add-int/lit8 p2, p2, 0x1

    .line 100
    :cond_24
    iput-object p1, p0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->mField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    .line 101
    iput-object p3, p0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->mActionCallback:Lcom/google/android/apps/plus/oob/ActionCallback;

    .line 102
    iget-object v2, p0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->mField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasInput()Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->mField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getHasError()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 103
    invoke-direct {p0}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->setHasError()V

    .line 105
    :cond_3f
    return-void
.end method

.method public final getActionType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->mField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 216
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->mField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    move-result-object v0

    .line 218
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getField()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->mField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    return-object v0
.end method

.method public getInputView()Landroid/view/View;
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->mInputId:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLabelView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->mLabelId:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getServerBooleanValue()Ljava/lang/Boolean;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->getServerValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    .line 162
    .local v0, value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    if-nez v0, :cond_8

    .line 170
    :cond_7
    :goto_7
    return-object v1

    .line 166
    :cond_8
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->hasBoolValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 170
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getBoolValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_7
.end method

.method public getServerDateValue()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->getServerValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    .line 146
    .local v0, value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    if-nez v0, :cond_8

    .line 154
    :cond_7
    :goto_7
    return-object v1

    .line 150
    :cond_8
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->hasDateValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 154
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDateValue()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v1

    goto :goto_7
.end method

.method public getServerImageType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->mField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasImage()Z

    move-result v0

    if-nez v0, :cond_a

    .line 194
    const/4 v0, 0x0

    .line 197
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->mField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getImage()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    move-result-object v0

    goto :goto_9
.end method

.method public getServerStringValue()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->getServerValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    .line 130
    .local v0, value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    if-nez v0, :cond_8

    .line 138
    :cond_7
    :goto_7
    return-object v1

    .line 134
    :cond_8
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->hasStringValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 138
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getStringValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public getServerValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v2, p0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->mField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasInput()Z

    move-result v2

    if-nez v2, :cond_a

    .line 186
    :cond_9
    :goto_9
    return-object v1

    .line 181
    :cond_a
    iget-object v2, p0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->mField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    .line 182
    .local v0, input:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 186
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v1

    goto :goto_9
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract newFieldFromInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
.end method

.method public setActionEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 228
    return-void
.end method

.method public shouldPreventCompletionAction()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 118
    iget-object v1, p0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->mField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasInput()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->mField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->HIDDEN:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    if-ne v1, v2, :cond_18

    .line 122
    :cond_17
    :goto_17
    return v0

    :cond_18
    iget-object v1, p0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->mField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getMandatory()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    goto :goto_17
.end method
