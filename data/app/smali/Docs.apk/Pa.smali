.class LPa;
.super Ljava/lang/Object;
.source "AddCollaboratorTextDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LOZ;

.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(LOZ;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, LPa;->a:LOZ;

    iput-object p2, p0, LPa;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 433
    iget-object v0, p0, LPa;->a:LOZ;

    iget-object v0, v0, LOZ;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 434
    if-nez v0, :cond_b

    .line 445
    :cond_a
    :goto_a
    return-void

    .line 438
    :cond_b
    iget-object v1, p0, LPa;->a:LOZ;

    iget-object v1, v1, LOZ;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-static {v1}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->d(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)Lck;

    move-result-object v1

    invoke-interface {v1, v0}, Lck;->a(Landroid/content/Context;)V

    .line 440
    iget-object v1, p0, LPa;->a:LOZ;

    iget-object v1, v1, LOZ;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->d()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 441
    invoke-static {v0}, Lop;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 442
    iget-object v0, p0, LPa;->a:LOZ;

    iget-object v0, v0, LOZ;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v2

    new-instance v3, LQI;

    iget-object v0, p0, LPa;->a:Ljava/util/List;

    const/4 v4, 0x0

    new-array v4, v4, [LPh;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LPh;

    invoke-direct {v3, v1, v0}, LQI;-><init>(Landroid/content/Context;[LPh;)V

    invoke-virtual {v2, v3}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_a
.end method
