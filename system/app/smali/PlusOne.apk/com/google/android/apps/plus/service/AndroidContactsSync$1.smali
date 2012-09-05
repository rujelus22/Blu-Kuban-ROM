.class final Lcom/google/android/apps/plus/service/AndroidContactsSync$1;
.super Ljava/lang/Object;
.source "AndroidContactsSync.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/AndroidContactsSync;
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
        "Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;)I
    .registers 9
    .parameter "state1"
    .parameter "state2"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 680
    iget-boolean v2, p1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->exists:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p2, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->exists:Z

    if-nez v2, :cond_b

    .line 690
    :cond_a
    :goto_a
    return v0

    .line 683
    :cond_b
    iget-boolean v2, p1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->exists:Z

    if-nez v2, :cond_15

    iget-boolean v2, p2, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->exists:Z

    if-eqz v2, :cond_15

    move v0, v1

    .line 684
    goto :goto_a

    .line 686
    :cond_15
    iget-wide v2, p1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->created:J

    iget-wide v4, p2, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->created:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_26

    .line 687
    iget-object v0, p1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->activityId:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->activityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_a

    .line 690
    :cond_26
    iget-wide v2, p1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->created:J

    iget-wide v4, p2, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->created:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_a

    move v0, v1

    goto :goto_a
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 675
    check-cast p1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;

    .end local p1
    check-cast p2, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/service/AndroidContactsSync$1;->compare(Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;)I

    move-result v0

    return v0
.end method
