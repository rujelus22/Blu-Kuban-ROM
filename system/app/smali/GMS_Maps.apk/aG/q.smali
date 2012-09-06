.class public Lag/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lag/e;


# instance fields
.field private final a:Lcom/google/googlenav/ui/v;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/v;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lag/q;->a:Lcom/google/googlenav/ui/v;

    .line 159
    return-void
.end method

.method static synthetic a(Lag/q;)Lcom/google/googlenav/ui/v;
    .registers 2
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lag/q;->a:Lcom/google/googlenav/ui/v;

    return-object v0
.end method


# virtual methods
.method public a(Lag/a;Lag/g;)Lag/d;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 165
    new-instance v2, Lag/r;

    invoke-direct {v2, p0, p2}, Lag/r;-><init>(Lag/q;Lag/g;)V

    .line 179
    new-instance v0, Lag/s;

    const/4 v1, 0x0

    new-array v3, v1, [I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lag/s;-><init>(Lag/q;Lag/f;[ILag/a;Lag/g;)V

    .line 207
    new-instance v1, Lag/o;

    iget-object v2, p0, Lag/q;->a:Lcom/google/googlenav/ui/v;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lag/o;-><init>(Lcom/google/googlenav/ui/v;Lag/g;Lag/p;)V

    return-object v1
.end method
