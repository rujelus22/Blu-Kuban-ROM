.class Lcom/google/android/apps/unveil/textinput/TextInput$8;
.super Ljava/lang/Object;
.source "TextInput.java"

# interfaces
.implements Lcom/google/android/apps/unveil/sensors/CameraManager$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/textinput/TextInput;->blockingCaptureAndSendFrame(Lcom/google/android/apps/unveil/textinput/TextQueryListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

.field final synthetic val$capturedPicture:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/textinput/TextInput;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextInput$8;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    iput-object p2, p0, Lcom/google/android/apps/unveil/textinput/TextInput$8;->val$capturedPicture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken(Lcom/google/android/apps/unveil/env/Picture;)V
    .registers 5
    .parameter "picture"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput$8;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    #getter for: Lcom/google/android/apps/unveil/textinput/TextInput;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;
    invoke-static {v0}, Lcom/google/android/apps/unveil/textinput/TextInput;->access$600(Lcom/google/android/apps/unveil/textinput/TextInput;)Lcom/google/android/apps/unveil/protocol/TraceTracker;

    move-result-object v0

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->IMAGE_REENCODE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput$8;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    #getter for: Lcom/google/android/apps/unveil/textinput/TextInput;->currentTraceActionId:I
    invoke-static {v2}, Lcom/google/android/apps/unveil/textinput/TextInput;->access$500(Lcom/google/android/apps/unveil/textinput/TextInput;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->beginInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V

    .line 442
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput$8;->val$capturedPicture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 443
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput$8;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    #getter for: Lcom/google/android/apps/unveil/textinput/TextInput;->listener:Lcom/google/android/apps/unveil/textinput/TextInput$Listener;
    invoke-static {v0}, Lcom/google/android/apps/unveil/textinput/TextInput;->access$700(Lcom/google/android/apps/unveil/textinput/TextInput;)Lcom/google/android/apps/unveil/textinput/TextInput$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/unveil/textinput/TextInput$Listener;->onPictureTaken()V

    .line 444
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput$8;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    #getter for: Lcom/google/android/apps/unveil/textinput/TextInput;->blockingCaptureLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/google/android/apps/unveil/textinput/TextInput;->access$800(Lcom/google/android/apps/unveil/textinput/TextInput;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 445
    return-void
.end method
