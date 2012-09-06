.class LF/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LF/b;

.field private final b:J

.field private final c:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(LF/b;JLjava/lang/Runnable;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, LF/d;->a:LF/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-wide p2, p0, LF/d;->b:J

    .line 71
    iput-object p4, p0, LF/d;->c:Ljava/lang/Runnable;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(LF/b;JLjava/lang/Runnable;LF/c;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, LF/d;-><init>(LF/b;JLjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 76
    iget-object v0, p0, LF/d;->a:LF/b;

    invoke-static {v0}, LF/b;->a(LF/b;)LF/a;

    move-result-object v0

    invoke-virtual {v0}, LF/a;->b()J

    move-result-wide v0

    .line 77
    iget-wide v2, p0, LF/d;->b:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_25

    .line 78
    iget-object v2, p0, LF/d;->a:LF/b;

    iget-wide v3, p0, LF/d;->b:J

    sub-long v0, v3, v0

    long-to-double v0, v0

    iget-object v3, p0, LF/d;->a:LF/b;

    invoke-static {v3}, LF/b;->a(LF/b;)LF/a;

    move-result-object v3

    iget-wide v3, v3, LF/a;->a:D

    div-double/2addr v0, v3

    double-to-long v0, v0

    invoke-static {v2, p0, v0, v1}, LF/b;->a(LF/b;Ljava/lang/Runnable;J)Z

    .line 84
    :goto_24
    return-void

    .line 81
    :cond_25
    iget-object v0, p0, LF/d;->a:LF/b;

    invoke-static {v0}, LF/b;->b(LF/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, LF/d;->a:LF/b;

    iget-object v1, p0, LF/d;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, LF/b;->b(Ljava/lang/Runnable;)Z

    goto :goto_24
.end method
