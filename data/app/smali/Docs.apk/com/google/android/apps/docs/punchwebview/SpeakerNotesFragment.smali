.class public Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;
.super Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;
.source "SpeakerNotesFragment.java"

# interfaces
.implements Labk;
.implements Labn;


# instance fields
.field private a:Lcom/google/android/apps/docs/view/SpeakerNotesContent;

.field private a:Lcom/google/android/apps/docs/view/SpeakerNotesPresence;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;-><init>()V

    return-void
.end method

.method public static a(II)Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 41
    new-instance v0, Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;-><init>()V

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 44
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p0, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v1, v2, v4}, Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;->a(Landroid/os/Bundle;[II)V

    .line 45
    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;->d(Landroid/os/Bundle;)V

    .line 47
    return-object v0
.end method

.method private r()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;->a:Lcom/google/android/apps/docs/view/SpeakerNotesPresence;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;->a:Lcom/google/android/apps/docs/view/SpeakerNotesContent;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;->a:Lcom/google/android/apps/docs/view/SpeakerNotesPresence;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->setListener(Labn;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;->a:Lcom/google/android/apps/docs/view/SpeakerNotesContent;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->setListener(Labk;)V

    .line 77
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;->a()V

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;->a:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 57
    instance-of v1, v0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;

    invoke-static {v1}, LafQ;->b(Z)V

    .line 58
    check-cast v0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;->a:Lcom/google/android/apps/docs/view/SpeakerNotesPresence;

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;->a:Lcom/google/android/apps/docs/view/SpeakerNotesPresence;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->setListener(Labn;)V

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;->a:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 61
    instance-of v1, v0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;

    invoke-static {v1}, LafQ;->b(Z)V

    .line 62
    check-cast v0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;->a:Lcom/google/android/apps/docs/view/SpeakerNotesContent;

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;->a:Lcom/google/android/apps/docs/view/SpeakerNotesContent;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->setListener(Labk;)V

    .line 64
    return-void
.end method

.method public c()V
    .registers 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/google/android/apps/docs/fragment/ViewSwitcherFragment;->c()V

    .line 69
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;->r()V

    .line 70
    return-void
.end method

.method public p()V
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;->b(I)V

    .line 82
    return-void
.end method

.method public q()V
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;->b(I)V

    .line 87
    return-void
.end method
