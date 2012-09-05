.class Lcom/sec/android/app/ve/activity/ProjectListActivity$31;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$31;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 2399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2403
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$31;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->removeDialog(I)V

    .line 2404
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$31;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/16 v1, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$34(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V

    .line 2405
    return-void
.end method
