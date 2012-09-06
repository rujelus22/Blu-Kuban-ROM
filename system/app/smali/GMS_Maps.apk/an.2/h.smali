.class LaN/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/aA;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/google/googlenav/F;

.field final synthetic c:LaM/i;

.field final synthetic d:LaN/b;


# direct methods
.method constructor <init>(LaN/b;Ljava/util/Map;Lcom/google/googlenav/F;LaM/i;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 985
    iput-object p1, p0, LaN/h;->d:LaN/b;

    iput-object p2, p0, LaN/h;->a:Ljava/util/Map;

    iput-object p3, p0, LaN/h;->b:Lcom/google/googlenav/F;

    iput-object p4, p0, LaN/h;->c:LaM/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/ay;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 988
    iget-object v0, p0, LaN/h;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ay;->q()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 989
    if-nez v0, :cond_11

    move v0, v1

    .line 1004
    :goto_10
    return v0

    .line 996
    :cond_11
    iget-object v2, p0, LaN/h;->b:Lcom/google/googlenav/F;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    .line 999
    if-nez v0, :cond_1f

    move v0, v1

    .line 1000
    goto :goto_10

    .line 1003
    :cond_1f
    iget-object v1, p0, LaN/h;->d:LaN/b;

    iget-object v2, p0, LaN/h;->c:LaM/i;

    invoke-static {v1, v2, v0}, LaN/b;->a(LaN/b;LaM/i;Lcom/google/googlenav/E;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/ay;->a(Z)V

    .line 1004
    const/4 v0, 0x0

    goto :goto_10
.end method
