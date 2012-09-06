.class public final Lcom/google/android/youtube/googlemobile/masf/b/a/h;
.super Lcom/google/android/youtube/googlemobile/masf/b/a/e;


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Ljava/lang/Object;

.field private c:Lcom/google/android/youtube/googlemobile/masf/f;

.field private d:Lcom/google/android/youtube/googlemobile/masf/a/d;

.field private e:Lcom/google/android/youtube/googlemobile/common/c/c;

.field private f:Lcom/google/android/youtube/googlemobile/common/c/b;

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/googlemobile/masf/f;Lcom/google/android/youtube/googlemobile/common/c/c;Lcom/google/android/youtube/googlemobile/masf/a/d;)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/b/a/e;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->a:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b:Ljava/lang/Object;

    const/16 v0, 0x4000

    iput v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->g:I

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->c:Lcom/google/android/youtube/googlemobile/masf/f;

    iput-object p2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->e:Lcom/google/android/youtube/googlemobile/common/c/c;

    iput-object p3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->d:Lcom/google/android/youtube/googlemobile/masf/a/d;

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/c/b;

    new-instance v1, Lcom/google/android/youtube/googlemobile/masf/b/a/m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/googlemobile/masf/b/a/m;-><init>(Lcom/google/android/youtube/googlemobile/masf/b/a/h;B)V

    invoke-direct {v0, p2, v1}, Lcom/google/android/youtube/googlemobile/common/c/b;-><init>(Lcom/google/android/youtube/googlemobile/common/c/c;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->f:Lcom/google/android/youtube/googlemobile/common/c/b;

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Lcom/google/android/youtube/googlemobile/masf/a/d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->d:Lcom/google/android/youtube/googlemobile/masf/a/d;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)I
    .registers 2

    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->g:I

    return v0
.end method

.method static synthetic b(Ljava/lang/String;)V
    .registers 1

    invoke-static {}, Lcom/google/android/youtube/googlemobile/common/e;->a()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Lcom/google/android/youtube/googlemobile/masf/f;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->c:Lcom/google/android/youtube/googlemobile/masf/f;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Ljava/util/Vector;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->a:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Lcom/google/android/youtube/googlemobile/common/c/c;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->e:Lcom/google/android/youtube/googlemobile/common/c/c;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Lcom/google/android/youtube/googlemobile/common/c/b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->f:Lcom/google/android/youtube/googlemobile/common/c/b;

    return-object v0
.end method
