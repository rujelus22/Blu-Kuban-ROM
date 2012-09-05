.class public Lcom/google/android/youtube/core/model/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final f:Ljava/util/List;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/Map;

.field public final i:Ljava/util/Date;

.field public final j:Ljava/util/Date;

.field public final k:Ljava/util/Date;

.field public final l:Landroid/net/Uri;

.field public final m:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const-string v0, "releaseMediums may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    #calls: Lcom/google/android/youtube/core/model/Video;->unmodifiable(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/youtube/core/model/Video;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/s;->f:Ljava/util/List;

    .line 134
    const-string v0, "genres may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    #calls: Lcom/google/android/youtube/core/model/Video;->unmodifiable(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/youtube/core/model/Video;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/s;->g:Ljava/util/List;

    .line 135
    const-string v0, "credits may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    #calls: Lcom/google/android/youtube/core/model/Video;->unmodifiable(Ljava/util/Map;)Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/youtube/core/model/Video;->access$100(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/s;->h:Ljava/util/Map;

    .line 136
    iput-object p4, p0, Lcom/google/android/youtube/core/model/s;->i:Ljava/util/Date;

    .line 137
    iput-object p5, p0, Lcom/google/android/youtube/core/model/s;->j:Ljava/util/Date;

    .line 138
    iput-object p6, p0, Lcom/google/android/youtube/core/model/s;->k:Ljava/util/Date;

    .line 139
    iput-object p7, p0, Lcom/google/android/youtube/core/model/s;->l:Landroid/net/Uri;

    .line 140
    iput-object p8, p0, Lcom/google/android/youtube/core/model/s;->m:Landroid/net/Uri;

    .line 141
    return-void
.end method
