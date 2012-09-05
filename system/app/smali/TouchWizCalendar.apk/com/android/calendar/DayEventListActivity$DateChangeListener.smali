.class Lcom/android/calendar/DayEventListActivity$DateChangeListener;
.super Ljava/lang/Object;
.source "DayEventListActivity.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayEventListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayEventListActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/DayEventListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 771
    iput-object p1, p0, Lcom/android/calendar/DayEventListActivity$DateChangeListener;->this$0:Lcom/android/calendar/DayEventListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 772
    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .registers 7
    .parameter "datePicker"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/calendar/DayEventListActivity$DateChangeListener;->this$0:Lcom/android/calendar/DayEventListActivity;

    #getter for: Lcom/android/calendar/DayEventListActivity;->mDatePicker:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/calendar/DayEventListActivity;->access$200(Lcom/android/calendar/DayEventListActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lcom/android/calendar/Utils;->dateFormat(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 777
    return-void
.end method
