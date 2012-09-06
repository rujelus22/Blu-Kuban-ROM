.class public LxG;
.super Ljava/lang/Object;
.source "KixEditorActivity.java"

# interfaces
.implements LxW;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, LxG;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwb;)V
    .registers 5
    .parameter

    .prologue
    .line 427
    iget-object v0, p0, LxG;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    iget-object v1, p0, LxG;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 428
    new-instance v0, Lkh;

    iget-object v1, p0, LxG;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    iget-object v1, v1, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lkm;

    iget-object v2, p0, LxG;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    iget-object v2, v2, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LQN;

    invoke-direct {v0, v1, v2}, Lkh;-><init>(Lkm;LQN;)V

    invoke-virtual {v0}, Lkh;->start()V

    .line 429
    iget-object v0, p0, LxG;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LFu;

    sget-object v1, LFv;->a:LFv;

    invoke-virtual {v0, v1}, LFu;->a(LFv;)V

    .line 431
    iget-object v0, p0, LxG;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Lyj;

    move-result-object v0

    invoke-virtual {v0}, Lyj;->k()V

    .line 432
    iget-object v0, p0, LxG;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "editMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 433
    iget-object v0, p0, LxG;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->c(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V

    .line 435
    :cond_42
    return-void
.end method

.method public a(Lwb;LvU;Lwg;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 439
    iget-object v0, p0, LxG;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    iget-object v1, p0, LxG;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 440
    iget-object v0, p0, LxG;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    sget v1, Lup;->loading_spinner:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 441
    return-void
.end method
