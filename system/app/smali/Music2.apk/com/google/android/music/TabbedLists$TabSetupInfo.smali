.class Lcom/google/android/music/TabbedLists$TabSetupInfo;
.super Ljava/lang/Object;
.source "TabbedLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TabbedLists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabSetupInfo"
.end annotation


# instance fields
.field private mFragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/music/activitymanagement/MusicFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mRootViewState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

.field private mTitleResId:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/TabbedLists$TabSetupInfo;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 292
    iget v0, p0, Lcom/google/android/music/TabbedLists$TabSetupInfo;->mTitleResId:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/music/TabbedLists$TabSetupInfo;)Ljava/lang/Class;
    .registers 2
    .parameter "x0"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/music/TabbedLists$TabSetupInfo;->mFragmentClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/TabbedLists$TabSetupInfo;)Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/music/TabbedLists$TabSetupInfo;->mRootViewState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    return-object v0
.end method

.method public static createTabSetupInfo(Ljava/lang/Class;ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/TabbedLists$TabSetupInfo;
    .registers 4
    .parameter
    .parameter "titleResId"
    .parameter "rootViewState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/music/activitymanagement/MusicFragment;",
            ">;I",
            "Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;",
            ")",
            "Lcom/google/android/music/TabbedLists$TabSetupInfo;"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    new-instance v0, Lcom/google/android/music/TabbedLists$TabSetupInfo;

    invoke-direct {v0}, Lcom/google/android/music/TabbedLists$TabSetupInfo;-><init>()V

    .line 302
    .local v0, tabSetupInfo:Lcom/google/android/music/TabbedLists$TabSetupInfo;
    iput-object p0, v0, Lcom/google/android/music/TabbedLists$TabSetupInfo;->mFragmentClass:Ljava/lang/Class;

    .line 303
    iput p1, v0, Lcom/google/android/music/TabbedLists$TabSetupInfo;->mTitleResId:I

    .line 304
    iput-object p2, v0, Lcom/google/android/music/TabbedLists$TabSetupInfo;->mRootViewState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 305
    return-object v0
.end method
