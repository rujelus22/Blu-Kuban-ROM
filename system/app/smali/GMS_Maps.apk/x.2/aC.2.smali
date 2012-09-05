.class final Lx/aC;
.super Ljava/lang/Object;

# interfaces
.implements Lx/aE;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt/af;Lt/ao;)Z
    .registers 5

    invoke-virtual {p1}, Lt/af;->b()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
