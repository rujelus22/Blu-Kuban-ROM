.class Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$2;
.super Ljava/lang/Object;
.source "DetailsScreenshotsViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;


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
    .line 99
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoChildViewTap(I)V
    .registers 6
    .parameter "index"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    iget-object v1, v1, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mVideoPreviews:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->access$000(Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/google/android/finsky/utils/IntentUtils;->createYouTubeIntentForUrl(Landroid/content/pm/PackageManager;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 107
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    iget-object v1, v1, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method
