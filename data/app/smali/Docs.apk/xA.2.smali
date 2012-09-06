.class public LxA;
.super Ljava/lang/Object;
.source "KixEditorActivity.java"

# interfaces
.implements LIH;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, LxA;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, LxA;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    iget-object v1, p0, LxA;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 196
    const-string v0, "KixEditorActivity"

    const-string v1, "Access confirmed."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, LxA;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, LxA;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->b(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 198
    iget-object v0, p0, LxA;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;Z)Z

    .line 199
    iget-object v0, p0, LxA;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V

    .line 201
    :cond_2b
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, LxA;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    iget-object v1, p0, LxA;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 211
    const-string v0, "KixEditorActivity"

    const-string v1, "Access requested."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, LxA;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, LxA;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->b(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 213
    iget-object v0, p0, LxA;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 215
    :cond_25
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 4
    .parameter

    .prologue
    .line 205
    const-string v0, "KixEditorActivity"

    const-string v1, "Access denied: "

    invoke-static {v0, v1, p1}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    return-void
.end method
