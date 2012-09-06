.class Lcom/android/calendar/agenda/AgendaListView$3;
.super Ljava/lang/Object;
.source "AgendaListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/agenda/AgendaListView;


# direct methods
.method constructor <init>(Lcom/android/calendar/agenda/AgendaListView;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaListView$3;->this$0:Lcom/android/calendar/agenda/AgendaListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 76
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView$3;->this$0:Lcom/android/calendar/agenda/AgendaListView;

    #calls: Lcom/android/calendar/agenda/AgendaListView;->updatePastEvents()Z
    invoke-static {v0}, Lcom/android/calendar/agenda/AgendaListView;->access$400(Lcom/android/calendar/agenda/AgendaListView;)Z

    move-result v0

    if-ne v0, v1, :cond_e

    .line 77
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView$3;->this$0:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/agenda/AgendaListView;->refresh(Z)V

    .line 79
    :cond_e
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView$3;->this$0:Lcom/android/calendar/agenda/AgendaListView;

    #calls: Lcom/android/calendar/agenda/AgendaListView;->setPastEventsUpdater()V
    invoke-static {v0}, Lcom/android/calendar/agenda/AgendaListView;->access$500(Lcom/android/calendar/agenda/AgendaListView;)V

    .line 80
    return-void
.end method
