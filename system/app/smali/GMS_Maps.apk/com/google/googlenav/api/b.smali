.class final Lcom/google/googlenav/api/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Z

.field final b:Ljava/lang/String;

.field final c:J


# direct methods
.method private constructor <init>(ZLjava/lang/String;J)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean p1, p0, Lcom/google/googlenav/api/b;->a:Z

    .line 43
    iput-object p2, p0, Lcom/google/googlenav/api/b;->b:Ljava/lang/String;

    .line 44
    iput-wide p3, p0, Lcom/google/googlenav/api/b;->c:J

    .line 45
    return-void
.end method

.method static a()Lcom/google/googlenav/api/b;
    .registers 5

    .prologue
    .line 49
    new-instance v0, Lcom/google/googlenav/api/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/api/b;-><init>(ZLjava/lang/String;J)V

    return-object v0
.end method

.method static a(Ljava/lang/String;J)Lcom/google/googlenav/api/b;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 54
    new-instance v0, Lcom/google/googlenav/api/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/google/googlenav/api/b;-><init>(ZLjava/lang/String;J)V

    return-object v0
.end method
