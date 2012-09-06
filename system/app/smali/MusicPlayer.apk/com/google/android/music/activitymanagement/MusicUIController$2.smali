.class final Lcom/google/android/music/activitymanagement/MusicUIController$2;
.super Ljava/lang/Object;
.source "MusicUIController.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/activitymanagement/MusicUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Lcom/google/android/music/activitymanagement/MusicFragment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/android/music/activitymanagement/MusicFragment;)Z
    .registers 3
    .parameter "fragment"

    .prologue
    .line 181
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->showOnMainFrame()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 178
    check-cast p1, Lcom/google/android/music/activitymanagement/MusicFragment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/music/activitymanagement/MusicUIController$2;->apply(Lcom/google/android/music/activitymanagement/MusicFragment;)Z

    move-result v0

    return v0
.end method
