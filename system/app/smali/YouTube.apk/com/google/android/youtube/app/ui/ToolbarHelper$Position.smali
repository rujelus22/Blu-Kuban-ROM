.class public final enum Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;

.field public static final enum BELOW:Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;

.field public static final enum ON_TOP:Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;

    const-string v1, "ON_TOP"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;->ON_TOP:Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;

    .line 35
    new-instance v0, Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;

    const-string v1, "BELOW"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;->BELOW:Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;

    sget-object v1, Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;->ON_TOP:Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;->BELOW:Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;->$VALUES:[Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;
    .registers 2
    .parameter

    .prologue
    .line 33
    const-class v0, Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;->$VALUES:[Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;

    invoke-virtual {v0}, [Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/app/ui/ToolbarHelper$Position;

    return-object v0
.end method
