.class LI/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LI/b;

.field private final b:J

.field private final c:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(LI/b;JLjava/lang/Runnable;)V
    .registers 5

    iput-object p1, p0, LI/d;->a:LI/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, LI/d;->b:J

    iput-object p4, p0, LI/d;->c:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(LI/b;JLjava/lang/Runnable;LI/c;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, LI/d;-><init>(LI/b;JLjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, LI/d;->a:LI/b;

    invoke-static {v0}, LI/b;->a(LI/b;)LI/a;

    move-result-object v0

    invoke-virtual {v0}, LI/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, LI/d;->b:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_25

    iget-object v2, p0, LI/d;->a:LI/b;

    iget-wide v3, p0, LI/d;->b:J

    sub-long v0, v3, v0

    long-to-double v0, v0

    iget-object v3, p0, LI/d;->a:LI/b;

    invoke-static {v3}, LI/b;->a(LI/b;)LI/a;

    move-result-object v3

    iget-wide v3, v3, LI/a;->a:D

    div-double/2addr v0, v3

    double-to-long v0, v0

    invoke-static {v2, p0, v0, v1}, LI/b;->a(LI/b;Ljava/lang/Runnable;J)Z

    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, LI/d;->a:LI/b;

    invoke-static {v0}, LI/b;->b(LI/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LI/d;->a:LI/b;

    iget-object v1, p0, LI/d;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, LI/b;->b(Ljava/lang/Runnable;)Z

    goto :goto_24
.end method
