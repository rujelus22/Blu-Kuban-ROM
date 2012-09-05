.class Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$4;
.super Ljava/lang/Object;
.source "SnsAccountTwAuthenticatorActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$4;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$4;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    invoke-static {p2}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sns/ISnsRequester;

    move-result-object v1

    #setter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;
    invoke-static {v0, v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$802(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;Lcom/sec/android/app/sns/ISnsRequester;)Lcom/sec/android/app/sns/ISnsRequester;

    .line 212
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$4;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;
    invoke-static {v0, v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$802(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;Lcom/sec/android/app/sns/ISnsRequester;)Lcom/sec/android/app/sns/ISnsRequester;

    .line 216
    return-void
.end method
