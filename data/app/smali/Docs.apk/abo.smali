.class public Labo;
.super Ljava/lang/Object;
.source "ThumbnailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/view/ThumbnailView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/view/ThumbnailView;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Labo;->a:Lcom/google/android/apps/docs/view/ThumbnailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Labo;->a:Lcom/google/android/apps/docs/view/ThumbnailView;

    iget-object v0, v0, Lcom/google/android/apps/docs/view/ThumbnailView;->a:Labq;

    if-eqz v0, :cond_19

    .line 84
    iget-object v0, p0, Labo;->a:Lcom/google/android/apps/docs/view/ThumbnailView;

    iget-object v0, v0, Lcom/google/android/apps/docs/view/ThumbnailView;->a:Labq;

    iget-object v1, p0, Labo;->a:Lcom/google/android/apps/docs/view/ThumbnailView;

    invoke-static {v1}, Lcom/google/android/apps/docs/view/ThumbnailView;->a(Lcom/google/android/apps/docs/view/ThumbnailView;)LkT;

    move-result-object v1

    invoke-virtual {v1}, LkT;->i()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LeD;->a:LeD;

    invoke-interface {v0, v1, v2}, Labq;->b(Ljava/lang/String;LeD;)V

    .line 87
    :cond_19
    return-void
.end method
