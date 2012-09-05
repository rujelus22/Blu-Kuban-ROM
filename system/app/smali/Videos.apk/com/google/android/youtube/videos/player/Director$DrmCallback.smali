.class Lcom/google/android/youtube/videos/player/Director$DrmCallback;
.super Ljava/lang/Object;
.source "Director.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/player/Director;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrmCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/videos/DrmRequest;",
        "Lcom/google/android/youtube/videos/DrmResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private expectedResponses:I

.field private final purchaseStreamable:Z

.field private shortClockNotActivated:Z

.field final synthetic this$0:Lcom/google/android/youtube/videos/player/Director;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/player/Director;IZ)V
    .registers 6
    .parameter
    .parameter "expectedResponses"
    .parameter "purchaseStreamable"

    .prologue
    const/4 v1, 0x0

    .line 1047
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1048
    if-lez p2, :cond_13

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(Z)V

    .line 1049
    iput p2, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->expectedResponses:I

    .line 1050
    iput-boolean p3, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->purchaseStreamable:Z

    .line 1051
    iput-boolean v1, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->shortClockNotActivated:Z

    .line 1052
    return-void

    :cond_13
    move v0, v1

    .line 1048
    goto :goto_9
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/videos/DrmRequest;Ljava/lang/Exception;)V
    .registers 10
    .parameter "request"
    .parameter "exception"

    .prologue
    const/4 v6, 0x0

    .line 1078
    const v2, 0x7f0b00e5

    .line 1079
    .local v2, error:I
    const/4 v0, 0x1

    .line 1080
    .local v0, canRetry:Z
    instance-of v3, p2, Lcom/google/android/youtube/videos/DrmException;

    if-eqz v3, :cond_44

    move-object v1, p2

    .line 1081
    check-cast v1, Lcom/google/android/youtube/videos/DrmException;

    .line 1082
    .local v1, e:Lcom/google/android/youtube/videos/DrmException;
    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->playWhenInitialized:Z
    invoke-static {v3}, Lcom/google/android/youtube/videos/player/Director;->access$2700(Lcom/google/android/youtube/videos/player/Director;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1083
    sget-object v3, Lcom/google/android/youtube/videos/player/Director$10;->$SwitchMap$com$google$android$youtube$videos$DrmException$DrmError:[I

    iget-object v4, v1, Lcom/google/android/youtube/videos/DrmException;->drmError:Lcom/google/android/youtube/videos/DrmException$DrmError;

    invoke-virtual {v4}, Lcom/google/android/youtube/videos/DrmException$DrmError;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_54

    .line 1098
    :goto_21
    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;
    invoke-static {v3}, Lcom/google/android/youtube/videos/player/Director;->access$2800(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PlayErrorDrm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/youtube/videos/DrmException;->drmError:Lcom/google/android/youtube/videos/DrmException$DrmError;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    .line 1100
    :cond_3f
    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #calls: Lcom/google/android/youtube/videos/player/Director;->onLicensesError(IZ)V
    invoke-static {v3, v2, v0}, Lcom/google/android/youtube/videos/player/Director;->access$2600(Lcom/google/android/youtube/videos/player/Director;IZ)V

    .line 1102
    .end local v1           #e:Lcom/google/android/youtube/videos/DrmException;
    :cond_44
    return-void

    .line 1085
    .restart local v1       #e:Lcom/google/android/youtube/videos/DrmException;
    :pswitch_45
    const v2, 0x7f0b00e1

    .line 1086
    const/4 v0, 0x0

    .line 1087
    goto :goto_21

    .line 1089
    :pswitch_4a
    const v2, 0x7f0b0052

    .line 1090
    const/4 v0, 0x0

    .line 1091
    goto :goto_21

    .line 1095
    :pswitch_4f
    const v2, 0x7f0b00ef

    .line 1096
    const/4 v0, 0x0

    goto :goto_21

    .line 1083
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_45
        :pswitch_4a
        :pswitch_4f
        :pswitch_4f
    .end packed-switch
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1041
    check-cast p1, Lcom/google/android/youtube/videos/DrmRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->onError(Lcom/google/android/youtube/videos/DrmRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)V
    .registers 7
    .parameter "request"
    .parameter "response"

    .prologue
    const/4 v1, 0x0

    .line 1055
    const/4 v0, 0x0

    .line 1056
    .local v0, error:I
    iget-boolean v2, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->purchaseStreamable:Z

    if-nez v2, :cond_d

    .line 1057
    iget-boolean v2, p2, Lcom/google/android/youtube/videos/DrmResponse;->allowsOffline:Z

    if-nez v2, :cond_41

    .line 1059
    const v0, 0x7f0b00e1

    .line 1065
    :cond_d
    :goto_d
    if-nez v0, :cond_4b

    .line 1066
    iget-boolean v2, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->shortClockNotActivated:Z

    iget v3, p2, Lcom/google/android/youtube/videos/DrmResponse;->secondsSinceActivation:I

    if-gtz v3, :cond_2e

    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/google/android/youtube/videos/player/Director;->access$2200(Lcom/google/android/youtube/videos/player/Director;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;
    invoke-static {v3}, Lcom/google/android/youtube/videos/player/Director;->access$1800(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/model/VideoStreams;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    iget-boolean v3, v3, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    if-eqz v3, :cond_2e

    :cond_2d
    const/4 v1, 0x1

    :cond_2e
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->shortClockNotActivated:Z

    .line 1069
    iget v1, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->expectedResponses:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->expectedResponses:I

    if-nez v1, :cond_40

    .line 1070
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    iget-boolean v2, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->shortClockNotActivated:Z

    #calls: Lcom/google/android/youtube/videos/player/Director;->onLicensesResponse(Z)V
    invoke-static {v1, v2}, Lcom/google/android/youtube/videos/player/Director;->access$2500(Lcom/google/android/youtube/videos/player/Director;Z)V

    .line 1075
    :cond_40
    :goto_40
    return-void

    .line 1060
    :cond_41
    iget-object v2, p1, Lcom/google/android/youtube/videos/DrmRequest;->stream:Lcom/google/android/youtube/core/model/Stream;

    iget-boolean v2, v2, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    if-nez v2, :cond_d

    .line 1062
    const v0, 0x7f0b00e2

    goto :goto_d

    .line 1073
    :cond_4b
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #calls: Lcom/google/android/youtube/videos/player/Director;->onLicensesError(IZ)V
    invoke-static {v2, v0, v1}, Lcom/google/android/youtube/videos/player/Director;->access$2600(Lcom/google/android/youtube/videos/player/Director;IZ)V

    goto :goto_40
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1041
    check-cast p1, Lcom/google/android/youtube/videos/DrmRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/videos/DrmResponse;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->onResponse(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)V

    return-void
.end method
