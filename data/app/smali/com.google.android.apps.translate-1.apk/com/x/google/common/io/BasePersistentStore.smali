.class public abstract Lcom/x/google/common/io/BasePersistentStore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/common/io/PersistentStore;


# instance fields
.field private final preferenceStore:Lcom/x/google/common/io/PreferenceStore;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/x/google/common/io/PreferenceStore;

    invoke-direct {v0, p0}, Lcom/x/google/common/io/PreferenceStore;-><init>(Lcom/x/google/common/io/PersistentStore;)V

    iput-object v0, p0, Lcom/x/google/common/io/BasePersistentStore;->preferenceStore:Lcom/x/google/common/io/PreferenceStore;

    return-void
.end method


# virtual methods
.method public clearPreferences()V
    .registers 2

    iget-object v0, p0, Lcom/x/google/common/io/BasePersistentStore;->preferenceStore:Lcom/x/google/common/io/PreferenceStore;

    invoke-virtual {v0}, Lcom/x/google/common/io/PreferenceStore;->clearPreferences()V

    return-void
.end method

.method public getFreeSpace(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public readPreference(Ljava/lang/String;)[B
    .registers 3

    iget-object v0, p0, Lcom/x/google/common/io/BasePersistentStore;->preferenceStore:Lcom/x/google/common/io/PreferenceStore;

    invoke-virtual {v0, p1}, Lcom/x/google/common/io/PreferenceStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public refreshPreferencesCache(Z)V
    .registers 3

    iget-object v0, p0, Lcom/x/google/common/io/BasePersistentStore;->preferenceStore:Lcom/x/google/common/io/PreferenceStore;

    invoke-virtual {v0, p1}, Lcom/x/google/common/io/PreferenceStore;->refreshPreferencesCache(Z)V

    return-void
.end method

.method public savePreferences()V
    .registers 2

    iget-object v0, p0, Lcom/x/google/common/io/BasePersistentStore;->preferenceStore:Lcom/x/google/common/io/PreferenceStore;

    invoke-virtual {v0}, Lcom/x/google/common/io/PreferenceStore;->savePreferences()V

    return-void
.end method

.method public setPreference(Ljava/lang/String;[B)Z
    .registers 4

    iget-object v0, p0, Lcom/x/google/common/io/BasePersistentStore;->preferenceStore:Lcom/x/google/common/io/PreferenceStore;

    invoke-virtual {v0, p1, p2}, Lcom/x/google/common/io/PreferenceStore;->setPreference(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method
