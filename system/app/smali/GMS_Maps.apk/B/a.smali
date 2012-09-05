.class public abstract LB/a;
.super Lcom/google/android/maps/driveabout/vector/aE;


# instance fields
.field private a:LB/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aE;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LB/b;)V
    .registers 2

    iput-object p1, p0, LB/a;->a:LB/b;

    return-void
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()LB/b;
    .registers 2

    iget-object v0, p0, LB/a;->a:LB/b;

    return-object v0
.end method

.method public i()V
    .registers 1

    return-void
.end method

.method public s_()I
    .registers 2

    const v0, 0xdbba0

    return v0
.end method
