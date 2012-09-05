.class public LH/h;
.super Ljava/lang/Object;


# instance fields
.field private a:LH/k;

.field private b:LH/n;

.field private c:Ljava/lang/Thread;

.field private d:LH/j;

.field private e:Lbc/d;


# direct methods
.method public constructor <init>(Lbc/d;LF/A;Lcom/google/android/maps/rideabout/app/l;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, LH/h;->c:Ljava/lang/Thread;

    new-instance v0, LH/j;

    sget-object v1, Lcom/google/android/maps/rideabout/app/c;->h:Lcom/google/android/maps/rideabout/app/c;

    invoke-direct {v0, p1, v1, p0, p3}, LH/j;-><init>(Lbc/d;Lcom/google/android/maps/rideabout/app/c;LH/h;Lcom/google/android/maps/rideabout/app/l;)V

    iput-object v0, p0, LH/h;->d:LH/j;

    iput-object p1, p0, LH/h;->e:Lbc/d;

    iget-object v0, p0, LH/h;->d:LH/j;

    invoke-static {p0, p1, p2, v0}, LH/k;->a(LH/h;Lbc/d;LF/A;LH/j;)V

    sget-object v0, LH/n;->b:LH/n;

    invoke-virtual {p0, v0}, LH/h;->a(LH/n;)LH/k;

    return-void
.end method


# virtual methods
.method public a(LH/n;)LH/k;
    .registers 4

    invoke-virtual {p0}, LH/h;->a()V

    iget-object v0, p0, LH/h;->b:LH/n;

    if-eq p1, v0, :cond_2e

    iget-object v0, p0, LH/h;->a:LH/k;

    if-eqz v0, :cond_10

    iget-object v0, p0, LH/h;->a:LH/k;

    invoke-virtual {v0}, LH/k;->g()V

    :cond_10
    iput-object p1, p0, LH/h;->b:LH/n;

    sget-object v0, LH/i;->a:[I

    invoke-virtual {p1}, LH/n;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25
    sget-object v0, LH/e;->a:LH/e;

    iput-object v0, p0, LH/h;->a:LH/k;

    :goto_29
    iget-object v0, p0, LH/h;->a:LH/k;

    invoke-virtual {v0}, LH/k;->b()V

    :cond_2e
    iget-object v0, p0, LH/h;->a:LH/k;

    return-object v0

    :pswitch_31
    sget-object v0, LH/f;->a:LH/f;

    iput-object v0, p0, LH/h;->a:LH/k;

    goto :goto_29

    :pswitch_36
    sget-object v0, LH/a;->a:LH/a;

    iput-object v0, p0, LH/h;->a:LH/k;

    goto :goto_29

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_25
        :pswitch_31
        :pswitch_36
    .end packed-switch
.end method

.method public final a()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, LH/h;->c:Ljava/lang/Thread;

    if-eq v0, v1, :cond_10

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation must be called on main (UI) thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    return-void
.end method

.method public a(LF/C;)Z
    .registers 4

    invoke-virtual {p0}, LH/h;->a()V

    iget-object v0, p0, LH/h;->d:LH/j;

    invoke-virtual {v0}, LH/j;->a()LF/C;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p1, LF/C;->c:Lbc/a;

    if-eqz v0, :cond_1f

    iget-object v0, p0, LH/h;->e:Lbc/d;

    iget-object v1, p1, LF/C;->c:Lbc/a;

    invoke-virtual {v0, v1}, Lbc/d;->a(Lbc/a;)Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0

    :cond_1f
    iget-object v0, p0, LH/h;->d:LH/j;

    invoke-virtual {v0, p1}, LH/j;->a(LF/C;)V

    iget-object v0, p0, LH/h;->d:LH/j;

    invoke-virtual {v0, p1}, LH/j;->b(LF/C;)V

    const/4 v0, 0x1

    goto :goto_1e
.end method

.method public b()LH/k;
    .registers 2

    invoke-virtual {p0}, LH/h;->a()V

    iget-object v0, p0, LH/h;->a:LH/k;

    return-object v0
.end method

.method public c()LH/j;
    .registers 2

    iget-object v0, p0, LH/h;->d:LH/j;

    return-object v0
.end method
