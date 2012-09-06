.class public LxM;
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
    .line 524
    iput-object p1, p0, LxM;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 527
    iget-object v0, p0, LxM;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    iget-object v1, p0, LxM;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 528
    iget-object v0, p0, LxM;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->finish()V

    .line 529
    return-void
.end method
