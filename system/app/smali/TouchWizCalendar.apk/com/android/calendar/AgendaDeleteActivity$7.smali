.class Lcom/android/calendar/AgendaDeleteActivity$7;
.super Ljava/lang/Object;
.source "AgendaDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaDeleteActivity;->onResume()V
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
    .line 540
    iput-object p1, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 543
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 544
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_hide_declined"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 546
    .local v0, hideDeclined:Z
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/calendar/AgendaListView;->setHideDeclinedEvents(Z)V

    .line 547
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mTime:Landroid/text/format/Time;
    invoke-static {v4}, Lcom/android/calendar/AgendaDeleteActivity;->access$100(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/text/format/Time;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/android/calendar/AgendaListView;->goTo(Landroid/text/format/Time;Z)V

    .line 550
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mUpdateTZ:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$900(Lcom/android/calendar/AgendaDeleteActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 555
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mDeleteStart:Z
    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$1000(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v3

    if-ne v3, v5, :cond_55

    .line 556
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;
    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$1100(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    move-result-object v3

    if-nez v3, :cond_46

    .line 558
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    const/16 v4, 0x3ed

    invoke-virtual {v3, v4}, Lcom/android/calendar/AgendaDeleteActivity;->showDialog(I)V

    .line 560
    :cond_46
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$1300(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mDeleteRunnable:Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;
    invoke-static {v4}, Lcom/android/calendar/AgendaDeleteActivity;->access$1200(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 571
    :cond_55
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v3

    iget-object v2, v3, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    .line 572
    .local v2, windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-virtual {v2, v3}, Lcom/android/calendar/AgendaWindowAdapter;->setOnLoadCompleteListener(Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;)V

    .line 605
    return-void
.end method
