.class Lcom/android/calendar/AgendaDeleteActivity$5;
.super Ljava/lang/Object;
.source "AgendaDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaDeleteActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/calendar/AgendaDeleteActivity$5;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 14
    .parameter "view"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$5;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static {v0}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AgendaWindowAdapter;

    .line 478
    .local v1, adapter:Lcom/android/calendar/AgendaWindowAdapter;
    invoke-virtual {v1}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v2

    .line 479
    .local v2, checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$5;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/calendar/AgendaDeleteActivity;->access$600(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    .line 482
    .local v7, allChecked:Z
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$5;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/calendar/AgendaDeleteActivity;->access$700(Lcom/android/calendar/AgendaDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 485
    if-eqz v7, :cond_4c

    .line 486
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$5;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$5;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v3, v3, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    iget-object v5, p0, Lcom/android/calendar/AgendaDeleteActivity$5;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v5, v5, Lcom/android/calendar/AgendaDeleteActivity;->mEndMillis:J

    #calls: Lcom/android/calendar/AgendaDeleteActivity;->queryEvent(Lcom/android/calendar/AgendaWindowAdapter;Ljava/util/HashMap;JJ)V
    invoke-static/range {v0 .. v6}, Lcom/android/calendar/AgendaDeleteActivity;->access$800(Lcom/android/calendar/AgendaDeleteActivity;Lcom/android/calendar/AgendaWindowAdapter;Ljava/util/HashMap;JJ)V

    .line 506
    :cond_38
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$5;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/calendar/AgendaDeleteActivity;->access$700(Lcom/android/calendar/AgendaDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_79

    .line 513
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$5;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    const/16 v3, 0x3fc

    invoke-virtual {v0, v3}, Lcom/android/calendar/AgendaDeleteActivity;->showDialog(I)V

    .line 518
    :goto_4b
    return-void

    .line 492
    :cond_4c
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 493
    .local v10, ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 494
    .local v11, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_54
    :goto_54
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 495
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 496
    .local v9, id:Ljava/lang/Long;
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 497
    .local v8, check:Ljava/lang/Boolean;
    if-eqz v8, :cond_54

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_54

    .line 501
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$5;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/calendar/AgendaDeleteActivity;->access$700(Lcom/android/calendar/AgendaDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 516
    .end local v8           #check:Ljava/lang/Boolean;
    .end local v9           #id:Ljava/lang/Long;
    .end local v10           #ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v11           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_79
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$5;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    const/16 v3, 0x3f2

    invoke-virtual {v0, v3}, Lcom/android/calendar/AgendaDeleteActivity;->showDialog(I)V

    goto :goto_4b
.end method
