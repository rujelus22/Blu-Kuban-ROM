.class public final enum Lcom/google/android/youtube/core/model/Video$ThreeDSource;
.super Ljava/lang/Enum;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThreeDSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/core/model/Video$ThreeDSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/model/Video$ThreeDSource;

.field public static final enum CONVERTED:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

.field public static final enum DECLARED:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

.field public static final enum UNKNOWN:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

.field public static final enum UPLOADED:Lcom/google/android/youtube/core/model/Video$ThreeDSource;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    const-string v1, "UPLOADED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/Video$ThreeDSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$ThreeDSource;->UPLOADED:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    .line 91
    new-instance v0, Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    const-string v1, "CONVERTED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/model/Video$ThreeDSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$ThreeDSource;->CONVERTED:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    .line 92
    new-instance v0, Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    const-string v1, "DECLARED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/model/Video$ThreeDSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$ThreeDSource;->DECLARED:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    .line 93
    new-instance v0, Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/model/Video$ThreeDSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$ThreeDSource;->UNKNOWN:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    .line 89
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$ThreeDSource;->UPLOADED:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/model/Video$ThreeDSource;->CONVERTED:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/model/Video$ThreeDSource;->DECLARED:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/model/Video$ThreeDSource;->UNKNOWN:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/youtube/core/model/Video$ThreeDSource;->$VALUES:[Lcom/google/android/youtube/core/model/Video$ThreeDSource;

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
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$ThreeDSource;
    .registers 2
    .parameter

    .prologue
    .line 89
    const-class v0, Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/Video$ThreeDSource;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lcom/google/android/youtube/core/model/Video$ThreeDSource;->$VALUES:[Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/model/Video$ThreeDSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    return-object v0
.end method
