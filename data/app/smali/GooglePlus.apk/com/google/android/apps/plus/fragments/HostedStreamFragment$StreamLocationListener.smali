.class Lcom/google/android/apps/plus/fragments/HostedStreamFragment$StreamLocationListener;
.super Ljava/lang/Object;
.source "HostedStreamFragment.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedStreamFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/HostedStreamFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$StreamLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/HostedStreamFragment;Lcom/google/android/apps/plus/fragments/HostedStreamFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$StreamLocationListener;-><init>(Lcom/google/android/apps/plus/fragments/HostedStreamFragment;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 7
    .parameter "location"

    .prologue
    const/4 v4, 0x1

    .line 378
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$StreamLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_8

    .line 392
    :goto_7
    return-void

    .line 382
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$StreamLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    iput-object p1, v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocation:Landroid/location/Location;

    .line 384
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$StreamLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->prepareLoaderUri()V

    .line 386
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$StreamLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    iput-boolean v4, v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mFirstLoad:Z

    .line 387
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$StreamLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$StreamLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 389
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$StreamLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$StreamLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->updateLocationHeader(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->access$200(Lcom/google/android/apps/plus/fragments/HostedStreamFragment;Landroid/view/View;)V

    .line 391
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$StreamLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->fetchContent(Z)V

    goto :goto_7
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 396
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 400
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 404
    return-void
.end method
