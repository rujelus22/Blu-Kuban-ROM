.class Lcom/google/android/apps/plus/fragments/StreamListFragment$StreamLocationListener;
.super Ljava/lang/Object;
.source "StreamListFragment.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/StreamListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/StreamListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$StreamLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/StreamListFragment;Lcom/google/android/apps/plus/fragments/StreamListFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/StreamListFragment$StreamLocationListener;-><init>(Lcom/google/android/apps/plus/fragments/StreamListFragment;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6
    .parameter "location"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$StreamLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    #calls: Lcom/google/android/apps/plus/fragments/StreamListFragment;->removeLocationListener()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->access$100(Lcom/google/android/apps/plus/fragments/StreamListFragment;)V

    .line 339
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$StreamLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iput-object p1, v0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocation:Landroid/location/Location;

    .line 341
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$StreamLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->prepareLoaderUri()V

    .line 343
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$StreamLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$StreamLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 345
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$StreamLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$StreamLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/StreamListFragment;->updateLocationHeader(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->access$200(Lcom/google/android/apps/plus/fragments/StreamListFragment;Landroid/view/View;)V

    .line 348
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$StreamLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$StreamLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$StreamLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    const v3, 0x7f070096

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->showEmptyViewProgress(Landroid/view/View;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$StreamLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->fetchContent(Z)V

    .line 351
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 358
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 365
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 372
    return-void
.end method
