.class final Lcom/google/android/youtube/core/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/ui/AbstractWorkspace;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/ui/AbstractWorkspace;)V
    .registers 2
    .parameter

    .prologue
    .line 742
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/a;->a:Lcom/google/android/youtube/core/ui/AbstractWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 745
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/a;->a:Lcom/google/android/youtube/core/ui/AbstractWorkspace;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/a;->a:Lcom/google/android/youtube/core/ui/AbstractWorkspace;

    invoke-static {v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a(Lcom/google/android/youtube/core/ui/AbstractWorkspace;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 746
    return-void
.end method
