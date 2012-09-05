.class final Lcom/google/android/youtube/googlemobile/masf/b/a/j;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lcom/google/android/youtube/googlemobile/masf/b/a/h;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/googlemobile/masf/b/a/h;II)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/j;->c:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.Chunk("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iput p2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/j;->a:I

    iput p3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/j;->b:I

    return-void
.end method
