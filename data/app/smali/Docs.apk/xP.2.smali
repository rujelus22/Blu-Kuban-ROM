.class public LxP;
.super Ljava/lang/Object;
.source "KixEditorActivity.java"

# interfaces
.implements Lyn;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, LxP;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    .line 653
    iget-object v0, p0, LxP;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    iget-object v1, p0, LxP;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 654
    iget-object v0, p0, LxP;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->c(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 656
    iget-object v0, p0, LxP;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LdE;

    const-string v1, "kixEditor"

    const-string v2, "kixEdit"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 659
    :cond_1e
    iget-object v0, p0, LxP;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->b(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;Z)Z

    .line 660
    return-void
.end method
