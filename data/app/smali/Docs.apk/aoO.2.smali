.class final LaoO;
.super LanX;
.source "InjectionRequestProcessor.java"


# instance fields
.field private final a:LaoN;

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Laoy;LaoN;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, LanX;-><init>(Laoy;)V

    .line 39
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaoO;->a:Ljava/util/List;

    .line 44
    iput-object p2, p0, LaoO;->a:LaoN;

    .line 45
    return-void
.end method
