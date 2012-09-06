.class public LHO;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LQC;

.field final synthetic a:Lcom/google/android/apps/docs/fragment/PreviewFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/fragment/PreviewFragment;LQC;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, LHO;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    iput-object p2, p0, LHO;->a:LQC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 670
    iget-object v0, p0, LHO;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->e(Lcom/google/android/apps/docs/fragment/PreviewFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LHO;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 671
    iget-object v0, p0, LHO;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    iget-object v1, p0, LHO;->a:LQC;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(LQC;)V

    .line 672
    return-void
.end method
