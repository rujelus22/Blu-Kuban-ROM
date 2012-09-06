.class final Lcom/google/googlenav/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/D;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ai;)Ljava/lang/Long;
    .registers 4
    .parameter

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 184
    check-cast p1, Lcom/google/googlenav/ai;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/aj;->a(Lcom/google/googlenav/ai;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
