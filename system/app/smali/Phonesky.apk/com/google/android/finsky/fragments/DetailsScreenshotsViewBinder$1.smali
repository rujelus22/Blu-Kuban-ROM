.class Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;
.super Ljava/lang/Object;
.source "DetailsScreenshotsViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageChildViewTap(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    iget-object v1, v1, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToScreenshots(Lcom/google/android/finsky/api/model/Document;I)V

    .line 97
    return-void
.end method
