.class Lcom/google/android/apps/unveil/env/Timeout$1;
.super Landroid/os/Handler;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/env/Timeout;-><init>(Lcom/google/android/apps/unveil/env/Timeout$TimeoutCallback;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/env/Timeout;

.field final synthetic val$callback:Lcom/google/android/apps/unveil/env/Timeout$TimeoutCallback;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/env/Timeout;Lcom/google/android/apps/unveil/env/Timeout$TimeoutCallback;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/Timeout$1;->this$0:Lcom/google/android/apps/unveil/env/Timeout;

    iput-object p2, p0, Lcom/google/android/apps/unveil/env/Timeout$1;->val$callback:Lcom/google/android/apps/unveil/env/Timeout$TimeoutCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 48
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/Timeout$1;->val$callback:Lcom/google/android/apps/unveil/env/Timeout$TimeoutCallback;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/env/Timeout$TimeoutCallback;->onTimeout()V

    .line 50
    :cond_a
    return-void
.end method
