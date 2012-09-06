.class final enum Lcom/google/android/music/PlaySongsActivity$CheckState;
.super Ljava/lang/Enum;
.source "PlaySongsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/PlaySongsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CheckState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/PlaySongsActivity$CheckState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/PlaySongsActivity$CheckState;

.field public static final enum ACCOUNT_MATCH_FAILURE:Lcom/google/android/music/PlaySongsActivity$CheckState;

.field public static final enum SYNC_FAILURE:Lcom/google/android/music/PlaySongsActivity$CheckState;

.field public static final enum WAITING_FOR_SYNC:Lcom/google/android/music/PlaySongsActivity$CheckState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/google/android/music/PlaySongsActivity$CheckState;

    const-string v1, "WAITING_FOR_SYNC"

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/PlaySongsActivity$CheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/PlaySongsActivity$CheckState;->WAITING_FOR_SYNC:Lcom/google/android/music/PlaySongsActivity$CheckState;

    .line 48
    new-instance v0, Lcom/google/android/music/PlaySongsActivity$CheckState;

    const-string v1, "ACCOUNT_MATCH_FAILURE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/PlaySongsActivity$CheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/PlaySongsActivity$CheckState;->ACCOUNT_MATCH_FAILURE:Lcom/google/android/music/PlaySongsActivity$CheckState;

    .line 49
    new-instance v0, Lcom/google/android/music/PlaySongsActivity$CheckState;

    const-string v1, "SYNC_FAILURE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/PlaySongsActivity$CheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/PlaySongsActivity$CheckState;->SYNC_FAILURE:Lcom/google/android/music/PlaySongsActivity$CheckState;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/music/PlaySongsActivity$CheckState;

    sget-object v1, Lcom/google/android/music/PlaySongsActivity$CheckState;->WAITING_FOR_SYNC:Lcom/google/android/music/PlaySongsActivity$CheckState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/PlaySongsActivity$CheckState;->ACCOUNT_MATCH_FAILURE:Lcom/google/android/music/PlaySongsActivity$CheckState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/PlaySongsActivity$CheckState;->SYNC_FAILURE:Lcom/google/android/music/PlaySongsActivity$CheckState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/PlaySongsActivity$CheckState;->$VALUES:[Lcom/google/android/music/PlaySongsActivity$CheckState;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/PlaySongsActivity$CheckState;
    .registers 2
    .parameter

    .prologue
    .line 46
    const-class v0, Lcom/google/android/music/PlaySongsActivity$CheckState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/PlaySongsActivity$CheckState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/music/PlaySongsActivity$CheckState;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/music/PlaySongsActivity$CheckState;->$VALUES:[Lcom/google/android/music/PlaySongsActivity$CheckState;

    invoke-virtual {v0}, [Lcom/google/android/music/PlaySongsActivity$CheckState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/PlaySongsActivity$CheckState;

    return-object v0
.end method
