.class Lcom/google/android/music/TabbedLists$TabInfo;
.super Ljava/lang/Object;
.source "TabbedLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TabbedLists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabInfo"
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
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/TabbedLists$TabInfo;)Ljava/lang/Class;
    .registers 2
    .parameter "x0"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/music/TabbedLists$TabInfo;->mFragmentClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/TabbedLists$TabInfo;)Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/music/TabbedLists$TabInfo;->mRootViewState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/TabbedLists$TabInfo;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 269
    iget v0, p0, Lcom/google/android/music/TabbedLists$TabInfo;->mTitleResId:I

    return v0
.end method

.method public static createTabSetupInfo(Ljava/lang/Class;ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/TabbedLists$TabInfo;
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
            "Lcom/google/android/music/TabbedLists$TabInfo;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    new-instance v0, Lcom/google/android/music/TabbedLists$TabInfo;

    invoke-direct {v0}, Lcom/google/android/music/TabbedLists$TabInfo;-><init>()V

    .line 279
    .local v0, tabSetupInfo:Lcom/google/android/music/TabbedLists$TabInfo;
    iput-object p0, v0, Lcom/google/android/music/TabbedLists$TabInfo;->mFragmentClass:Ljava/lang/Class;

    .line 280
    iput p1, v0, Lcom/google/android/music/TabbedLists$TabInfo;->mTitleResId:I

    .line 281
    iput-object p2, v0, Lcom/google/android/music/TabbedLists$TabInfo;->mRootViewState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 282
    return-object v0
.end method
