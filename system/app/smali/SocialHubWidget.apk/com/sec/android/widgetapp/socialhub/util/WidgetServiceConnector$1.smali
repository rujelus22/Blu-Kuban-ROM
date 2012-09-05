.class Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$1;
.super Ljava/lang/Object;
.source "WidgetServiceConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->initServiceConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$1;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "name"
    .parameter "service"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$1;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    invoke-static {p2}, Lcom/sec/android/app/sns/ISnsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sns/ISnsService;

    move-result-object v2

    #setter for: Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mService:Lcom/sec/android/app/sns/ISnsService;
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->access$002(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;Lcom/sec/android/app/sns/ISnsService;)Lcom/sec/android/app/sns/ISnsService;

    .line 104
    :try_start_9
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$1;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$1;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    #getter for: Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mService:Lcom/sec/android/app/sns/ISnsService;
    invoke-static {v2}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->access$000(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)Lcom/sec/android/app/sns/ISnsService;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$1;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    #getter for: Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;
    invoke-static {v3}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->access$200(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)Lcom/sec/android/app/sns/ISnsRequesterCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/sns/ISnsService;->registerCallback(Lcom/sec/android/app/sns/ISnsRequesterCallback;)I

    move-result v2

    #setter for: Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mAppId:I
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->access$102(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;I)I

    .line 105
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$1;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->ServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_23} :catch_29

    .line 112
    :goto_23
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$1;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    #calls: Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->getAppId()V
    invoke-static {v1}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->access$300(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)V

    .line 113
    return-void

    .line 107
    :catch_29
    move-exception v0

    .line 109
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_23
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$1;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mService:Lcom/sec/android/app/sns/ISnsService;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->access$002(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;Lcom/sec/android/app/sns/ISnsService;)Lcom/sec/android/app/sns/ISnsService;

    .line 118
    return-void
.end method
