.class Lcom/android/calendar/AgendaActivity$11;
.super Ljava/lang/Object;
.source "AgendaActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaActivity;->setupPickView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 960
    iput-object p1, p0, Lcom/android/calendar/AgendaActivity$11;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 17
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 963
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v9, 0x7f0f001b

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 965
    .local v1, box:Landroid/widget/CheckBox;
    if-eqz v1, :cond_60

    .line 966
    iget-object v9, p0, Lcom/android/calendar/AgendaActivity$11;->this$0:Lcom/android/calendar/AgendaActivity;

    #getter for: Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;
    invoke-static {v9}, Lcom/android/calendar/AgendaActivity;->access$100(Lcom/android/calendar/AgendaActivity;)Lcom/android/calendar/AgendaInterface;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/AgendaListView;

    invoke-virtual {v9}, Lcom/android/calendar/AgendaListView;->getHeaderViewsCount()I

    move-result v7

    .line 969
    .local v7, headerCount:I
    iget-object v9, p0, Lcom/android/calendar/AgendaActivity$11;->this$0:Lcom/android/calendar/AgendaActivity;

    #getter for: Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;
    invoke-static {v9}, Lcom/android/calendar/AgendaActivity;->access$100(Lcom/android/calendar/AgendaActivity;)Lcom/android/calendar/AgendaInterface;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/AgendaListView;

    invoke-virtual {v9}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter;

    .line 971
    .local v0, adapter:Lcom/android/calendar/AgendaWindowAdapter;
    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v3

    .line 972
    .local v3, checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckStrings()Ljava/util/HashMap;

    move-result-object v4

    .line 973
    .local v4, checkStrings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    sub-int v9, p3, v7

    invoke-virtual {v0, v9}, Lcom/android/calendar/AgendaWindowAdapter;->getEventIdByPosition(I)J

    move-result-wide v5

    .line 974
    .local v5, eventId:J
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-nez v9, :cond_61

    const/4 v2, 0x1

    .line 977
    .local v2, check:Z
    :goto_3a
    invoke-virtual {v0, p3}, Lcom/android/calendar/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v9

    if-eqz v9, :cond_60

    .line 979
    invoke-virtual {v0, p3}, Lcom/android/calendar/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v9

    iget-object v8, v9, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->title:Ljava/lang/String;

    .line 980
    .local v8, title:Ljava/lang/String;
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    invoke-virtual {v1}, Landroid/widget/CheckBox;->toggle()V

    .line 983
    iget-object v9, p0, Lcom/android/calendar/AgendaActivity$11;->this$0:Lcom/android/calendar/AgendaActivity;

    #calls: Lcom/android/calendar/AgendaActivity;->updateAddButtonStatus()V
    invoke-static {v9}, Lcom/android/calendar/AgendaActivity;->access$200(Lcom/android/calendar/AgendaActivity;)V

    .line 987
    .end local v0           #adapter:Lcom/android/calendar/AgendaWindowAdapter;
    .end local v2           #check:Z
    .end local v3           #checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v4           #checkStrings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v5           #eventId:J
    .end local v7           #headerCount:I
    .end local v8           #title:Ljava/lang/String;
    :cond_60
    return-void

    .line 974
    .restart local v0       #adapter:Lcom/android/calendar/AgendaWindowAdapter;
    .restart local v3       #checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .restart local v4       #checkStrings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v5       #eventId:J
    .restart local v7       #headerCount:I
    :cond_61
    const/4 v2, 0x0

    goto :goto_3a
.end method
