.class Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$2;
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
    .line 122
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$2;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$2;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    invoke-static {p2}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sns/ISnsRequester;

    move-result-object v1

    #setter for: Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->access$402(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;Lcom/sec/android/app/sns/ISnsRequester;)Lcom/sec/android/app/sns/ISnsRequester;

    .line 126
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$2;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->RequestServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 127
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$2;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->access$402(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;Lcom/sec/android/app/sns/ISnsRequester;)Lcom/sec/android/app/sns/ISnsRequester;

    .line 132
    return-void
.end method
