.class public abstract Lcom/google/googlenav/ui/aB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/ju;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/googlenav/aA;
.end method

.method public abstract a(Lat/p;)Lcom/google/googlenav/ui/bK;
.end method

.method public a(Lat/p;Lat/u;Lan/h;ZLcom/google/googlenav/ui/wizard/z;Lcom/google/googlenav/J;Lcom/google/googlenav/friend/j;)Lcom/google/googlenav/ui/wizard/ju;
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/googlenav/ui/aB;->a:Lcom/google/googlenav/ui/wizard/ju;

    if-nez v0, :cond_1c

    .line 115
    new-instance v0, Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/aB;->e()Lcom/google/googlenav/android/Y;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/aB;->a()Lcom/google/googlenav/aA;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/google/googlenav/ui/wizard/ju;-><init>(Lcom/google/googlenav/android/Y;Lat/p;Lat/u;Lan/h;Lcom/google/googlenav/aA;ZLcom/google/googlenav/ui/wizard/z;Lcom/google/googlenav/J;Lcom/google/googlenav/friend/j;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/aB;->a:Lcom/google/googlenav/ui/wizard/ju;

    .line 126
    :cond_1c
    iget-object v0, p0, Lcom/google/googlenav/ui/aB;->a:Lcom/google/googlenav/ui/wizard/ju;

    return-object v0
.end method

.method public abstract b()Lcom/google/googlenav/ui/aC;
.end method

.method public abstract b(Lat/p;)Lcom/google/googlenav/ui/s;
.end method

.method public abstract c()Lcom/google/googlenav/ui/ac;
.end method

.method public abstract d()Lcom/google/googlenav/ui/android/L;
.end method

.method public abstract e()Lcom/google/googlenav/android/Y;
.end method

.method public f()Lcom/google/googlenav/layer/r;
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()LaD/k;
    .registers 2

    .prologue
    .line 77
    new-instance v0, LaD/f;

    invoke-direct {v0}, LaD/f;-><init>()V

    return-object v0
.end method

.method public h()LaD/i;
    .registers 2

    .prologue
    .line 81
    new-instance v0, LaD/e;

    invoke-direct {v0}, LaD/e;-><init>()V

    return-object v0
.end method

.method public abstract i()LY/c;
.end method

.method public j()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
