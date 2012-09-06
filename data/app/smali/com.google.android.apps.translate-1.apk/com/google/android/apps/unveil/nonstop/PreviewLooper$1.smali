.class Lcom/google/android/apps/unveil/nonstop/PreviewLooper$1;
.super Ljava/lang/Object;
.source "PreviewLooper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->requestFrameDelayed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/nonstop/PreviewLooper;)V
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper$1;->this$0:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper$1;->this$0:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->delayedRequestPending:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->access$002(Lcom/google/android/apps/unveil/nonstop/PreviewLooper;Z)Z

    .line 168
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper$1;->this$0:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    #calls: Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->requestFrameDelayed()V
    invoke-static {v0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->access$100(Lcom/google/android/apps/unveil/nonstop/PreviewLooper;)V

    .line 169
    return-void
.end method
