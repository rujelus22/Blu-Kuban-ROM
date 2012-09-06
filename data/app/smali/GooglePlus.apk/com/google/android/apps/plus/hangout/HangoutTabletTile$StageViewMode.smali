.class final enum Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;
.super Ljava/lang/Enum;
.source "HangoutTabletTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutTabletTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StageViewMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

.field public static final enum STAGE_MODE_INVALID:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

.field public static final enum STAGE_MODE_LOCAL_AND_REMOTE:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

.field public static final enum STAGE_MODE_LOCAL_ONLY:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 516
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    const-string v1, "STAGE_MODE_INVALID"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;->STAGE_MODE_INVALID:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    .line 517
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    const-string v1, "STAGE_MODE_LOCAL_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;->STAGE_MODE_LOCAL_ONLY:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    .line 518
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    const-string v1, "STAGE_MODE_LOCAL_AND_REMOTE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;->STAGE_MODE_LOCAL_AND_REMOTE:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    .line 515
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;->STAGE_MODE_INVALID:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;->STAGE_MODE_LOCAL_ONLY:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;->STAGE_MODE_LOCAL_AND_REMOTE:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;->$VALUES:[Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

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
    .line 515
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;
    .registers 2
    .parameter "name"

    .prologue
    .line 515
    const-class v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;
    .registers 1

    .prologue
    .line 515
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;->$VALUES:[Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    return-object v0
.end method
