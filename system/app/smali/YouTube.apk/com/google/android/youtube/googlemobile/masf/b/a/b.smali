.class final Lcom/google/android/youtube/googlemobile/masf/b/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/b;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/b;->b:J

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/b;->b:J

    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/b;->a:Ljava/lang/String;

    return-object v0
.end method
