.class public LHI;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/fragment/PreviewFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/fragment/PreviewFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, LHI;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, LHI;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Lcom/google/android/apps/docs/fragment/PreviewFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LHI;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 284
    iget-object v0, p0, LHI;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LHT;

    invoke-interface {v0}, LHT;->d()V

    .line 285
    return-void
.end method
