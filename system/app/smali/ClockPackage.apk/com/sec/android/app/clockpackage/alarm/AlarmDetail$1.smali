.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;
.super Ljava/lang/Object;
.source "AlarmDetail.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mBeforeTextLength:I

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTimeTitle()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    .line 232
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 236
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;->mBeforeTextLength:I

    .line 237
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 241
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;->mBeforeTextLength:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->isClicking()Z

    move-result v0

    if-nez v0, :cond_26

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 249
    :cond_26
    return-void
.end method
