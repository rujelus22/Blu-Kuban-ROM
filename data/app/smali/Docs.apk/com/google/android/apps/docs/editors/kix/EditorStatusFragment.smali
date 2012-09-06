.class public Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;
.super Lcom/google/android/apps/docs/view/RoboFragment;
.source "EditorStatusFragment.java"

# interfaces
.implements LxW;
.implements Lyb;


# instance fields
.field private final a:Landroid/os/Handler;

.field private a:Landroid/widget/TextView;

.field private a:Z

.field private b:Z

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/RoboFragment;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->a:Landroid/os/Handler;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->a:Z

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->b:Z

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->d:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->a:Landroid/os/Handler;

    new-instance v1, LwR;

    invoke-direct {v1, p0}, LwR;-><init>(Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;)Z
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->b:Z

    return v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;)Z
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->a:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    sget v0, Luq;->editor_status_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->d:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->d:Landroid/view/View;

    sget v1, Lup;->status_message_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->a:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->d:Landroid/view/View;

    return-object v0
.end method

.method public a(Lwb;)V
    .registers 3
    .parameter

    .prologue
    .line 67
    if-nez p1, :cond_9

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->a:Z

    .line 68
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->a()V

    .line 69
    return-void

    .line 67
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public a(Lwb;LvU;Lwg;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->b:Z

    .line 58
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->a()V

    .line 59
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->b(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a()LxQ;

    move-result-object v0

    .line 48
    invoke-virtual {v0, p0}, LxQ;->addNetworkStatusListener(Lyb;)V

    .line 49
    invoke-virtual {v0, p0}, LxQ;->addInitializationListener(LxW;)V

    .line 51
    invoke-virtual {v0}, LxQ;->getModel()Lwb;

    move-result-object v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_1a
    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->a:Z

    .line 52
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->a()V

    .line 53
    return-void

    .line 51
    :cond_20
    const/4 v0, 0x0

    goto :goto_1a
.end method
