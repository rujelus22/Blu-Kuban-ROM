.class public final Lcom/google/android/music/MusicEventConstants;
.super Ljava/lang/Object;
.source "MusicEventConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/MusicEventConstants$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static getAnalyticsPage(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Ljava/lang/String;
    .registers 4
    .parameter "viewState"

    .prologue
    .line 116
    sget-object v0, Lcom/google/android/music/MusicEventConstants$1;->$SwitchMap$com$google$android$music$activitymanagement$TopLevelActivity$RootViewState:[I

    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown RootViewState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :pswitch_24
    const-string v0, "albums"

    .line 129
    :goto_26
    return-object v0

    .line 120
    :pswitch_27
    const-string v0, "artists"

    goto :goto_26

    .line 122
    :pswitch_2a
    const-string v0, "genres"

    goto :goto_26

    .line 125
    :pswitch_2d
    const-string v0, "recent"

    goto :goto_26

    .line 127
    :pswitch_30
    const-string v0, "playlists"

    goto :goto_26

    .line 129
    :pswitch_33
    const-string v0, "songs"

    goto :goto_26

    .line 116
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_2d
        :pswitch_30
        :pswitch_33
    .end packed-switch
.end method
