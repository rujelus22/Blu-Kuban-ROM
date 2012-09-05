.class Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$3;
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
    .line 136
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$3;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .parameter "arg0"
    .parameter "service"

    .prologue
    .line 147
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$3;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    invoke-static {p2}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mImageService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    .line 150
    :try_start_8
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$3;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$3;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    iget-object v2, v2, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mImageService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    iget-object v3, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$3;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    #getter for: Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mImageCallback:Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;
    invoke-static {v3}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->access$500(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;->registerCallback(Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;)I

    move-result v2

    iput v2, v1, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mAppImageId:I

    .line 151
    const-string v1, "WidgetServiceConnector"

    const-string v2, "initImageCacheService()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageCacheService Connected, mAppImageId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$3;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    iget v4, v4, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mAppImageId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$3;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->ImageServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_3d} :catch_3e

    .line 158
    :goto_3d
    return-void

    .line 154
    :catch_3e
    move-exception v0

    .line 156
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3d
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$3;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mImageService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    .line 141
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$3;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->ImageServiceDisconnected(Landroid/content/ComponentName;)V

    .line 142
    const-string v0, "WidgetServiceConnector"

    const-string v1, "initImageCacheService()"

    const-string v2, "ImageCacheService Disconnected"

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method
