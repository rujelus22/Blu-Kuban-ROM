.class public Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;
.super Ljava/lang/Object;
.source "DatePickerWithLunar.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DatePickerWithLunar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwTextWatcher"
.end annotation


# instance fields
.field private isMonth:Z

.field private mCheck:I

.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/calendar/DatePickerWithLunar;


# direct methods
.method public constructor <init>(Lcom/android/calendar/DatePickerWithLunar;IIZ)V
    .registers 7
    .parameter
    .parameter "maxLen"
    .parameter "id"
    .parameter "month"

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1061
    iput p2, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->mMaxLen:I

    .line 1062
    iput p3, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->mId:I

    .line 1063
    iput-boolean p4, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->isMonth:Z

    .line 1065
    iget v0, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->mCheck:I

    .line 1066
    iget v0, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->mCheck:I

    if-gez v0, :cond_18

    .line 1067
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->mCheck:I

    .line 1069
    :cond_18
    iget v0, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_23

    const/4 v0, -0x1

    :goto_20
    iput v0, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->mNext:I

    .line 1070
    return-void

    .line 1069
    :cond_23
    iget v0, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_20
.end method

.method private changeFocus()V
    .registers 3

    .prologue
    .line 1136
    iget v0, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->mNext:I

    if-ltz v0, :cond_3e

    .line 1137
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #getter for: Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/calendar/DatePickerWithLunar;->access$1700(Lcom/android/calendar/DatePickerWithLunar;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->mCheck:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1138
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #getter for: Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/calendar/DatePickerWithLunar;->access$1700(Lcom/android/calendar/DatePickerWithLunar;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->mNext:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1141
    :cond_21
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #getter for: Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/calendar/DatePickerWithLunar;->access$1700(Lcom/android/calendar/DatePickerWithLunar;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1142
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #getter for: Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/calendar/DatePickerWithLunar;->access$1700(Lcom/android/calendar/DatePickerWithLunar;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1145
    :cond_3e
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 1074
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1080
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->prevText:Ljava/lang/String;

    .line 1081
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1087
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #getter for: Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/calendar/DatePickerWithLunar;->access$1700(Lcom/android/calendar/DatePickerWithLunar;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1088
    .local v0, tag:Ljava/lang/String;
    if-eqz v0, :cond_23

    .line 1089
    const-string v1, "onClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "onLongClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1130
    :cond_22
    :goto_22
    return-void

    .line 1095
    :cond_23
    iget-boolean v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->isMonth:Z

    if-eqz v1, :cond_112

    .line 1096
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #getter for: Lcom/android/calendar/DatePickerWithLunar;->isNumMonth:Z
    invoke-static {v1}, Lcom/android/calendar/DatePickerWithLunar;->access$500(Lcom/android/calendar/DatePickerWithLunar;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1099
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_4b

    .line 1100
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #getter for: Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/calendar/DatePickerWithLunar;->access$1700(Lcom/android/calendar/DatePickerWithLunar;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1101
    invoke-direct {p0}, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->changeFocus()V

    goto :goto_22

    .line 1103
    :cond_4b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_22

    .line 1104
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1105
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #getter for: Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/calendar/DatePickerWithLunar;->access$1700(Lcom/android/calendar/DatePickerWithLunar;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1106
    invoke-direct {p0}, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->changeFocus()V

    goto :goto_22

    .line 1111
    :cond_7d
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #getter for: Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/calendar/DatePickerWithLunar;->access$1700(Lcom/android/calendar/DatePickerWithLunar;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1118
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->mMaxLen:I

    if-lt v1, v2, :cond_22

    .line 1119
    invoke-direct {p0}, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->changeFocus()V

    goto/16 :goto_22

    .line 1124
    :cond_112
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_22

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_22

    .line 1125
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #getter for: Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/calendar/DatePickerWithLunar;->access$1700(Lcom/android/calendar/DatePickerWithLunar;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1126
    invoke-direct {p0}, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;->changeFocus()V

    goto/16 :goto_22
.end method
