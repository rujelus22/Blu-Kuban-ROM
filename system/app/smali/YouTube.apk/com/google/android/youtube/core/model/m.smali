.class public Lcom/google/android/youtube/core/model/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/i;


# instance fields
.field private a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/m;->a:Ljava/util/ArrayList;

    .line 81
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;II)Lcom/google/android/youtube/core/model/m;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/core/model/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 91
    if-ltz v1, :cond_26

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/core/model/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subtitle$Line;

    .line 94
    iget v2, v0, Lcom/google/android/youtube/core/model/Subtitle$Line;->endTime:I

    if-lt v2, p2, :cond_26

    .line 95
    iget-object v2, p0, Lcom/google/android/youtube/core/model/m;->a:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/youtube/core/model/Subtitle$Line;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Subtitle$Line;->text:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/youtube/core/model/Subtitle$Line;->startTime:I

    add-int/lit8 v5, p2, -0x1

    invoke-direct {v3, v4, v0, v5}, Lcom/google/android/youtube/core/model/Subtitle$Line;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_26
    iget-object v0, p0, Lcom/google/android/youtube/core/model/m;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/youtube/core/model/Subtitle$Line;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/youtube/core/model/Subtitle$Line;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    return-object p0
.end method

.method public synthetic build()Ljava/lang/Object;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lcom/google/android/youtube/core/model/m;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    new-instance v1, Lcom/google/android/youtube/core/model/Subtitle;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/m;->a:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v0}, Lcom/google/android/youtube/core/model/Subtitle;-><init>(Ljava/util/ArrayList;Lcom/google/android/youtube/core/model/l;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/m;->a:Ljava/util/ArrayList;

    move-object v0, v1

    goto :goto_5
.end method
