.class Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;
.super Ljava/lang/Object;
.source "MusicStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/activitymanagement/MusicStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedInstanceState"
.end annotation


# instance fields
.field private mCurrentDisplayState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

.field private mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

.field private mStateStack:Lcom/google/android/music/activitymanagement/MusicStateStack;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/activitymanagement/MusicStateController$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1070
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;)Lcom/google/android/music/activitymanagement/MusicStateStack;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->mStateStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;Lcom/google/android/music/activitymanagement/MusicStateStack;)Lcom/google/android/music/activitymanagement/MusicStateStack;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->mStateStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;)Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->mCurrentDisplayState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->mCurrentDisplayState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;Lcom/google/android/music/OfflineMusicManager;)Lcom/google/android/music/OfflineMusicManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    return-object p1
.end method
