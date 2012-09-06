.class final enum Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;
.super Ljava/lang/Enum;
.source "HangoutTabletTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutTabletTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ViewMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

.field public static final enum MODE_BRADY_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

.field public static final enum MODE_STAGE_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 511
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    const-string v1, "MODE_STAGE_VIEW"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_STAGE_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    .line 512
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    const-string v1, "MODE_BRADY_VIEW"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_BRADY_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    .line 510
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_STAGE_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_BRADY_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->$VALUES:[Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

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
    .line 510
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;
    .registers 2
    .parameter "name"

    .prologue
    .line 510
    const-class v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;
    .registers 1

    .prologue
    .line 510
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->$VALUES:[Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    return-object v0
.end method
