.class public Labp;
.super LabC;
.source "ThumbnailView.java"


# instance fields
.field final synthetic a:Landroid/view/animation/Animation;

.field final synthetic a:Lcom/google/android/apps/docs/view/ThumbnailView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/view/ThumbnailView;Landroid/view/animation/Animation;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Labp;->a:Lcom/google/android/apps/docs/view/ThumbnailView;

    iput-object p2, p0, Labp;->a:Landroid/view/animation/Animation;

    invoke-direct {p0}, LabC;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Labp;->a:Lcom/google/android/apps/docs/view/ThumbnailView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/view/ThumbnailView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    .line 149
    iget-object v0, p0, Labp;->a:Lcom/google/android/apps/docs/view/ThumbnailView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/ThumbnailView;->a(Lcom/google/android/apps/docs/view/ThumbnailView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Labp;->a:Lcom/google/android/apps/docs/view/ThumbnailView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/ThumbnailView;->a(Lcom/google/android/apps/docs/view/ThumbnailView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Labp;->a:Lcom/google/android/apps/docs/view/ThumbnailView;

    iget-object v1, p0, Labp;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/view/ThumbnailView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    :cond_24
    return-void
.end method
