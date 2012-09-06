.class public LHH;
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
    .line 249
    iput-object p1, p0, LHH;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, LHH;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lkc;

    invoke-interface {v0}, Lkc;->a()LlQ;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_29

    sget-object v1, LlR;->h:LlR;

    invoke-virtual {v1, v0}, LlR;->a(LlQ;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 254
    iget-object v0, p0, LHH;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, LaiT;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    iget-object v1, p0, LHH;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-static {v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Lcom/google/android/apps/docs/fragment/PreviewFragment;)LGZ;

    move-result-object v1

    invoke-interface {v1, v0}, LGZ;->a(Ljava/lang/String;)V

    .line 257
    :cond_29
    return-void
.end method
