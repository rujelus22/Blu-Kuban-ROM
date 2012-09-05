.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$46;
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

.field private final synthetic val$lDialog2:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Landroid/app/AlertDialog;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$46;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iput-object p2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$46;->val$lDialog2:Landroid/app/AlertDialog;

    .line 2469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2473
    const-string v0, "Inside SHARE_OPTION_DIALOG inside cancel"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2474
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$46;->val$lDialog2:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2475
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$46;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v1, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$24(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V

    .line 2476
    return-void
.end method
