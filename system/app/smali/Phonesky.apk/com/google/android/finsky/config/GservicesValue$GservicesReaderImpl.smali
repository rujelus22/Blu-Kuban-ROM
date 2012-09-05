.class Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;
.super Ljava/lang/Object;
.source "GservicesValue.java"

# interfaces
.implements Lcom/google/android/finsky/config/GservicesValue$GservicesReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/config/GservicesValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GservicesReaderImpl"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 4
    .parameter "contentResolver"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 125
    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/finsky/config/G;->GSERVICES_KEY_PREFIXES:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gsf/Gservices;->bulkCacheByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 126
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 5
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .registers 6
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, floatStr:Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 143
    :try_start_9
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_10} :catch_12

    move-result-object p2

    .line 146
    .end local p2
    :cond_11
    :goto_11
    return-object p2

    .line 144
    .restart local p2
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 5
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 6
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getPartnerString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
