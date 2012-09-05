.class Lo/o;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/o;->a:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lo/m;)V
    .registers 2

    invoke-direct {p0}, Lo/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lo/l;
    .registers 4

    new-instance v1, Lo/n;

    iget-object v0, p0, Lo/o;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lo/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lo/l;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/l;

    invoke-direct {v1, v0}, Lo/n;-><init>([Lo/l;)V

    return-object v1
.end method

.method public a(Lo/l;)V
    .registers 4

    instance-of v0, p1, Lo/n;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lo/o;->a:Ljava/util/ArrayList;

    check-cast p1, Lo/n;

    invoke-virtual {p1}, Lo/n;->b()[Lo/l;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lo/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method
