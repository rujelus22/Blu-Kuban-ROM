.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$19;
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


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$19;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 1814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1817
    const-string v0, "project name changing"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1818
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$19;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 1819
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$19;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 1820
    return-void
.end method
