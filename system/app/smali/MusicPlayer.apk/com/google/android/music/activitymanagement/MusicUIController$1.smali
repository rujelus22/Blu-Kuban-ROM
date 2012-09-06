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
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/activitymanagement/MusicFragment;)I
    .registers 7
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getZOrder()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/music/activitymanagement/MusicFragment;->getZOrder()I

    move-result v2

    sub-int v0, v1, v2

    .line 169
    .local v0, diff:I
    if-nez v0, :cond_31

    if-eq p1, p2, :cond_31

    .line 170
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Two fragments can not share the same Z level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_31
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    check-cast p1, Lcom/google/android/music/activitymanagement/MusicFragment;

    .end local p1
    check-cast p2, Lcom/google/android/music/activitymanagement/MusicFragment;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/music/activitymanagement/MusicUIController$1;->compare(Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/activitymanagement/MusicFragment;)I

    move-result v0

    return v0
.end method
