.class public abstract Lcom/google/googlenav/ui/aL;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/hM;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/googlenav/ay;
.end method

.method public abstract a(LaJ/p;)Lcom/google/googlenav/ui/bQ;
.end method

.method public a(LaJ/p;LaJ/u;LaE/h;ZLcom/google/googlenav/ui/wizard/x;Lcom/google/googlenav/L;Lcom/google/googlenav/ui/at;Lax/k;)Lcom/google/googlenav/ui/wizard/hM;
    .registers 20

    iget-object v0, p0, Lcom/google/googlenav/ui/aL;->a:Lcom/google/googlenav/ui/wizard/hM;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/aL;->e()Lcom/google/googlenav/android/ac;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/aL;->a()Lcom/google/googlenav/ay;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/google/googlenav/ui/wizard/hM;-><init>(Lcom/google/googlenav/android/ac;LaJ/p;LaJ/u;LaE/h;Lcom/google/googlenav/ay;ZLcom/google/googlenav/ui/wizard/x;Lcom/google/googlenav/L;Lcom/google/googlenav/ui/at;Lax/k;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/aL;->a:Lcom/google/googlenav/ui/wizard/hM;

    :cond_1f
    iget-object v0, p0, Lcom/google/googlenav/ui/aL;->a:Lcom/google/googlenav/ui/wizard/hM;

    return-object v0
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/aL;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->O()V

    return-void
.end method

.method public abstract b(LaJ/p;)Lcom/google/googlenav/ui/A;
.end method

.method public abstract b()Lcom/google/googlenav/ui/aM;
.end method

.method public abstract c()Lcom/google/googlenav/ui/af;
.end method

.method public abstract d()Lcom/google/googlenav/ui/android/z;
.end method

.method public abstract e()Lcom/google/googlenav/android/ac;
.end method

.method public f()Lcom/google/googlenav/layer/r;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()LaR/i;
    .registers 2

    new-instance v0, LaR/d;

    invoke-direct {v0}, LaR/d;-><init>()V

    return-object v0
.end method

.method public h()LaR/g;
    .registers 2

    new-instance v0, LaR/c;

    invoke-direct {v0}, LaR/c;-><init>()V

    return-object v0
.end method

.method public abstract i()Lap/c;
.end method

.method public j()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
