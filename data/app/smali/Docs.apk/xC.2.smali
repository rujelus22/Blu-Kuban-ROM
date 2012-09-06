.class public LxC;
.super Ljava/lang/Object;
.source "KixEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, LxC;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 749
    iget-object v0, p0, LxC;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    iget-object v1, p0, LxC;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 751
    const-string v0, "KixEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LxC;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-static {v2}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, p0, LxC;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LxQ;

    iget-object v1, p0, LxC;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->b(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LxC;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-static {v2}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->c(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LxC;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-static {v3}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LxC;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-static {v4}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->d(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, LxQ;->openDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 753
    return-void
.end method
