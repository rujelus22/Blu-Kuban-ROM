.class LxK;
.super Ljava/lang/Object;
.source "KixEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LxH;


# direct methods
.method constructor <init>(LxH;)V
    .registers 2
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, LxK;->a:LxH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 480
    iget-object v0, p0, LxK;->a:LxH;

    iget-object v0, v0, LxH;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    iget-object v1, p0, LxK;->a:LxH;

    iget-object v1, v1, LxH;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 481
    iget-object v0, p0, LxK;->a:LxH;

    iget-object v0, v0, LxH;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->d()V

    .line 482
    return-void
.end method
