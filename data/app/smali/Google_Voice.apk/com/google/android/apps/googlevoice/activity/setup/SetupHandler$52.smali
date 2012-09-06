.class Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$52;
.super Ljava/lang/Object;
.source "SetupHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAddAccountClickListener(Landroid/app/Activity;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3156
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$52;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$52;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 3159
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$52;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    #getter for: Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->addAccountManager:Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->access$700(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$52;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$52;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    const/16 v3, 0x640

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager;->addAccount(Landroid/app/Activity;Landroid/os/Message;)V

    .line 3160
    return-void
.end method
