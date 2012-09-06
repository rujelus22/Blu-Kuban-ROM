.class public LxH;
.super Ljava/lang/Object;
.source "KixEditorActivity.java"

# interfaces
.implements LxX;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, LxH;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 466
    iget-object v0, p0, LxH;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LxJ;

    invoke-direct {v1, p0}, LxJ;-><init>(LxH;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 454
    iget-object v0, p0, LxH;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LxI;

    invoke-direct {v1, p0, p1}, LxI;-><init>(LxH;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 462
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 477
    iget-object v0, p0, LxH;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LxK;

    invoke-direct {v1, p0}, LxK;-><init>(LxH;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 484
    return-void
.end method
