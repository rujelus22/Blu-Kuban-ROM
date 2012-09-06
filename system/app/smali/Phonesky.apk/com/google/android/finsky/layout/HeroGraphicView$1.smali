.class Lcom/google/android/finsky/layout/HeroGraphicView$1;
.super Ljava/lang/Object;
.source "HeroGraphicView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/HeroGraphicView;->bindLightboxImage(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/HeroGraphicView;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field final synthetic val$usePromoImage:Z


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/HeroGraphicView;ZLcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/finsky/layout/HeroGraphicView$1;->this$0:Lcom/google/android/finsky/layout/HeroGraphicView;

    iput-boolean p2, p0, Lcom/google/android/finsky/layout/HeroGraphicView$1;->val$usePromoImage:Z

    iput-object p3, p0, Lcom/google/android/finsky/layout/HeroGraphicView$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p4, p0, Lcom/google/android/finsky/layout/HeroGraphicView$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 75
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView$1;->val$usePromoImage:Z

    if-eqz v0, :cond_f

    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/layout/HeroGraphicView$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToImagesLightbox(Lcom/google/android/finsky/api/model/Document;II)V

    .line 82
    :cond_e
    :goto_e
    return-void

    .line 77
    :cond_f
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 78
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/layout/HeroGraphicView$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToImagesLightbox(Lcom/google/android/finsky/api/model/Document;II)V

    goto :goto_e

    .line 79
    :cond_1f
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/layout/HeroGraphicView$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1, v3, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToImagesLightbox(Lcom/google/android/finsky/api/model/Document;II)V

    goto :goto_e
.end method
