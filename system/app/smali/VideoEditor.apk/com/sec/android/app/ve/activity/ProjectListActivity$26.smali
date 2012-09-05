.class Lcom/sec/android/app/ve/activity/ProjectListActivity$26;
.super Ljava/lang/Object;
.source "ProjectListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$26;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 2330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 2334
    const-string v0, " PLA Inside PLA SHARE_OPTION_DIALOG inside cancel"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2335
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$4()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2336
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$36(Z)V

    .line 2337
    :cond_f
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$14()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2338
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$12(Z)V

    .line 2339
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$26;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->removeDialog(I)V

    .line 2340
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$26;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/16 v1, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$34(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V

    .line 2341
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$26;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->lDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$37(Lcom/sec/android/app/ve/activity/ProjectListActivity;Landroid/app/Dialog;)V

    .line 2342
    return-void
.end method
