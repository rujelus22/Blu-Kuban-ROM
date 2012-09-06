.class LxI;
.super Ljava/lang/Object;
.source "KixEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic a:LxH;


# direct methods
.method constructor <init>(LxH;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, LxI;->a:LxH;

    iput-object p2, p0, LxI;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 457
    iget-object v0, p0, LxI;->a:LxH;

    iget-object v0, v0, LxH;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    iget-object v1, p0, LxI;->a:LxH;

    iget-object v1, v1, LxH;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 459
    iget-object v0, p0, LxI;->a:LxH;

    iget-object v0, v0, LxH;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v2, p0, LxI;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;Ljava/lang/Throwable;)V

    .line 460
    return-void
.end method
