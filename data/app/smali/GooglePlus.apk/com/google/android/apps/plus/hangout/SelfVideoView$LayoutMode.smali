.class final enum Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;
.super Ljava/lang/Enum;
.source "SelfVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/SelfVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LayoutMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

.field public static final enum FIT:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

.field public static final enum INSET:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-instance v0, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    const-string v1, "INSET"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;->INSET:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    .line 113
    new-instance v0, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    const-string v1, "FIT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;->FIT:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    sget-object v1, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;->INSET:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;->FIT:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;->$VALUES:[Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

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
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;
    .registers 2
    .parameter "name"

    .prologue
    .line 102
    const-class v0, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;
    .registers 1

    .prologue
    .line 102
    sget-object v0, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;->$VALUES:[Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    return-object v0
.end method
