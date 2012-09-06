.class LapE;
.super LaqO;
.source "ProvisionListenerStackCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LaqO",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:I

.field a:LaoE;

.field final a:Laoy;

.field final synthetic a:LapD;

.field final a:LapF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LapF",
            "<TT;>;"
        }
    .end annotation
.end field

.field final a:Lapb;

.field a:LaqN;

.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LapD;Laoy;Lapb;LapF;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoy;",
            "Lapb;",
            "LapF",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, LapE;->a:LapD;

    invoke-direct {p0}, LaqO;-><init>()V

    .line 84
    const/4 v0, -0x1

    iput v0, p0, LapE;->a:I

    .line 90
    iput-object p4, p0, LapE;->a:LapF;

    .line 91
    iput-object p3, p0, LapE;->a:Lapb;

    .line 92
    iput-object p2, p0, LapE;->a:Laoy;

    .line 93
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 97
    iget v0, p0, LapE;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LapE;->a:I

    .line 98
    iget v0, p0, LapE;->a:I

    iget-object v1, p0, LapE;->a:LapD;

    invoke-static {v1}, LapD;->a(LapD;)[LaqN;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_33

    .line 100
    :try_start_11
    iget-object v0, p0, LapE;->a:LapF;

    invoke-interface {v0}, LapF;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LapE;->a:Ljava/lang/Object;
    :try_end_19
    .catch LaoE; {:try_start_11 .. :try_end_19} :catch_1c

    .line 121
    :cond_19
    :goto_19
    iget-object v0, p0, LapE;->a:Ljava/lang/Object;

    return-object v0

    .line 101
    :catch_1c
    move-exception v0

    .line 102
    iput-object v0, p0, LapE;->a:LaoE;

    .line 103
    new-instance v1, LanF;

    iget-object v2, p0, LapE;->a:Laoy;

    invoke-virtual {v0}, LaoE;->a()Laoy;

    move-result-object v0

    invoke-virtual {v2, v0}, Laoy;->a(Laoy;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, LanF;-><init>(Ljava/lang/Iterable;)V

    throw v1

    .line 105
    :cond_33
    iget v0, p0, LapE;->a:I

    iget-object v1, p0, LapE;->a:LapD;

    invoke-static {v1}, LapD;->a(LapD;)[LaqN;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_61

    .line 106
    iget v1, p0, LapE;->a:I

    .line 109
    :try_start_40
    iget-object v0, p0, LapE;->a:LapD;

    invoke-static {v0}, LapD;->a(LapD;)[LaqN;

    move-result-object v0

    iget v2, p0, LapE;->a:I

    aget-object v0, v0, v2

    invoke-interface {v0, p0}, LaqN;->a(LaqO;)V
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_4d} :catch_55

    .line 114
    iget v0, p0, LapE;->a:I

    if-ne v1, v0, :cond_19

    .line 116
    invoke-virtual {p0}, LapE;->a()Ljava/lang/Object;

    goto :goto_19

    .line 110
    :catch_55
    move-exception v0

    .line 111
    iget-object v2, p0, LapE;->a:LapD;

    invoke-static {v2}, LapD;->a(LapD;)[LaqN;

    move-result-object v2

    aget-object v1, v2, v1

    iput-object v1, p0, LapE;->a:LaqN;

    .line 112
    throw v0

    .line 119
    :cond_61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already provisioned in this listener."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
