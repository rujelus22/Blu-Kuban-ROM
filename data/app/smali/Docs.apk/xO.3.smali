.class public LxO;
.super Ljava/lang/Object;
.source "KixEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, LxO;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 618
    iget-object v0, p0, LxO;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    iget-object v1, p0, LxO;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 619
    iget-object v0, p0, LxO;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    new-instance v1, LyE;

    iget-object v2, p0, LxO;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-direct {v1, v2}, LyE;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;LyE;)LyE;

    .line 620
    iget-object v0, p0, LxO;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)LyE;

    move-result-object v0

    iget-object v1, p0, LxO;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a()LxQ;

    move-result-object v1

    invoke-virtual {v0, v1}, LyE;->a(LxQ;)V

    .line 621
    return-void
.end method
