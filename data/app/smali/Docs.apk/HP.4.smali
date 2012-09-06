.class public LHP;
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
    .line 692
    iput-object p1, p0, LHP;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 696
    iget-object v0, p0, LHP;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()V

    .line 697
    return-void
.end method
