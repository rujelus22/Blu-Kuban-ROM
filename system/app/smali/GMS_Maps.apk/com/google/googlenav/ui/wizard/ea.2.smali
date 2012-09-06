.class Lcom/google/googlenav/ui/wizard/eA;
.super Lcom/google/googlenav/ui/wizard/eH;
.source "SourceFile"


# instance fields
.field private final a:Lax/m;

.field private final b:Ljava/text/DateFormat;


# direct methods
.method constructor <init>(Lax/m;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-static {p2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eH;-><init>(Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Ljava/text/DateFormat;

    .line 32
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eA;->a:Lax/m;

    .line 33
    return-void
.end method

.method private a(Lax/A;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Ljava/text/DateFormat;

    invoke-static {p1, v0}, Lax/D;->a(Lax/A;Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 14

    .prologue
    const/4 v7, 0x0

    .line 51
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->a:Lax/m;

    invoke-interface {v0}, Lax/m;->g()Lax/r;

    move-result-object v0

    invoke-interface {v0}, Lax/r;->b()Ljava/util/List;

    move-result-object v8

    .line 52
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 53
    invoke-static {v9}, Lcom/google/common/collect/cx;->c(I)Ljava/util/ArrayList;

    move-result-object v10

    move v6, v7

    .line 54
    :goto_14
    if-ge v6, v9, :cond_51

    .line 55
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->a:Lax/m;

    invoke-interface {v0}, Lax/m;->g()Lax/r;

    move-result-object v1

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lax/r;->a(Ljava/lang/String;)Lax/A;

    move-result-object v11

    .line 56
    if-eqz v11, :cond_32

    invoke-virtual {v11}, Lax/A;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 54
    :cond_32
    :goto_32
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_14

    .line 60
    :cond_36
    new-instance v0, Lcom/google/googlenav/ui/view/android/bv;

    invoke-virtual {v11}, Lax/A;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v11}, Lcom/google/googlenav/ui/wizard/eA;->a(Lax/A;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lax/A;->l()J

    move-result-wide v3

    new-instance v5, Lcom/google/googlenav/ui/view/a;

    const/4 v12, 0x1

    invoke-direct {v5, v12, v7, v11}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/bv;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLcom/google/googlenav/ui/view/a;)V

    .line 68
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 70
    :cond_51
    return-object v10
.end method
