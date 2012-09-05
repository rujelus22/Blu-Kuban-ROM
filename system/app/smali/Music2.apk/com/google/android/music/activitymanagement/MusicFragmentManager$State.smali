.class final enum Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;
.super Ljava/lang/Enum;
.source "MusicFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/activitymanagement/MusicFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

.field public static final enum CREATED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

.field public static final enum DESTROYED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

.field public static final enum NONE:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

.field public static final enum PAUSED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

.field public static final enum RESUMED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->NONE:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    .line 30
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    const-string v1, "CREATED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->CREATED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    .line 31
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    const-string v1, "RESUMED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->RESUMED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    .line 32
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->PAUSED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    .line 33
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    const-string v1, "DESTROYED"

    invoke-direct {v0, v1, v6}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->DESTROYED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->NONE:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->CREATED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->RESUMED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->PAUSED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->DESTROYED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->$VALUES:[Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;
    .registers 2
    .parameter

    .prologue
    .line 28
    const-class v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->$VALUES:[Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    invoke-virtual {v0}, [Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    return-object v0
.end method
