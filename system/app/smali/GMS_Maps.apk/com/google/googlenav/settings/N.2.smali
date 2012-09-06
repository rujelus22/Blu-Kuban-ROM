.class Lcom/google/googlenav/settings/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laz/m;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/M;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/M;)V
    .registers 2
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/google/googlenav/settings/N;->a:Lcom/google/googlenav/settings/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOfflineDataUpdate(Laz/l;)V
    .registers 4
    .parameter

    .prologue
    .line 566
    invoke-virtual {p1}, Laz/l;->j()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Laz/l;->b()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    .line 568
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->f()V

    .line 569
    invoke-static {}, Laz/a;->c()Laz/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Laz/a;->b(Laz/m;)V

    .line 571
    :cond_17
    return-void
.end method
