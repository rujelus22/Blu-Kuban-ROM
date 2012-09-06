.class public final enum Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;
.super Ljava/lang/Enum;
.source "RegionQuadTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/RegionQuadTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Quadrant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

.field public static final enum NE_QUADRANT:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

.field public static final enum NW_QUADRANT:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

.field public static final enum SE_QUADRANT:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

.field public static final enum SW_QUADRANT:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    const-string v1, "NW_QUADRANT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->NW_QUADRANT:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    .line 41
    new-instance v0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    const-string v1, "SW_QUADRANT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->SW_QUADRANT:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    .line 42
    new-instance v0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    const-string v1, "NE_QUADRANT"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->NE_QUADRANT:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    .line 43
    new-instance v0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    const-string v1, "SE_QUADRANT"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->SE_QUADRANT:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    sget-object v1, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->NW_QUADRANT:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->SW_QUADRANT:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->NE_QUADRANT:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->SE_QUADRANT:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->$VALUES:[Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;
    .registers 2
    .parameter "name"

    .prologue
    .line 39
    const-class v0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->$VALUES:[Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    invoke-virtual {v0}, [Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    return-object v0
.end method
