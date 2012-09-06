.class public LE/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LC/z;

.field private b:LaP/a;

.field private c:LaP/t;

.field private d:Lcom/google/android/maps/rideabout/app/c;

.field private final e:Lcom/google/android/maps/rideabout/app/a;

.field private final f:LE/h;

.field private final g:Lcom/google/android/maps/rideabout/app/j;


# direct methods
.method public constructor <init>(LaP/d;Lcom/google/android/maps/rideabout/app/c;LE/h;Lcom/google/android/maps/rideabout/app/j;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/google/android/maps/rideabout/app/a;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/rideabout/app/a;-><init>(LaP/d;Lcom/google/android/maps/rideabout/app/c;)V

    iput-object v0, p0, LE/j;->e:Lcom/google/android/maps/rideabout/app/a;

    .line 47
    iput-object p3, p0, LE/j;->f:LE/h;

    .line 48
    iput-object p4, p0, LE/j;->g:Lcom/google/android/maps/rideabout/app/j;

    .line 49
    return-void
.end method

.method private d()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, LE/j;->e:Lcom/google/android/maps/rideabout/app/a;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/a;->a()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, LE/j;->e:Lcom/google/android/maps/rideabout/app/a;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/a;->b()Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v2

    .line 109
    :goto_13
    if-eqz v0, :cond_3d

    .line 112
    iget-object v0, p0, LE/j;->e:Lcom/google/android/maps/rideabout/app/a;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/a;->l()Lcom/google/android/maps/rideabout/app/c;

    move-result-object v3

    .line 113
    iget-object v0, p0, LE/j;->b:LaP/a;

    if-nez v0, :cond_38

    const/4 v0, 0x0

    .line 114
    :goto_20
    iget-object v4, p0, LE/j;->c:LaP/t;

    invoke-static {v0, v4}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    iget-object v4, p0, LE/j;->d:Lcom/google/android/maps/rideabout/app/c;

    invoke-virtual {v3, v4}, Lcom/google/android/maps/rideabout/app/c;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    :cond_30
    move v1, v2

    .line 116
    :cond_31
    iput-object v0, p0, LE/j;->c:LaP/t;

    .line 117
    iput-object v3, p0, LE/j;->d:Lcom/google/android/maps/rideabout/app/c;

    .line 119
    :goto_35
    return v1

    :cond_36
    move v0, v1

    .line 108
    goto :goto_13

    .line 113
    :cond_38
    iget-object v0, p0, LE/j;->b:LaP/a;

    iget-object v0, v0, LaP/a;->a:LaP/t;

    goto :goto_20

    :cond_3d
    move v1, v0

    goto :goto_35
.end method


# virtual methods
.method public a()LC/z;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, LE/j;->f:LE/h;

    invoke-virtual {v0}, LE/h;->a()V

    .line 53
    iget-object v0, p0, LE/j;->a:LC/z;

    return-object v0
.end method

.method public a(LC/z;)V
    .registers 4
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, LE/j;->f:LE/h;

    invoke-virtual {v0}, LE/h;->a()V

    .line 58
    iput-object p1, p0, LE/j;->a:LC/z;

    .line 59
    iget-object v0, p1, LC/z;->c:LaP/a;

    if-eqz v0, :cond_1e

    .line 60
    iget-object v0, p1, LC/z;->c:LaP/a;

    iput-object v0, p0, LE/j;->b:LaP/a;

    .line 63
    iget-object v0, p0, LE/j;->b:LaP/a;

    iget-object v0, v0, LaP/a;->a:LaP/t;

    iget-object v1, p0, LE/j;->c:LaP/t;

    invoke-virtual {v0, v1}, LaP/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, LE/j;->c:LaP/t;

    .line 67
    :cond_1e
    return-void
.end method

.method public b()Lcom/google/android/maps/rideabout/app/a;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, LE/j;->f:LE/h;

    invoke-virtual {v0}, LE/h;->a()V

    .line 76
    iget-object v0, p0, LE/j;->e:Lcom/google/android/maps/rideabout/app/a;

    return-object v0
.end method

.method public b(LC/z;)V
    .registers 3
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, LE/j;->f:LE/h;

    invoke-virtual {v0}, LE/h;->a()V

    .line 71
    iget-object v0, p0, LE/j;->e:Lcom/google/android/maps/rideabout/app/a;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/rideabout/app/a;->a(LC/z;)V

    .line 72
    return-void
.end method

.method public c()LaP/a;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, LE/j;->f:LE/h;

    invoke-virtual {v0}, LE/h;->a()V

    .line 81
    iget-object v0, p0, LE/j;->b:LaP/a;

    return-object v0
.end method

.method public c(LC/z;)V
    .registers 7
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, LE/j;->e:Lcom/google/android/maps/rideabout/app/a;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/a;->a()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p1, LC/z;->c:LaP/a;

    if-nez v0, :cond_d

    .line 102
    :goto_c
    return-void

    .line 88
    :cond_d
    iget-object v0, p0, LE/j;->e:Lcom/google/android/maps/rideabout/app/a;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/a;->c()Ljava/lang/String;

    move-result-object v2

    .line 89
    const-string v0, ""

    .line 90
    iget-object v1, p1, LC/z;->c:LaP/a;

    if-eqz v1, :cond_1f

    .line 91
    iget-object v0, p0, LE/j;->e:Lcom/google/android/maps/rideabout/app/a;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_1f
    iget-object v3, p0, LE/j;->g:Lcom/google/android/maps/rideabout/app/j;

    iget-object v1, p0, LE/j;->e:Lcom/google/android/maps/rideabout/app/a;

    invoke-virtual {v1}, Lcom/google/android/maps/rideabout/app/a;->h()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, LE/j;->e:Lcom/google/android/maps/rideabout/app/a;

    invoke-virtual {v1}, Lcom/google/android/maps/rideabout/app/a;->i()Z

    move-result v1

    if-eqz v1, :cond_3a

    const/4 v1, 0x1

    :goto_32
    invoke-direct {p0}, LE/j;->d()Z

    move-result v4

    invoke-interface {v3, v1, v4, v2, v0}, Lcom/google/android/maps/rideabout/app/j;->a(ZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_3a
    const/4 v1, 0x0

    goto :goto_32
.end method
