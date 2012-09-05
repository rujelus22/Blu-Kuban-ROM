.class public Lcom/samsung/swift/security/DeviceNamePreference;
.super Landroid/preference/EditTextPreference;
.source "DeviceNamePreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .parameter "arg0"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/samsung/swift/security/DeviceNamePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 51
    .local v0, d:Landroid/app/Dialog;
    instance-of v2, v0, Landroid/app/AlertDialog;

    if-eqz v2, :cond_27

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, editStr:Ljava/lang/String;
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0           #d:Landroid/app/Dialog;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_28

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_28

    const/4 v2, 0x1

    :goto_24
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 55
    .end local v1           #editStr:Ljava/lang/String;
    :cond_27
    return-void

    .line 53
    .restart local v1       #editStr:Ljava/lang/String;
    :cond_28
    const/4 v2, 0x0

    goto :goto_24
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 62
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 68
    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/samsung/swift/security/DeviceNamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 42
    .local v0, et:Landroid/widget/EditText;
    if-eqz v0, :cond_9

    .line 43
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 45
    :cond_9
    return-void
.end method

.method public resume()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 23
    invoke-virtual {p0}, Lcom/samsung/swift/security/DeviceNamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    .line 24
    .local v4, et:Landroid/widget/EditText;
    if-eqz v4, :cond_47

    .line 25
    const/16 v5, 0x14

    .line 26
    .local v5, maxLength:I
    new-array v0, v6, [Landroid/text/InputFilter;

    .line 27
    .local v0, FilterArray:[Landroid/text/InputFilter;
    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v8, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v0, v7

    .line 28
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 29
    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 31
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, editStr:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/swift/security/DeviceNamePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    .line 33
    .local v2, d:Landroid/app/Dialog;
    instance-of v8, v2, Landroid/app/AlertDialog;

    if-eqz v8, :cond_47

    .line 34
    check-cast v2, Landroid/app/AlertDialog;

    .end local v2           #d:Landroid/app/Dialog;
    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 35
    .local v1, b:Landroid/widget/Button;
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    if-lez v8, :cond_48

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_48

    :goto_44
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 38
    .end local v0           #FilterArray:[Landroid/text/InputFilter;
    .end local v1           #b:Landroid/widget/Button;
    .end local v3           #editStr:Ljava/lang/String;
    .end local v5           #maxLength:I
    :cond_47
    return-void

    .restart local v0       #FilterArray:[Landroid/text/InputFilter;
    .restart local v1       #b:Landroid/widget/Button;
    .restart local v3       #editStr:Ljava/lang/String;
    .restart local v5       #maxLength:I
    :cond_48
    move v6, v7

    .line 35
    goto :goto_44
.end method
