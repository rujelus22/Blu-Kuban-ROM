.class Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$3;
.super Ljava/lang/Object;
.source "SnsAccountLiAuthenticatorActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$3;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "name"
    .parameter "service"

    .prologue
    .line 197
    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$3;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    invoke-static {p2}, Lcom/sec/android/app/sns/ISnsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sns/ISnsService;

    move-result-object v2

    #setter for: Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mService:Lcom/sec/android/app/sns/ISnsService;
    invoke-static {v1, v2}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->access$402(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;Lcom/sec/android/app/sns/ISnsService;)Lcom/sec/android/app/sns/ISnsService;

    .line 199
    :try_start_9
    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$3;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    iget-object v2, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$3;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mService:Lcom/sec/android/app/sns/ISnsService;
    invoke-static {v2}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->access$400(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Lcom/sec/android/app/sns/ISnsService;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$3;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;
    invoke-static {v3}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->access$600(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Lcom/sec/android/app/sns/ISnsRequesterCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/sns/ISnsService;->registerCallback(Lcom/sec/android/app/sns/ISnsRequesterCallback;)I

    move-result v2

    #setter for: Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAppID:I
    invoke-static {v1, v2}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->access$502(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;I)I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1e} :catch_1f

    .line 205
    :goto_1e
    return-void

    .line 200
    :catch_1f
    move-exception v0

    .line 201
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 202
    const-string v1, "SnsAccountLi"

    const-string v2, "###################### registerCallback FAILED !!!!! #####################"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$3;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mService:Lcom/sec/android/app/sns/ISnsService;
    invoke-static {v0, v1}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->access$402(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;Lcom/sec/android/app/sns/ISnsService;)Lcom/sec/android/app/sns/ISnsService;

    .line 209
    return-void
.end method
