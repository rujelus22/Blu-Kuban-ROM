.class Lcom/google/android/apps/plus/fragments/CheckinListFragment$CheckinLocationListener;
.super Ljava/lang/Object;
.source "CheckinListFragment.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/CheckinListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckinLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/CheckinListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$CheckinLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/CheckinListFragment;Lcom/google/android/apps/plus/fragments/CheckinListFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment$CheckinLocationListener;-><init>(Lcom/google/android/apps/plus/fragments/CheckinListFragment;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6
    .parameter "location"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$CheckinLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    #calls: Lcom/google/android/apps/plus/fragments/CheckinListFragment;->removeLocationListener()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->access$200(Lcom/google/android/apps/plus/fragments/CheckinListFragment;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$CheckinLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mQuery:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->access$300(Lcom/google/android/apps/plus/fragments/CheckinListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$CheckinLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    new-instance v1, Lcom/google/android/apps/plus/api/LocationQuery;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$CheckinLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mQuery:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->access$300(Lcom/google/android/apps/plus/fragments/CheckinListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/google/android/apps/plus/api/LocationQuery;-><init>(Landroid/location/Location;Ljava/lang/String;)V

    #setter for: Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->access$402(Lcom/google/android/apps/plus/fragments/CheckinListFragment;Lcom/google/android/apps/plus/api/LocationQuery;)Lcom/google/android/apps/plus/api/LocationQuery;

    .line 120
    :goto_21
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$CheckinLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$CheckinLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$CheckinLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    const v3, 0x7f0800c4

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/google/android/apps/plus/fragments/CheckinListFragment;->showProgress(Landroid/view/View;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->access$500(Lcom/google/android/apps/plus/fragments/CheckinListFragment;Landroid/view/View;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$CheckinLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$CheckinLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$CheckinLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$CheckinLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->access$400(Lcom/google/android/apps/plus/fragments/CheckinListFragment;)Lcom/google/android/apps/plus/api/LocationQuery;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->getNearbyLocations(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/LocationQuery;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 124
    return-void

    .line 117
    :cond_52
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$CheckinLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    new-instance v1, Lcom/google/android/apps/plus/api/LocationQuery;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/apps/plus/api/LocationQuery;-><init>(Landroid/location/Location;Ljava/lang/String;)V

    #setter for: Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->access$402(Lcom/google/android/apps/plus/fragments/CheckinListFragment;Lcom/google/android/apps/plus/api/LocationQuery;)Lcom/google/android/apps/plus/api/LocationQuery;

    goto :goto_21
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 131
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 138
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 145
    return-void
.end method
