.class public Labf;
.super Ljava/lang/Object;
.source "SocialCommentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/view/SocialCommentView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/view/SocialCommentView;)V
    .registers 2
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Labf;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Labf;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/SocialCommentView;->b(Lcom/google/android/apps/docs/view/SocialCommentView;)V

    .line 124
    return-void
.end method
