.class Lcom/estrongs/android/pop/c/b;
.super Ljava/io/InputStream;


# instance fields
.field private a:Ljcifs/smb/bg;

.field private b:J

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Ljcifs/smb/bg;J)V
    .registers 7

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/c/b;->a:Ljcifs/smb/bg;

    iput-wide v1, p0, Lcom/estrongs/android/pop/c/b;->b:J

    iput-wide v1, p0, Lcom/estrongs/android/pop/c/b;->c:J

    iput-wide v1, p0, Lcom/estrongs/android/pop/c/b;->d:J

    iput-object p1, p0, Lcom/estrongs/android/pop/c/b;->a:Ljcifs/smb/bg;

    iput-wide p2, p0, Lcom/estrongs/android/pop/c/b;->c:J

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/c/b;->a:Ljcifs/smb/bg;

    invoke-virtual {v0}, Ljcifs/smb/bg;->b()V

    return-void
.end method

.method public read()I
    .registers 6

    iget-wide v0, p0, Lcom/estrongs/android/pop/c/b;->c:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/c/b;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const/4 v0, -0x1

    :cond_c
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/pop/c/b;->a:Ljcifs/smb/bg;

    invoke-virtual {v0}, Ljcifs/smb/bg;->a()I

    move-result v0

    if-ltz v0, :cond_c

    iget-wide v1, p0, Lcom/estrongs/android/pop/c/b;->d:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/estrongs/android/pop/c/b;->d:J

    goto :goto_c
.end method

.method public read([B)I
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/estrongs/android/pop/c/b;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 10

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lcom/estrongs/android/pop/c/b;->c:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/estrongs/android/pop/c/b;->a:Ljcifs/smb/bg;

    invoke-virtual {v0, p1, p2, p3}, Ljcifs/smb/bg;->a([BII)I

    move-result v0

    if-ltz v0, :cond_16

    iget-wide v1, p0, Lcom/estrongs/android/pop/c/b;->d:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/estrongs/android/pop/c/b;->d:J

    :cond_16
    :goto_16
    return v0

    :cond_17
    iget-wide v0, p0, Lcom/estrongs/android/pop/c/b;->c:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/c/b;->d:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-nez v2, :cond_22

    const/4 v0, -0x1

    goto :goto_16

    :cond_22
    int-to-long v2, p3

    cmp-long v2, v2, v0

    if-gez v2, :cond_36

    iget-object v0, p0, Lcom/estrongs/android/pop/c/b;->a:Ljcifs/smb/bg;

    invoke-virtual {v0, p1, p2, p3}, Ljcifs/smb/bg;->a([BII)I

    move-result v0

    :goto_2d
    if-ltz v0, :cond_16

    iget-wide v1, p0, Lcom/estrongs/android/pop/c/b;->d:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/estrongs/android/pop/c/b;->d:J

    goto :goto_16

    :cond_36
    iget-object v2, p0, Lcom/estrongs/android/pop/c/b;->a:Ljcifs/smb/bg;

    long-to-int v0, v0

    invoke-virtual {v2, p1, p2, v0}, Ljcifs/smb/bg;->a([BII)I

    move-result v0

    goto :goto_2d
.end method
