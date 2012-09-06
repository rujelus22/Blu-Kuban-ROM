.class final Lcom/google/googlenav/friend/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 51
    invoke-static {}, Lcom/google/googlenav/friend/p;->h()Lcom/google/googlenav/ui/v;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 52
    invoke-static {}, Lcom/google/googlenav/friend/p;->h()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->B()LaM/X;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, LaM/X;->ae()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 54
    invoke-virtual {v0}, LaM/X;->bG()V

    .line 57
    :cond_1d
    return-void
.end method
