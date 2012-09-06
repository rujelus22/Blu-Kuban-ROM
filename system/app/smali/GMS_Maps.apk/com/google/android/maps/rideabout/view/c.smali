.class public Lcom/google/android/maps/rideabout/view/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC/y;
.implements Lcom/google/googlenav/ui/view/android/rideabout/i;


# instance fields
.field private final a:LE/h;

.field private final b:LC/x;


# direct methods
.method private constructor <init>(LaP/d;LC/x;Lcom/google/android/maps/rideabout/app/j;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, LE/h;

    invoke-direct {v0, p1, p2, p3}, LE/h;-><init>(LaP/d;LC/x;Lcom/google/android/maps/rideabout/app/j;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LE/h;

    .line 35
    iput-object p2, p0, Lcom/google/android/maps/rideabout/view/c;->b:LC/x;

    .line 36
    return-void
.end method

.method public static a(LaP/d;LC/x;Lcom/google/android/maps/rideabout/app/j;)Lcom/google/android/maps/rideabout/view/c;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/maps/rideabout/view/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/maps/rideabout/view/c;-><init>(LaP/d;LC/x;Lcom/google/android/maps/rideabout/app/j;)V

    .line 51
    invoke-static {}, Lcom/google/googlenav/ui/view/android/cc;->a()Lcom/google/googlenav/ui/view/android/cc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/cc;->a(Lcom/google/android/maps/rideabout/view/c;)V

    .line 52
    invoke-interface {p1, v0}, LC/x;->a(LC/y;)V

    .line 53
    return-object v0
.end method

.method public static a(Lcom/google/android/maps/rideabout/view/c;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    invoke-static {}, Lcom/google/googlenav/ui/view/android/cc;->a()Lcom/google/googlenav/ui/view/android/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cc;->g()V

    .line 62
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->b:LC/x;

    invoke-interface {v0, p0}, LC/x;->b(LC/y;)V

    .line 63
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 137
    const/16 v0, 0x61

    const-string v1, "a"

    invoke-static {v0, v1, p1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LE/h;

    invoke-virtual {v0}, LE/h;->b()LE/k;

    move-result-object v0

    invoke-virtual {v0}, LE/k;->h()V

    .line 92
    return-void
.end method

.method public a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LE/h;

    invoke-virtual {v0}, LE/h;->b()LE/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LE/k;->a(II)V

    .line 88
    return-void
.end method

.method public a(LC/z;)V
    .registers 4
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LE/h;

    invoke-virtual {v0, p1}, LE/h;->a(LC/z;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 84
    :goto_8
    return-void

    .line 73
    :cond_9
    sget-object v0, Lcom/google/android/maps/rideabout/view/d;->a:[I

    iget-object v1, p1, LC/z;->b:LC/A;

    invoke-virtual {v1}, LC/A;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    goto :goto_8

    .line 75
    :pswitch_17
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LE/h;

    invoke-virtual {v0}, LE/h;->b()LE/k;

    move-result-object v0

    invoke-virtual {v0, p1}, LE/k;->a(LC/z;)V

    goto :goto_8

    .line 78
    :pswitch_21
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LE/h;

    invoke-virtual {v0}, LE/h;->b()LE/k;

    move-result-object v0

    invoke-virtual {v0, p1}, LE/k;->b(LC/z;)V

    goto :goto_8

    .line 81
    :pswitch_2b
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LE/h;

    invoke-virtual {v0}, LE/h;->b()LE/k;

    move-result-object v0

    invoke-virtual {v0, p1}, LE/k;->c(LC/z;)V

    goto :goto_8

    .line 73
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_17
        :pswitch_21
        :pswitch_2b
    .end packed-switch
.end method

.method public a(ZIIII)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LE/h;

    invoke-virtual {v0}, LE/h;->b()LE/k;

    move-result-object v0

    invoke-virtual {v0}, LE/k;->j()V

    .line 117
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LE/h;

    invoke-virtual {v0}, LE/h;->b()LE/k;

    move-result-object v0

    invoke-virtual {v0}, LE/k;->i()V

    .line 96
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 100
    const-string v0, "c"

    invoke-direct {p0, v0}, Lcom/google/android/maps/rideabout/view/c;->a(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LE/h;

    invoke-virtual {v0}, LE/h;->b()LE/k;

    move-result-object v0

    invoke-virtual {v0}, LE/k;->p()V

    .line 103
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 107
    const-string v0, "o"

    invoke-direct {p0, v0}, Lcom/google/android/maps/rideabout/view/c;->a(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lay/a;->z()Lay/a;

    move-result-object v0

    invoke-virtual {v0}, Lay/a;->x()V

    .line 110
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LE/h;

    invoke-virtual {v0}, LE/h;->b()LE/k;

    move-result-object v0

    invoke-virtual {v0}, LE/k;->p()V

    .line 111
    invoke-static {}, Lay/a;->z()Lay/a;

    move-result-object v0

    invoke-virtual {v0}, Lay/a;->n()V

    .line 112
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LE/h;

    invoke-virtual {v0}, LE/h;->b()LE/k;

    move-result-object v0

    invoke-virtual {v0}, LE/k;->d()V

    .line 121
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LE/h;

    invoke-virtual {v0}, LE/h;->b()LE/k;

    move-result-object v0

    invoke-virtual {v0}, LE/k;->c()V

    .line 125
    return-void
.end method

.method public g()V
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LE/h;

    invoke-virtual {v0}, LE/h;->b()LE/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LE/k;->a(Z)V

    .line 129
    return-void
.end method

.method public h()LE/h;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LE/h;

    return-object v0
.end method

.method public i()LC/z;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LE/h;

    invoke-virtual {v0}, LE/h;->c()LE/j;

    move-result-object v0

    invoke-virtual {v0}, LE/j;->a()LC/z;

    move-result-object v0

    return-object v0
.end method
