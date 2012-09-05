.class Lcom/google/android/feeds/core/content/LegacyContentProviderClientResolver;
.super Lcom/google/android/feeds/core/content/ContentProviderClientResolver;
.source "ContentProviderClient.java"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2
    .parameter "contentResolver"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/ContentProviderClientResolver;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/google/android/feeds/core/content/LegacyContentProviderClientResolver;->mContentResolver:Landroid/content/ContentResolver;

    .line 139
    return-void
.end method


# virtual methods
.method public acquireContentProviderClient(Ljava/lang/String;)Lcom/google/android/feeds/core/content/ContentProviderClient;
    .registers 6
    .parameter

    .prologue
    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/google/android/feeds/core/content/LegacyContentProviderClientResolver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 145
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 148
    const-string v2, "acquireProvider"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 150
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 153
    iget-object v2, p0, Lcom/google/android/feeds/core/content/LegacyContentProviderClientResolver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_2a

    new-instance v0, Lcom/google/android/feeds/core/content/LegacyContentProviderClient;

    iget-object v2, p0, Lcom/google/android/feeds/core/content/LegacyContentProviderClientResolver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v2, v1}, Lcom/google/android/feeds/core/content/LegacyContentProviderClient;-><init>(Landroid/content/ContentResolver;Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2c

    :goto_29
    return-object v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29

    .line 156
    :catch_2c
    move-exception v0

    .line 157
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
