.class public Lcom/android/internal/telephony/RetryManager;
.super Ljava/lang/Object;
.source "RetryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RetryManager$RetryRec;
    }
.end annotation


# static fields
.field public static final DBG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "RetryManager"

.field public static final RETRYIES_COMPLETED:I = 0x2

.field public static final RETRYIES_NOT_STARTED:I = 0x0

.field public static final RETRYIES_ON_GOING:I = 0x1


# instance fields
.field private mMaxRetryCount:I

.field private mRetryArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/RetryManager$RetryRec;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field private mRetryForever:Z

.field private rng:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->rng:Ljava/util/Random;

    .line 119
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 395
    const-string v0, "RetryManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-void
.end method

.method private nextRandomizationTime(I)I
    .registers 4
    .parameter "index"

    .prologue
    .line 386
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RetryManager$RetryRec;

    iget v0, v1, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    .line 387
    .local v0, randomTime:I
    if-nez v0, :cond_e

    .line 388
    const/4 v1, 0x0

    .line 390
    :goto_d
    return v1

    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->rng:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    goto :goto_d
.end method

.method private parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .registers 10
    .parameter "name"
    .parameter "stringValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 352
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 353
    .local v2, value:I
    new-instance v1, Landroid/util/Pair;

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/RetryManager;->validateNonNegativeInt(Ljava/lang/String;I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_16} :catch_17

    .line 360
    .end local v2           #value:I
    .local v1, retVal:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :goto_16
    return-object v1

    .line 354
    .end local v1           #retVal:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :catch_17
    move-exception v0

    .line 355
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "RetryManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bad value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    new-instance v1, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .restart local v1       #retVal:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    goto :goto_16
.end method

.method private validateNonNegativeInt(Ljava/lang/String;I)Z
    .registers 7
    .parameter "name"
    .parameter "value"

    .prologue
    .line 372
    if-gez p2, :cond_1c

    .line 373
    const-string v1, "RetryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bad value: is < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v0, 0x0

    .line 379
    .local v0, retVal:Z
    :goto_1b
    return v0

    .line 376
    .end local v0           #retVal:Z
    :cond_1c
    const/4 v0, 0x1

    .restart local v0       #retVal:Z
    goto :goto_1b
.end method


