.class final Lcom/google/android/youtube/app/remote/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ytremote/backend/browserchannel/s;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/remote/at;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/remote/at;)V
    .registers 2
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/remote/at;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 534
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/remote/az;-><init>(Lcom/google/android/youtube/app/remote/at;)V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 653
    :try_start_1
    new-instance v3, Lorg/json/JSONArray;

    const-string v1, "devices"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v2, v0

    .line 654
    :goto_d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_10} :catch_31

    move-result v1

    if-ge v2, v1, :cond_26

    .line 656
    :try_start_13
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 657
    const-string v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 658
    const-string v4, "LOUNGE_SCREEN"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_22} :catch_27

    move-result v1

    if-eqz v1, :cond_2d

    .line 659
    const/4 v0, 0x1

    .line 668
    :cond_26
    :goto_26
    return v0

    .line 661
    :catch_27
    move-exception v1

    .line 662
    :try_start_28
    const-string v4, "Error parsing lounge status message"

    invoke-static {v4, v1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_2d} :catch_31

    .line 654
    :cond_2d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_d

    .line 665
    :catch_31
    move-exception v1

    .line 666
    const-string v2, "Error parsing lounge status message"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 6
    .parameter

    .prologue
    .line 672
    const-string v0, "currentTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "current_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 675
    :cond_10
    :try_start_10
    const-string v0, "currentTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 676
    const-string v0, "currentTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-double v0, v0

    .line 681
    :goto_21
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v2}, Lcom/google/android/youtube/app/remote/at;->m(Lcom/google/android/youtube/app/remote/at;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 682
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v2, v0, v1}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/at;D)V

    .line 692
    :cond_2e
    :goto_2e
    return-void

    .line 679
    :cond_2f
    const-string v0, "current_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-double v0, v0

    goto :goto_21

    .line 683
    :cond_39
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v2}, Lcom/google/android/youtube/app/remote/at;->n(Lcom/google/android/youtube/app/remote/at;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x409f400000000000L

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2e

    .line 685
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/at;Z)Z

    .line 686
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->i(Lcom/google/android/youtube/app/remote/at;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_5d} :catch_5e

    goto :goto_2e

    .line 688
    :catch_5e
    move-exception v0

    .line 689
    const-string v1, "Error parsing current time"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e
.end method

.method private c(Lorg/json/JSONObject;)V
    .registers 4
    .parameter

    .prologue
    .line 695
    const-string v0, "state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 697
    :try_start_8
    const-string v0, "state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->valueOf(I)Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    move-result-object v0

    .line 699
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v1, v0}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/at;Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;)V

    .line 700
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v1, v0}, Lcom/google/android/youtube/app/remote/at;->b(Lcom/google/android/youtube/app/remote/at;Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;)Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    .line 701
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/at;->b(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;)V
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_27} :catch_28

    .line 706
    :cond_27
    :goto_27
    return-void

    .line 702
    :catch_28
    move-exception v0

    .line 703
    const-string v1, "Error receiving state changed message"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method private d(Lorg/json/JSONObject;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 710
    :try_start_1
    const-string v0, "errors"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "errors"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    .line 735
    :cond_15
    :goto_15
    return v2

    .line 714
    :cond_16
    new-instance v3, Lorg/json/JSONArray;

    const-string v0, "errors"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v1, v2

    move v0, v2

    .line 715
    :goto_23
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_6e

    .line 716
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 717
    const-string v5, "NOT_PLAYABLE"

    const-string v6, "error"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 718
    const-string v5, "videoId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 719
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6b

    .line 720
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->g(Lcom/google/android/youtube/app/remote/at;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v4}, Lcom/google/android/youtube/app/remote/az;->e(Lorg/json/JSONObject;)Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    const/4 v0, 0x1

    .line 722
    iget-object v4, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v4}, Lcom/google/android/youtube/app/remote/at;->k(Lcom/google/android/youtube/app/remote/at;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 723
    iget-object v4, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v4}, Lcom/google/android/youtube/app/remote/at;->i(Lcom/google/android/youtube/app/remote/at;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 715
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 728
    :cond_6e
    if-eqz v0, :cond_15

    .line 729
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/at;->r()V
    :try_end_75
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_75} :catch_76

    goto :goto_15

    .line 731
    :catch_76
    move-exception v0

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid \'errors\' value in request: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15
.end method

.method private static e(Lorg/json/JSONObject;)Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;
    .registers 4
    .parameter

    .prologue
    .line 740
    :try_start_0
    const-string v0, "reason"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 741
    invoke-static {}, Lcom/google/android/youtube/app/remote/at;->x()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_10} :catch_13

    .line 743
    if-eqz v0, :cond_2a

    .line 749
    :goto_12
    return-object v0

    .line 746
    :catch_13
    move-exception v0

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid \'reason\' value : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 749
    :cond_2a
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;->UNSPECIFIED:Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    goto :goto_12
.end method


