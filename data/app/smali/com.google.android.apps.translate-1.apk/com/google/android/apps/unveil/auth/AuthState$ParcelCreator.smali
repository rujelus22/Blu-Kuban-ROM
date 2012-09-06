.class Lcom/google/android/apps/unveil/auth/AuthState$ParcelCreator;
.super Ljava/lang/Object;
.source "AuthState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/auth/AuthState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParcelCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/apps/unveil/auth/AuthState;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/auth/AuthState$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/google/android/apps/unveil/auth/AuthState$ParcelCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/unveil/auth/AuthState;
    .registers 8
    .parameter "source"

    .prologue
    .line 135
    new-instance v0, Lcom/google/android/apps/unveil/auth/AuthState;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/auth/AuthState;-><init>()V

    .line 136
    .local v0, authState:Lcom/google/android/apps/unveil/auth/AuthState;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/apps/unveil/auth/AuthState;->authCookieUrl:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/apps/unveil/auth/AuthState;->prodCookieUrl:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/apps/unveil/auth/AuthState;->account:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/apps/unveil/auth/AuthState;->lastModifiedTimestamp:J

    .line 142
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/auth/AuthToken;>;"
    sget-object v4, Lcom/google/android/apps/unveil/auth/AuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 144
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/auth/AuthToken;

    .line 145
    .local v1, authToken:Lcom/google/android/apps/unveil/auth/AuthToken;
    iget-object v4, v0, Lcom/google/android/apps/unveil/auth/AuthState;->tokenCache:Ljava/util/Map;

    iget-object v5, v1, Lcom/google/android/apps/unveil/auth/AuthToken;->tokenType:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 148
    .end local v1           #authToken:Lcom/google/android/apps/unveil/auth/AuthToken;
    :cond_3f
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/auth/AuthState$ParcelCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/unveil/auth/AuthState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/apps/unveil/auth/AuthState;
    .registers 3
    .parameter "size"

    .prologue
    .line 153
    new-array v0, p1, [Lcom/google/android/apps/unveil/auth/AuthState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/auth/AuthState$ParcelCreator;->newArray(I)[Lcom/google/android/apps/unveil/auth/AuthState;

    move-result-object v0

    return-object v0
.end method
