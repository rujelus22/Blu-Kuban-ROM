.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$31;
.super Ljava/lang/Object;
.source "ProjectEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$31;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 2166
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

    .line 2169
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$6()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2170
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$26(Z)V

    .line 2171
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$31;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->trySharing:Z
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$17(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2172
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$31;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->trySharing:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$16(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Z)V

    .line 2173
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$31;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v1, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$24(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V

    .line 2174
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$31;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 2175
    return-void
.end method
