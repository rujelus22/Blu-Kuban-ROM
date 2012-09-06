.class public final enum Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;
.super Ljava/lang/Enum;
.source "MusicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

.field public static final enum NON_LEVELED:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

.field public static final enum NOW_PLAYING_SCREEN:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

.field public static final enum TOP_LEVEL:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;


# instance fields
.field private final mLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 345
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    const-string v1, "NON_LEVELED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->NON_LEVELED:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    .line 350
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    const-string v1, "TOP_LEVEL"

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->TOP_LEVEL:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    .line 355
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    const-string v1, "NOW_PLAYING_SCREEN"

    invoke-direct {v0, v1, v5, v4}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->NOW_PLAYING_SCREEN:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    .line 341
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->NON_LEVELED:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->TOP_LEVEL:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->NOW_PLAYING_SCREEN:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->$VALUES:[Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "level"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 359
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 360
    iput p3, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->mLevel:I

    .line 361
    return-void
.end method

.method public static getViewLevel(I)Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;
    .registers 8
    .parameter "level"

    .prologue
    .line 368
    invoke-static {}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->values()[Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v2, :cond_14

    aget-object v3, v0, v1

    .line 369
    .local v3, viewLevel:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;
    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->getLevel()I

    move-result v4

    if-ne v4, p0, :cond_11

    .line 370
    return-object v3

    .line 368
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 373
    .end local v3           #viewLevel:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;
    :cond_14
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown level: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;
    .registers 2
    .parameter

    .prologue
    .line 341
    const-class v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    return-object v0
.end method

.method public static values()[Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;
    .registers 1

    .prologue
    .line 341
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->$VALUES:[Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    invoke-virtual {v0}, [Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    return-object v0
.end method


# virtual methods
.method public getLevel()I
    .registers 2

    .prologue
    .line 364
    iget v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->mLevel:I

    return v0
.end method
