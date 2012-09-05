.class Lcom/android/calendar/EditEvent$DateClickListener;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateClickListener"
.end annotation


# instance fields
.field private mTime:Landroid/text/format/Time;

.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EditEvent;Landroid/text/format/Time;)V
    .registers 10
    .parameter
    .parameter "time"

    .prologue
    const/16 v6, 0x7f4

    .line 960
    iput-object p1, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 961
    iput-object p2, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    .line 964
    iget-object v0, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    if-le v0, v6, :cond_23

    .line 965
    iget-object v0, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    const/4 v1, 0x0

    const/16 v2, 0x3b

    const/16 v3, 0x17

    const/16 v4, 0x1f

    const/16 v5, 0xb

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 966
    iget-object v0, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 969
    :cond_23
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    const/16 v7, 0xe

    .line 972
    iget-object v1, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v1}, Lcom/android/calendar/EditEvent;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1011
    :cond_a
    :goto_a
    return-void

    .line 974
    :cond_b
    iget-object v1, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    #calls: Lcom/android/calendar/EditEvent;->hideSoftInput()V
    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$1600(Lcom/android/calendar/EditEvent;)V

    .line 978
    iget-object v1, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mDatePicker:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$1500(Lcom/android/calendar/EditEvent;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mDatePicker:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$1500(Lcom/android/calendar/EditEvent;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_a

    .line 982
    :cond_24
    iget-object v1, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v1, v7}, Lcom/android/calendar/EditEvent;->removeDialog(I)V

    .line 1003
    new-instance v0, Lcom/android/calendar/TwDatePickerDialog;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    new-instance v2, Lcom/android/calendar/EditEvent$DateListener;

    iget-object v3, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {v2, v3, p1}, Lcom/android/calendar/EditEvent$DateListener;-><init>(Lcom/android/calendar/EditEvent;Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    iget-object v4, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->month:I

    iget-object v5, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/TwDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 1005
    .local v0, twd:Lcom/android/calendar/TwDatePickerDialog;
    invoke-virtual {v0}, Lcom/android/calendar/TwDatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    iget-object v3, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    iget-object v4, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->monthDay:I

    new-instance v5, Lcom/android/calendar/EditEvent$DateChangeListener;

    iget-object v6, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {v5, v6}, Lcom/android/calendar/EditEvent$DateChangeListener;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 1006
    iget-object v1, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    #setter for: Lcom/android/calendar/EditEvent;->mDatePicker:Landroid/app/Dialog;
    invoke-static {v1, v0}, Lcom/android/calendar/EditEvent;->access$1502(Lcom/android/calendar/EditEvent;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1007
    iget-object v1, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mDatePicker:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$1500(Lcom/android/calendar/EditEvent;)Landroid/app/Dialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    iget-object v3, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    iget-object v4, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->monthDay:I

    invoke-static {v2, v3, v4}, Lcom/android/calendar/Utils;->dateFormat(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1010
    iget-object v1, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v1, v7}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    goto :goto_a
.end method
