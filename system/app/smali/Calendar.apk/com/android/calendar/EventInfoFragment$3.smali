.class Lcom/android/calendar/EventInfoFragment$3;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$3;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 637
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$3;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$1800(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 647
    :goto_9
    return-void

    .line 640
    :cond_a
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment$3;->this$0:Lcom/android/calendar/EventInfoFragment;

    new-instance v3, Lcom/android/calendar/DeleteEventHelper;

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$3;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$2000(Lcom/android/calendar/EventInfoFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$3;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$2100(Lcom/android/calendar/EventInfoFragment;)Landroid/app/Activity;

    move-result-object v5

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$3;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$2200(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v0

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$3;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$2300(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v0

    if-nez v0, :cond_73

    move v0, v1

    :goto_2b
    invoke-direct {v3, v4, v5, v0}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    #setter for: Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$1902(Lcom/android/calendar/EventInfoFragment;Lcom/android/calendar/DeleteEventHelper;)Lcom/android/calendar/DeleteEventHelper;

    .line 643
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$3;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$1900(Lcom/android/calendar/EventInfoFragment;)Lcom/android/calendar/DeleteEventHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment$3;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v0, v2}, Lcom/android/calendar/DeleteEventHelper;->setDeleteNotificationListener(Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;)V

    .line 644
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$3;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$1900(Lcom/android/calendar/EventInfoFragment;)Lcom/android/calendar/DeleteEventHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment$3;->this$0:Lcom/android/calendar/EventInfoFragment;

    #calls: Lcom/android/calendar/EventInfoFragment;->createDeleteOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$2400(Lcom/android/calendar/EventInfoFragment;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/DeleteEventHelper;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 645
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$3;->this$0:Lcom/android/calendar/EventInfoFragment;

    #setter for: Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z
    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$2502(Lcom/android/calendar/EventInfoFragment;Z)Z

    .line 646
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$3;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$1900(Lcom/android/calendar/EventInfoFragment;)Lcom/android/calendar/DeleteEventHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$3;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mStartMillis:J
    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$2600(Lcom/android/calendar/EventInfoFragment;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment$3;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mEndMillis:J
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$2700(Lcom/android/calendar/EventInfoFragment;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/calendar/EventInfoFragment$3;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mEventId:J
    invoke-static {v5}, Lcom/android/calendar/EventInfoFragment;->access$900(Lcom/android/calendar/EventInfoFragment;)J

    move-result-wide v5

    const/4 v7, -0x1

    iget-object v8, p0, Lcom/android/calendar/EventInfoFragment$3;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/calendar/EventInfoFragment;->access$2800(Lcom/android/calendar/EventInfoFragment;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJILjava/lang/Runnable;)V

    goto :goto_9

    .line 640
    :cond_73
    const/4 v0, 0x0

    goto :goto_2b
.end method
