.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$50;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$50;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 2523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2527
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$50;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 2528
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$50;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v1, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$24(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V

    .line 2529
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$50;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    .line 2530
    return-void
.end method