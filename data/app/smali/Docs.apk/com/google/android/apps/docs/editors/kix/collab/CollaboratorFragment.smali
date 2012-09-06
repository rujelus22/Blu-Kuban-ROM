.class public Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;
.super Lcom/google/android/apps/docs/view/RoboFragment;
.source "CollaboratorFragment.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/TextView;

.field private a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/RoboFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    sget v0, Luq;->collaborator_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;->d:Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;->d:Landroid/view/View;

    sget v1, Lup;->collaborator_title_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;->a:Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;->d:Landroid/view/View;

    sget v1, Lup;->collaborator_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;->a:Landroid/widget/LinearLayout;

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;->d:Landroid/view/View;

    sget v1, Lup;->collaborator_title_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;->a:Landroid/widget/ImageView;

    .line 39
    sget v0, Lup;->editor:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/editors/kix/KixEditText;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    .line 40
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;->d:Landroid/view/View;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 9
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->b(Landroid/os/Bundle;)V

    .line 47
    new-instance v0, Lzh;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;->d:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;->a:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;->a:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;->a:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-direct/range {v0 .. v6}, Lzh;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lzk;)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a()LxQ;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v0}, LxQ;->addCollaboratorListener(LxU;)V

    .line 53
    invoke-virtual {v1, v0}, LxQ;->addNetworkStatusListener(Lyb;)V

    .line 54
    return-void
.end method
