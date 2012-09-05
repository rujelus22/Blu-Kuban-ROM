.class public final enum Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;
.super Ljava/lang/Enum;
.source "VideosAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/VideosAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToShopSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

.field public static final enum ExpiredRental:Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

.field public static final enum ShopButton:Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

.field public static final enum Suggestions:Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

.field public static final enum TopRentals:Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    const-string v1, "ShopButton"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;->ShopButton:Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    .line 17
    new-instance v0, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    const-string v1, "TopRentals"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;->TopRentals:Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    .line 18
    new-instance v0, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    const-string v1, "Suggestions"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;->Suggestions:Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    .line 19
    new-instance v0, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    const-string v1, "ExpiredRental"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;->ExpiredRental:Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    sget-object v1, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;->ShopButton:Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;->TopRentals:Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;->Suggestions:Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;->ExpiredRental:Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;->$VALUES:[Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;
    .registers 2
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;->$VALUES:[Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    invoke-virtual {v0}, [Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    return-object v0
.end method
