.class Lcom/android/task/TaskEditActivity$12;
.super Ljava/lang/Object;
.source "TaskEditActivity.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskEditActivity;->dialogDatePicker(Landroid/text/format/Time;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskEditActivity;


# direct methods
.method constructor <init>(Lcom/android/task/TaskEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1174
    iput-object p1, p0, Lcom/android/task/TaskEditActivity$12;->this$0:Lcom/android/task/TaskEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .registers 8
    .parameter "datePicker"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 1177
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1178
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, p4, p3, p2}, Landroid/text/format/Time;->set(III)V

    .line 1179
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$12;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->dateAlert:Landroid/app/DatePickerDialog;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$1700(Lcom/android/task/TaskEditActivity;)Landroid/app/DatePickerDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/task/TaskEditActivity$12;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$1600(Lcom/android/task/TaskEditActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/task/Utils;->getDateStringForDatePickerHeader(Landroid/text/format/Time;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1180
    return-void
.end method
