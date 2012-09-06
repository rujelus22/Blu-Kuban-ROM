.class public Lcom/google/android/gsf/UseLocationForServices;
.super Ljava/lang/Object;
.source "UseLocationForServices.java"


# static fields
.field public static final ACTION_SET_USE_LOCATION_FOR_SERVICES:Ljava/lang/String; = "com.google.android.gsf.action.SET_USE_LOCATION_FOR_SERVICES"

.field private static GOOGLE_GEOLOCATION_ORIGINS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "UseLocationForServices"

.field public static final USE_LOCATION_FOR_SERVICES_NOT_SET:I = 0x2

.field public static final USE_LOCATION_FOR_SERVICES_OFF:I = 0x0

.field public static final USE_LOCATION_FOR_SERVICES_ON:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://www.google.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://www.google.co.uk"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/UseLocationForServices;->GOOGLE_GEOLOCATION_ORIGINS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUseLocationForServices(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "use_location_for_services"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static setGoogleBrowserGeolocation(Landroid/content/Context;Z)V
    .registers 10
    .parameter "context"
    .parameter "allow"

    .prologue
    .line 103
    :try_start_0
    sget-object v0, Lcom/google/android/gsf/UseLocationForServices;->GOOGLE_GEOLOCATION_ORIGINS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_35

    aget-object v4, v0, v2

    .line 104
    .local v4, origin:Ljava/lang/String;
    if-eqz p1, :cond_14

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/provider/Browser;->allowGeolocation(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 103
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 107
    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/provider/Browser;->clearGeolocation(Landroid/content/ContentResolver;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_11

    .line 110
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #origin:Ljava/lang/String;
    :catch_1c
    move-exception v1

    .line 113
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v5, "UseLocationForServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to set browser geolocation permissions: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :cond_35
    return-void
.end method

.method public static setUseLocationForServices(Landroid/content/Context;Z)Z
    .registers 5
    .parameter "context"
    .parameter "value"

    .prologue
    .line 91
    invoke-static {p0, p1}, Lcom/google/android/gsf/UseLocationForServices;->setGoogleBrowserGeolocation(Landroid/content/Context;Z)V

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "use_location_for_services"

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    :goto_c
    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_c
.end method
