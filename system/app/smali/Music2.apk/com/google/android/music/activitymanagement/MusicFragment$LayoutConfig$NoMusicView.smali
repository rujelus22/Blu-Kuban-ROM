.class public final enum Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;
.super Ljava/lang/Enum;
.source "MusicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoMusicView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

.field public static final enum MUSIC:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

.field public static final enum NONE:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

.field public static final enum PLAYLISTS:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 310
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->NONE:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    .line 311
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    const-string v1, "MUSIC"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->MUSIC:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    .line 312
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    const-string v1, "PLAYLISTS"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->PLAYLISTS:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    .line 309
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->NONE:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->MUSIC:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->PLAYLISTS:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->$VALUES:[Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

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
    .line 309
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;
    .registers 2
    .parameter

    .prologue
    .line 309
    const-class v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    return-object v0
.end method

.method public static values()[Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;
    .registers 1

    .prologue
    .line 309
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->$VALUES:[Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {v0}, [Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    return-object v0
.end method
