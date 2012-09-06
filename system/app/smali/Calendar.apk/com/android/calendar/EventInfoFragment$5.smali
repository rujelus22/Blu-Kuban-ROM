.class Lcom/android/calendar/EventInfoFragment$5;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventInfoFragment;
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
    .line 677
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$5;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$5;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mIsPaused:Z
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$3000(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 681
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$5;->this$0:Lcom/android/calendar/EventInfoFragment;

    const/4 v1, 0x1

    #setter for: Lcom/android/calendar/EventInfoFragment;->mDismissOnResume:Z
    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$3102(Lcom/android/calendar/EventInfoFragment;Z)Z

    .line 687
    :cond_e
    :goto_e
    return-void

    .line 684
    :cond_f
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$5;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 685
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$5;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoFragment;->dismiss()V

    goto :goto_e
.end method
