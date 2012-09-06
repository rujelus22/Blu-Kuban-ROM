.class Lcom/google/android/apps/unveil/nonstop/DebugView$1;
.super Ljava/lang/Object;
.source "DebugView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/nonstop/DebugView;->changeVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/nonstop/DebugView;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/nonstop/DebugView;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/apps/unveil/nonstop/DebugView$1;->this$0:Lcom/google/android/apps/unveil/nonstop/DebugView;

    iput-boolean p2, p0, Lcom/google/android/apps/unveil/nonstop/DebugView$1;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 61
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/DebugView$1;->this$0:Lcom/google/android/apps/unveil/nonstop/DebugView;

    iget-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/DebugView$1;->val$visible:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1, v0}, Lcom/google/android/apps/unveil/nonstop/DebugView;->setVisibility(I)V

    .line 62
    return-void

    .line 61
    :cond_b
    const/16 v0, 0x8

    goto :goto_7
.end method
