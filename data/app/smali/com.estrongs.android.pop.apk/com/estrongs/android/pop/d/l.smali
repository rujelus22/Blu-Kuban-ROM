.class public Lcom/estrongs/android/pop/d/l;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Z

.field public c:Z

.field private d:J

.field private e:I

.field private f:I

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(JIILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/d/l;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/l;->i:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/d/l;->b:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/d/l;->c:Z

    iput-wide p1, p0, Lcom/estrongs/android/pop/d/l;->d:J

    iput p3, p0, Lcom/estrongs/android/pop/d/l;->e:I

    iput p4, p0, Lcom/estrongs/android/pop/d/l;->f:I

    iput-object p5, p0, Lcom/estrongs/android/pop/d/l;->h:Ljava/lang/String;

    iput-object p6, p0, Lcom/estrongs/android/pop/d/l;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/l;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/d/l;->e:I

    return v0
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/d/l;->g:Z

    return-void
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/estrongs/android/pop/d/l;->d:J

    return-wide v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/d/l;->f:I

    return v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/d/l;->g:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/d/l;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/d/l;->i:Ljava/lang/String;

    return-object v0
.end method
