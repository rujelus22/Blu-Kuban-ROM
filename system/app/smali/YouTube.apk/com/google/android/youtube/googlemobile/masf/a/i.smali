.class public final Lcom/google/android/youtube/googlemobile/masf/a/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/youtube/googlemobile/masf/a/b;

.field private b:Ljava/util/Vector;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(IILcom/google/android/youtube/googlemobile/masf/a/b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/youtube/googlemobile/masf/a/i;->c:I

    iput p2, p0, Lcom/google/android/youtube/googlemobile/masf/a/i;->d:I

    iput-object p3, p0, Lcom/google/android/youtube/googlemobile/masf/a/i;->a:Lcom/google/android/youtube/googlemobile/masf/a/b;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/i;->b:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/googlemobile/masf/a/h;
    .registers 6

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/i;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/youtube/googlemobile/masf/a/b;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/i;->b:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/youtube/googlemobile/masf/a/h;

    iget v2, p0, Lcom/google/android/youtube/googlemobile/masf/a/i;->c:I

    iget v3, p0, Lcom/google/android/youtube/googlemobile/masf/a/i;->d:I

    iget-object v4, p0, Lcom/google/android/youtube/googlemobile/masf/a/i;->a:Lcom/google/android/youtube/googlemobile/masf/a/b;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/youtube/googlemobile/masf/a/h;-><init>(IILcom/google/android/youtube/googlemobile/masf/a/b;[Lcom/google/android/youtube/googlemobile/masf/a/b;)V

    return-object v1
.end method

.method public final a(Lcom/google/android/youtube/googlemobile/masf/a/b;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/i;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method
