.class LaN/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/f;


# instance fields
.field final synthetic a:LaN/b;


# direct methods
.method private constructor <init>(LaN/b;)V
    .registers 2
    .parameter

    .prologue
    .line 1200
    iput-object p1, p0, LaN/m;->a:LaN/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LaN/b;LaN/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1200
    invoke-direct {p0, p1}, LaN/m;-><init>(LaN/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/e;Lcom/google/android/maps/driveabout/vector/d;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1203
    check-cast p1, Lcom/google/android/maps/driveabout/vector/aB;

    .line 1204
    iget-object v0, p0, LaN/m;->a:LaN/b;

    invoke-static {v0}, LaN/b;->h(LaN/b;)Lcom/google/common/collect/Q;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Q;->b()Lcom/google/common/collect/Q;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 1205
    check-cast p2, Lcom/google/android/maps/driveabout/vector/ay;

    .line 1206
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ay;->q()Ljava/lang/Object;

    move-result-object v2

    .line 1207
    const/4 v1, 0x0

    :goto_19
    invoke-virtual {v0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/F;->f()I

    move-result v3

    if-ge v1, v3, :cond_3a

    .line 1208
    invoke-virtual {v0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/E;->f()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1209
    iget-object v2, p0, LaN/m;->a:LaN/b;

    invoke-static {v2, v0, v1}, LaN/b;->b(LaN/b;LaM/i;I)V

    .line 1213
    :cond_3a
    return-void

    .line 1207
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method
