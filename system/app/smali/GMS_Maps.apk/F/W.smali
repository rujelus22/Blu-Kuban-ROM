.class LF/W;
.super Ljava/lang/Object;


# instance fields
.field private a:LF/C;

.field private b:LF/C;

.field private c:LF/C;

.field private d:LF/R;

.field private e:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LF/C;
    .registers 2

    iget-object v0, p0, LF/W;->a:LF/C;

    return-object v0
.end method

.method public a(LF/C;)V
    .registers 5

    iget-object v0, p1, LF/C;->a:LF/R;

    iget-object v1, p1, LF/C;->b:LF/D;

    sget-object v2, LF/D;->a:LF/D;

    if-ne v1, v2, :cond_2e

    iput-object v0, p0, LF/W;->d:LF/R;

    iget-object v1, p0, LF/W;->b:LF/C;

    if-eqz v1, :cond_1e

    iget-object v1, p0, LF/W;->b:LF/C;

    iget-object v1, v1, LF/C;->c:Lbc/a;

    iget-object v1, v1, Lbc/a;->a:Lbc/t;

    iget-object v2, p1, LF/C;->c:Lbc/a;

    iget-object v2, v2, Lbc/a;->a:Lbc/t;

    invoke-virtual {v1, v2}, Lbc/t;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    :cond_1e
    invoke-virtual {v0}, LF/R;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, LF/W;->e:J

    :cond_24
    iput-object p1, p0, LF/W;->b:LF/C;

    invoke-virtual {v0}, LF/R;->b()Z

    move-result v0

    if-eqz v0, :cond_2e

    iput-object p1, p0, LF/W;->c:LF/C;

    :cond_2e
    iput-object p1, p0, LF/W;->a:LF/C;

    return-void
.end method

.method public b()LF/C;
    .registers 2

    iget-object v0, p0, LF/W;->c:LF/C;

    return-object v0
.end method

.method public c()LF/R;
    .registers 2

    iget-object v0, p0, LF/W;->d:LF/R;

    return-object v0
.end method

.method public d()J
    .registers 3

    iget-wide v0, p0, LF/W;->e:J

    return-wide v0
.end method
