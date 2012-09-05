.class Lcom/sec/android/app/ve/activity/ProjectListActivity$20;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$20;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 2169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2174
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$20;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->removeDialog(I)V

    .line 2175
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$20;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/16 v2, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$34(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V

    .line 2176
    const-string v1, " PLA Launching PLA SHARE_OPTION_DIALOG "

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2177
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$20;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showDialog(I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 2181
    :goto_18
    return-void

    .line 2178
    :catch_19
    move-exception v0

    .line 2179
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method
