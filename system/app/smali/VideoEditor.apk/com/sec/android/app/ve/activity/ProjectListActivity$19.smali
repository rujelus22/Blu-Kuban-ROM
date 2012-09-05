.class Lcom/sec/android/app/ve/activity/ProjectListActivity$19;
.super Ljava/lang/Object;
.source "ProjectListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$19;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 2139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2141
    const/4 v2, 0x4

    if-ne p2, v2, :cond_3a

    .line 2142
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$4()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2143
    const-string v2, "Stopping Export"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2144
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$19;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/thread/ExportThread;

    move-result-object v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$19;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/thread/ExportThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/thread/ExportThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 2145
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$19;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/thread/ExportThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/thread/ExportThread;->stopExport()V

    .line 2146
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$36(Z)V

    .line 2148
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$14()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2149
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$12(Z)V

    :cond_39
    move v0, v1

    .line 2158
    :cond_3a
    return v0
.end method
