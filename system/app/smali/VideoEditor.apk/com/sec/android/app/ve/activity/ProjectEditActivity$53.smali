.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$53;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$53;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 2561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v3, 0x12

    .line 2564
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$53;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 2565
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$53;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v2, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$24(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V

    .line 2566
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2567
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "dialog"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2568
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$53;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 2569
    return-void
.end method
