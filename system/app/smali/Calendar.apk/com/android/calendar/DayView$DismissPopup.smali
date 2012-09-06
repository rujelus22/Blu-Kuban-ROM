.class Lcom/android/calendar/DayView$DismissPopup;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DismissPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayView;)V
    .registers 2
    .parameter

    .prologue
    .line 4620
    iput-object p1, p0, Lcom/android/calendar/DayView$DismissPopup;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 4623
    iget-object v0, p0, Lcom/android/calendar/DayView$DismissPopup;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$3400(Lcom/android/calendar/DayView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 4624
    iget-object v0, p0, Lcom/android/calendar/DayView$DismissPopup;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$3400(Lcom/android/calendar/DayView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4626
    :cond_11
    return-void
.end method
