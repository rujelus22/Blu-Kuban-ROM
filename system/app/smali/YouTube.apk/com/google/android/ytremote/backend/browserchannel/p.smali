.class final Lcom/google/android/ytremote/backend/browserchannel/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/ytremote/util/VisibleForTesting;
.end annotation


# static fields
.field static a:I


# instance fields
.field final b:Ljava/util/List;

.field final c:Lcom/google/android/ytremote/backend/model/Method;

.field final d:Lcom/google/android/ytremote/backend/model/Params;

.field private final e:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const/16 v0, 0x7530

    sput v0, Lcom/google/android/ytremote/backend/browserchannel/p;->a:I

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/google/android/ytremote/backend/model/Method;Lcom/google/android/ytremote/backend/model/Params;Ljava/util/List;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/android/ytremote/backend/browserchannel/p;->c:Lcom/google/android/ytremote/backend/model/Method;

    .line 74
    iput-object p2, p0, Lcom/google/android/ytremote/backend/browserchannel/p;->d:Lcom/google/android/ytremote/backend/model/Params;

    .line 75
    iput-object p3, p0, Lcom/google/android/ytremote/backend/browserchannel/p;->b:Ljava/util/List;

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/ytremote/backend/browserchannel/p;->e:J

    .line 77
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 5

    .prologue
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/ytremote/backend/browserchannel/p;->e:J

    sub-long/2addr v0, v2

    sget v2, Lcom/google/android/ytremote/backend/browserchannel/p;->a:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/p;->c:Lcom/google/android/ytremote/backend/model/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/p;->d:Lcom/google/android/ytremote/backend/model/Params;

    invoke-virtual {v1}, Lcom/google/android/ytremote/backend/model/Params;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
