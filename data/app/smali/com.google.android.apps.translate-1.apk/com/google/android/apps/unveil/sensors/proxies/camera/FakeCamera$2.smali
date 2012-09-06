.class Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$2;
.super Ljava/lang/Thread;
.source "FakeCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->startPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)V
    .registers 2
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$2;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$2;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    #calls: Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->frameLoop()V
    invoke-static {v0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->access$100(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)V

    return-void
.end method
