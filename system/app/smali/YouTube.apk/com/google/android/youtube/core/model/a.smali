.class public final Lcom/google/android/youtube/core/model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "uris contain be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_f
    const-string v1, "uris must contain at least one uri"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 30
    iput p1, p0, Lcom/google/android/youtube/core/model/a;->a:I

    .line 31
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/a;->b:Ljava/util/List;

    .line 32
    return-void

    .line 29
    :cond_1d
    const/4 v0, 0x0

    goto :goto_f
.end method
