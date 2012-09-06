.class Ls/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/app/eC;


# instance fields
.field final synthetic a:Ls/q;

.field private final b:Lcom/google/android/maps/driveabout/app/cS;


# direct methods
.method public constructor <init>(Ls/q;Lcom/google/android/maps/driveabout/app/cS;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1870
    iput-object p1, p0, Ls/u;->a:Ls/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1871
    iput-object p2, p0, Ls/u;->b:Lcom/google/android/maps/driveabout/app/cS;

    .line 1872
    return-void
.end method

.method private a()Z
    .registers 4

    .prologue
    .line 1875
    iget-object v0, p0, Ls/u;->a:Ls/q;

    iget-object v0, v0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "RmiMail"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Z)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1881
    if-nez p1, :cond_21

    .line 1882
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->k()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-direct {p0}, Ls/u;->a()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    .line 1884
    :goto_14
    iget-object v2, p0, Ls/u;->b:Lcom/google/android/maps/driveabout/app/cS;

    new-instance v3, Ls/v;

    iget-object v4, p0, Ls/u;->a:Ls/q;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ls/v;-><init>(Ls/q;Ls/r;)V

    invoke-virtual {v2, v0, v3}, Lcom/google/android/maps/driveabout/app/cS;->a(ZLaG/b;)V

    .line 1886
    :cond_21
    iget-object v0, p0, Ls/u;->a:Ls/q;

    iget-object v0, v0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cK;->d(Z)V

    .line 1887
    return-void

    :cond_2d
    move v0, v1

    .line 1882
    goto :goto_14
.end method
