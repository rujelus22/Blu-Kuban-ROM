.class public Lcom/google/android/talk/util/PresenceUtils;
.super Ljava/lang/Object;
.source "PresenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/util/PresenceUtils$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static translatePresence(Lcom/google/android/gtalkservice/Presence;)I
    .registers 5
    .parameter "presence"

    .prologue
    const/4 v2, 0x0

    .line 12
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v0

    .line 14
    .local v0, isAvailable:Z
    :goto_7
    if-nez v0, :cond_c

    .line 33
    :goto_9
    return v2

    .end local v0           #isAvailable:Z
    :cond_a
    move v0, v2

    .line 12
    goto :goto_7

    .line 18
    .restart local v0       #isAvailable:Z
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->isInvisible()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 19
    const/4 v2, 0x1

    goto :goto_9

    .line 22
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->getShow()Lcom/google/android/gtalkservice/Presence$Show;

    move-result-object v1

    .line 24
    .local v1, show:Lcom/google/android/gtalkservice/Presence$Show;
    sget-object v2, Lcom/google/android/talk/util/PresenceUtils$1;->$SwitchMap$com$google$android$gtalkservice$Presence$Show:[I

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence$Show;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2a

    .line 33
    const/4 v2, 0x5

    goto :goto_9

    .line 26
    :pswitch_25
    const/4 v2, 0x4

    goto :goto_9

    .line 30
    :pswitch_27
    const/4 v2, 0x2

    goto :goto_9

    .line 24
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method
