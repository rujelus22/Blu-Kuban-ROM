.class Lcom/sec/android/app/ve/activity/ProjectListActivity$24;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$24;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 2235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "arg0"
    .parameter "keycode"
    .parameter "event"

    .prologue
    .line 2239
    const/4 v0, 0x4

    if-ne p2, v0, :cond_28

    .line 2240
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$24;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/ProjectOpView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->setVisibility(I)V

    .line 2242
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$24;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/16 v1, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$34(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V

    .line 2243
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$24;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->lDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$37(Lcom/sec/android/app/ve/activity/ProjectListActivity;Landroid/app/Dialog;)V

    .line 2244
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$24;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->makeButtonLayoutVisible()V

    .line 2245
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$24;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->removeDialog(I)V

    .line 2246
    const/4 v0, 0x1

    .line 2248
    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method
