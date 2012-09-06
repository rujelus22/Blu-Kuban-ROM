.class public final enum Lcom/google/android/music/widgets/TrackListView$ScrollPosition;
.super Ljava/lang/Enum;
.source "TrackListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/widgets/TrackListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScrollPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/widgets/TrackListView$ScrollPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

.field public static final enum AFTER_NOW_PLAYING:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

.field public static final enum NONE:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

.field public static final enum NOW_PLAYING:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;->NONE:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    .line 88
    new-instance v0, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    const-string v1, "AFTER_NOW_PLAYING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;->AFTER_NOW_PLAYING:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    .line 93
    new-instance v0, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    const-string v1, "NOW_PLAYING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;->NOW_PLAYING:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    sget-object v1, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;->NONE:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;->AFTER_NOW_PLAYING:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;->NOW_PLAYING:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;->$VALUES:[Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/widgets/TrackListView$ScrollPosition;
    .registers 2
    .parameter

    .prologue
    .line 79
    const-class v0, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    return-object v0
.end method

.method public static values()[Lcom/google/android/music/widgets/TrackListView$ScrollPosition;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;->$VALUES:[Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    invoke-virtual {v0}, [Lcom/google/android/music/widgets/TrackListView$ScrollPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    return-object v0
.end method
