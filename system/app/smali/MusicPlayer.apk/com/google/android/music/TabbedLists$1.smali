.class final Lcom/google/android/music/TabbedLists$1;
.super Ljava/lang/Object;
.source "TabbedLists.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TabbedLists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/google/android/music/TabbedLists$TabInfo;",
        "Ljava/lang/Class",
        "<+",
        "Lcom/google/android/music/activitymanagement/MusicFragment;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/android/music/TabbedLists$TabInfo;)Ljava/lang/Class;
    .registers 3
    .parameter "tab"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/TabbedLists$TabInfo;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/music/activitymanagement/MusicFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    #getter for: Lcom/google/android/music/TabbedLists$TabInfo;->mFragmentClass:Ljava/lang/Class;
    invoke-static {p1}, Lcom/google/android/music/TabbedLists$TabInfo;->access$100(Lcom/google/android/music/TabbedLists$TabInfo;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 288
    check-cast p1, Lcom/google/android/music/TabbedLists$TabInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/music/TabbedLists$1;->apply(Lcom/google/android/music/TabbedLists$TabInfo;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
