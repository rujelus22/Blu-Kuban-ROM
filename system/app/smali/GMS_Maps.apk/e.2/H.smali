.class public LE/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LE/k;

.field private b:LE/n;

.field private c:Ljava/lang/Thread;

.field private d:LE/j;

.field private e:LaP/d;


# direct methods
.method public constructor <init>(LaP/d;LC/x;Lcom/google/android/maps/rideabout/app/j;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, LE/h;->c:Ljava/lang/Thread;

    .line 35
    new-instance v0, LE/j;

    sget-object v1, Lcom/google/android/maps/rideabout/app/c;->h:Lcom/google/android/maps/rideabout/app/c;

    invoke-direct {v0, p1, v1, p0, p3}, LE/j;-><init>(LaP/d;Lcom/google/android/maps/rideabout/app/c;LE/h;Lcom/google/android/maps/rideabout/app/j;)V

    iput-object v0, p0, LE/h;->d:LE/j;

    .line 37
    iput-object p1, p0, LE/h;->e:LaP/d;

    .line 38
    iget-object v0, p0, LE/h;->d:LE/j;

    invoke-static {p0, p1, p2, v0}, LE/k;->a(LE/h;LaP/d;LC/x;LE/j;)V

    .line 39
    sget-object v0, LE/n;->b:LE/n;

    invoke-virtual {p0, v0}, LE/h;->a(LE/n;)LE/k;

    .line 40
    return-void
.end method


# virtual methods
.method public a(LE/n;)LE/k;
    .registers 4
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0}, LE/h;->a()V

    .line 50
    iget-object v0, p0, LE/h;->b:LE/n;

    if-eq p1, v0, :cond_2e

    .line 51
    iget-object v0, p0, LE/h;->a:LE/k;

    if-eqz v0, :cond_10

    .line 52
    iget-object v0, p0, LE/h;->a:LE/k;

    invoke-virtual {v0}, LE/k;->g()V

    .line 54
    :cond_10
    iput-object p1, p0, LE/h;->b:LE/n;

    .line 55
    sget-object v0, LE/i;->a:[I

    invoke-virtual {p1}, LE/n;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :pswitch_25
    sget-object v0, LE/e;->a:LE/e;

    iput-object v0, p0, LE/h;->a:LE/k;

    .line 68
    :goto_29
    iget-object v0, p0, LE/h;->a:LE/k;

    invoke-virtual {v0}, LE/k;->b()V

    .line 70
    :cond_2e
    iget-object v0, p0, LE/h;->a:LE/k;

    return-object v0

    .line 60
    :pswitch_31
    sget-object v0, LE/f;->a:LE/f;

    iput-object v0, p0, LE/h;->a:LE/k;

    goto :goto_29

    .line 63
    :pswitch_36
    sget-object v0, LE/a;->a:LE/a;

    iput-object v0, p0, LE/h;->a:LE/k;

    goto :goto_29

    .line 55
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

    .prologue
    .line 96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, LE/h;->c:Ljava/lang/Thread;

    if-eq v0, v1, :cond_10

    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation must be called on main (UI) thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_10
    return-void
.end method

.method public a(LC/z;)Z
    .registers 4
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0}, LE/h;->a()V

    .line 82
    iget-object v0, p0, LE/h;->d:LE/j;

    invoke-virtual {v0}, LE/j;->a()LC/z;

    move-result-object v0

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p1, LC/z;->c:LaP/a;

    if-eqz v0, :cond_1f

    iget-object v0, p0, LE/h;->e:LaP/d;

    iget-object v1, p1, LC/z;->c:LaP/a;

    invoke-virtual {v0, v1}, LaP/d;->a(LaP/a;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 85
    :cond_1d
    const/4 v0, 0x0

    .line 89
    :goto_1e
    return v0

    .line 87
    :cond_1f
    iget-object v0, p0, LE/h;->d:LE/j;

    invoke-virtual {v0, p1}, LE/j;->a(LC/z;)V

    .line 88
    iget-object v0, p0, LE/h;->d:LE/j;

    invoke-virtual {v0, p1}, LE/j;->b(LC/z;)V

    .line 89
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method public b()LE/k;
    .registers 2

    .prologue
    .line 102
    invoke-virtual {p0}, LE/h;->a()V

    .line 103
    iget-object v0, p0, LE/h;->a:LE/k;

    return-object v0
.end method

.method public c()LE/j;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, LE/h;->d:LE/j;

    return-object v0
.end method
