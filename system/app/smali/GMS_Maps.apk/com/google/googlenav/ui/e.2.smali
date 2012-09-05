.class public Lcom/google/googlenav/ui/e;
.super Lcom/google/googlenav/ui/aj;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/ui/aj;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/e;->a:Z

    iput-boolean p1, p0, Lcom/google/googlenav/ui/e;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/e;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/e;->a:Z

    return v0
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/e;->a:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/e;->a:Z

    return v0
.end method
