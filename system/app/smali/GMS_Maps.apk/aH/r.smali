.class public Lah/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah/q;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Vector;Lcom/google/googlenav/friend/aC;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/friend/aL;

    invoke-direct {v1, p1, p2}, Lcom/google/googlenav/friend/aL;-><init>(Ljava/util/Vector;Lcom/google/googlenav/friend/aC;)V

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 24
    return-void
.end method
