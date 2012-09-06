.class Lcom/google/googlenav/ui/wizard/eB;
.super Lcom/google/googlenav/ui/wizard/eH;
.source "SourceFile"


# instance fields
.field private final a:Lax/B;


# direct methods
.method constructor <init>(Lax/m;)V
    .registers 3
    .parameter

    .prologue
    .line 36
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eH;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-interface {p1}, Lax/m;->g()Lax/r;

    move-result-object v0

    check-cast v0, Lax/B;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eB;->a:Lax/B;

    .line 38
    return-void
.end method

.method private a(IIJ)Lcom/google/googlenav/ui/wizard/eC;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eB;->a:Lax/B;

    invoke-virtual {v0, p1}, Lax/B;->a(I)Lax/a;

    move-result-object v1

    .line 52
    if-nez v1, :cond_25

    .line 54
    const/4 v0, 0x1

    .line 55
    const/16 v1, 0x2fa

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    move v3, v0

    .line 63
    :goto_10
    new-instance v0, Lcom/google/googlenav/ui/wizard/eC;

    invoke-static {p2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/google/googlenav/ui/view/a;

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v4, v3, v6}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/wizard/eC;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLcom/google/googlenav/ui/view/a;)V

    return-object v0

    .line 59
    :cond_25
    const/4 v0, 0x0

    .line 60
    invoke-virtual {v1}, Lax/A;->i()Ljava/lang/String;

    move-result-object v2

    move v3, v0

    goto :goto_10
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 6

    .prologue
    .line 72
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/common/collect/cx;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 73
    const/4 v1, 0x0

    const/16 v2, 0x1ee

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/wizard/eB;->a(IIJ)Lcom/google/googlenav/ui/wizard/eC;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    const/4 v1, 0x1

    const/16 v2, 0x61c

    const-wide v3, 0x7ffffffffffffffeL

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/wizard/eB;->a(IIJ)Lcom/google/googlenav/ui/wizard/eC;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    return-object v0
.end method
