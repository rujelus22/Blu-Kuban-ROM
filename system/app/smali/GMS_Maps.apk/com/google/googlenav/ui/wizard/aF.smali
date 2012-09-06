.class Lcom/google/googlenav/ui/wizard/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lan/y;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/S;

.field private volatile b:Z


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/S;)V
    .registers 3
    .parameter

    .prologue
    .line 924
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/af;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 927
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/af;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/S;Lcom/google/googlenav/ui/wizard/T;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 924
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/af;-><init>(Lcom/google/googlenav/ui/wizard/S;)V

    return-void
.end method


# virtual methods
.method public a(ILan/h;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 946
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/af;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 947
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/af;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    const/16 v1, 0xbe

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/am;->b(I)V

    .line 949
    :cond_13
    return-void
.end method

.method public a(Lat/B;Lan/h;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 931
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/af;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/af;->b:Z

    if-nez v0, :cond_3a

    .line 932
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/af;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->m(Lcom/google/googlenav/ui/wizard/S;)Lan/s;

    move-result-object v0

    .line 933
    if-eqz v0, :cond_3b

    .line 934
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/af;->b:Z

    .line 935
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/af;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->c(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ag;

    move-result-object v1

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v2

    invoke-virtual {v2}, Lat/B;->c()I

    move-result v2

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v3

    invoke-virtual {v3}, Lat/B;->e()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/wizard/ag;->a(II)V

    .line 937
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/af;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->c(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ag;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/ag;->a(Lan/s;Ljava/lang/String;)V

    .line 942
    :cond_3a
    :goto_3a
    return-void

    .line 939
    :cond_3b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/af;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    const/16 v1, 0xbe

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/am;->b(I)V

    goto :goto_3a
.end method
