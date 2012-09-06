.class public final enum Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
.super Ljava/lang/Enum;
.source "TopLevelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/activitymanagement/TopLevelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RootViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

.field public static final enum ALBUMS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

.field public static final enum ARTISTS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

.field public static final enum GENRES:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

.field public static final enum NEW_AND_RECENT_CAROUSEL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

.field public static final enum NEW_AND_RECENT_WALL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

.field public static final enum PLAYLISTS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

.field public static final enum SONGS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1029
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    const-string v1, "NEW_AND_RECENT_CAROUSEL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_CAROUSEL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 1030
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    const-string v1, "ALBUMS"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ALBUMS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 1031
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    const-string v1, "ARTISTS"

    invoke-direct {v0, v1, v5}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ARTISTS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 1032
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    const-string v1, "PLAYLISTS"

    invoke-direct {v0, v1, v6}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->PLAYLISTS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 1033
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    const-string v1, "SONGS"

    invoke-direct {v0, v1, v7}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->SONGS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 1034
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    const-string v1, "GENRES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->GENRES:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 1035
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    const-string v1, "NEW_AND_RECENT_WALL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_WALL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 1028
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    sget-object v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_CAROUSEL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ALBUMS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ARTISTS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->PLAYLISTS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->SONGS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->GENRES:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_WALL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->$VALUES:[Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

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
    .line 1028
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    .registers 2
    .parameter

    .prologue
    .line 1028
    const-class v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    .registers 1

    .prologue
    .line 1028
    sget-object v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->$VALUES:[Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-virtual {v0}, [Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    return-object v0
.end method
