.class final Lcom/google/android/ytremote/backend/browserchannel/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ytremote/backend/browserchannel/g;


# instance fields
.field final synthetic a:Lcom/google/android/ytremote/backend/browserchannel/a;

.field private b:J

.field private final synthetic c:[Z


# direct methods
.method constructor <init>(Lcom/google/android/ytremote/backend/browserchannel/a;[Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/ytremote/backend/browserchannel/b;->a:Lcom/google/android/ytremote/backend/browserchannel/a;

    iput-object p2, p0, Lcom/google/android/ytremote/backend/browserchannel/b;->c:[Z

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 2
    .parameter

    .prologue
    .line 282
    return-void
.end method

.method public final a([BII)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 266
    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_17

    .line 270
    const-string v2, "11111"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/ytremote/backend/browserchannel/b;->b:J

    .line 279
    :goto_16
    return-void

    .line 267
    :catch_17
    move-exception v0

    .line 268
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 272
    :cond_1e
    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 275
    iget-object v2, p0, Lcom/google/android/ytremote/backend/browserchannel/b;->c:[Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/ytremote/backend/browserchannel/b;->b:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xc8

    cmp-long v0, v3, v5

    if-gez v0, :cond_39

    const/4 v0, 0x1

    :goto_36
    aput-boolean v0, v2, v1

    goto :goto_16

    :cond_39
    move v0, v1

    goto :goto_36

    .line 277
    :cond_3b
    invoke-static {}, Lcom/google/android/ytremote/backend/browserchannel/a;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected test response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method
