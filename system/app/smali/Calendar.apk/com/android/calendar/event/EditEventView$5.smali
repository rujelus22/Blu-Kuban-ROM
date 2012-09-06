.class Lcom/android/calendar/event/EditEventView$5;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EditEventView;->setModel(Lcom/android/calendar/CalendarEventModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EditEventView;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EditEventView;)V
    .registers 2
    .parameter

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$5;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$5;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$5;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1101
    return-void

    .line 1100
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method
