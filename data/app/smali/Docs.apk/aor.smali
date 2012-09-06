.class Laor;
.super Ljava/lang/Object;
.source "ConstructorBindingImpl.java"

# interfaces
.implements Lapc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lapc",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lant",
            "<*>;"
        }
    .end annotation
.end field

.field private a:Laos;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laos",
            "<TT;>;"
        }
    .end annotation
.end field

.field private a:LapD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laoc",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final a:Z

.field private b:Z


# direct methods
.method constructor <init>(ZLant;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lant",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-boolean p1, p0, Laor;->a:Z

    .line 255
    iput-object p2, p0, Laor;->a:Lant;

    .line 256
    return-void
.end method

.method static synthetic a(Laor;)Laos;
    .registers 2
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Laor;->a:Laos;

    return-object v0
.end method

.method static synthetic a(Laor;Laos;)Laos;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Laor;->a:Laos;

    return-object p1
.end method

.method static synthetic a(Laor;LapD;)LapD;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Laor;->a:LapD;

    return-object p1
.end method

.method static synthetic a(Laor;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 246
    iput-boolean p1, p0, Laor;->b:Z

    return p1
.end method


# virtual methods
.method public a(Laoy;Lapb;Laqk;Z)Ljava/lang/Object;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoy;",
            "Lapb;",
            "Laqk",
            "<*>;Z)TT;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Laor;->a:Laos;

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Constructor not ready"

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 263
    iget-boolean v0, p0, Laor;->a:Z

    if-eqz v0, :cond_1d

    if-nez p4, :cond_1d

    .line 264
    iget-object v0, p0, Laor;->a:Lant;

    invoke-virtual {p1, v0}, Laoy;->b(Lant;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 261
    :cond_1b
    const/4 v0, 0x0

    goto :goto_5

    .line 269
    :cond_1d
    iget-object v0, p0, Laor;->a:Laos;

    invoke-virtual {p3}, Laqk;->a()Lant;

    move-result-object v1

    invoke-virtual {v1}, Lant;->a()LanP;

    move-result-object v1

    invoke-virtual {v1}, LanP;->a()Ljava/lang/Class;

    move-result-object v3

    iget-boolean v4, p0, Laor;->b:Z

    iget-object v5, p0, Laor;->a:LapD;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Laos;->a(Laoy;Lapb;Ljava/lang/Class;ZLapD;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
