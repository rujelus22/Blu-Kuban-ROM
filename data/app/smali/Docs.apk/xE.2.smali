.class public LxE;
.super Ljava/lang/Object;
.source "KixEditorActivity.java"

# interfaces
.implements LQn;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 805
    iput-object p1, p0, LxE;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 809
    iget-object v0, p0, LxE;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    iget-object v1, p0, LxE;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 817
    iget-object v0, p0, LxE;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    sget v1, LcY;->sharing_message_saved:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 819
    iget-object v0, p0, LxE;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->d(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V

    .line 820
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 824
    iget-object v0, p0, LxE;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    iget-object v1, p0, LxE;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 826
    const-string v0, "KixEditorActivity"

    invoke-static {v0, p1, p2}, LZA;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 827
    iget-object v0, p0, LxE;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    sget v1, LcY;->sharing_error:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 829
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 833
    iget-object v0, p0, LxE;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    iget-object v1, p0, LxE;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 835
    iget-object v0, p0, LxE;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    sget v1, LcY;->sharing_error:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 837
    return-void
.end method
