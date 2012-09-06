.class public Lcom/google/android/finsky/library/AccountLibrary;
.super Ljava/lang/Object;
.source "AccountLibrary.java"

# interfaces
.implements Lcom/google/android/finsky/library/Library;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/library/AccountLibrary$Listener;
    }
.end annotation


# static fields
.field public static final LIBRARY_IDS:[Ljava/lang/String;

.field public static final LIBRARY_ID_APPS:Ljava/lang/String;

.field public static final LIBRARY_ID_MAGAZINE:Ljava/lang/String;

.field public static final LIBRARY_ID_MUSIC:Ljava/lang/String;

.field public static final LIBRARY_ID_OCEAN:Ljava/lang/String;

.field public static final LIBRARY_ID_YOUTUBE:Ljava/lang/String;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private final mLibraries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/library/HashingLibrary;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/AccountLibrary$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mListenersEnabled:Z

.field private final mNotificationHandler:Landroid/os/Handler;

.field private final mTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v1, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 29
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    .line 30
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_OCEAN:Ljava/lang/String;

    .line 31
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_YOUTUBE:Ljava/lang/String;

    .line 32
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MUSIC:Ljava/lang/String;

    .line 33
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MAGAZINE:Ljava/lang/String;

    .line 79
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_OCEAN:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_YOUTUBE:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MUSIC:Ljava/lang/String;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MAGAZINE:Ljava/lang/String;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "u-wl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_IDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;Landroid/os/Handler;)V
    .registers 7
    .parameter "account"
    .parameter "notificationHandler"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mTokens:Ljava/util/Map;

    .line 84
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mListeners:Ljava/util/List;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mListenersEnabled:Z

    .line 105
    iput-object p1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mAccount:Landroid/accounts/Account;

    .line 106
    iput-object p2, p0, Lcom/google/android/finsky/library/AccountLibrary;->mNotificationHandler:Landroid/os/Handler;

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/library/AppLibrary;

    new-instance v3, Lcom/google/android/finsky/library/SumHasher;

    invoke-direct {v3}, Lcom/google/android/finsky/library/SumHasher;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/finsky/library/AppLibrary;-><init>(Lcom/google/android/finsky/library/LibraryHasher;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MUSIC:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/library/HashMapLibrary;

    new-instance v3, Lcom/google/android/finsky/library/SumHasher;

    invoke-direct {v3}, Lcom/google/android/finsky/library/SumHasher;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/finsky/library/HashMapLibrary;-><init>(Lcom/google/android/finsky/library/LibraryHasher;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_OCEAN:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/library/HashMapLibrary;

    new-instance v3, Lcom/google/android/finsky/library/SumHasher;

    invoke-direct {v3}, Lcom/google/android/finsky/library/SumHasher;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/finsky/library/HashMapLibrary;-><init>(Lcom/google/android/finsky/library/LibraryHasher;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_YOUTUBE:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/library/HashMapLibrary;

    new-instance v3, Lcom/google/android/finsky/library/SumHasher;

    invoke-direct {v3}, Lcom/google/android/finsky/library/SumHasher;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/finsky/library/HashMapLibrary;-><init>(Lcom/google/android/finsky/library/LibraryHasher;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MAGAZINE:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/library/MagazinesLibrary;

    new-instance v3, Lcom/google/android/finsky/library/SumHasher;

    invoke-direct {v3}, Lcom/google/android/finsky/library/SumHasher;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/finsky/library/MagazinesLibrary;-><init>(Lcom/google/android/finsky/library/LibraryHasher;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    const-string v1, "u-wl"

    new-instance v2, Lcom/google/android/finsky/library/HashMapLibrary;

    new-instance v3, Lcom/google/android/finsky/library/SumHasher;

    invoke-direct {v3}, Lcom/google/android/finsky/library/SumHasher;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/finsky/library/HashMapLibrary;-><init>(Lcom/google/android/finsky/library/LibraryHasher;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public static getBackendFromLibraryId(Ljava/lang/String;)I
    .registers 2
    .parameter "libraryId"

    .prologue
    .line 61
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 62
    const/4 v0, 0x3

    .line 72
    :goto_9
    return v0

    .line 63
    :cond_a
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_OCEAN:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 64
    const/4 v0, 0x1

    goto :goto_9

    .line 65
    :cond_14
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_YOUTUBE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 66
    const/4 v0, 0x4

    goto :goto_9

    .line 67
    :cond_1e
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MUSIC:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 68
    const/4 v0, 0x2

    goto :goto_9

    .line 69
    :cond_28
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MAGAZINE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 70
    const/4 v0, 0x6

    goto :goto_9

    .line 72
    :cond_32
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static getLibraryIdFromBackend(I)Ljava/lang/String;
    .registers 2
    .parameter "backend"

    .prologue
    .line 40
    packed-switch p0, :pswitch_data_14

    .line 52
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 42
    :pswitch_5
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    goto :goto_4

    .line 44
    :pswitch_8
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_OCEAN:Ljava/lang/String;

    goto :goto_4

    .line 46
    :pswitch_b
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_YOUTUBE:Ljava/lang/String;

    goto :goto_4

    .line 48
    :pswitch_e
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MUSIC:Ljava/lang/String;

    goto :goto_4

    .line 50
    :pswitch_11
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MAGAZINE:Ljava/lang/String;

    goto :goto_4

    .line 40
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_8
        :pswitch_e
        :pswitch_5
        :pswitch_b
        :pswitch_3
        :pswitch_11
    .end packed-switch
.end method

.method private notifyListeners()V
    .registers 4

    .prologue
    .line 148
    iget-boolean v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mListenersEnabled:Z

    if-nez v1, :cond_5

    .line 160
    :goto_4
    return-void

    .line 151
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 152
    .local v0, listeners:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/AccountLibrary$Listener;>;"
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mNotificationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/finsky/library/AccountLibrary$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/finsky/library/AccountLibrary$1;-><init>(Lcom/google/android/finsky/library/AccountLibrary;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method


# virtual methods
.method public declared-synchronized add(Lcom/google/android/finsky/library/LibraryEntry;)V
    .registers 5
    .parameter "entry"

    .prologue
    .line 212
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/finsky/library/LibraryEntry;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 213
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid account."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_15

    .line 212
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1

    .line 215
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/finsky/library/LibraryEntry;->libraryId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/HashingLibrary;

    .line 216
    .local v0, library:Lcom/google/android/finsky/library/HashingLibrary;
    if-eqz v0, :cond_2a

    .line 217
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/HashingLibrary;->add(Lcom/google/android/finsky/library/LibraryEntry;)V

    .line 218
    invoke-direct {p0}, Lcom/google/android/finsky/library/AccountLibrary;->notifyListeners()V
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_15

    .line 220
    :cond_2a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/android/finsky/library/LibraryEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, entries:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/google/android/finsky/library/LibraryEntry;>;"
    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/LibraryEntry;

    .line 225
    .local v0, entry:Lcom/google/android/finsky/library/LibraryEntry;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/library/AccountLibrary;->add(Lcom/google/android/finsky/library/LibraryEntry;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_15

    goto :goto_5

    .line 224
    .end local v0           #entry:Lcom/google/android/finsky/library/LibraryEntry;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2

    .line 227
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_18
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addListener(Lcom/google/android/finsky/library/AccountLibrary$Listener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 163
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 164
    monitor-exit p0

    return-void

    .line 163
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(Lcom/google/android/finsky/library/LibraryEntry;)Z
    .registers 5
    .parameter "entry"

    .prologue
    .line 206
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/finsky/library/LibraryEntry;->libraryId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/Library;

    .line 207
    .local v0, library:Lcom/google/android/finsky/library/Library;
    if-eqz v0, :cond_13

    invoke-interface {v0, p1}, Lcom/google/android/finsky/library/Library;->contains(Lcom/google/android/finsky/library/LibraryEntry;)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_15

    move-result v1

    :goto_11
    monitor-exit p0

    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_11

    .line 206
    .end local v0           #library:Lcom/google/android/finsky/library/Library;
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized disableListeners()V
    .registers 2

    .prologue
    .line 126
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mListenersEnabled:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 127
    monitor-exit p0

    return-void

    .line 126
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dumpState(Ljava/lang/String;)V
    .registers 9
    .parameter "indent"

    .prologue
    .line 309
    iget-object v3, p0, Lcom/google/android/finsky/library/AccountLibrary;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, scrubbedAccount:Ljava/lang/String;
    const-string v3, "FinskyLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "AccountLibrary (account="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v3, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 313
    .local v1, library:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/library/HashingLibrary;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "library="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/finsky/library/HashingLibrary;->dumpState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 316
    .end local v1           #library:Ljava/lang/String;
    :cond_72
    const-string v3, "FinskyLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "} (account="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void
.end method

.method public declared-synchronized enableListeners()V
    .registers 2

    .prologue
    .line 135
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mListenersEnabled:Z

    .line 136
    invoke-direct {p0}, Lcom/google/android/finsky/library/AccountLibrary;->notifyListeners()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 137
    monitor-exit p0

    return-void

    .line 135
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public declared-synchronized getAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryAppEntry;
    .registers 5
    .parameter "docId"

    .prologue
    .line 174
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AppLibrary;

    .line 175
    .local v0, appLibrary:Lcom/google/android/finsky/library/AppLibrary;
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/AppLibrary;->getAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryAppEntry;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 174
    .end local v0           #appLibrary:Lcom/google/android/finsky/library/AppLibrary;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAppSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    .registers 5
    .parameter "docId"

    .prologue
    .line 183
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AppLibrary;

    .line 184
    .local v0, appLibrary:Lcom/google/android/finsky/library/AppLibrary;
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/AppLibrary;->getSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 183
    .end local v0           #appLibrary:Lcom/google/android/finsky/library/AppLibrary;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAppSubscriptionsList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibrarySubscriptionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AppLibrary;

    .line 192
    .local v0, appLibrary:Lcom/google/android/finsky/library/AppLibrary;
    invoke-virtual {v0}, Lcom/google/android/finsky/library/AppLibrary;->getSubscriptionsList()Ljava/util/List;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 191
    .end local v0           #appLibrary:Lcom/google/android/finsky/library/AppLibrary;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getLibrary(Ljava/lang/String;)Lcom/google/android/finsky/library/HashingLibrary;
    .registers 3
    .parameter "libraryId"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/HashingLibrary;

    return-object v0
.end method

.method public declared-synchronized getMagazinesSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    .registers 5
    .parameter "docId"

    .prologue
    .line 200
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MAGAZINE:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/MagazinesLibrary;

    .line 201
    .local v0, magazinesLibrary:Lcom/google/android/finsky/library/MagazinesLibrary;
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/MagazinesLibrary;->getSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 200
    .end local v0           #magazinesLibrary:Lcom/google/android/finsky/library/MagazinesLibrary;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getServerToken(Ljava/lang/String;)[B
    .registers 3
    .parameter "libraryId"

    .prologue
    .line 246
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/finsky/library/LibraryEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public declared-synchronized remove(Lcom/google/android/finsky/library/LibraryEntry;)V
    .registers 5
    .parameter "entry"

    .prologue
    .line 231
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/finsky/library/LibraryEntry;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 232
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_13

    .line 231
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1

    .line 234
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/finsky/library/LibraryEntry;->libraryId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/Library;

    .line 235
    .local v0, library:Lcom/google/android/finsky/library/Library;
    if-eqz v0, :cond_28

    .line 236
    invoke-interface {v0, p1}, Lcom/google/android/finsky/library/Library;->remove(Lcom/google/android/finsky/library/LibraryEntry;)V

    .line 237
    invoke-direct {p0}, Lcom/google/android/finsky/library/AccountLibrary;->notifyListeners()V
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_13

    .line 239
    :cond_28
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized resetLibrary(Ljava/lang/String;)V
    .registers 6
    .parameter "libraryId"

    .prologue
    .line 272
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/HashingLibrary;

    .line 273
    .local v0, library:Lcom/google/android/finsky/library/HashingLibrary;
    if-nez v0, :cond_1b

    .line 274
    const-string v1, "Cannot reset: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    :goto_16
    invoke-direct {p0}, Lcom/google/android/finsky/library/AccountLibrary;->notifyListeners()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1f

    .line 279
    monitor-exit p0

    return-void

    .line 276
    :cond_1b
    :try_start_1b
    invoke-virtual {v0}, Lcom/google/android/finsky/library/HashingLibrary;->reset()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_16

    .line 272
    .end local v0           #library:Lcom/google/android/finsky/library/HashingLibrary;
    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setServerToken(Ljava/lang/String;[B)V
    .registers 4
    .parameter "libraryId"
    .parameter "token"

    .prologue
    .line 242
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mTokens:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 243
    monitor-exit p0

    return-void

    .line 242
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .registers 5

    .prologue
    .line 255
    monitor-enter p0

    const/4 v2, 0x0

    .line 257
    .local v2, size:I
    :try_start_2
    iget-object v3, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/library/HashingLibrary;

    .line 258
    .local v1, library:Lcom/google/android/finsky/library/HashingLibrary;
    invoke-virtual {v1}, Lcom/google/android/finsky/library/HashingLibrary;->size()I
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_20

    move-result v3

    add-int/2addr v2, v3

    goto :goto_c

    .line 261
    .end local v1           #library:Lcom/google/android/finsky/library/HashingLibrary;
    :cond_1e
    monitor-exit p0

    return v2

    .line 255
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_20
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public supportsLibrary(Ljava/lang/String;)Z
    .registers 3
    .parameter "libraryId"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 301
    const-string v1, "{account=%s numapps=%d}"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/library/AccountLibrary;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v4, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/HashingLibrary;

    invoke-virtual {v0}, Lcom/google/android/finsky/library/HashingLibrary;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
