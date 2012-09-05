.class Lcom/google/android/feeds/core/content/StandardContentProviderClientResolver;
.super Lcom/google/android/feeds/core/content/ContentProviderClientResolver;
.source "ContentProviderClient.java"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2
    .parameter "contentResolver"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/ContentProviderClientResolver;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/android/feeds/core/content/StandardContentProviderClientResolver;->mContentResolver:Landroid/content/ContentResolver;

    .line 85
    return-void
.end method


# virtual methods
.method public acquireContentProviderClient(Ljava/lang/String;)Lcom/google/android/feeds/core/content/ContentProviderClient;
    .registers 4
    .parameter "authority"

    .prologue
    .line 89
    iget-object v1, p0, Lcom/google/android/feeds/core/content/StandardContentProviderClientResolver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 91
    .local v0, client:Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_e

    new-instance v1, Lcom/google/android/feeds/core/content/StandardContentProviderClient;

    invoke-direct {v1, v0}, Lcom/google/android/feeds/core/content/StandardContentProviderClient;-><init>(Landroid/content/ContentProviderClient;)V

    :goto_d
    return-object v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method
