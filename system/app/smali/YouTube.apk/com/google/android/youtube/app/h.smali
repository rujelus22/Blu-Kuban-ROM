.class final Lcom/google/android/youtube/app/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/a/a/a/v;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/a;

.field private b:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/a;)V
    .registers 3
    .parameter

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/h;-><init>(Lcom/google/android/youtube/app/a;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/a;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 375
    :try_start_1
    new-instance v3, Lorg/json/JSONArray;

    const-string v1, "devices"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v2, v0

    .line 376
    :goto_d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_10} :catch_31

    move-result v1

    if-ge v2, v1, :cond_26

    .line 378
    :try_start_13
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 379
    const-string v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    const-string v4, "LOUNGE_SCREEN"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_22} :catch_27

    move-result v1

    if-eqz v1, :cond_2d

    .line 381
    const/4 v0, 0x1

    .line 390
    :cond_26
    :goto_26
    return v0

    .line 383
    :catch_27
    move-exception v1

    .line 384
    :try_start_28
    const-string v4, "Error parsing lounge status message"

    invoke-static {v4, v1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_2d} :catch_31

    .line 376
    :cond_2d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_d

    .line 387
    :catch_31
    move-exception v1

    .line 388
    const-string v2, "Error parsing lounge status message"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 4
    .parameter

    .prologue
    .line 394
    const-string v0, "state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 396
    :try_start_8
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/a;

    const-string v1, "state"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/youtube/app/s;->a(I)Lcom/google/android/youtube/app/s;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/a;->a(Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/app/s;)Lcom/google/android/youtube/app/s;

    .line 397
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/a;

    invoke-static {v1}, Lcom/google/android/youtube/app/a;->g(Lcom/google/android/youtube/app/a;)Lcom/google/android/youtube/app/s;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/a;->b(Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/app/s;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_22} :catch_23

    .line 402
    :cond_22
    :goto_22
    return-void

    .line 398
    :catch_23
    move-exception v0

    .line 399
    const-string v1, "Error receiving state changed message"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-static {p1}, Lcom/google/android/a/a/c/c;->a(Ljava/lang/String;)Lcom/google/android/a/a/c/c;

    move-result-object v0

    .line 314
    if-nez v0, :cond_7

    .line 363
    :cond_6
    :goto_6
    return-void

    .line 318
    :cond_7
    sget-object v1, Lcom/google/android/youtube/app/f;->a:[I

    invoke-virtual {v0}, Lcom/google/android/a/a/c/c;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_c6

    goto :goto_6

    .line 320
    :pswitch_13
    invoke-static {p2}, Lcom/google/android/youtube/app/h;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 321
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/a;

    sget-object v1, Lcom/google/android/youtube/app/t;->c:Lcom/google/android/youtube/app/t;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/a;->a(Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/app/t;)V

    goto :goto_6

    .line 323
    :cond_21
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/a;

    sget-object v1, Lcom/google/android/youtube/app/q;->c:Lcom/google/android/youtube/app/q;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/a;->a(Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/app/q;)V

    goto :goto_6

    .line 327
    :pswitch_29
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/a;

    sget-object v1, Lcom/google/android/youtube/app/t;->c:Lcom/google/android/youtube/app/t;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/a;->a(Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/app/t;)V

    goto :goto_6

    .line 330
    :pswitch_31
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/a;

    sget-object v1, Lcom/google/android/youtube/app/t;->d:Lcom/google/android/youtube/app/t;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/a;->a(Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/app/t;)V

    goto :goto_6

    .line 333
    :pswitch_39
    const-string v0, "video_id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 335
    :try_start_41
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/a;

    const-string v1, "video_id"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/a;->a(Lcom/google/android/youtube/app/a;Ljava/lang/String;)Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/a;

    invoke-static {v0}, Lcom/google/android/youtube/app/a;->e(Lcom/google/android/youtube/app/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/h;->b:Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/a;

    sget-object v1, Lcom/google/android/youtube/app/s;->h:Lcom/google/android/youtube/app/s;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/a;->a(Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/app/s;)Lcom/google/android/youtube/app/s;

    .line 338
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/a;

    invoke-static {v1}, Lcom/google/android/youtube/app/a;->e(Lcom/google/android/youtube/app/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/a;->b(Lcom/google/android/youtube/app/a;Ljava/lang/String;)V
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_66} :catch_6a

    .line 343
    :cond_66
    :goto_66
    invoke-direct {p0, p2}, Lcom/google/android/youtube/app/h;->b(Lorg/json/JSONObject;)V

    goto :goto_6

    .line 339
    :catch_6a
    move-exception v0

    .line 340
    const-string v1, "Error receiving now playing message"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_66

    .line 346
    :pswitch_71
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/a;

    invoke-static {v0}, Lcom/google/android/youtube/app/a;->e(Lcom/google/android/youtube/app/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/a;

    invoke-static {v0}, Lcom/google/android/youtube/app/a;->e(Lcom/google/android/youtube/app/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 349
    invoke-direct {p0, p2}, Lcom/google/android/youtube/app/h;->b(Lorg/json/JSONObject;)V

    goto/16 :goto_6

    .line 354
    :pswitch_8c
    const-string v0, "videoId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 356
    :try_start_94
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/a;

    const-string v1, "videoId"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/a;->a(Lcom/google/android/youtube/app/a;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/a;

    invoke-static {v0}, Lcom/google/android/youtube/app/a;->e(Lcom/google/android/youtube/app/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/h;->b:Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/a;

    invoke-static {v0}, Lcom/google/android/youtube/app/a;->f(Lcom/google/android/youtube/app/a;)Lcom/google/android/youtube/app/t;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/t;->c:Lcom/google/android/youtube/app/t;

    if-ne v0, v1, :cond_6

    .line 359
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/a;

    invoke-static {v1}, Lcom/google/android/youtube/app/a;->e(Lcom/google/android/youtube/app/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/a;->b(Lcom/google/android/youtube/app/a;Ljava/lang/String;)V
    :try_end_bc
    .catch Lorg/json/JSONException; {:try_start_94 .. :try_end_bc} :catch_be

    goto/16 :goto_6

    .line 361
    :catch_be
    move-exception v0

    .line 362
    const-string v1, "Error receiving now playing message"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 318
    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_13
        :pswitch_29
        :pswitch_31
        :pswitch_39
        :pswitch_71
        :pswitch_8c
    .end packed-switch
.end method
