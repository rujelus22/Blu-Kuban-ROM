.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$16;
.super Ljava/lang/Object;
.source "ProjectEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

.field private final synthetic val$lIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$16;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iput-object p2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$16;->val$lIntent:Landroid/content/Intent;

    .line 1730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1733
    const-string v0, "Inside DIALOG_VIDEOINTENT_OVERRIDE clicked on yes"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1734
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$16;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 1735
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$16;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #calls: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->updateTrimSplitSection()V
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$19(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    .line 1736
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$16;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$16;->val$lIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    #calls: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->validateVideoEditIntent(ZLandroid/content/Intent;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$20(Lcom/sec/android/app/ve/activity/ProjectEditActivity;ZLandroid/content/Intent;Z)V

    .line 1737
    return-void
.end method
