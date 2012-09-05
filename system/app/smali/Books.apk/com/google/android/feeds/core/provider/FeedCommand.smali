.class public Lcom/google/android/feeds/core/provider/FeedCommand;
.super Ljava/lang/Object;
.source "FeedCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/feeds/core/provider/FeedCommand$Output;,
        Lcom/google/android/feeds/core/provider/FeedCommand$Argument;,
        Lcom/google/android/feeds/core/provider/FeedCommand$Response;,
        Lcom/google/android/feeds/core/provider/FeedCommand$Type;
    }
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2
    .parameter "extras"

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    .line 223
    return-void
.end method

.method private constructor <init>(Lcom/google/android/feeds/core/provider/FeedCommand$Type;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    .line 215
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/google/android/feeds/core/provider/FeedCommand$Type;->writeTo(Landroid/os/Bundle;)V

    .line 216
    return-void
.end method

.method public static moreAsync(Landroid/database/Cursor;)V
    .registers 10
    .parameter "c"

    .prologue
    .line 372
    if-nez p0, :cond_8

    .line 373
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 375
    :cond_8
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 376
    .local v4, extras:Landroid/os/Bundle;
    const-string v7, "com.google.android.feeds.cursor.extra.DATE"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 377
    .local v2, date:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v0, v7, v2

    .line 378
    .local v0, age:J
    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 379
    .local v5, maxAge:J
    invoke-static {}, Lcom/google/android/feeds/core/provider/FeedCommand;->query()Lcom/google/android/feeds/core/provider/FeedCommand;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/feeds/core/provider/FeedCommand;->append()Lcom/google/android/feeds/core/provider/FeedCommand;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/feeds/core/provider/FeedCommand;->async()Lcom/google/android/feeds/core/provider/FeedCommand;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/google/android/feeds/core/provider/FeedCommand;->maxAge(J)Lcom/google/android/feeds/core/provider/FeedCommand;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/google/android/feeds/core/provider/FeedCommand;->sendTo(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    .line 380
    return-void
.end method

.method public static query()Lcom/google/android/feeds/core/provider/FeedCommand;
    .registers 2

    .prologue
    .line 296
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedCommand;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Type;->QUERY:Lcom/google/android/feeds/core/provider/FeedCommand$Type;

    invoke-direct {v0, v1}, Lcom/google/android/feeds/core/provider/FeedCommand;-><init>(Lcom/google/android/feeds/core/provider/FeedCommand$Type;)V

    return-object v0
.end method

.method public static retryAsync(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 317
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 318
    .local v1, extras:Landroid/os/Bundle;
    const-string v2, "com.google.android.feeds.cursor.extra.RETRY_COMMAND"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 319
    .local v0, command:Landroid/os/Bundle;
    if-eqz v0, :cond_14

    .line 320
    new-instance v2, Lcom/google/android/feeds/core/provider/FeedCommand;

    invoke-direct {v2, v0}, Lcom/google/android/feeds/core/provider/FeedCommand;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, p0}, Lcom/google/android/feeds/core/provider/FeedCommand;->sendAsync(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    .line 322
    :cond_14
    return-void
.end method


# virtual methods
.method public append()Lcom/google/android/feeds/core/provider/FeedCommand;
    .registers 4

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->APPEND:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 388
    return-object p0
.end method

.method public async()Lcom/google/android/feeds/core/provider/FeedCommand;
    .registers 4

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->ASYNC:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 427
    return-object p0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMaxAge()J
    .registers 5

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->MAX_AGE:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinCount()I
    .registers 4

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->MIN_COUNT:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRowCount()I
    .registers 4

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->ROW_COUNT:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getState()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->STATE:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/android/feeds/core/provider/FeedCommand$Type;
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/android/feeds/core/provider/FeedCommand$Type;->readFrom(Landroid/os/Bundle;)Lcom/google/android/feeds/core/provider/FeedCommand$Type;

    move-result-object v0

    return-object v0
.end method

.method public isAppend()Z
    .registers 4

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->APPEND:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isAsync()Z
    .registers 4

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->ASYNC:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNotifyFailureSet()Z
    .registers 4

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->NOTIFY_FAILURE:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public maxAge(J)Lcom/google/android/feeds/core/provider/FeedCommand;
    .registers 5
    .parameter "age"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->MAX_AGE:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 438
    return-object p0
.end method

.method public rowCount(I)Lcom/google/android/feeds/core/provider/FeedCommand;
    .registers 4
    .parameter "count"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->ROW_COUNT:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 465
    return-object p0
.end method

.method public sendAsync(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    .registers 3
    .parameter "c"

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/android/feeds/core/provider/FeedCommand;->async()Lcom/google/android/feeds/core/provider/FeedCommand;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->sendTo(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    move-result-object v0

    return-object v0
.end method

.method public sendTo(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    .registers 3
    .parameter "c"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->readFrom(Landroid/os/Bundle;)Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    move-result-object v0

    return-object v0
.end method

.method public state(Landroid/os/Bundle;)Lcom/google/android/feeds/core/provider/FeedCommand;
    .registers 4
    .parameter "extras"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->STATE:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 474
    return-object p0
.end method
