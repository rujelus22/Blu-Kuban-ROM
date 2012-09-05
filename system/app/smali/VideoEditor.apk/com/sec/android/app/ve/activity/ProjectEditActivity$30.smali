.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$30;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$30;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 2153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x5

    .line 2157
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$26(Z)V

    .line 2158
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$30;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 2159
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$30;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 2160
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$30;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v1, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$24(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V

    .line 2161
    const-string v0, "showing the progress video"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2162
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$30;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    .line 2163
    return-void
.end method
