.class public Lcom/estrongs/android/pop/d/o;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(JLjava/lang/String;II)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/d/o;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/o;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/o;->f:Ljava/util/Map;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/o;->g:Ljava/util/Map;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/o;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/o;->i:Ljava/lang/Throwable;

    iput-wide p1, p0, Lcom/estrongs/android/pop/d/o;->a:J

    iput-object p3, p0, Lcom/estrongs/android/pop/d/o;->b:Ljava/lang/String;

    iput p4, p0, Lcom/estrongs/android/pop/d/o;->d:I

    iput p5, p0, Lcom/estrongs/android/pop/d/o;->e:I

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/estrongs/android/pop/d/o;->a:J

    return-wide v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/d/o;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/d/o;->i:Ljava/lang/Throwable;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/pop/d/o;->f:Ljava/util/Map;

    return-void
.end method

.method public b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/d/o;->f:Ljava/util/Map;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/d/o;->h:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/pop/d/o;->g:Ljava/util/Map;

    return-void
.end method

.method public c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/d/o;->g:Ljava/util/Map;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/d/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/d/o;->e:I

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/d/o;->d:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/d/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/d/o;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/d/o;->i:Ljava/lang/Throwable;

    return-object v0
.end method
