.class public final enum Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;
.super Ljava/lang/Enum;
.source "TrafficStatsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/net/TrafficStatsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrafficFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

.field public static final enum FLOWING_TEXT:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

.field public static final enum HIGHLIGHTED_PAGES:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

.field public static final enum METADATA:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

.field public static final enum MY_EBOOKS:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

.field public static final enum ORIGINAL_PAGES:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

.field public static final enum RESOURCE:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

.field public static final enum VOLUME_COVER:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

.field public static final enum VOLUME_MANIFEST:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

.field public static final enum VOLUME_OVERVIEW:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    const-string v1, "FLOWING_TEXT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->FLOWING_TEXT:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    .line 26
    new-instance v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    const-string v1, "ORIGINAL_PAGES"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->ORIGINAL_PAGES:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    .line 27
    new-instance v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    const-string v1, "HIGHLIGHTED_PAGES"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->HIGHLIGHTED_PAGES:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    .line 28
    new-instance v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    const-string v1, "METADATA"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->METADATA:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    .line 29
    new-instance v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    const-string v1, "RESOURCE"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->RESOURCE:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    .line 30
    new-instance v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    const-string v1, "VOLUME_MANIFEST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->VOLUME_MANIFEST:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    .line 31
    new-instance v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    const-string v1, "VOLUME_OVERVIEW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->VOLUME_OVERVIEW:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    .line 32
    new-instance v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    const-string v1, "VOLUME_COVER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->VOLUME_COVER:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    .line 33
    new-instance v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    const-string v1, "MY_EBOOKS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->MY_EBOOKS:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    .line 23
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    sget-object v1, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->FLOWING_TEXT:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->ORIGINAL_PAGES:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->HIGHLIGHTED_PAGES:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->METADATA:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->RESOURCE:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->VOLUME_MANIFEST:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->VOLUME_OVERVIEW:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->VOLUME_COVER:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->MY_EBOOKS:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->$VALUES:[Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;
    .registers 2
    .parameter

    .prologue
    .line 23
    const-class v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->$VALUES:[Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    invoke-virtual {v0}, [Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    return-object v0
.end method


# virtual methods
.method public getFlagValue()I
    .registers 3

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method
