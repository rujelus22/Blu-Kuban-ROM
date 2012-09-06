.class public final enum Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;
.super Ljava/lang/Enum;
.source "EmptyMusicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/widgets/EmptyMusicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmptyState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

.field public static final enum FLAGS:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

.field public static final enum IMPORT_ACTIVE:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

.field public static final enum NONE:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

.field public static final enum NO_MUSIC_LOCAL_ONLY:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

.field public static final enum NO_MUSIC_NO_STEAMING:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

.field public static final enum NO_MUSIC_STREAMING:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

.field public static final enum SYNC_ACTIVE:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->NONE:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    .line 61
    new-instance v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    const-string v1, "NO_MUSIC_STREAMING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->NO_MUSIC_STREAMING:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    .line 62
    new-instance v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    const-string v1, "NO_MUSIC_NO_STEAMING"

    invoke-direct {v0, v1, v5}, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->NO_MUSIC_NO_STEAMING:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    .line 63
    new-instance v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    const-string v1, "NO_MUSIC_LOCAL_ONLY"

    invoke-direct {v0, v1, v6}, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->NO_MUSIC_LOCAL_ONLY:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    .line 64
    new-instance v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    const-string v1, "SYNC_ACTIVE"

    invoke-direct {v0, v1, v7}, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->SYNC_ACTIVE:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    .line 65
    new-instance v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    const-string v1, "IMPORT_ACTIVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->IMPORT_ACTIVE:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    .line 66
    new-instance v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    const-string v1, "FLAGS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->FLAGS:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    sget-object v1, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->NONE:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->NO_MUSIC_STREAMING:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->NO_MUSIC_NO_STEAMING:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->NO_MUSIC_LOCAL_ONLY:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->SYNC_ACTIVE:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->IMPORT_ACTIVE:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->FLAGS:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->$VALUES:[Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;
    .registers 2
    .parameter

    .prologue
    .line 59
    const-class v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->$VALUES:[Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    invoke-virtual {v0}, [Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    return-object v0
.end method
