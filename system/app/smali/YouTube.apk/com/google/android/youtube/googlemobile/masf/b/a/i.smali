.class final Lcom/google/android/youtube/googlemobile/masf/b/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/google/android/youtube/googlemobile/masf/b/a/c;

.field private b:Lcom/google/android/youtube/googlemobile/masf/a/o;

.field private c:Ljava/lang/Exception;

.field private d:J

.field private e:J

.field private f:I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/googlemobile/masf/b/a/c;JJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/i;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/c;

    iput-wide p2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/i;->d:J

    iput-wide p4, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/i;->e:J

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/i;->f:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/googlemobile/masf/b/a/c;Lcom/google/android/youtube/googlemobile/masf/a/o;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/i;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/c;

    iput-object p2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/i;->b:Lcom/google/android/youtube/googlemobile/masf/a/o;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/i;->f:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/googlemobile/masf/b/a/c;Ljava/lang/Exception;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/i;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/c;

    iput-object p2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/i;->c:Ljava/lang/Exception;

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/i;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/i;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/c;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/c;->d()Lcom/google/android/youtube/googlemobile/masf/b/a/d;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/i;->f:I

    packed-switch v0, :pswitch_data_24

    goto :goto_8

    :pswitch_f
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/i;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/c;

    goto :goto_8

    :pswitch_12
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/i;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/c;

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/i;->b:Lcom/google/android/youtube/googlemobile/masf/a/o;

    goto :goto_8

    :pswitch_17
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/i;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/c;

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/i;->c:Ljava/lang/Exception;

    goto :goto_8

    :pswitch_1c
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/i;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/c;

    iget-wide v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/i;->d:J

    iget-wide v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/i;->e:J

    goto :goto_8

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_f
        :pswitch_12
        :pswitch_17
        :pswitch_1c
    .end packed-switch
.end method
