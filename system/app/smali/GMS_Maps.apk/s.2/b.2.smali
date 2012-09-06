.class public Ls/B;
.super Ls/D;
.source "SourceFile"


# instance fields
.field public c:Z

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ls/D;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/B;->c:Z

    .line 39
    new-instance v0, Ls/C;

    invoke-direct {v0, p0}, Ls/C;-><init>(Ls/B;)V

    iput-object v0, p0, Ls/B;->d:Ljava/lang/Runnable;

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/app/aN;)Landroid/content/Intent;
    .registers 5
    .parameter

    .prologue
    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 144
    const-string v1, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->C()Lo/P;

    move-result-object v1

    if-eqz v1, :cond_8e

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->C()Lo/P;

    move-result-object v1

    invoke-virtual {v1}, Lo/P;->d()Lo/Q;

    move-result-object v1

    if-eqz v1, :cond_8e

    .line 148
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "http"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "maps.google.com"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 154
    const-string v2, "myl"

    const-string v3, "saddr"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 155
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v2

    if-nez v2, :cond_70

    .line 156
    const-string v2, "dirflg"

    const-string v3, "d"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 162
    :cond_57
    :goto_57
    const-string v2, "daddr"

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->C()Lo/P;

    move-result-object v3

    invoke-virtual {v3}, Lo/P;->d()Lo/Q;

    move-result-object v3

    invoke-virtual {v3}, Lo/Q;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 164
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 168
    :goto_6f
    return-object v0

    .line 157
    :cond_70
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7f

    .line 158
    const-string v2, "dirflg"

    const-string v3, "w"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_57

    .line 159
    :cond_7f
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_57

    .line 160
    const-string v2, "dirflg"

    const-string v3, "b"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_57

    .line 166
    :cond_8e
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6f
.end method

.method static synthetic a(Ls/B;)Z
    .registers 2
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ls/B;->al()Z

    move-result v0

    return v0
.end method

.method private ai()V
    .registers 6

    .prologue
    .line 88
    invoke-direct {p0}, Ls/B;->ak()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 89
    iget-object v0, p0, Ls/B;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    const v1, 0x7f0d006b

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cK;->a(I)V

    .line 94
    iget-object v0, p0, Ls/B;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/maps/driveabout/app/NavigationView;

    if-eqz v0, :cond_2b

    .line 95
    iget-object v0, p0, Ls/B;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v1, p0, Ls/B;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/NavigationView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    :cond_2b
    :goto_2b
    return-void

    .line 98
    :cond_2c
    iget-object v0, p0, Ls/B;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->c()V

    .line 99
    iget-object v0, p0, Ls/B;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const v1, 0x7f0d005a

    const v2, 0x7f0d00bf

    const v3, 0x7f0d00c0

    iget-object v4, p0, Ls/B;->a:Ls/n;

    invoke-virtual {v4}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v4

    invoke-static {v4}, Ls/B;->a(Lcom/google/android/maps/driveabout/app/aN;)Landroid/content/Intent;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cI;->a(IIILandroid/content/Intent;)V

    goto :goto_2b
.end method

.method private aj()I
    .registers 4

    .prologue
    .line 111
    const/4 v0, 0x1

    .line 112
    iget-object v1, p0, Ls/B;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    .line 113
    const/4 v0, 0x3

    .line 115
    :cond_f
    return v0
.end method

.method private ak()Z
    .registers 3

    .prologue
    .line 120
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ca;->h()Lcom/google/googlenav/j;

    move-result-object v0

    .line 122
    invoke-direct {p0}, Ls/B;->aj()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/j;->a(I)Z

    move-result v0

    return v0
.end method

.method private al()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/ca;->h()Lcom/google/googlenav/j;

    move-result-object v1

    .line 131
    iget-object v2, p0, Ls/B;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v2

    invoke-static {v2}, Lt/e;->a(Landroid/location/Location;)Lat/B;

    move-result-object v2

    .line 133
    invoke-direct {p0}, Ls/B;->aj()I

    move-result v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/googlenav/j;->a(ILat/B;Z)Z

    move-result v1

    if-nez v1, :cond_22

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x1

    goto :goto_21
.end method

.method static synthetic b(Ls/B;)V
    .registers 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ls/B;->ai()V

    return-void
.end method


# virtual methods
.method protected ab()V
    .registers 1

    .prologue
    .line 80
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 55
    iget-object v0, p0, Ls/B;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2c

    invoke-static {}, Lo/O;->a()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 57
    iget-object v0, p0, Ls/B;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->c()V

    .line 58
    iget-object v0, p0, Ls/B;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const v1, 0x7f0d005a

    const v2, 0x7f0d00bf

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cI;->a(II)V

    .line 68
    :goto_2b
    return-void

    .line 63
    :cond_2c
    invoke-direct {p0}, Ls/B;->al()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/B;->c:Z

    goto :goto_2b

    .line 66
    :cond_36
    invoke-direct {p0}, Ls/B;->ai()V

    goto :goto_2b
.end method

.method public c()V
    .registers 4

    .prologue
    .line 73
    iget-boolean v0, p0, Ls/B;->c:Z

    if-eqz v0, :cond_c

    .line 74
    iget-object v0, p0, Ls/B;->a:Ls/n;

    sget-object v1, Ls/w;->d:Ls/w;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 76
    :cond_c
    return-void
.end method
