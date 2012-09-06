.class public Lcom/google/android/apps/unveil/protocol/QueryManagerParams;
.super Ljava/lang/Object;
.source "QueryManagerParams.java"


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field public canStoreToSearchHistory:Z

.field private final configurationProvider:Lcom/google/android/apps/unveil/env/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public disableOcr:Z

.field public disableSimilarImages:Z

.field public maxResults:I

.field public maxRetries:I

.field public pollImmediatelyIfSessionConfigured:Z

.field public wantAnnotationResults:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/env/Provider;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Landroid/content/res/Configuration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, configurationProvider:Lcom/google/android/apps/unveil/env/Provider;,"Lcom/google/android/apps/unveil/env/Provider<Landroid/content/res/Configuration;>;"
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->maxRetries:I

    .line 35
    iput-boolean v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->pollImmediatelyIfSessionConfigured:Z

    .line 45
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->disableSimilarImages:Z

    .line 50
    iput-boolean v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->wantAnnotationResults:Z

    .line 55
    iput-boolean v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->canStoreToSearchHistory:Z

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->maxResults:I

    .line 67
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->disableOcr:Z

    .line 72
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->configurationProvider:Lcom/google/android/apps/unveil/env/Provider;

    .line 73
    return-void
.end method


# virtual methods
.method public toGogglesConfig()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 76
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->newBuilder()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v2

    .line 77
    .local v2, extendedGogglesConfig:Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    iget-boolean v5, p0, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->wantAnnotationResults:Z

    invoke-virtual {v2, v5}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->setWantAnnotationResults(Z)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    .line 78
    iget-boolean v5, p0, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->disableSimilarImages:Z

    if-nez v5, :cond_5c

    move v5, v6

    :goto_10
    invoke-virtual {v2, v5}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->setWantEyeCandyResults(Z)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    .line 79
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->newBuilder()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v3

    .line 80
    .local v3, gogglesConfig:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    iget v5, p0, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->maxResults:I

    invoke-virtual {v3, v5}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->setMaxResults(I)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    .line 82
    iget-object v5, p0, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->configurationProvider:Lcom/google/android/apps/unveil/env/Provider;

    invoke-interface {v5}, Lcom/google/android/apps/unveil/env/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .line 83
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v5, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, language:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 85
    sget-object v5, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v8, "Setting config language to %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-virtual {v5, v8, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v3, v4}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->setLanguagePref(Ljava/lang/String;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    .line 88
    :cond_3e
    iget-object v5, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, country:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 90
    invoke-virtual {v3, v1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->setCountry(Ljava/lang/String;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    .line 92
    :cond_4d
    iget-boolean v5, p0, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->canStoreToSearchHistory:Z

    invoke-virtual {v3, v5}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->setCanStoreToSearchHistory(Z)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    .line 93
    sget-object v5, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->extendedGogglesConfig:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v2}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->build()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 95
    return-object v3

    .end local v0           #configuration:Landroid/content/res/Configuration;
    .end local v1           #country:Ljava/lang/String;
    .end local v3           #gogglesConfig:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    .end local v4           #language:Ljava/lang/String;
    :cond_5c
    move v5, v7

    .line 78
    goto :goto_10
.end method