# virtual methods
.method public final a(Lorg/json/JSONArray;)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 539
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/at;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->OFFLINE:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-ne v0, v1, :cond_d

    .line 645
    :cond_c
    :goto_c
    return-void

    .line 543
    :cond_d
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_c

    .line 550
    const/4 v0, 0x0

    :try_start_14
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, v2, :cond_42

    .line 552
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_22} :catch_47

    move-result-object v0

    .line 560
    :goto_23
    invoke-static {v1}, Lcom/google/android/ytremote/backend/model/Method;->fromString(Ljava/lang/String;)Lcom/google/android/ytremote/backend/model/Method;

    move-result-object v2

    .line 561
    if-nez v2, :cond_5b

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid method: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Ignoring."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    goto :goto_c

    .line 554
    :cond_42
    :try_start_42
    invoke-static {}, Lcom/google/android/youtube/app/remote/at;->w()Lorg/json/JSONObject;
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_45} :catch_47

    move-result-object v0

    goto :goto_23

    .line 556
    :catch_47
    move-exception v0

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid JSON array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 566
    :cond_5b
    sget-object v1, Lcom/google/android/youtube/app/remote/au;->b:[I

    invoke-virtual {v2}, Lcom/google/android/ytremote/backend/model/Method;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_19e

    goto :goto_c

    .line 568
    :pswitch_67
    invoke-static {v0}, Lcom/google/android/youtube/app/remote/az;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 569
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTED:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V

    goto :goto_c

    .line 571
    :cond_75
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->h(Lcom/google/android/youtube/app/remote/at;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 572
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    sget-object v1, Lcom/google/android/youtube/app/remote/am;->b:Lcom/google/android/youtube/app/remote/al;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/al;)V

    goto :goto_c

    .line 577
    :pswitch_85
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTED:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V

    goto :goto_c

    .line 580
    :pswitch_8d
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->OFFLINE:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V

    .line 581
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->i(Lcom/google/android/youtube/app/remote/at;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_c

    .line 584
    :pswitch_a0
    const-string v1, "video_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 586
    :try_start_a8
    const-string v1, "video_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 587
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v2}, Lcom/google/android/youtube/app/remote/at;->j(Lcom/google/android/youtube/app/remote/at;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d0

    .line 588
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v2, v1}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/at;Ljava/lang/String;)Ljava/lang/String;

    .line 589
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/youtube/app/remote/at;->b(Lcom/google/android/youtube/app/remote/at;Ljava/lang/String;)Ljava/lang/String;

    .line 590
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    iget-object v3, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v3}, Lcom/google/android/youtube/app/remote/at;->j(Lcom/google/android/youtube/app/remote/at;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/remote/at;->c(Ljava/lang/String;)V

    .line 592
    :cond_d0
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v2}, Lcom/google/android/youtube/app/remote/at;->k(Lcom/google/android/youtube/app/remote/at;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 593
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/remote/at;->b(Lcom/google/android/youtube/app/remote/at;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e2
    .catch Lorg/json/JSONException; {:try_start_a8 .. :try_end_e2} :catch_ea

    .line 598
    :cond_e2
    :goto_e2
    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/remote/az;->b(Lorg/json/JSONObject;)V

    .line 603
    :goto_e5
    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/remote/az;->c(Lorg/json/JSONObject;)V

    goto/16 :goto_c

    .line 595
    :catch_ea
    move-exception v1

    .line 596
    const-string v2, "Error receiving now playing message"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e2

    .line 600
    :cond_f1
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-virtual {v1, v3}, Lcom/google/android/youtube/app/remote/at;->b(Ljava/lang/String;)V

    goto :goto_e5

    .line 606
    :pswitch_f7
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/at;->k(Lcom/google/android/youtube/app/remote/at;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_111

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/at;->k(Lcom/google/android/youtube/app/remote/at;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v2}, Lcom/google/android/youtube/app/remote/at;->j(Lcom/google/android/youtube/app/remote/at;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 609
    :cond_111
    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/remote/az;->b(Lorg/json/JSONObject;)V

    .line 612
    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/remote/az;->c(Lorg/json/JSONObject;)V

    goto/16 :goto_c

    .line 615
    :pswitch_119
    const-string v1, "videoIds"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_150

    .line 617
    :try_start_121
    const-string v1, "videoIds"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 618
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v2}, Lcom/google/android/youtube/app/remote/at;->l(Lcom/google/android/youtube/app/remote/at;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 619
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_145

    .line 620
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v2}, Lcom/google/android/youtube/app/remote/at;->l(Lcom/google/android/youtube/app/remote/at;)Ljava/util/List;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 622
    :cond_145
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v2}, Lcom/google/android/youtube/app/remote/at;->l(Lcom/google/android/youtube/app/remote/at;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/remote/at;->a(Ljava/util/List;)V
    :try_end_150
    .catch Lorg/json/JSONException; {:try_start_121 .. :try_end_150} :catch_192

    .line 628
    :cond_150
    :goto_150
    const-string v1, "videoId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 630
    :try_start_158
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    const-string v2, "videoId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/youtube/app/remote/at;->b(Lcom/google/android/youtube/app/remote/at;Ljava/lang/String;)Ljava/lang/String;

    .line 631
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/at;->k(Lcom/google/android/youtube/app/remote/at;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/at;Ljava/lang/String;)Ljava/lang/String;

    .line 632
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/at;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTED:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-ne v0, v1, :cond_183

    .line 633
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/at;->k(Lcom/google/android/youtube/app/remote/at;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/at;->c(Ljava/lang/String;)V

    .line 636
    :cond_183
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/az;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->c(Lcom/google/android/youtube/app/remote/at;)V
    :try_end_188
    .catch Lorg/json/JSONException; {:try_start_158 .. :try_end_188} :catch_18a

    goto/16 :goto_c

    .line 637
    :catch_18a
    move-exception v0

    .line 638
    const-string v1, "Error receiving playlist modified message"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 623
    :catch_192
    move-exception v1

    .line 624
    const-string v2, "Error receiving playlist modified message"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_150

    .line 644
    :pswitch_199
    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/remote/az;->d(Lorg/json/JSONObject;)Z

    goto/16 :goto_c

    .line 566
    :pswitch_data_19e
    .packed-switch 0x1
        :pswitch_67
        :pswitch_85
        :pswitch_8d
        :pswitch_a0
        :pswitch_f7
        :pswitch_119
        :pswitch_199
    .end packed-switch
.end method
