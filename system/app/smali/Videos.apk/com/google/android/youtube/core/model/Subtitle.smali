.class public Lcom/google/android/youtube/core/model/Subtitle;
.super Ljava/lang/Object;
.source "Subtitle.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/Subtitle$1;,
        Lcom/google/android/youtube/core/model/Subtitle$Builder;,
        Lcom/google/android/youtube/core/model/Subtitle$Line;
    }
.end annotation


# instance fields
.field private transient lastHtml:Ljava/lang/CharSequence;

.field private transient lastText:Ljava/lang/CharSequence;

.field private final lines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/youtube/core/model/Subtitle$Line;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/youtube/core/model/Subtitle$Line;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/youtube/core/model/Subtitle$Line;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subtitle;->lines:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayList;Lcom/google/android/youtube/core/model/Subtitle$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/model/Subtitle;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method private findTextAt(I)Ljava/lang/String;
    .registers 7
    .parameter "time"

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, left:I
    iget-object v4, p0, Lcom/google/android/youtube/core/model/Subtitle;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 46
    .local v3, right:I
    const/4 v2, 0x0

    .line 47
    .local v2, line:Lcom/google/android/youtube/core/model/Subtitle$Line;
    :goto_a
    if-gt v1, v3, :cond_2b

    .line 48
    sub-int v4, v3, v1

    div-int/lit8 v4, v4, 0x2

    add-int v0, v1, v4

    .line 49
    .local v0, index:I
    iget-object v4, p0, Lcom/google/android/youtube/core/model/Subtitle;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #line:Lcom/google/android/youtube/core/model/Subtitle$Line;
    check-cast v2, Lcom/google/android/youtube/core/model/Subtitle$Line;

    .line 50
    .restart local v2       #line:Lcom/google/android/youtube/core/model/Subtitle$Line;
    iget v4, v2, Lcom/google/android/youtube/core/model/Subtitle$Line;->startTime:I

    if-ge p1, v4, :cond_21

    .line 51
    add-int/lit8 v3, v0, -0x1

    goto :goto_a

    .line 52
    :cond_21
    iget v4, v2, Lcom/google/android/youtube/core/model/Subtitle$Line;->endTime:I

    if-le p1, v4, :cond_28

    .line 53
    add-int/lit8 v1, v0, 0x1

    goto :goto_a

    .line 55
    :cond_28
    iget-object v4, v2, Lcom/google/android/youtube/core/model/Subtitle$Line;->text:Ljava/lang/String;

    .line 58
    .end local v0           #index:I
    :goto_2a
    return-object v4

    :cond_2b
    const/4 v4, 0x0

    goto :goto_2a
.end method


# virtual methods
.method public declared-synchronized getTextAt(I)Ljava/lang/CharSequence;
    .registers 4
    .parameter "time"

    .prologue
    .line 31
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/model/Subtitle;->findTextAt(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_19

    move-result-object v0

    .line 32
    .local v0, text:Ljava/lang/String;
    if-nez v0, :cond_a

    .line 33
    const/4 v1, 0x0

    .line 40
    :goto_8
    monitor-exit p0

    return-object v1

    .line 36
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Subtitle;->lastText:Ljava/lang/CharSequence;

    if-eq v0, v1, :cond_16

    .line 37
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subtitle;->lastText:Ljava/lang/CharSequence;

    .line 38
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/model/Subtitle;->lastHtml:Ljava/lang/CharSequence;

    .line 40
    :cond_16
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Subtitle;->lastHtml:Ljava/lang/CharSequence;
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_19

    goto :goto_8

    .line 31
    .end local v0           #text:Ljava/lang/String;
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method
