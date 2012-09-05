.class Lcom/google/android/youtube/core/ui/AbstractWorkspace$1;
.super Ljava/lang/Object;
.source "AbstractWorkspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/ui/AbstractWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/ui/AbstractWorkspace;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/ui/AbstractWorkspace;)V
    .registers 2
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$1;->this$0:Lcom/google/android/youtube/core/ui/AbstractWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$1;->this$0:Lcom/google/android/youtube/core/ui/AbstractWorkspace;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$1;->this$0:Lcom/google/android/youtube/core/ui/AbstractWorkspace;

    #getter for: Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I
    invoke-static {v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->access$000(Lcom/google/android/youtube/core/ui/AbstractWorkspace;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 684
    return-void
.end method
