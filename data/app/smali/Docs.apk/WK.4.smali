.class LWK;
.super Lanf;
.source "GellyInjectorBuilderBase.java"


# instance fields
.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lans;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(LanD;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Lans;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    invoke-direct {p0}, Lanf;-><init>()V

    .line 226
    iput-object p1, p0, LWK;->a:LanD;

    .line 227
    return-void
.end method

.method synthetic constructor <init>(LanD;LWJ;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-direct {p0, p1}, LWK;-><init>(LanD;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 231
    const-class v0, LanN;

    sget-object v1, LanI;->a:LanG;

    invoke-virtual {p0, v0, v1}, LWK;->a(Ljava/lang/Class;LanG;)V

    .line 232
    const-class v0, Lans;

    invoke-virtual {p0, v0}, LWK;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    iget-object v1, p0, LWK;->a:LanD;

    invoke-interface {v0, v1}, LanQ;->a(LanD;)LanV;

    .line 233
    return-void
.end method
