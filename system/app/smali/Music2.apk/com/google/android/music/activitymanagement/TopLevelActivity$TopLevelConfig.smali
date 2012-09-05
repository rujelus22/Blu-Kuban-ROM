.class Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;
.super Ljava/lang/Object;
.source "TopLevelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/activitymanagement/TopLevelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopLevelConfig"
.end annotation


# instance fields
.field private mMusicStateControllerState:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/activitymanagement/TopLevelActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 534
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->mMusicStateControllerState:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 534
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->mMusicStateControllerState:Ljava/lang/Object;

    return-object p1
.end method
