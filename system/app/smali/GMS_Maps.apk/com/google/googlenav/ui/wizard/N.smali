.class public Lcom/google/googlenav/ui/wizard/N;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/ui/D;

.field private final b:Lcom/google/googlenav/h;

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Lcom/google/googlenav/ui/wizard/O;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/D;Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/O;ZZZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/N;->a:Lcom/google/googlenav/ui/D;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/N;->b:Lcom/google/googlenav/h;

    iput-boolean p4, p0, Lcom/google/googlenav/ui/wizard/N;->c:Z

    iput-boolean p5, p0, Lcom/google/googlenav/ui/wizard/N;->d:Z

    iput-boolean p6, p0, Lcom/google/googlenav/ui/wizard/N;->e:Z

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/N;->f:Lcom/google/googlenav/ui/wizard/O;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/N;)Lcom/google/googlenav/ui/D;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/N;->a:Lcom/google/googlenav/ui/D;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/N;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/N;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/N;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/N;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/N;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/N;->e:Z

    return v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/wizard/N;)Lcom/google/googlenav/h;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/N;->b:Lcom/google/googlenav/h;

    return-object v0
.end method

.method static synthetic f(Lcom/google/googlenav/ui/wizard/N;)Lcom/google/googlenav/ui/wizard/O;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/N;->f:Lcom/google/googlenav/ui/wizard/O;

    return-object v0
.end method
