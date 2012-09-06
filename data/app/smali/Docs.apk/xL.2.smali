.class public LxL;
.super Ljava/lang/Object;
.source "KixEditorActivity.java"

# interfaces
.implements Lyb;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

.field a:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, LxL;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    const/4 v0, 0x0

    iput-boolean v0, p0, LxL;->a:Z

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 503
    iget-object v0, p0, LxL;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    iget-object v1, p0, LxL;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 504
    if-eqz p1, :cond_19

    iget-boolean v0, p0, LxL;->a:Z

    if-nez v0, :cond_19

    .line 505
    iget-object v0, p0, LxL;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LdE;

    invoke-virtual {v0, p0}, LdE;->a(Ljava/lang/Object;)V

    .line 510
    :cond_16
    :goto_16
    iput-boolean p1, p0, LxL;->a:Z

    .line 511
    return-void

    .line 506
    :cond_19
    if-nez p1, :cond_16

    iget-boolean v0, p0, LxL;->a:Z

    if-eqz v0, :cond_16

    .line 508
    iget-object v0, p0, LxL;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LdE;

    const-string v1, "kixOfflineTime"

    invoke-virtual {v0, p0, v1}, LdE;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_16
.end method
