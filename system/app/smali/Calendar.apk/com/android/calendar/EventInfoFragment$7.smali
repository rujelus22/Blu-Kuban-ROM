.class Lcom/android/calendar/EventInfoFragment$7;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoFragment;->updateCalendar(Landroid/view/View;)V
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
    .line 1395
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$7;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$7;->this$0:Lcom/android/calendar/EventInfoFragment;

    #calls: Lcom/android/calendar/EventInfoFragment;->doEdit()V
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$3200(Lcom/android/calendar/EventInfoFragment;)V

    .line 1401
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$7;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$2200(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1402
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$7;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoFragment;->dismiss()V

    .line 1407
    :cond_12
    :goto_12
    return-void

    .line 1404
    :cond_13
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$7;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$2300(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1405
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$7;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_12
.end method