# virtual methods
.method public configure(III)Z
    .registers 6
    .parameter "maxRetryCount"
    .parameter "retryTime"
    .parameter "randomizationTime"

    .prologue
    const/4 v0, 0x0

    .line 138
    const-string/jumbo v1, "maxRetryCount"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/RetryManager;->validateNonNegativeInt(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 155
    :cond_a
    :goto_a
    return v0

    .line 142
    :cond_b
    const-string/jumbo v1, "retryTime"

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/RetryManager;->validateNonNegativeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 146
    const-string/jumbo v1, "randomizationTime"

    invoke-direct {p0, v1, p3}, Lcom/android/internal/telephony/RetryManager;->validateNonNegativeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 150
    iput p1, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/RetryManager$RetryRec;

    invoke-direct {v1, p2, p3}, Lcom/android/internal/telephony/RetryManager$RetryRec;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public configure(Ljava/lang/String;)Z
    .registers 13
    .parameter "configStr"

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 167
    const-string v6, "\""

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const-string v6, "\""

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 172
    :cond_1d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14d

    .line 173
    const/4 v0, 0x0

    .line 177
    .local v0, defaultRandomization:I
    iput v7, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 179
    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 181
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, strArray:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_35
    array-length v6, v4

    if-ge v1, v6, :cond_138

    .line 185
    aget-object v6, v4, v1

    const-string v9, "="

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, splitStr:[Ljava/lang/String;
    aget-object v6, v3, v7

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v7

    .line 188
    array-length v6, v3

    if-le v6, v8, :cond_cf

    .line 189
    aget-object v6, v3, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    .line 191
    aget-object v6, v3, v7

    const-string v9, "default_randomization"

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 192
    aget-object v6, v3, v7

    aget-object v9, v3, v8

    invoke-direct {p0, v6, v9}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 193
    .local v5, value:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_71

    move v6, v7

    .line 241
    .end local v0           #defaultRandomization:I
    .end local v1           #i:I
    .end local v3           #splitStr:[Ljava/lang/String;
    .end local v4           #strArray:[Ljava/lang/String;
    .end local v5           #value:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :goto_70
    return v6

    .line 194
    .restart local v0       #defaultRandomization:I
    .restart local v1       #i:I
    .restart local v3       #splitStr:[Ljava/lang/String;
    .restart local v4       #strArray:[Ljava/lang/String;
    .restart local v5       #value:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_71
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 182
    .end local v5           #value:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :goto_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 195
    :cond_7c
    aget-object v6, v3, v7

    const-string/jumbo v9, "max_retries"

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b3

    .line 196
    const-string v6, "infinite"

    aget-object v9, v3, v8

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 197
    iput-boolean v8, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    goto :goto_79

    .line 199
    :cond_94
    aget-object v6, v3, v7

    aget-object v9, v3, v8

    invoke-direct {p0, v6, v9}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 200
    .restart local v5       #value:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_a8

    move v6, v7

    goto :goto_70

    .line 201
    :cond_a8
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    goto :goto_79

    .line 204
    .end local v5           #value:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_b3
    const-string v6, "RetryManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized configuration name value pair: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 206
    goto :goto_70

    .line 213
    :cond_cf
    aget-object v6, v4, v1

    const-string v9, ":"

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 214
    aget-object v6, v3, v7

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v7

    .line 215
    new-instance v2, Lcom/android/internal/telephony/RetryManager$RetryRec;

    invoke-direct {v2, v7, v7}, Lcom/android/internal/telephony/RetryManager$RetryRec;-><init>(II)V

    .line 216
    .local v2, rr:Lcom/android/internal/telephony/RetryManager$RetryRec;
    const-string v6, "delayTime"

    aget-object v9, v3, v7

    invoke-direct {p0, v6, v9}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 217
    .restart local v5       #value:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_f9

    move v6, v7

    goto/16 :goto_70

    .line 218
    :cond_f9
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mDelayTime:I

    .line 221
    array-length v6, v3

    if-le v6, v8, :cond_135

    .line 222
    aget-object v6, v3, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    .line 224
    const-string/jumbo v6, "randomizationTime"

    aget-object v9, v3, v8

    invoke-direct {p0, v6, v9}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 225
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_124

    move v6, v7

    goto/16 :goto_70

    .line 226
    :cond_124
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    .line 230
    :goto_12e
    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_79

    .line 228
    :cond_135
    iput v0, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    goto :goto_12e

    .line 233
    .end local v2           #rr:Lcom/android/internal/telephony/RetryManager$RetryRec;
    .end local v3           #splitStr:[Ljava/lang/String;
    .end local v5           #value:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_138
    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    if-le v6, v7, :cond_14a

    .line 234
    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    :cond_14a
    move v6, v8

    .line 238
    goto/16 :goto_70

    .end local v0           #defaultRandomization:I
    .end local v1           #i:I
    .end local v4           #strArray:[Ljava/lang/String;
    :cond_14d
    move v6, v7

    .line 241
    goto/16 :goto_70
.end method

.method public getMaxRetryCount()I
    .registers 2

    .prologue
    .line 403
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    return v0
.end method

.method public getRetryCount()I
    .registers 2

    .prologue
    .line 284
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    return v0
.end method

.method public getRetryTimer()I
    .registers 5

    .prologue
    .line 262
    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 263
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .line 269
    .local v0, index:I
    :goto_c
    if-ltz v0, :cond_30

    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_30

    .line 270
    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RetryManager$RetryRec;

    iget v2, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mDelayTime:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->nextRandomizationTime(I)I

    move-result v3

    add-int v1, v2, v3

    .line 276
    .local v1, retVal:I
    :goto_26
    return v1

    .line 265
    .end local v0           #index:I
    .end local v1           #retVal:I
    :cond_27
    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0       #index:I
    goto :goto_c

    .line 272
    :cond_30
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_26
.end method

.method public increaseRetryCount()V
    .registers 3

    .prologue
    .line 291
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .line 292
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    if-le v0, v1, :cond_10

    .line 293
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .line 296
    :cond_10
    return-void
.end method

.method public isRetryForever()Z
    .registers 2

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    return v0
.end method

.method public isRetryNeeded()Z
    .registers 4

    .prologue
    .line 252
    iget-boolean v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    if-nez v1, :cond_a

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    if-ge v1, v2, :cond_c

    :cond_a
    const/4 v0, 0x1

    .line 254
    .local v0, retVal:Z
    :goto_b
    return v0

    .line 252
    .end local v0           #retVal:Z
    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public resetRetryCount()V
    .registers 2

    .prologue
    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .line 322
    return-void
.end method

.method public retryForeverUsingLastTimeout()V
    .registers 2

    .prologue
    .line 328
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    .line 331
    return-void
.end method

.method public setRetryCount(I)V
    .registers 5
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 303
    iput p1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .line 304
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    if-le v0, v1, :cond_d

    .line 305
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .line 308
    :cond_d
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    if-gez v0, :cond_13

    .line 309
    iput v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .line 312
    :cond_13
    iput-boolean v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    .line 314
    return-void
.end method
