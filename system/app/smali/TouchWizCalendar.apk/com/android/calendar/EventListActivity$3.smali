.class Lcom/android/calendar/EventListActivity$3;
.super Ljava/lang/Object;
.source "EventListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventListActivity;->reloadEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventListActivity;

.field final synthetic val$events:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventListActivity;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    iput-object p2, p0, Lcom/android/calendar/EventListActivity$3;->val$events:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const v6, 0x7f0f0076

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 461
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    #getter for: Lcom/android/calendar/EventListActivity;->mEventListType:I
    invoke-static {v0}, Lcom/android/calendar/EventListActivity;->access$200(Lcom/android/calendar/EventListActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_41

    .line 465
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    iget-object v1, p0, Lcom/android/calendar/EventListActivity$3;->val$events:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    #getter for: Lcom/android/calendar/EventListActivity;->mJulianDay:I
    invoke-static {v2}, Lcom/android/calendar/EventListActivity;->access$500(Lcom/android/calendar/EventListActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    #getter for: Lcom/android/calendar/EventListActivity;->mJulianDay:I
    invoke-static {v3}, Lcom/android/calendar/EventListActivity;->access$500(Lcom/android/calendar/EventListActivity;)I

    move-result v3

    #calls: Lcom/android/calendar/EventListActivity;->setAllDayEvents(Ljava/util/ArrayList;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/EventListActivity;->access$600(Lcom/android/calendar/EventListActivity;Ljava/util/ArrayList;II)V

    .line 473
    :goto_22
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    #getter for: Lcom/android/calendar/EventListActivity;->mEvents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/calendar/EventListActivity;->access$000(Lcom/android/calendar/EventListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_49

    .line 475
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    #getter for: Lcom/android/calendar/EventListActivity;->mEventList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/calendar/EventListActivity;->access$800(Lcom/android/calendar/EventListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-virtual {v0, v6}, Lcom/android/calendar/EventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 503
    :goto_40
    return-void

    .line 469
    :cond_41
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    iget-object v1, p0, Lcom/android/calendar/EventListActivity$3;->val$events:Ljava/util/ArrayList;

    #calls: Lcom/android/calendar/EventListActivity;->setMoreEvents(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/android/calendar/EventListActivity;->access$700(Lcom/android/calendar/EventListActivity;Ljava/util/ArrayList;)V

    goto :goto_22

    .line 483
    :cond_49
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-virtual {v0, v6}, Lcom/android/calendar/EventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    #getter for: Lcom/android/calendar/EventListActivity;->mEventAdapter:Lcom/android/calendar/EventListActivity$EventAdapter;
    invoke-static {v0}, Lcom/android/calendar/EventListActivity;->access$900(Lcom/android/calendar/EventListActivity;)Lcom/android/calendar/EventListActivity$EventAdapter;

    move-result-object v0

    if-nez v0, :cond_81

    .line 487
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    new-instance v1, Lcom/android/calendar/EventListActivity$EventAdapter;

    iget-object v2, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    iget-object v3, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-direct {v1, v2, v3}, Lcom/android/calendar/EventListActivity$EventAdapter;-><init>(Lcom/android/calendar/EventListActivity;Landroid/content/Context;)V

    #setter for: Lcom/android/calendar/EventListActivity;->mEventAdapter:Lcom/android/calendar/EventListActivity$EventAdapter;
    invoke-static {v0, v1}, Lcom/android/calendar/EventListActivity;->access$902(Lcom/android/calendar/EventListActivity;Lcom/android/calendar/EventListActivity$EventAdapter;)Lcom/android/calendar/EventListActivity$EventAdapter;

    .line 489
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    #getter for: Lcom/android/calendar/EventListActivity;->mEventList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/calendar/EventListActivity;->access$800(Lcom/android/calendar/EventListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    #getter for: Lcom/android/calendar/EventListActivity;->mEventAdapter:Lcom/android/calendar/EventListActivity$EventAdapter;
    invoke-static {v1}, Lcom/android/calendar/EventListActivity;->access$900(Lcom/android/calendar/EventListActivity;)Lcom/android/calendar/EventListActivity$EventAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 497
    :goto_77
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    #getter for: Lcom/android/calendar/EventListActivity;->mEventList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/calendar/EventListActivity;->access$800(Lcom/android/calendar/EventListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_40

    .line 493
    :cond_81
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    #getter for: Lcom/android/calendar/EventListActivity;->mEventAdapter:Lcom/android/calendar/EventListActivity$EventAdapter;
    invoke-static {v0}, Lcom/android/calendar/EventListActivity;->access$900(Lcom/android/calendar/EventListActivity;)Lcom/android/calendar/EventListActivity$EventAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/EventListActivity$EventAdapter;->notifyDataSetChanged()V

    goto :goto_77
.end method
