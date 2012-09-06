.class final Lcom/google/android/youtube/app/ui/ei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/ej;


# instance fields
.field private final a:Lcom/google/android/youtube/app/a;

.field private final b:Z

.field private final c:Lcom/google/android/youtube/core/b/aj;

.field private final d:Lcom/google/android/youtube/core/Analytics;

.field private final e:Lcom/google/android/youtube/core/Analytics$VideoCategory;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/a;ZLcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ei;->a:Lcom/google/android/youtube/app/a;

    .line 174
    iput-boolean p2, p0, Lcom/google/android/youtube/app/ui/ei;->b:Z

    .line 175
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/ei;->c:Lcom/google/android/youtube/core/b/aj;

    .line 176
    iput-object p4, p0, Lcom/google/android/youtube/app/ui/ei;->d:Lcom/google/android/youtube/core/Analytics;

    .line 177
    iput-object p5, p0, Lcom/google/android/youtube/app/ui/ei;->e:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 178
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/Video;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ei;->d:Lcom/google/android/youtube/core/Analytics;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ei;->e:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/youtube/core/Analytics;->a(Lcom/google/android/youtube/core/Analytics$VideoCategory;I)V

    .line 182
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ei;->a:Lcom/google/android/youtube/app/a;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/youtube/app/ui/ei;->b:Z

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ei;->c:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/app/a;->a(Ljava/lang/String;ZLcom/google/android/youtube/core/b/aj;)V

    .line 183
    return-void
.end method
