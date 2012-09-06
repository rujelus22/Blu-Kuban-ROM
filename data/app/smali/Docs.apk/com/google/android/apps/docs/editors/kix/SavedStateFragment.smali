.class public Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;
.super Lcom/google/android/apps/docs/view/RoboFragment;
.source "SavedStateFragment.java"

# interfaces
.implements LxV;


# instance fields
.field private a:J

.field public a:LFu;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Landroid/os/Handler;

.field private a:Ljava/lang/Runnable;

.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/RoboFragment;-><init>()V

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a:J

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->b:Z

    .line 97
    return-void
.end method

.method private a()V
    .registers 6

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a:Z

    if-eqz v0, :cond_15

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 61
    if-nez v0, :cond_16

    .line 62
    const-string v0, "SavedStateFragment"

    const-string v1, "Lifecycle error, action bar is null."

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_15
    :goto_15
    return-void

    .line 65
    :cond_16
    iget-boolean v1, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->b:Z

    if-nez v1, :cond_24

    .line 66
    sget v1, Lus;->saving:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 69
    :cond_24
    iget-wide v1, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_43

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-gez v1, :cond_43

    .line 70
    sget v1, Lus;->saving:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 72
    :cond_43
    sget v1, Lus;->saved:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_15
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;)V
    .registers 1
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6
    .parameter

    .prologue
    .line 47
    if-nez p1, :cond_2c

    const/4 v0, 0x1

    .line 48
    :goto_3
    if-eqz v0, :cond_16

    iget-boolean v1, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->b:Z

    if-nez v1, :cond_16

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a:J

    .line 50
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a:LFu;

    sget-object v2, LFv;->b:LFv;

    invoke-virtual {v1, v2}, LFu;->a(LFv;)V

    .line 52
    :cond_16
    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->b:Z

    .line 53
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a()V

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    return-void

    .line 47
    :cond_2c
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->b(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a()LxQ;

    move-result-object v0

    invoke-virtual {v0, p0}, LxQ;->setDocumentSaveStateListener(LxV;)V

    .line 40
    invoke-static {}, Lkg;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a:Z

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a:Landroid/os/Handler;

    .line 42
    new-instance v0, Lyq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lyq;-><init>(Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;Lyp;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a:Ljava/lang/Runnable;

    .line 43
    return-void
.end method

.method public f()V
    .registers 9

    .prologue
    const-wide/16 v6, 0xbb8

    const-wide/16 v2, -0x1

    .line 88
    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->f()V

    .line 89
    iget-wide v0, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_31

    .line 90
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a()V

    .line 91
    iget-wide v0, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-gez v0, :cond_31

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a:Ljava/lang/Runnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a:J

    sub-long/2addr v2, v4

    sub-long v2, v6, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    :cond_31
    return-void
.end method

.method public g()V
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->g()V

    .line 84
    return-void
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->b:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
