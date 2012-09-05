.class public abstract Lcom/google/mobile/googlenav/common/io/BasePersistentStore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/mobile/googlenav/common/io/PersistentStore;


# instance fields
.field private final preferenceStore:Lcom/google/mobile/googlenav/common/io/PreferenceStore;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/mobile/googlenav/common/io/PreferenceStore;

    invoke-direct {v0, p0}, Lcom/google/mobile/googlenav/common/io/PreferenceStore;-><init>(Lcom/google/mobile/googlenav/common/io/PersistentStore;)V

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/io/BasePersistentStore;->preferenceStore:Lcom/google/mobile/googlenav/common/io/PreferenceStore;

    return-void
.end method


# virtual methods
.method public readPreference(Ljava/lang/String;)[B
    .registers 3

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/BasePersistentStore;->preferenceStore:Lcom/google/mobile/googlenav/common/io/PreferenceStore;

    invoke-virtual {v0, p1}, Lcom/google/mobile/googlenav/common/io/PreferenceStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public savePreferences()V
    .registers 2

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/BasePersistentStore;->preferenceStore:Lcom/google/mobile/googlenav/common/io/PreferenceStore;

    invoke-virtual {v0}, Lcom/google/mobile/googlenav/common/io/PreferenceStore;->savePreferences()V

    return-void
.end method

.method public setPreference(Ljava/lang/String;[B)Z
    .registers 4

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/BasePersistentStore;->preferenceStore:Lcom/google/mobile/googlenav/common/io/PreferenceStore;

    invoke-virtual {v0, p1, p2}, Lcom/google/mobile/googlenav/common/io/PreferenceStore;->setPreference(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method
