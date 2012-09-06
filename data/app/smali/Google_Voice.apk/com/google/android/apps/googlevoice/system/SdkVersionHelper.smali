.class public Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;
.super Ljava/lang/Object;
.source "SdkVersionHelper.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/system/VersionHelper;


# static fields
.field private static final log:Lcom/google/android/apps/common/log/GLog;


# instance fields
.field private final sdkDonut:I

.field private final sdkEclairMr1:I

.field private final sdkFroYo:I

.field private final sdkHoneycomb:I

.field private final sdkIcs:I

.field private sdkValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->log:Lcom/google/android/apps/common/log/GLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->sdkValue:I

    .line 23
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->sdkDonut:I

    .line 24
    const/4 v0, 0x7

    iput v0, p0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->sdkEclairMr1:I

    .line 25
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->sdkFroYo:I

    .line 26
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->sdkHoneycomb:I

    .line 27
    const/16 v0, 0xe

    iput v0, p0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->sdkIcs:I

    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->loadSdkConstants()V

    .line 31
    iget v0, p0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->sdkValue:I

    if-gez v0, :cond_23

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->sdkValue:I

    .line 34
    :cond_23
    return-void
.end method

.method private isPreReleaseIceCreamSandwichDevice()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 92
    new-instance v2, Lcom/google/android/apps/common/reflect/ReflectionHelper;

    invoke-direct {v2}, Lcom/google/android/apps/common/reflect/ReflectionHelper;-><init>()V

    .line 96
    .local v2, helper:Lcom/google/android/apps/common/reflect/ReflectionHelper;
    :try_start_6
    const-class v4, Landroid/os/Build$VERSION;

    const-string v5, "CODENAME"

    invoke-virtual {v2, v4, v5}, Lcom/google/android/apps/common/reflect/ReflectionHelper;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    .local v0, codename:Ljava/lang/String;
    const-string v4, "IceCreamSandwich"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1a
    .catch Lcom/google/android/apps/common/reflect/ReflectionException; {:try_start_6 .. :try_end_1a} :catch_20

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1f

    const/4 v3, 0x1

    .line 100
    .end local v0           #codename:Ljava/lang/String;
    :cond_1f
    :goto_1f
    return v3

    .line 98
    :catch_20
    move-exception v1

    .line 99
    .local v1, e:Lcom/google/android/apps/common/reflect/ReflectionException;
    sget-object v4, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v5, "Failed to get SDK constants"

    invoke-interface {v4, v5}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method private loadSdkConstants()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 74
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->isPreReleaseIceCreamSandwichDevice()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 75
    const/16 v0, 0xe

    iput v0, p0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->sdkValue:I

    .line 76
    sget-object v0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "not a release build, hardcoding = %d"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->sdkValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 82
    :goto_21
    return-void

    .line 79
    :cond_22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->sdkValue:I

    .line 80
    sget-object v0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "release build, reading SDK_INT = %d"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->sdkValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto :goto_21
.end method


# virtual methods
.method public buildIsDonutOrEarlier()Z
    .registers 3

    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->sdkValue:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public buildIsEclairOrEarlier()Z
    .registers 3

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->sdkValue:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public buildIsFroYoOrEarlier()Z
    .registers 3

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->sdkValue:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public buildIsHoneycombOrLater()Z
    .registers 3

    .prologue
    .line 53
    iget v0, p0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->sdkValue:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public buildIsIcsOrLater()Z
    .registers 3

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->sdkValue:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setSdkVersionForTesting(I)V
    .registers 2
    .parameter "sdkVersion"

    .prologue
    .line 65
    iput p1, p0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;->sdkValue:I

    .line 66
    return-void
.end method
