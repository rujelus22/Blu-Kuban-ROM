.class Lcom/android/calendar/DayEventListView$2;
.super Ljava/lang/Object;
.source "DayEventListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/DayEventListView;->reloadEvents(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayEventListView;

.field final synthetic val$events:Ljava/util/ArrayList;

.field final synthetic val$julianDay:I


# direct methods
.method constructor <init>(Lcom/android/calendar/DayEventListView;Ljava/util/ArrayList;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/calendar/DayEventListView$2;->this$0:Lcom/android/calendar/DayEventListView;

    iput-object p2, p0, Lcom/android/calendar/DayEventListView$2;->val$events:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/calendar/DayEventListView$2;->val$julianDay:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const v4, 0x7f0f0076

    .line 480
    iget-object v0, p0, Lcom/android/calendar/DayEventListView$2;->this$0:Lcom/android/calendar/DayEventListView;

    iget-object v1, p0, Lcom/android/calendar/DayEventListView$2;->val$events:Ljava/util/ArrayList;

    #setter for: Lcom/android/calendar/DayEventListView;->mEvents:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/calendar/DayEventListView;->access$002(Lcom/android/calendar/DayEventListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 481
    iget-object v0, p0, Lcom/android/calendar/DayEventListView$2;->this$0:Lcom/android/calendar/DayEventListView;

    #getter for: Lcom/android/calendar/DayEventListView;->mEvents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/calendar/DayEventListView;->access$000(Lcom/android/calendar/DayEventListView;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/DayEventListView$2;->val$julianDay:I

    iget v2, p0, Lcom/android/calendar/DayEventListView$2;->val$julianDay:I

    iget-object v3, p0, Lcom/android/calendar/DayEventListView$2;->this$0:Lcom/android/calendar/DayEventListView;

    iget-object v3, v3, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->setAllDayEvents(Ljava/util/ArrayList;IILandroid/content/Context;)I

    .line 482
    iget-object v0, p0, Lcom/android/calendar/DayEventListView$2;->this$0:Lcom/android/calendar/DayEventListView;

    #calls: Lcom/android/calendar/DayEventListView;->recalc()V
    invoke-static {v0}, Lcom/android/calendar/DayEventListView;->access$100(Lcom/android/calendar/DayEventListView;)V

    .line 495
    iget-object v0, p0, Lcom/android/calendar/DayEventListView$2;->this$0:Lcom/android/calendar/DayEventListView;

    #getter for: Lcom/android/calendar/DayEventListView;->mEvents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/calendar/DayEventListView;->access$000(Lcom/android/calendar/DayEventListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5e

    .line 496
    iget-object v0, p0, Lcom/android/calendar/DayEventListView$2;->this$0:Lcom/android/calendar/DayEventListView;

    invoke-virtual {v0}, Lcom/android/calendar/DayEventListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 501
    :goto_3c
    iget-object v0, p0, Lcom/android/calendar/DayEventListView$2;->this$0:Lcom/android/calendar/DayEventListView;

    #getter for: Lcom/android/calendar/DayEventListView;->mEventAdapter:Lcom/android/calendar/DayEventListAdapter;
    invoke-static {v0}, Lcom/android/calendar/DayEventListView;->access$200(Lcom/android/calendar/DayEventListView;)Lcom/android/calendar/DayEventListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/DayEventListAdapter;->notifyDataSetChanged()V

    .line 502
    iget-object v0, p0, Lcom/android/calendar/DayEventListView$2;->this$0:Lcom/android/calendar/DayEventListView;

    #getter for: Lcom/android/calendar/DayEventListView;->mEventList:Lcom/android/calendar/DayEventListView;
    invoke-static {v0}, Lcom/android/calendar/DayEventListView;->access$300(Lcom/android/calendar/DayEventListView;)Lcom/android/calendar/DayEventListView;

    move-result-object v0

    #calls: Lcom/android/calendar/DayEventListView;->layoutChildren()V
    invoke-static {v0}, Lcom/android/calendar/DayEventListView;->access$400(Lcom/android/calendar/DayEventListView;)V

    .line 503
    iget-object v0, p0, Lcom/android/calendar/DayEventListView$2;->this$0:Lcom/android/calendar/DayEventListView;

    #getter for: Lcom/android/calendar/DayEventListView;->mEventList:Lcom/android/calendar/DayEventListView;
    invoke-static {v0}, Lcom/android/calendar/DayEventListView;->access$300(Lcom/android/calendar/DayEventListView;)Lcom/android/calendar/DayEventListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/DayEventListView$2;->this$0:Lcom/android/calendar/DayEventListView;

    #getter for: Lcom/android/calendar/DayEventListView;->firstPos:I
    invoke-static {v1}, Lcom/android/calendar/DayEventListView;->access$500(Lcom/android/calendar/DayEventListView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayEventListView;->setSelection(I)V

    .line 504
    return-void

    .line 498
    :cond_5e
    iget-object v0, p0, Lcom/android/calendar/DayEventListView$2;->this$0:Lcom/android/calendar/DayEventListView;

    invoke-virtual {v0}, Lcom/android/calendar/DayEventListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3c
.end method
