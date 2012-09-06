.class public Lcom/google/android/youtube/core/model/Subtitle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private transient lastHtml:Ljava/lang/CharSequence;

.field private transient lastText:Ljava/lang/CharSequence;

.field private final lines:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;)V
    .registers 2
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subtitle;->lines:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayList;Lcom/google/android/youtube/core/model/l;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/model/Subtitle;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method private findTextAt(I)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subtitle;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    move v1, v0

    .line 47
    :goto_b
    if-gt v2, v1, :cond_2e

    .line 48
    sub-int v0, v1, v2

    div-int/lit8 v0, v0, 0x2

    add-int v3, v2, v0

    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subtitle;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subtitle$Line;

    .line 50
    iget v4, v0, Lcom/google/android/youtube/core/model/Subtitle$Line;->startTime:I

    if-ge p1, v4, :cond_23

    .line 51
    add-int/lit8 v0, v3, -0x1

    move v1, v0

    goto :goto_b

    .line 52
    :cond_23
    iget v2, v0, Lcom/google/android/youtube/core/model/Subtitle$Line;->endTime:I

    if-le p1, v2, :cond_2b

    .line 53
    add-int/lit8 v0, v3, 0x1

    move v2, v0

    goto :goto_b

    .line 55
    :cond_2b
    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subtitle$Line;->text:Ljava/lang/String;

    .line 57
    :goto_2d
    return-object v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method


# virtual methods
.method public declared-synchronized getTextAt(I)Ljava/lang/CharSequence;
    .registers 4
    .parameter

    .prologue
    .line 31
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/model/Subtitle;->findTextAt(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_19

    move-result-object v0

    .line 32
    if-nez v0, :cond_a

    .line 33
    const/4 v0, 0x0

    .line 40
    :goto_8
    monitor-exit p0

    return-object v0

    .line 36
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Subtitle;->lastText:Ljava/lang/CharSequence;

    if-eq v0, v1, :cond_16

    .line 37
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subtitle;->lastText:Ljava/lang/CharSequence;

    .line 38
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subtitle;->lastHtml:Ljava/lang/CharSequence;

    .line 40
    :cond_16
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subtitle;->lastHtml:Ljava/lang/CharSequence;
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_19

    goto :goto_8

    .line 31
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method
