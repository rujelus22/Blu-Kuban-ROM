.class public LGI;
.super Ljava/lang/Object;
.source "CommentStreamFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, LGI;->a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, LGI;->a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()V

    .line 223
    return-void
.end method
