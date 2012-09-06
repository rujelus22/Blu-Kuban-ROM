.class public LHJ;
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
    .line 293
    iput-object p1, p0, LHJ;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, LHJ;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Lcom/google/android/apps/docs/fragment/PreviewFragment;)LkT;

    move-result-object v0

    check-cast v0, LkR;

    .line 297
    if-nez v0, :cond_b

    .line 312
    :cond_a
    :goto_a
    return-void

    .line 300
    :cond_b
    invoke-virtual {v0}, LkR;->g()Z

    move-result v1

    if-nez v1, :cond_4c

    const/4 v1, 0x1

    :goto_12
    invoke-virtual {v0, v1}, LkR;->b(Z)V

    .line 301
    invoke-virtual {v0}, LkR;->c()V

    .line 302
    iget-object v1, p0, LHJ;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    iget-object v1, v1, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lid;

    invoke-interface {v1}, Lid;->a()V

    .line 303
    iget-object v1, p0, LHJ;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 304
    invoke-virtual {v0}, LkR;->a()Lld;

    move-result-object v2

    .line 305
    invoke-virtual {v0}, LkR;->g()Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, LHJ;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    iget-object v3, v3, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LZU;

    invoke-interface {v3}, LZU;->b()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-static {v1}, LXH;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 307
    invoke-static {v1, v2}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Landroid/content/Context;Lld;)V

    .line 309
    :cond_42
    invoke-virtual {v0}, LkR;->g()Z

    move-result v0

    if-nez v0, :cond_a

    .line 310
    invoke-static {v1, v2}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b(Landroid/content/Context;Lld;)V

    goto :goto_a

    .line 300
    :cond_4c
    const/4 v1, 0x0

    goto :goto_12
.end method
