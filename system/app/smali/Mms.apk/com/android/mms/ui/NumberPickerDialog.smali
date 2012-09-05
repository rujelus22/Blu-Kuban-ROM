.class public Lcom/android/mms/ui/NumberPickerDialog;
.super Landroid/app/AlertDialog;
.source "NumberPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;,
        Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;
    }
.end annotation


# static fields
.field private static mRangeMax:I

.field private static mRangeMin:I


# instance fields
.field private final mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInitialNumber:I

.field private final mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

.field private final mNumberpicker_watcher:Landroid/text/TextWatcher;

.field private mOutOfRangeToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIIILjava/lang/String;)V
    .registers 14
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "number"
    .parameter "rangeMin"
    .parameter "rangeMax"
    .parameter "title_id"
    .parameter "title_str"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 214
    new-instance v2, Lcom/android/mms/ui/NumberPickerDialog$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/NumberPickerDialog$1;-><init>(Lcom/android/mms/ui/NumberPickerDialog;)V

    iput-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberpicker_watcher:Landroid/text/TextWatcher;

    .line 88
    iput-object p3, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 89
    iput p4, p0, Lcom/android/mms/ui/NumberPickerDialog;->mInitialNumber:I

    .line 91
    if-lez p7, :cond_7f

    .line 92
    invoke-virtual {p0, p7}, Lcom/android/mms/ui/NumberPickerDialog;->setTitle(I)V

    .line 98
    :goto_13
    const/4 v2, -0x1

    const v3, 0x7f09006b

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/android/mms/ui/NumberPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 99
    const/4 v2, -0x2

    const v3, 0x7f09006a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/android/mms/ui/NumberPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 103
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 105
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030026

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 106
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/NumberPickerDialog;->setView(Landroid/view/View;)V

    .line 107
    const v2, 0x7f0800b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    iput-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    .line 108
    sput p6, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMax:I

    .line 109
    sput p5, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMin:I

    .line 110
    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v2}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberpicker_watcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 112
    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    sget v3, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMax:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->setMaxValue(I)V

    .line 113
    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    sget v3, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMin:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->setMinValue(I)V

    .line 114
    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v2, p4}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->setValue(I)V

    .line 115
    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 121
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 122
    return-void

    .line 94
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #view:Landroid/view/View;
    :cond_7f
    invoke-virtual {p0, p8}, Lcom/android/mms/ui/NumberPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_13
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIIILjava/lang/String;)V
    .registers 17
    .parameter "context"
    .parameter "callBack"
    .parameter "number"
    .parameter "rangeMin"
    .parameter "rangeMax"
    .parameter "title_id"
    .parameter "title_str"

    .prologue
    .line 75
    const v2, 0x1030307

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;ILcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIIILjava/lang/String;)V

    .line 77
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 39
    sget v0, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMax:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/NumberPickerDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPickerDialog;->showToast()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/NumberPickerDialog;)Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    return-object v0
.end method

.method private showToast()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 236
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mOutOfRangeToast:Landroid/widget/Toast;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mOutOfRangeToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mOutOfRangeToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 239
    :cond_19
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090230

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    sget v5, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMax:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mOutOfRangeToast:Landroid/widget/Toast;

    .line 241
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mOutOfRangeToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 243
    :cond_4b
    return-void
.end method


# virtual methods
.method public hideSip(Landroid/view/inputmethod/InputMethodManager;)V
    .registers 7
    .parameter "imm"

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPickerDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 167
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPickerDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 168
    .local v0, currentFocusedView:Landroid/view/View;
    if-eqz v0, :cond_f

    .line 169
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 171
    :cond_f
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 172
    .local v2, window:Landroid/view/Window;
    if-eqz v2, :cond_23

    .line 173
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 174
    .local v1, decorView:Landroid/view/View;
    if-eqz v1, :cond_23

    .line 175
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 178
    .end local v0           #currentFocusedView:Landroid/view/View;
    .end local v1           #decorView:Landroid/view/View;
    .end local v2           #window:Landroid/view/Window;
    :cond_23
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/mms/ui/NumberPickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_16

    .line 128
    iget-object v1, p0, Lcom/android/mms/ui/NumberPickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 132
    :cond_16
    const/4 v0, 0x0

    .line 133
    .local v0, inputNumber:I
    iget-object v1, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v1}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_39

    .line 134
    iget-object v1, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v1}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 136
    :cond_39
    const/4 v1, -0x2

    if-eq p2, v1, :cond_50

    iget-object v1, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    if-eqz v1, :cond_50

    .line 137
    iget-object v1, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v1}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->clearFocus()V

    .line 139
    sget v1, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMax:I

    if-ge v1, v0, :cond_54

    .line 140
    iget-object v1, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    sget v2, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMax:I

    invoke-interface {v1, v2}, Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;->onNumberSet(I)V

    .line 148
    :cond_50
    :goto_50
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 149
    return-void

    .line 141
    :cond_54
    sget v1, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMin:I

    if-le v1, v0, :cond_63

    .line 142
    iget-object v1, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    sget v2, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMin:I

    invoke-interface {v1, v2}, Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;->onNumberSet(I)V

    .line 143
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPickerDialog;->showToast()V

    goto :goto_50

    .line 146
    :cond_63
    iget-object v1, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v2}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;->onNumberSet(I)V

    goto :goto_50
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 161
    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 162
    .local v0, number:I
    iget-object v1, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->setValue(I)V

    .line 163
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 154
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "number"

    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v2}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    return-object v0
.end method
