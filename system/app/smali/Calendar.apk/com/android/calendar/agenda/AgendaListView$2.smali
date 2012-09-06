.class Lcom/android/calendar/agenda/AgendaListView$2;
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
    .line 64
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaListView$2;->this$0:Lcom/android/calendar/agenda/AgendaListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView$2;->this$0:Lcom/android/calendar/agenda/AgendaListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/agenda/AgendaListView;->refresh(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView$2;->this$0:Lcom/android/calendar/agenda/AgendaListView;

    #calls: Lcom/android/calendar/agenda/AgendaListView;->setMidnightUpdater()V
    invoke-static {v0}, Lcom/android/calendar/agenda/AgendaListView;->access$300(Lcom/android/calendar/agenda/AgendaListView;)V

    .line 69
    return-void
.end method
