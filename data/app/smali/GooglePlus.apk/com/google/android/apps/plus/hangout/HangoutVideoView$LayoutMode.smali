.class public final enum Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;
.super Ljava/lang/Enum;
.source "HangoutVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

.field public static final enum FILL:Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

.field public static final enum FIT:Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

.field public static final enum ZOOM:Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    const-string v1, "FILL"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;->FILL:Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    .line 40
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    const-string v1, "FIT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;->FIT:Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    .line 46
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    const-string v1, "ZOOM"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;->ZOOM:Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;->FILL:Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;->FIT:Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;->ZOOM:Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;->$VALUES:[Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;
    .registers 2
    .parameter "name"

    .prologue
    .line 30
    const-class v0, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;->$VALUES:[Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    return-object v0
.end method
