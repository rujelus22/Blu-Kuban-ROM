.class public Lcom/google/android/apps/plus/oob/BirthdayFieldLayout;
.super Lcom/google/android/apps/plus/oob/BaseFieldLayout;
.source "BirthdayFieldLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$1;,
        Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState;
    }
.end annotation


# instance fields
.field private mInput:Landroid/widget/DatePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;-><init>(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method private getDateValue()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;
    .registers 3

    .prologue
    .line 100
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    move-result-object v0

    .line 101
    .local v0, date:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;
    iget-object v1, p0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout;->mInput:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->setYear(I)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    .line 102
    iget-object v1, p0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout;->mInput:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->setMonth(I)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    .line 103
    iget-object v1, p0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout;->mInput:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->setDay(I)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    .line 104
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bindToField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)V
    .registers 13
    .parameter "field"
    .parameter "id"
    .parameter "actionCallback"

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->bindToField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout;->getField()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v2

    .line 66
    .local v2, inputField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout;->getLabelView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout;->getInputView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/DatePicker;

    iput-object v5, p0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout;->mInput:Landroid/widget/DatePicker;

    .line 70
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout;->getServerDateValue()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v0

    .line 71
    .local v0, birthday:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;
    if-eqz v0, :cond_38

    .line 72
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->getYear()I

    move-result v4

    .line 73
    .local v4, year:I
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->getMonth()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 74
    .local v3, month:I
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->getDay()I

    move-result v1

    .line 75
    .local v1, dayOfMonth:I
    iget-object v5, p0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout;->mInput:Landroid/widget/DatePicker;

    invoke-virtual {v5, v4, v3, v1}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 79
    .end local v1           #dayOfMonth:I
    .end local v3           #month:I
    .end local v4           #year:I
    :goto_37
    return-void

    .line 77
    :cond_38
    iget-object v5, p0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout;->mInput:Landroid/widget/DatePicker;

    const/16 v6, 0x7b2

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/DatePicker;->updateDate(III)V

    goto :goto_37
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public newFieldFromInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 4

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout;->getField()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    .line 87
    .local v0, oobInputField:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout;->getDateValue()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->setDateValue(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->setValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    .line 88
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v1

    return-object v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7
    .parameter "state"

    .prologue
    .line 124
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState;

    .line 125
    .local v0, savedState:Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 126
    iget-object v1, p0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout;->mInput:Landroid/widget/DatePicker;

    iget v2, v0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState;->year:I

    iget v3, v0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState;->month:I

    iget v4, v0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState;->day:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 127
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    .prologue
    .line 112
    invoke-super {p0}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 113
    .local v2, superState:Landroid/os/Parcelable;
    iget-object v4, p0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout;->mInput:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getYear()I

    move-result v3

    .line 114
    .local v3, year:I
    iget-object v4, p0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout;->mInput:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getMonth()I

    move-result v1

    .line 115
    .local v1, month:I
    iget-object v4, p0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout;->mInput:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v0

    .line 116
    .local v0, day:I
    new-instance v4, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState;

    invoke-direct {v4, v2, v3, v1, v0}, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-object v4
.end method
