.class Lcom/android/calendar/AgendaActivity$5;
.super Ljava/lang/Object;
.source "AgendaActivity.java"

# interfaces
.implements Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaActivity;->windowOnLoadLoadCompleted(Lcom/android/calendar/AgendaWindowAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaActivity;

.field final synthetic val$windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaActivity;Lcom/android/calendar/AgendaWindowAdapter;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/calendar/AgendaActivity$5;->this$0:Lcom/android/calendar/AgendaActivity;

    iput-object p2, p0, Lcom/android/calendar/AgendaActivity$5;->val$windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCompleted()V
    .registers 16

    .prologue
    .line 561
    iget-object v13, p0, Lcom/android/calendar/AgendaActivity$5;->this$0:Lcom/android/calendar/AgendaActivity;

    #getter for: Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;
    invoke-static {v13}, Lcom/android/calendar/AgendaActivity;->access$100(Lcom/android/calendar/AgendaActivity;)Lcom/android/calendar/AgendaInterface;

    move-result-object v13

    check-cast v13, Lcom/android/calendar/AgendaListView;

    invoke-virtual {v13}, Lcom/android/calendar/AgendaListView;->getCount()I

    move-result v2

    .line 563
    .local v2, count:I
    iget-object v13, p0, Lcom/android/calendar/AgendaActivity$5;->val$windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v13}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v0

    .line 564
    .local v0, checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    iget-object v13, p0, Lcom/android/calendar/AgendaActivity$5;->val$windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v13}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckStrings()Ljava/util/HashMap;

    move-result-object v1

    .line 565
    .local v1, checkStrings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz v0, :cond_9c

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v13

    if-lez v13, :cond_9c

    .line 566
    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 567
    .local v3, destCheckIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 569
    .local v4, destCheckStrings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 570
    .local v7, idSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 572
    .local v9, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v8, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v12, str:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .local v5, i:I
    :goto_3f
    if-ge v5, v2, :cond_64

    .line 577
    iget-object v13, p0, Lcom/android/calendar/AgendaActivity$5;->val$windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v13, v5}, Lcom/android/calendar/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v13

    if-eqz v13, :cond_61

    .line 579
    iget-object v13, p0, Lcom/android/calendar/AgendaActivity$5;->val$windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v13, v5}, Lcom/android/calendar/AgendaWindowAdapter;->getEventIdByPosition(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object v13, p0, Lcom/android/calendar/AgendaActivity$5;->val$windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v13, v5}, Lcom/android/calendar/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v13

    iget-object v13, v13, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->title:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    :cond_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    .line 586
    :cond_64
    const/4 v10, 0x1

    .line 587
    .local v10, mflag:Z
    :cond_65
    :goto_65
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8a

    .line 589
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 590
    .local v6, id:Ljava/lang/Long;
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 593
    .local v11, st:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_88

    .line 596
    const/4 v10, 0x1

    .line 602
    :goto_7e
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_65

    .line 604
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    .line 600
    :cond_88
    const/4 v10, 0x0

    goto :goto_7e

    .line 609
    .end local v6           #id:Ljava/lang/Long;
    .end local v11           #st:Ljava/lang/String;
    :cond_8a
    const/4 v13, 0x1

    if-ne v10, v13, :cond_9d

    .line 611
    iget-object v13, p0, Lcom/android/calendar/AgendaActivity$5;->val$windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v13, v3}, Lcom/android/calendar/AgendaWindowAdapter;->setCheckIds(Ljava/util/HashMap;)V

    .line 617
    :goto_92
    iget-object v13, p0, Lcom/android/calendar/AgendaActivity$5;->val$windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v13}, Lcom/android/calendar/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 620
    iget-object v13, p0, Lcom/android/calendar/AgendaActivity$5;->this$0:Lcom/android/calendar/AgendaActivity;

    #calls: Lcom/android/calendar/AgendaActivity;->updateAddButtonStatus()V
    invoke-static {v13}, Lcom/android/calendar/AgendaActivity;->access$200(Lcom/android/calendar/AgendaActivity;)V

    .line 622
    .end local v3           #destCheckIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v4           #destCheckStrings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v5           #i:I
    .end local v7           #idSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v8           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v10           #mflag:Z
    .end local v12           #str:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9c
    return-void

    .line 613
    .restart local v3       #destCheckIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .restart local v4       #destCheckStrings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v5       #i:I
    .restart local v7       #idSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v8       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v9       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .restart local v10       #mflag:Z
    .restart local v12       #str:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9d
    iget-object v13, p0, Lcom/android/calendar/AgendaActivity$5;->val$windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/calendar/AgendaWindowAdapter;->setAllChecked(Z)V

    goto :goto_92
.end method
