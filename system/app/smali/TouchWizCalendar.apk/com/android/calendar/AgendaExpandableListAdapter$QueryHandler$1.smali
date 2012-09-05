.class Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler$1;
.super Ljava/lang/Object;
.source "AgendaExpandableListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler$1;->this$1:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler$1;->this$1:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mHeaderView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1400(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-ne p1, v0, :cond_18

    .line 505
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler$1;->this$1:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    new-instance v1, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;-><init>(I)V

    #calls: Lcom/android/calendar/AgendaExpandableListAdapter;->queueQuery(Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;)Z
    invoke-static {v0, v1}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1500(Lcom/android/calendar/AgendaExpandableListAdapter;Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;)Z

    .line 509
    :goto_17
    return-void

    .line 507
    :cond_18
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler$1;->this$1:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    new-instance v1, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;-><init>(I)V

    #calls: Lcom/android/calendar/AgendaExpandableListAdapter;->queueQuery(Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;)Z
    invoke-static {v0, v1}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1500(Lcom/android/calendar/AgendaExpandableListAdapter;Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;)Z

    goto :goto_17
.end method
