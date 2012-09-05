.class public final enum Lcom/google/android/finsky/adapters/GridSlotSize;
.super Ljava/lang/Enum;
.source "GridSlotSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/adapters/GridSlotSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/adapters/GridSlotSize;

.field public static final enum Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

.field public static final enum Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

.field public static final enum Cell_2xN_TOC:Lcom/google/android/finsky/adapters/GridSlotSize;

.field public static final enum Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/google/android/finsky/adapters/GridSlotSize;

    const-string v1, "Cell_4x2"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/adapters/GridSlotSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    .line 10
    new-instance v0, Lcom/google/android/finsky/adapters/GridSlotSize;

    const-string v1, "Cell_2xN_TOC"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/adapters/GridSlotSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2xN_TOC:Lcom/google/android/finsky/adapters/GridSlotSize;

    .line 11
    new-instance v0, Lcom/google/android/finsky/adapters/GridSlotSize;

    const-string v1, "Cell_2x2"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/adapters/GridSlotSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    .line 12
    new-instance v0, Lcom/google/android/finsky/adapters/GridSlotSize;

    const-string v1, "Cell_2x1"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/adapters/GridSlotSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/finsky/adapters/GridSlotSize;

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2xN_TOC:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/finsky/adapters/GridSlotSize;->$VALUES:[Lcom/google/android/finsky/adapters/GridSlotSize;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/adapters/GridSlotSize;
    .registers 2
    .parameter

    .prologue
    .line 7
    const-class v0, Lcom/google/android/finsky/adapters/GridSlotSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/adapters/GridSlotSize;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/adapters/GridSlotSize;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lcom/google/android/finsky/adapters/GridSlotSize;->$VALUES:[Lcom/google/android/finsky/adapters/GridSlotSize;

    invoke-virtual {v0}, [Lcom/google/android/finsky/adapters/GridSlotSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/adapters/GridSlotSize;

    return-object v0
.end method
