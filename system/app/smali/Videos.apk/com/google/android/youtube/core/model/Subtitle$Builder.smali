.class public Lcom/google/android/youtube/core/model/Subtitle$Builder;
.super Ljava/lang/Object;
.source "Subtitle.java"

# interfaces
.implements Lcom/google/android/youtube/core/model/ModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Subtitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/model/ModelBuilder",
        "<",
        "Lcom/google/android/youtube/core/model/Subtitle;",
        ">;"
    }
.end annotation


# instance fields
.field private lines:Ljava/util/ArrayList;
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
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subtitle$Builder;->lines:Ljava/util/ArrayList;

    .line 81
    return-void
.end method


# virtual methods
.method public addLine(Ljava/lang/String;II)Lcom/google/android/youtube/core/model/Subtitle$Builder;
    .registers 11
    .parameter "text"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 90
    iget-object v2, p0, Lcom/google/android/youtube/core/model/Subtitle$Builder;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 91
    .local v0, lastIndex:I
    if-ltz v0, :cond_26

    .line 93
    iget-object v2, p0, Lcom/google/android/youtube/core/model/Subtitle$Builder;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Subtitle$Line;

    .line 94
    .local v1, lastLine:Lcom/google/android/youtube/core/model/Subtitle$Line;
    iget v2, v1, Lcom/google/android/youtube/core/model/Subtitle$Line;->endTime:I

    if-lt v2, p2, :cond_26

    .line 95
    iget-object v2, p0, Lcom/google/android/youtube/core/model/Subtitle$Builder;->lines:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/youtube/core/model/Subtitle$Line;

    iget-object v4, v1, Lcom/google/android/youtube/core/model/Subtitle$Line;->text:Ljava/lang/String;

    iget v5, v1, Lcom/google/android/youtube/core/model/Subtitle$Line;->startTime:I

    add-int/lit8 v6, p2, -0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/youtube/core/model/Subtitle$Line;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v1           #lastLine:Lcom/google/android/youtube/core/model/Subtitle$Line;
    :cond_26
    iget-object v2, p0, Lcom/google/android/youtube/core/model/Subtitle$Builder;->lines:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/youtube/core/model/Subtitle$Line;

    invoke-direct {v3, p1, p2, p3}, Lcom/google/android/youtube/core/model/Subtitle$Line;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/Subtitle;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v2, p0, Lcom/google/android/youtube/core/model/Subtitle$Builder;->lines:Ljava/util/ArrayList;

    if-nez v2, :cond_7

    move-object v0, v1

    .line 108
    :goto_6
    return-object v0

    .line 106
    :cond_7
    new-instance v0, Lcom/google/android/youtube/core/model/Subtitle;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Subtitle$Builder;->lines:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v1}, Lcom/google/android/youtube/core/model/Subtitle;-><init>(Ljava/util/ArrayList;Lcom/google/android/youtube/core/model/Subtitle$1;)V

    .line 107
    .local v0, value:Lcom/google/android/youtube/core/model/Subtitle;
    iput-object v1, p0, Lcom/google/android/youtube/core/model/Subtitle$Builder;->lines:Ljava/util/ArrayList;

    goto :goto_6
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Subtitle$Builder;->build()Lcom/google/android/youtube/core/model/Subtitle;

    move-result-object v0

    return-object v0
.end method
