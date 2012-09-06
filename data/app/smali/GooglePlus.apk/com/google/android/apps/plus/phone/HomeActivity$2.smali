.class Lcom/google/android/apps/plus/phone/HomeActivity$2;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/HomeActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/HomeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/HomeActivity$2;->this$0:Lcom/google/android/apps/plus/phone/HomeActivity;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSyncNotifications(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity$2;->this$0:Lcom/google/android/apps/plus/phone/HomeActivity;

    #getter for: Lcom/google/android/apps/plus/phone/HomeActivity;->mRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/HomeActivity;->access$000(Lcom/google/android/apps/plus/phone/HomeActivity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity$2;->this$0:Lcom/google/android/apps/plus/phone/HomeActivity;

    #getter for: Lcom/google/android/apps/plus/phone/HomeActivity;->mRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/HomeActivity;->access$000(Lcom/google/android/apps/plus/phone/HomeActivity;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_15

    .line 752
    :cond_14
    :goto_14
    return-void

    .line 747
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity$2;->this$0:Lcom/google/android/apps/plus/phone/HomeActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/phone/HomeActivity;->mRequestId:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/HomeActivity;->access$002(Lcom/google/android/apps/plus/phone/HomeActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 749
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity$2;->this$0:Lcom/google/android/apps/plus/phone/HomeActivity;

    #getter for: Lcom/google/android/apps/plus/phone/HomeActivity;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/HomeActivity;->access$100(Lcom/google/android/apps/plus/phone/HomeActivity;)Lcom/google/android/apps/plus/views/HostActionBar;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 750
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity$2;->this$0:Lcom/google/android/apps/plus/phone/HomeActivity;

    #getter for: Lcom/google/android/apps/plus/phone/HomeActivity;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/HomeActivity;->access$100(Lcom/google/android/apps/plus/phone/HomeActivity;)Lcom/google/android/apps/plus/views/HostActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HostActionBar;->hideProgressIndicator()V

    goto :goto_14
.end method
