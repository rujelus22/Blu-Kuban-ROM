.class Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$53;
.super Ljava/lang/Object;
.source "SetupHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getSkipCarrierProvisioningListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 3190
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$53;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 3193
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$53;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionable:Ljava/lang/Boolean;

    .line 3194
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$53;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    .line 3195
    return-void
.end method
