.class Lcom/google/googlenav/ui/wizard/ex;
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
    .line 37
    invoke-static {p2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eH;-><init>(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ex;->b:Ljava/text/DateFormat;

    .line 38
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ex;->a:Lax/m;

    .line 39
    return-void
.end method

.method private a(Lax/h;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ex;->b:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lax/h;->l()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf9

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 15

    .prologue
    const/4 v9, 0x0

    .line 48
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ex;->a:Lax/m;

    invoke-interface {v0}, Lax/m;->g()Lax/r;

    move-result-object v0

    invoke-interface {v0}, Lax/r;->b()Ljava/util/List;

    move-result-object v10

    .line 49
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 50
    invoke-static {v11}, Lcom/google/common/collect/cx;->c(I)Ljava/util/ArrayList;

    move-result-object v12

    move v8, v9

    .line 51
    :goto_14
    if-ge v8, v11, :cond_62

    .line 52
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ex;->a:Lax/m;

    invoke-interface {v0}, Lax/m;->g()Lax/r;

    move-result-object v1

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lax/r;->a(Ljava/lang/String;)Lax/A;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lax/h;

    .line 54
    if-eqz v7, :cond_3f

    invoke-virtual {v7}, Lax/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {v7}, Lax/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 51
    :cond_3f
    :goto_3f
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_14

    .line 60
    :cond_43
    new-instance v0, Lcom/google/googlenav/ui/wizard/ey;

    invoke-virtual {v7}, Lax/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lax/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v7}, Lcom/google/googlenav/ui/wizard/ex;->a(Lax/h;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lax/h;->l()J

    move-result-wide v4

    new-instance v6, Lcom/google/googlenav/ui/view/a;

    const/4 v13, 0x3

    invoke-direct {v6, v13, v9, v7}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ey;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLcom/google/googlenav/ui/view/a;)V

    .line 69
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 71
    :cond_62
    return-object v12
.end method
