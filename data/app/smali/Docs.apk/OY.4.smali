.class LOY;
.super Ljava/lang/Object;
.source "AddCollaboratorTextDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LOX;

.field final synthetic a:LZX;


# direct methods
.method constructor <init>(LOX;LZX;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, LOY;->a:LOX;

    iput-object p2, p0, LOY;->a:LZX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 383
    iget-object v0, p0, LOY;->a:LOX;

    iget-object v0, v0, LOX;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 384
    if-nez v0, :cond_b

    .line 395
    :cond_a
    :goto_a
    return-void

    .line 388
    :cond_b
    iget-object v1, p0, LOY;->a:LOX;

    iget-object v1, v1, LOX;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-static {v1}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->c(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)Lck;

    move-result-object v1

    invoke-interface {v1, v0}, Lck;->a(Landroid/content/Context;)V

    .line 390
    iget-object v1, p0, LOY;->a:LOX;

    iget-object v1, v1, LOX;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->d()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 391
    invoke-static {v0}, Lop;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 392
    iget-object v1, p0, LOY;->a:LOX;

    iget-object v1, v1, LOX;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-static {v1}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v1

    new-instance v2, LPe;

    iget-object v3, p0, LOY;->a:LZX;

    invoke-direct {v2, v0, v3}, LPe;-><init>(Landroid/content/Context;LZX;)V

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_a
.end method
