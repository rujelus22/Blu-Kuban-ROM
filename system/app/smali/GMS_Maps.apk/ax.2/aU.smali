.class public Lax/aU;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lax/aU;->a:J

    iput-wide p3, p0, Lax/aU;->b:J

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lax/aU;->a:J

    return-wide v0
.end method

.method public a(Lax/aP;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    invoke-virtual {p1}, Lax/aP;->M()Z

    move-result v2

    if-eqz v2, :cond_d

    move v0, v1

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Lax/aP;->K()Z

    move-result v2

    if-nez v2, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    iget-wide v2, p0, Lax/aU;->b:J

    invoke-virtual {p1}, Lax/aP;->r()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    move v0, v1

    goto :goto_4
.end method
