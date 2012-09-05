.class Lcom/google/googlenav/friend/reporting/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method constructor <init>(ZZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/googlenav/friend/reporting/f;->a:Z

    iput-boolean p2, p0, Lcom/google/googlenav/friend/reporting/f;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/friend/reporting/f;->a:Z

    return v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/friend/reporting/f;->b:Z

    return v0
.end method
