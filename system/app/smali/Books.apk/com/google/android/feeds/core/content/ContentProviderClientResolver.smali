.class abstract Lcom/google/android/feeds/core/content/ContentProviderClientResolver;
.super Ljava/lang/Object;
.source "ContentProviderClient.java"


# static fields
.field private static final SDK:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/feeds/core/content/ContentProviderClientResolver;->SDK:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/google/android/feeds/core/content/ContentProviderClientResolver;
    .registers 4
    .parameter "context"

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 58
    .local v0, resolver:Landroid/content/ContentResolver;
    sget v1, Lcom/google/android/feeds/core/content/ContentProviderClientResolver;->SDK:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_f

    .line 59
    new-instance v1, Lcom/google/android/feeds/core/content/StandardContentProviderClientResolver;

    invoke-direct {v1, v0}, Lcom/google/android/feeds/core/content/StandardContentProviderClientResolver;-><init>(Landroid/content/ContentResolver;)V

    .line 61
    :goto_e
    return-object v1

    :cond_f
    new-instance v1, Lcom/google/android/feeds/core/content/LegacyContentProviderClientResolver;

    invoke-direct {v1, v0}, Lcom/google/android/feeds/core/content/LegacyContentProviderClientResolver;-><init>(Landroid/content/ContentResolver;)V

    goto :goto_e
.end method


# virtual methods
.method public abstract acquireContentProviderClient(Ljava/lang/String;)Lcom/google/android/feeds/core/content/ContentProviderClient;
.end method
