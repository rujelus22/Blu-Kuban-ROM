.class Lcom/estrongs/android/pop/view/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/y;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/a/e;

.field private b:J

.field private c:J


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/a/e;)V
    .registers 4

    const-wide/16 v0, 0x0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/a/g;->a:Lcom/estrongs/android/pop/view/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/a/g;->b:J

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/a/g;->c:J

    return-void
.end method

.method private a(Lcom/estrongs/android/util/v;I)V
    .registers 7

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/a/g;->a:Lcom/estrongs/android/pop/view/a/e;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/pop/view/a/e;->a(Landroid/os/Message;J)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/estrongs/android/util/v;

    iget-object v0, p1, Lcom/estrongs/android/util/v;->d:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/view/a/k;

    const/4 v1, 0x1

    iput v1, v0, Lcom/estrongs/android/pop/view/a/k;->k:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/a/g;->a:Lcom/estrongs/android/pop/view/a/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/e;->a(Lcom/estrongs/android/pop/view/a/e;)V

    const v0, 0x1e246

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/view/a/g;->a(Lcom/estrongs/android/util/v;I)V

    return-void
.end method

.method public a(Ljava/lang/Object;JJ)V
    .registers 11

    check-cast p1, Lcom/estrongs/android/util/v;

    iget-object v0, p1, Lcom/estrongs/android/util/v;->d:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/view/a/k;

    iget-wide v1, v0, Lcom/estrongs/android/pop/view/a/k;->m:J

    invoke-virtual {p1}, Lcom/estrongs/android/util/v;->g()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1b

    invoke-virtual {p1}, Lcom/estrongs/android/util/v;->g()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/estrongs/android/pop/view/a/k;->m:J

    iget-object v1, p0, Lcom/estrongs/android/pop/view/a/g;->a:Lcom/estrongs/android/pop/view/a/e;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/a/e;->a(Lcom/estrongs/android/pop/view/a/e;)V

    :cond_1b
    invoke-virtual {p1}, Lcom/estrongs/android/util/v;->a()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/estrongs/android/pop/view/a/k;->n:J

    const v0, 0x1e247

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/view/a/g;->a(Lcom/estrongs/android/util/v;I)V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 10

    const/4 v6, 0x5

    const/4 v5, 0x1

    check-cast p1, Lcom/estrongs/android/util/v;

    iget-object v0, p1, Lcom/estrongs/android/util/v;->d:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/view/a/k;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserCannelled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p1}, Lcom/estrongs/android/util/v;->h()V

    iget v1, v0, Lcom/estrongs/android/pop/view/a/k;->k:I

    if-eq v1, v6, :cond_25

    iget v1, v0, Lcom/estrongs/android/pop/view/a/k;->k:I

    if-ne v1, v5, :cond_2d

    :cond_25
    const/4 v1, 0x0

    iput v1, v0, Lcom/estrongs/android/pop/view/a/k;->k:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/a/g;->a:Lcom/estrongs/android/pop/view/a/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/e;->a(Lcom/estrongs/android/pop/view/a/e;)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    invoke-virtual {p1}, Lcom/estrongs/android/util/v;->a()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/estrongs/android/pop/view/a/g;->b:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_42

    invoke-virtual {p1}, Lcom/estrongs/android/util/v;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/a/g;->b:J

    invoke-virtual {p1}, Lcom/estrongs/android/util/v;->f()V

    goto :goto_2d

    :cond_42
    iget-wide v1, p0, Lcom/estrongs/android/pop/view/a/g;->c:J

    const-wide/16 v3, 0x3

    cmp-long v1, v1, v3

    if-gez v1, :cond_55

    invoke-virtual {p1}, Lcom/estrongs/android/util/v;->f()V

    iget-wide v0, p0, Lcom/estrongs/android/pop/view/a/g;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/a/g;->c:J

    goto :goto_2d

    :cond_55
    iget v1, v0, Lcom/estrongs/android/pop/view/a/k;->k:I

    if-eq v1, v6, :cond_5d

    iget v1, v0, Lcom/estrongs/android/pop/view/a/k;->k:I

    if-ne v1, v5, :cond_65

    :cond_5d
    const/4 v1, 0x2

    iput v1, v0, Lcom/estrongs/android/pop/view/a/k;->k:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/a/g;->a:Lcom/estrongs/android/pop/view/a/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/e;->a(Lcom/estrongs/android/pop/view/a/e;)V

    :cond_65
    const v0, 0x1e245

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/view/a/g;->a(Lcom/estrongs/android/util/v;I)V

    goto :goto_2d
.end method

.method public b(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/estrongs/android/util/v;

    iget-object v0, p1, Lcom/estrongs/android/util/v;->d:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/view/a/k;

    const/4 v1, 0x3

    iput v1, v0, Lcom/estrongs/android/pop/view/a/k;->k:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/a/g;->a:Lcom/estrongs/android/pop/view/a/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/e;->a(Lcom/estrongs/android/pop/view/a/e;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/a/g;->a:Lcom/estrongs/android/pop/view/a/e;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/e;->a(Lcom/estrongs/android/pop/view/a/e;Lcom/estrongs/android/util/v;)V

    const v0, 0x1e248

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/view/a/g;->a(Lcom/estrongs/android/util/v;I)V

    return-void
.end method
