.class Lcom/sec/android/app/camera/Camera$MainHandler$1;
.super Ljava/util/TimerTask;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera$MainHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/Camera$MainHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera$MainHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$MainHandler$1;->this$1:Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$MainHandler$1;->this$1:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$MainHandler$1;->this$1:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$MainHandler$1;->this$1:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    .line 379
    :cond_1d
    return-void
.end method
