.class Lcom/google/android/talk/videochat/CallTaskDispatcher$1;
.super Ljava/lang/Object;
.source "CallTaskDispatcher.java"

# interfaces
.implements Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/CallTaskDispatcher;->bindVideoChatService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/CallTaskDispatcher;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/CallTaskDispatcher;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher$1;->this$0:Lcom/google/android/talk/videochat/CallTaskDispatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceBound(Lcom/google/android/videochat/VideoChatService$HardBinder;)V
    .registers 3
    .parameter "service"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher$1;->this$0:Lcom/google/android/talk/videochat/CallTaskDispatcher;

    #calls: Lcom/google/android/talk/videochat/CallTaskDispatcher;->onVideoChatServiceBound(Lcom/google/android/videochat/VideoChatService$HardBinder;)V
    invoke-static {v0, p1}, Lcom/google/android/talk/videochat/CallTaskDispatcher;->access$000(Lcom/google/android/talk/videochat/CallTaskDispatcher;Lcom/google/android/videochat/VideoChatService$HardBinder;)V

    .line 75
    return-void
.end method
