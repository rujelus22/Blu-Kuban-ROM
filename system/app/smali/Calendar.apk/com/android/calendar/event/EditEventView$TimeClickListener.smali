.class Lcom/android/calendar/event/EditEventView$TimeClickListener;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeClickListener"
.end annotation


# instance fields
.field private mTime:Landroid/text/format/Time;

.field final synthetic this$0:Lcom/android/calendar/event/EditEventView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V
    .registers 3
    .parameter
    .parameter "time"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$TimeClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p2, p0, Lcom/android/calendar/event/EditEventView$TimeClickListener;->mTime:Landroid/text/format/Time;

    .line 262
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 266
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$TimeClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/calendar/event/EditEventView;->access$500(Lcom/android/calendar/event/EditEventView;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/event/EditEventView$TimeListener;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView$TimeClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {v2, v3, p1}, Lcom/android/calendar/event/EditEventView$TimeListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView$TimeClickListener;->mTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->hour:I

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView$TimeClickListener;->mTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->minute:I

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView$TimeClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/calendar/event/EditEventView;->access$500(Lcom/android/calendar/event/EditEventView;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 268
    .local v0, tp:Landroid/app/TimePickerDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/TimePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 269
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 270
    return-void
.end method
