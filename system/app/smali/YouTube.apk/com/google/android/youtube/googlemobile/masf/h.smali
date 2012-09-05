.class final Lcom/google/android/youtube/googlemobile/masf/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/googlemobile/masf/a/m;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/android/youtube/googlemobile/masf/f;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/googlemobile/masf/f;Lcom/google/android/youtube/googlemobile/masf/a/m;Z)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/h;->c:Lcom/google/android/youtube/googlemobile/masf/f;

    iput-object p2, p0, Lcom/google/android/youtube/googlemobile/masf/h;->a:Lcom/google/android/youtube/googlemobile/masf/a/m;

    iput-boolean p3, p0, Lcom/google/android/youtube/googlemobile/masf/h;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/h;->c:Lcom/google/android/youtube/googlemobile/masf/f;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/h;->a:Lcom/google/android/youtube/googlemobile/masf/a/m;

    iget-boolean v2, p0, Lcom/google/android/youtube/googlemobile/masf/h;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/googlemobile/masf/f;->a(Lcom/google/android/youtube/googlemobile/masf/a/m;Z)V

    return-void
.end method
