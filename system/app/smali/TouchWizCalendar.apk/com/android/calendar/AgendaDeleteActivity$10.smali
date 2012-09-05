.class Lcom/android/calendar/AgendaDeleteActivity$10;
.super Ljava/lang/Object;
.source "AgendaDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaDeleteActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 1026
    iput-object p1, p0, Lcom/android/calendar/AgendaDeleteActivity$10;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$10;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/calendar/AgendaDeleteActivity;->access$1300(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity$10;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mDeleteRunnable:Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;
    invoke-static {v1}, Lcom/android/calendar/AgendaDeleteActivity;->access$1200(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1029
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$10;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/AgendaDeleteActivity;->mDeleteStart:Z
    invoke-static {v0, v1}, Lcom/android/calendar/AgendaDeleteActivity;->access$1002(Lcom/android/calendar/AgendaDeleteActivity;Z)Z

    .line 1030
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$10;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaDeleteActivity;->removeDialog(I)V

    .line 1031
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$10;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static {v0}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity$10;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mTime:Landroid/text/format/Time;
    invoke-static {v1}, Lcom/android/calendar/AgendaDeleteActivity;->access$100(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/text/format/Time;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/AgendaListView;->goTo(Landroid/text/format/Time;Z)V

    .line 1032
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$10;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static {v0}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity$10;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaWindowAdapter;->setOnLoadCompleteListener(Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;)V

    .line 1034
    return-void
.end method
