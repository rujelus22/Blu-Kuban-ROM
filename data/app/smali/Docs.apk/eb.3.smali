.class public Leb;
.super Ljava/lang/Object;
.source "CommentStreamActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/CommentStreamActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/CommentStreamActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Leb;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Leb;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Lck;

    iget-object v1, p0, Leb;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 207
    iget-object v0, p0, Leb;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->finish()V

    .line 208
    return-void
.end method
