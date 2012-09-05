.class final Lcom/google/android/music/activitymanagement/MusicUIController$1;
.super Ljava/lang/Object;
.source "MusicUIController.java"

# interfaces
.implements Ljava/util/Comparator;


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
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/music/activitymanagement/MusicFragment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/activitymanagement/MusicFragment;)I
    .registers 5
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getZOrder()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/music/activitymanagement/MusicFragment;->getZOrder()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    check-cast p1, Lcom/google/android/music/activitymanagement/MusicFragment;

    .end local p1
    check-cast p2, Lcom/google/android/music/activitymanagement/MusicFragment;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/music/activitymanagement/MusicUIController$1;->compare(Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/activitymanagement/MusicFragment;)I

    move-result v0

    return v0
.end method
