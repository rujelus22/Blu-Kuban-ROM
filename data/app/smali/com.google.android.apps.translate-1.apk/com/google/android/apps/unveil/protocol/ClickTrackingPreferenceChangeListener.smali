.class public Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;
.super Ljava/lang/Object;
.source "ClickTrackingPreferenceChangeListener.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final booleanPreferences:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final clickTracker:Lcom/google/android/apps/unveil/protocol/ClickTracker;

.field private final mobileConnectionPreferenceKey:Ljava/lang/String;

.field private final modificationToClickMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;",
            ">;"
        }
    .end annotation
.end field

.field private final wifiAndMobileNetworksValue:Ljava/lang/String;

.field private final wifiOnlyValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/protocol/ClickTracker;Landroid/content/res/Resources;)V
    .registers 4
    .parameter "clickTracker"
    .parameter "resources"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->clickTracker:Lcom/google/android/apps/unveil/protocol/ClickTracker;

    .line 54
    sget v0, Lcom/google/android/apps/unveil/R$string;->background_goggle_mobile_connection_key:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->mobileConnectionPreferenceKey:Ljava/lang/String;

    .line 56
    sget v0, Lcom/google/android/apps/unveil/R$string;->wifi_only_option_value:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->wifiOnlyValue:Ljava/lang/String;

    .line 57
    sget v0, Lcom/google/android/apps/unveil/R$string;->wifi_and_mobile_networks_option_value:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->wifiAndMobileNetworksValue:Ljava/lang/String;

    .line 60
    invoke-virtual {p0, p2}, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->generateBooleanPreferencesSet(Landroid/content/res/Resources;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->booleanPreferences:Ljava/util/Set;

    .line 61
    invoke-virtual {p0, p2}, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->generateMap(Landroid/content/res/Resources;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->modificationToClickMap:Ljava/util/Map;

    .line 62
    return-void
.end method

.method private getClickTarget(Ljava/lang/String;Ljava/lang/String;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->modificationToClickMap:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    return-object v0
.end method

.method private static final p(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .registers 3
    .parameter "f"
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static final p(Ljava/lang/String;Z)Landroid/util/Pair;
    .registers 3
    .parameter "f"
    .parameter "b"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->p(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method generateBooleanPreferencesSet(Landroid/content/res/Resources;)Ljava/util/Set;
    .registers 4
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 67
    .local v0, booleanPreferences:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget v1, Lcom/google/android/apps/unveil/R$string;->background_goggle_key:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    sget v1, Lcom/google/android/apps/unveil/R$string;->user_wants_history_key:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    sget v1, Lcom/google/android/apps/unveil/R$string;->save_to_sd_card_key:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget v1, Lcom/google/android/apps/unveil/R$string;->background_goggle_roaming_key:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method generateMap(Landroid/content/res/Resources;)Ljava/util/Map;
    .registers 11
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v0, m:Ljava/util/Map;,"Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;>;"
    sget v5, Lcom/google/android/apps/unveil/R$string;->background_goggle_key:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, searchFromCameraKey:Ljava/lang/String;
    invoke-static {v3, v8}, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->p(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v5

    sget-object v6, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->SEARCH_FROM_CAMERA_ENABLED:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {v3, v7}, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->p(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v5

    sget-object v6, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->SEARCH_FROM_CAMERA_DISABLED:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget v5, Lcom/google/android/apps/unveil/R$string;->user_wants_history_key:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, searchHistoryKey:Ljava/lang/String;
    invoke-static {v4, v8}, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->p(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v5

    sget-object v6, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->SEARCH_HISTORY_ENABLED:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {v4, v7}, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->p(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v5

    sget-object v6, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->SEARCH_HISTORY_DISABLED:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget v5, Lcom/google/android/apps/unveil/R$string;->save_to_sd_card_key:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, saveToGalleryKey:Ljava/lang/String;
    invoke-static {v2, v8}, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->p(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v5

    sget-object v6, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->SAVE_TO_GALLERY_ENABLED:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {v2, v7}, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->p(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v5

    sget-object v6, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->SAVE_TO_GALLERY_DISABLED:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget v5, Lcom/google/android/apps/unveil/R$string;->background_goggle_roaming_key:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, roamingKey:Ljava/lang/String;
    invoke-static {v1, v8}, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->p(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v5

    sget-object v6, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->SEARCH_FROM_CAMERA_ROAMING_ENABLED:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {v1, v7}, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->p(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v5

    sget-object v6, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->SEARCH_FROM_CAMERA_ROAMING_DISABLED:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v5, p0, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->mobileConnectionPreferenceKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->wifiAndMobileNetworksValue:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->p(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    sget-object v6, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->SEARCH_FROM_CAMERA_MOBILE_NETWORKS_ENABLED:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v5, p0, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->mobileConnectionPreferenceKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->wifiOnlyValue:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->p(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    sget-object v6, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->SEARCH_FROM_CAMERA_MOBILE_NETWORKS_DISABLED:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    return-object v5
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 6
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->booleanPreferences:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 115
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->clickTracker:Lcom/google/android/apps/unveil/protocol/ClickTracker;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->getClickTarget(Ljava/lang/String;Ljava/lang/String;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->logClick(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;)V

    .line 124
    :cond_1a
    :goto_1a
    return-void

    .line 117
    :cond_1b
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->mobileConnectionPreferenceKey:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 120
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->mobileConnectionPreferenceKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->wifiAndMobileNetworksValue:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->clickTracker:Lcom/google/android/apps/unveil/protocol/ClickTracker;

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;->getClickTarget(Ljava/lang/String;Ljava/lang/String;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->logClick(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;)V

    goto :goto_1a
.end method
