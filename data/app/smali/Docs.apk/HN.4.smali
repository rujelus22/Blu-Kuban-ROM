.class public LHN;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements LQn;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/fragment/PreviewFragment;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, LHN;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    iput-object p2, p0, LHN;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 520
    iget-object v0, p0, LHN;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->b(Lcom/google/android/apps/docs/fragment/PreviewFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LHN;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 524
    iget-object v0, p0, LHN;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    .line 526
    :goto_1e
    iget-object v1, p0, LHN;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 531
    :goto_26
    return-void

    .line 524
    :cond_27
    iget-object v0, p0, LHN;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1e

    .line 530
    :cond_3a
    iget-object v0, p0, LHN;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    sget-object v1, LHS;->b:LHS;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Lcom/google/android/apps/docs/fragment/PreviewFragment;LHS;)V

    goto :goto_26
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 535
    iget-object v0, p0, LHN;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->c(Lcom/google/android/apps/docs/fragment/PreviewFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LHN;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 537
    const-string v0, "PreviewFragment"

    invoke-static {v0, p1, p2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 538
    iget-object v0, p0, LHN;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LXJ;

    iget-object v1, p0, LHN;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, LcY;->sharing_error:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, LXJ;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 540
    iget-object v0, p0, LHN;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    sget-object v1, LHS;->b:LHS;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Lcom/google/android/apps/docs/fragment/PreviewFragment;LHS;)V

    .line 541
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 545
    iget-object v0, p0, LHN;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->d(Lcom/google/android/apps/docs/fragment/PreviewFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LHN;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 546
    iget-object v0, p0, LHN;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    sget-object v1, LHS;->a:LHS;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Lcom/google/android/apps/docs/fragment/PreviewFragment;LHS;)V

    .line 547
    return-void
.end method
