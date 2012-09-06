.class Lcom/google/common/flags/Flags$FlagMapHolder;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flags/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlagMapHolder"
.end annotation


# static fields
.field static canonicalFlagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/flags/FlagDescription;",
            ">;"
        }
    .end annotation
.end field

.field static expandedFlagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/flags/FlagDescription;",
            ">;>;"
        }
    .end annotation
.end field

.field static longNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/flags/FlagDescription;",
            ">;"
        }
    .end annotation
.end field

.field static final manuallyRegisteredFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/flags/Flag",
            "<*>;>;"
        }
    .end annotation
.end field

.field static whitelistedPrefixes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 291
    #calls: Lcom/google/common/flags/Flags;->loadFlagManifests()Ljava/util/Map;
    invoke-static {}, Lcom/google/common/flags/Flags;->access$000()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/common/flags/Flags$FlagMapHolder;->longNameMap:Ljava/util/Map;

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/common/flags/Flags$FlagMapHolder;->manuallyRegisteredFlags:Ljava/util/Map;

    .line 296
    const/4 v0, 0x0

    sput-object v0, Lcom/google/common/flags/Flags$FlagMapHolder;->whitelistedPrefixes:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
