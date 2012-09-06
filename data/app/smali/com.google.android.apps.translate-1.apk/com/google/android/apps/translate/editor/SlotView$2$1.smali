.class Lcom/google/android/apps/translate/editor/SlotView$2$1;
.super Ljava/lang/Object;
.source "SlotView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/editor/SlotView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/translate/editor/SlotView$2;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/editor/SlotView$2;)V
    .registers 2
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/SlotView$2$1;->this$1:Lcom/google/android/apps/translate/editor/SlotView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView$2$1;->this$1:Lcom/google/android/apps/translate/editor/SlotView$2;

    iget-object v0, v0, Lcom/google/android/apps/translate/editor/SlotView$2;->this$0:Lcom/google/android/apps/translate/editor/SlotView;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/translate/editor/SlotView;->mInternalEdit:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/editor/SlotView;->access$002(Lcom/google/android/apps/translate/editor/SlotView;Z)Z

    .line 317
    return-void
.end method
