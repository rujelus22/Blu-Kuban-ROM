.class Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbAuthenticatorService$2;
.super Ljava/lang/Object;
.source "SnsAccountFbAuthenticatorService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbAuthenticatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbAuthenticatorService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbAuthenticatorService;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbAuthenticatorService$2;->this$0:Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbAuthenticatorService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbAuthenticatorService$2;->this$0:Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbAuthenticatorService;

    invoke-static {p2}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sns/ISnsRequester;

    move-result-object v1

    #setter for: Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbAuthenticatorService;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;
    invoke-static {v0, v1}, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbAuthenticatorService;->access$302(Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbAuthenticatorService;Lcom/sec/android/app/sns/ISnsRequester;)Lcom/sec/android/app/sns/ISnsRequester;

    .line 143
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbAuthenticatorService$2;->this$0:Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbAuthenticatorService;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbAuthenticatorService;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;
    invoke-static {v0, v1}, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbAuthenticatorService;->access$302(Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbAuthenticatorService;Lcom/sec/android/app/sns/ISnsRequester;)Lcom/sec/android/app/sns/ISnsRequester;

    .line 147
    return-void
.end method
