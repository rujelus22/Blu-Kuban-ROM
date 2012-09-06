.class public Lcom/google/android/apps/plus/oob/TextFieldLayout;
.super Lcom/google/android/apps/plus/oob/BaseFieldLayout;
.source "TextFieldLayout.java"

# interfaces
.implements Lcom/google/android/apps/plus/oob/ActionTagHandler$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method


# virtual methods
.method public bindToField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)V
    .registers 10
    .parameter "field"
    .parameter "id"
    .parameter "actionCallback"

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->bindToField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)V

    .line 64
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/TextFieldLayout;->getLabelView()Landroid/widget/TextView;

    move-result-object v1

    .line 65
    .local v1, labelView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/TextFieldLayout;->getField()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getText()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, text:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/oob/ActionTagHandler;->findActionIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 67
    .local v0, actionIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/TextFieldLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 70
    .local v2, linkColor:I
    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/apps/plus/oob/ActionTagHandler;

    invoke-direct {v5, v0, v2, p0}, Lcom/google/android/apps/plus/oob/ActionTagHandler;-><init>(Ljava/util/List;ILcom/google/android/apps/plus/oob/ActionTagHandler$Callback;)V

    invoke-static {v3, v4, v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v4

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 73
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 74
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 75
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public newFieldFromInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onActionId(Ljava/lang/String;)V
    .registers 3
    .parameter "actionId"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/TextFieldLayout;->mActionCallback:Lcom/google/android/apps/plus/oob/ActionCallback;

    if-eqz v0, :cond_9

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/TextFieldLayout;->mActionCallback:Lcom/google/android/apps/plus/oob/ActionCallback;

    invoke-interface {v0, p1}, Lcom/google/android/apps/plus/oob/ActionCallback;->onActionId(Ljava/lang/String;)V

    .line 101
    :cond_9
    return-void
.end method
