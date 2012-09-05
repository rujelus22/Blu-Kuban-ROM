.class Lcom/android/calendar/AgendaWindowAdapter$QueryHandler$1;
.super Ljava/lang/Object;
.source "AgendaWindowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler$1;->this$1:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler$1;->this$1:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mHeaderView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/calendar/AgendaWindowAdapter;->access$1400(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-ne p1, v0, :cond_18

    .line 1435
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler$1;->this$1:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    new-instance v1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    #calls: Lcom/android/calendar/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)Z
    invoke-static {v0, v1}, Lcom/android/calendar/AgendaWindowAdapter;->access$1500(Lcom/android/calendar/AgendaWindowAdapter;Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)Z

    .line 1439
    :goto_17
    return-void

    .line 1437
    :cond_18
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler$1;->this$1:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    new-instance v1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    #calls: Lcom/android/calendar/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)Z
    invoke-static {v0, v1}, Lcom/android/calendar/AgendaWindowAdapter;->access$1500(Lcom/android/calendar/AgendaWindowAdapter;Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)Z

    goto :goto_17
.end method
