.class public Lcom/estrongs/android/pop/d/c;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:[Ljava/lang/String;

.field public e:Z

.field public f:I

.field public g:Ljava/io/InputStream;

.field public h:Ljava/io/OutputStream;

.field public i:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v3, p0, Lcom/estrongs/android/pop/d/c;->a:J

    iput-wide v3, p0, Lcom/estrongs/android/pop/d/c;->b:J

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/d/c;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/d/c;->f:I

    iput-object v1, p0, Lcom/estrongs/android/pop/d/c;->g:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/estrongs/android/pop/d/c;->h:Ljava/io/OutputStream;

    iput-object v1, p0, Lcom/estrongs/android/pop/d/c;->i:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    aput-object p1, v0, v2

    iget-object v0, p0, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    iput-object p3, p0, Lcom/estrongs/android/pop/d/c;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/estrongs/android/pop/d/c;->b:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 12

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v3, p0, Lcom/estrongs/android/pop/d/c;->a:J

    iput-wide v3, p0, Lcom/estrongs/android/pop/d/c;->b:J

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/d/c;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/d/c;->f:I

    iput-object v1, p0, Lcom/estrongs/android/pop/d/c;->g:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/estrongs/android/pop/d/c;->h:Ljava/io/OutputStream;

    iput-object v1, p0, Lcom/estrongs/android/pop/d/c;->i:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    aput-object p1, v0, v2

    iget-object v0, p0, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    iput-object p3, p0, Lcom/estrongs/android/pop/d/c;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/estrongs/android/pop/d/c;->b:J

    iput p6, p0, Lcom/estrongs/android/pop/d/c;->f:I

    return-void
.end method


# virtual methods
.method a(J)V
    .registers 5

    iget-wide v0, p0, Lcom/estrongs/android/pop/d/c;->a:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/estrongs/android/pop/d/c;->a:J

    return-void
.end method
