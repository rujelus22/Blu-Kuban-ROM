.class Lcom/android/calendar/MonthView$5;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/MonthView;->reloadEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthView;

.field final synthetic val$events:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthView;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 627
    iput-object p1, p0, Lcom/android/calendar/MonthView$5;->this$0:Lcom/android/calendar/MonthView;

    iput-object p2, p0, Lcom/android/calendar/MonthView$5;->val$events:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 629
    iget-object v1, p0, Lcom/android/calendar/MonthView$5;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/MonthActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 642
    :cond_d
    :goto_d
    return-void

    .line 633
    :cond_e
    iget-object v1, p0, Lcom/android/calendar/MonthView$5;->this$0:Lcom/android/calendar/MonthView;

    iget-object v2, p0, Lcom/android/calendar/MonthView$5;->val$events:Ljava/util/ArrayList;

    #setter for: Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/calendar/MonthView;->access$1602(Lcom/android/calendar/MonthView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 634
    iget-object v1, p0, Lcom/android/calendar/MonthView$5;->this$0:Lcom/android/calendar/MonthView;

    #calls: Lcom/android/calendar/MonthView;->calEventDay()V
    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$1700(Lcom/android/calendar/MonthView;)V

    .line 635
    iget-object v1, p0, Lcom/android/calendar/MonthView$5;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mRedrawScreen:Z
    invoke-static {v1, v0}, Lcom/android/calendar/MonthView;->access$1102(Lcom/android/calendar/MonthView;Z)Z

    .line 636
    iget-object v1, p0, Lcom/android/calendar/MonthView$5;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v1}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 638
    iget-object v1, p0, Lcom/android/calendar/MonthView$5;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v1}, Lcom/android/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_3e

    .line 639
    .local v0, isPortrait:Z
    :goto_32
    if-eqz v0, :cond_d

    .line 640
    iget-object v1, p0, Lcom/android/calendar/MonthView$5;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/MonthActivity;->reloadCurrentDayEvents()V

    goto :goto_d

    .line 638
    .end local v0           #isPortrait:Z
    :cond_3e
    const/4 v0, 0x0

    goto :goto_32
.end method
