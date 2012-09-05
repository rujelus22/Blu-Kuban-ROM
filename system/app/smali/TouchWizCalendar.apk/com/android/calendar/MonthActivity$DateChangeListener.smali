.class Lcom/android/calendar/MonthActivity$DateChangeListener;
.super Ljava/lang/Object;
.source "MonthActivity.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/MonthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/MonthActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1866
    iput-object p1, p0, Lcom/android/calendar/MonthActivity$DateChangeListener;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1867
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
    .line 1871
    iget-object v0, p0, Lcom/android/calendar/MonthActivity$DateChangeListener;->this$0:Lcom/android/calendar/MonthActivity;

    #getter for: Lcom/android/calendar/MonthActivity;->mDatePicker:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/calendar/MonthActivity;->access$1000(Lcom/android/calendar/MonthActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lcom/android/calendar/Utils;->dateFormat(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1872
    return-void
.end method
