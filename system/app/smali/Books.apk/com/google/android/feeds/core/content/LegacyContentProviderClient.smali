.class Lcom/google/android/feeds/core/content/LegacyContentProviderClient;
.super Ljava/lang/Object;
.source "ContentProviderClient.java"

# interfaces
.implements Lcom/google/android/feeds/core/content/ContentProviderClient;


# instance fields
.field private final mContentProviderInterface:Ljava/lang/Object;

.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/Object;)V
    .registers 3
    .parameter "contentResolver"
    .parameter "contentProviderInterface"

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/google/android/feeds/core/content/LegacyContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    .line 178
    iput-object p2, p0, Lcom/google/android/feeds/core/content/LegacyContentProviderClient;->mContentProviderInterface:Ljava/lang/Object;

    .line 179
    return-void
.end method


# virtual methods
.method public getLocalContentProvider()Landroid/content/ContentProvider;
    .registers 6

    .prologue
    .line 206
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-string v2, "android.content.IContentProvider"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 209
    const-class v1, Landroid/content/ContentProvider;

    const-string v2, "coerceToLocalContentProvider"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 212
    const/4 v1, 0x0

    .line 213
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/feeds/core/content/LegacyContentProviderClient;->mContentProviderInterface:Ljava/lang/Object;

    aput-object v4, v2, v3

    .line 216
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProvider;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_24

    return-object v0

    .line 217
    :catch_24
    move-exception v0

    .line 218
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public release()V
    .registers 8

    .prologue
    .line 186
    :try_start_0
    iget-object v5, p0, Lcom/google/android/feeds/core/content/LegacyContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 187
    .local v4, type:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/content/ContentResolver;>;"
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-string v6, "android.content.IContentProvider"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v1, v5

    .line 190
    .local v1, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const-string v5, "releaseProvider"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 192
    .local v3, releaseProvider:Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/feeds/core/content/LegacyContentProviderClient;->mContentProviderInterface:Ljava/lang/Object;

    aput-object v6, v2, v5

    .line 195
    .local v2, parameters:[Ljava/lang/Object;
    iget-object v5, p0, Lcom/google/android/feeds/core/content/LegacyContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    .line 199
    return-void

    .line 196
    .end local v1           #parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v2           #parameters:[Ljava/lang/Object;
    .end local v3           #releaseProvider:Ljava/lang/reflect/Method;
    .end local v4           #type:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/content/ContentResolver;>;"
    :catch_26
    move-exception v0

    .line 197
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
