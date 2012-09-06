.class public abstract Lcom/google/googlenav/android/DelegateIntentProcessorHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/android/P;


# instance fields
.field protected delegate:Lcom/google/googlenav/android/P;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/P;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    .line 28
    return-void
.end method


# virtual methods
.method public getActivity()Lcom/google/android/maps/MapsActivity;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->getActivity()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Lcom/google/googlenav/android/P;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getPostalAddress(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/P;->getPostalAddress(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUiThreadHandler()Lcom/google/googlenav/android/Y;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->getUiThreadHandler()Lcom/google/googlenav/android/Y;

    move-result-object v0

    return-object v0
.end method

.method public refreshFriends()V
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->refreshFriends()V

    .line 183
    return-void
.end method

.method public refreshFriendsSettings()V
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->refreshFriendsSettings()V

    .line 188
    return-void
.end method

.method public resetForInvocation()V
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->resetForInvocation()V

    .line 42
    return-void
.end method

.method public resolveType(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/P;->resolveType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveQueryToHistory(Ljava/lang/String;Ljava/lang/String;Lat/B;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/googlenav/android/P;->saveQueryToHistory(Ljava/lang/String;Ljava/lang/String;Lat/B;)V

    .line 47
    return-void
.end method

.method public showBubbleForRecentPlace(Ljava/lang/String;)Lcom/google/googlenav/ag;
    .registers 3
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/P;->showBubbleForRecentPlace(Ljava/lang/String;)Lcom/google/googlenav/ag;

    move-result-object v0

    return-object v0
.end method

.method public showStarDetails(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/P;->showStarDetails(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public showStarOnMap(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/P;->showStarOnMap(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/P;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method public startBusinessDetailsLayer(Lcom/google/googlenav/ai;)V
    .registers 3
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/P;->startBusinessDetailsLayer(Lcom/google/googlenav/ai;)V

    .line 128
    return-void
.end method

.method public startBusinessDetailsLayer(Ljava/lang/String;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1, p2}, Lcom/google/googlenav/android/P;->startBusinessDetailsLayer(Ljava/lang/String;Z)V

    .line 123
    return-void
.end method

.method public startBusinessRatings(Lcom/google/googlenav/ai;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1, p2}, Lcom/google/googlenav/android/P;->startBusinessRatings(Lcom/google/googlenav/ai;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public startBusinessRatings(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/googlenav/android/P;->startBusinessRatings(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 138
    return-void
.end method

.method public startCheckinWizardFromIntent(Lcom/google/googlenav/h;Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/googlenav/android/P;->startCheckinWizardFromIntent(Lcom/google/googlenav/h;Ljava/lang/String;Z)V

    .line 118
    return-void
.end method

.method public startFriendsLayer(LaM/am;)V
    .registers 3
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/P;->startFriendsLayer(LaM/am;)V

    .line 87
    return-void
.end method

.method public startFriendsLayerHistorySummary()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->startFriendsLayerHistorySummary()V

    .line 97
    return-void
.end method

.method public startFriendsListView(LaM/am;)V
    .registers 3
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/P;->startFriendsListView(LaM/am;)V

    .line 102
    return-void
.end method

.method public startFriendsLocation(LaM/am;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1, p2}, Lcom/google/googlenav/android/P;->startFriendsLocation(LaM/am;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public startFriendsLocationChooser(LaM/am;Ljava/lang/Class;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1, p2}, Lcom/google/googlenav/android/P;->startFriendsLocationChooser(LaM/am;Ljava/lang/Class;)V

    .line 173
    return-void
.end method

.method public startFriendsProfile(LaM/am;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1, p2}, Lcom/google/googlenav/android/P;->startFriendsProfile(LaM/am;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public startLatitudeSettingsActivity()V
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->startLatitudeSettingsActivity()V

    .line 168
    return-void
.end method

.method public startLocationHistoryOptIn(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/P;->startLocationHistoryOptIn(Landroid/content/Intent;)V

    .line 92
    return-void
.end method

.method public startManageAutoCheckinPlaces()V
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->startManageAutoCheckinPlaces()V

    .line 178
    return-void
.end method

.method public startMyPlacesList(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/P;->startMyPlacesList(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;)Z
    .registers 3
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/P;->startNextMatchingActivity(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startOffersList()V
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->startOffersList()V

    .line 198
    return-void
.end method

.method public startSettingsActivity()V
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->startSettingsActivity()V

    .line 163
    return-void
.end method

.method public startTransitEntry()V
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->startTransitEntry()V

    .line 203
    return-void
.end method

.method public startTransitNavigationLayer()V
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->startTransitNavigationLayer()V

    .line 82
    return-void
.end method

.method public startTransitStationPage(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;->delegate:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/P;->startTransitStationPage(Ljava/lang/String;)V

    .line 143
    return-void
.end method
