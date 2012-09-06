.class Lcom/google/android/apps/reader/preference/ProviderPreferences$OnSharedPreferenceChangeListenerReceiver;
.super Landroid/os/ResultReceiver;
.source "ProviderPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/preference/ProviderPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSharedPreferenceChangeListenerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/preference/ProviderPreferences;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/reader/preference/ProviderPreferences;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "handler"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences$OnSharedPreferenceChangeListenerReceiver;->this$0:Lcom/google/android/apps/reader/preference/ProviderPreferences;

    .line 340
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 341
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 14
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 345
    iget-object v7, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences$OnSharedPreferenceChangeListenerReceiver;->this$0:Lcom/google/android/apps/reader/preference/ProviderPreferences;

    .line 346
    .local v7, preferences:Landroid/content/SharedPreferences;
    const-string v8, "key"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, key:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences$OnSharedPreferenceChangeListenerReceiver;->this$0:Lcom/google/android/apps/reader/preference/ProviderPreferences;

    #getter for: Lcom/google/android/apps/reader/preference/ProviderPreferences;->mListeners:Ljava/util/Set;
    invoke-static {v8}, Lcom/google/android/apps/reader/preference/ProviderPreferences;->access$400(Lcom/google/android/apps/reader/preference/ProviderPreferences;)Ljava/util/Set;

    move-result-object v8

    monitor-enter v8

    .line 351
    :try_start_f
    iget-object v9, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences$OnSharedPreferenceChangeListenerReceiver;->this$0:Lcom/google/android/apps/reader/preference/ProviderPreferences;

    #getter for: Lcom/google/android/apps/reader/preference/ProviderPreferences;->mListeners:Ljava/util/Set;
    invoke-static {v9}, Lcom/google/android/apps/reader/preference/ProviderPreferences;->access$400(Lcom/google/android/apps/reader/preference/ProviderPreferences;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v4

    .line 352
    .local v4, length:I
    iget-object v9, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences$OnSharedPreferenceChangeListenerReceiver;->this$0:Lcom/google/android/apps/reader/preference/ProviderPreferences;

    #getter for: Lcom/google/android/apps/reader/preference/ProviderPreferences;->mListeners:Ljava/util/Set;
    invoke-static {v9}, Lcom/google/android/apps/reader/preference/ProviderPreferences;->access$400(Lcom/google/android/apps/reader/preference/ProviderPreferences;)Ljava/util/Set;

    move-result-object v9

    new-array v10, v4, [Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v9, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 353
    .local v6, listeners:[Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    monitor-exit v8
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_35

    .line 354
    move-object v0, v6

    .local v0, arr$:[Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2b
    if-ge v1, v3, :cond_38

    aget-object v5, v0, v1

    .line 355
    .local v5, listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    invoke-interface {v5, v7, v2}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 353
    .end local v0           #arr$:[Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #length:I
    .end local v5           #listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .end local v6           #listeners:[Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :catchall_35
    move-exception v9

    :try_start_36
    monitor-exit v8
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v9

    .line 357
    .restart local v0       #arr$:[Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .restart local v1       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #length:I
    .restart local v6       #listeners:[Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :cond_38
    return-void
.end method
