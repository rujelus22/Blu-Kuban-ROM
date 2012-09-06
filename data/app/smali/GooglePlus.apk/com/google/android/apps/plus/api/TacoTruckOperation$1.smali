.class Lcom/google/android/apps/plus/api/TacoTruckOperation$1;
.super Ljava/lang/Object;
.source "TacoTruckOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/api/TacoTruckOperation;

.field final synthetic val$userPreferences:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/api/TacoTruckOperation;Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1822
    iput-object p1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation$1;->this$0:Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iput-object p2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation$1;->val$userPreferences:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1825
    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation$1;->this$0:Lcom/google/android/apps/plus/api/TacoTruckOperation;

    #getter for: Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->access$000(Lcom/google/android/apps/plus/api/TacoTruckOperation;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "streams"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1831
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "want_locations"

    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation$1;->val$userPreferences:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getHideLocation()Z

    move-result v3

    if-nez v3, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1833
    const-string v1, "city_level_location"

    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation$1;->val$userPreferences:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getCityLevelLocation()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1836
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1837
    return-void
.end method
