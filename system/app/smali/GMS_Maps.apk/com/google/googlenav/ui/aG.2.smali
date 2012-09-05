.class public Lcom/google/googlenav/ui/aG;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/ui/D;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/D;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/aG;->a:Lcom/google/googlenav/ui/D;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/aG;)Lcom/google/googlenav/ui/D;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/aG;->a:Lcom/google/googlenav/ui/D;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 5

    const/16 v0, 0x47

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, LaC/c;->a:LaC/c;

    invoke-virtual {v3}, LaC/c;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private a(LaJ/B;)Z
    .registers 8

    const/16 v5, 0x2aa

    const/4 v0, 0x0

    const/16 v4, 0xa

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/ui/aG;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->l()LaR/i;

    move-result-object v2

    invoke-interface {v2, v1}, LaR/i;->a(I)I

    move-result v2

    if-lt v2, v4, :cond_3c

    iget-object v1, p0, Lcom/google/googlenav/ui/aG;->a:Lcom/google/googlenav/ui/D;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2ab

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    const-string v1, "max10"

    invoke-static {v1}, Lcom/google/googlenav/ui/aG;->a(Ljava/lang/String;)V

    :goto_3b
    return v0

    :cond_3c
    iget-object v2, p0, Lcom/google/googlenav/ui/aG;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->l()LaR/i;

    move-result-object v2

    invoke-interface {v2, p1, v1}, LaR/i;->a(LaJ/B;I)Z

    move-result v2

    if-eqz v2, :cond_72

    iget-object v1, p0, Lcom/google/googlenav/ui/aG;->a:Lcom/google/googlenav/ui/D;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2a3

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    const-string v1, "dup"

    invoke-static {v1}, Lcom/google/googlenav/ui/aG;->a(Ljava/lang/String;)V

    goto :goto_3b

    :cond_72
    move v0, v1

    goto :goto_3b
.end method


# virtual methods
.method public a(LaJ/B;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/aG;->a(LaJ/B;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ui/aG;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->r()LaJ/u;

    move-result-object v0

    invoke-virtual {v0, v4}, LaJ/u;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/aG;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->r()LaJ/u;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v1}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, LaJ/u;->a(LaJ/Y;)V

    invoke-static {p2, p3}, Lcom/google/googlenav/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4e2

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    move-object v0, v2

    :cond_33
    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9d

    const/16 v1, 0x2a8

    :goto_3b
    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/ui/aG;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/D;->l()LaR/i;

    move-result-object v3

    invoke-interface {v3, p1, v6, v0}, LaR/i;->a(LaJ/B;ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "num"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/googlenav/ui/aG;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/D;->l()LaR/i;

    move-result-object v3

    invoke-interface {v3, v6}, LaR/i;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/aG;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/aG;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    invoke-virtual {v0, v6}, LaY/i;->a(B)V

    iget-object v0, p0, Lcom/google/googlenav/ui/aG;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    new-instance v3, Lcom/google/googlenav/ui/wizard/y;

    invoke-direct {v3, v4}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;JZ)V

    iget-object v0, p0, Lcom/google/googlenav/ui/aG;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->z()LaR/g;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/aH;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/aH;-><init>(Lcom/google/googlenav/ui/aG;LaJ/B;)V

    invoke-interface {v0, p1, v1}, LaR/g;->a(LaJ/B;LaR/f;)V

    goto/16 :goto_9

    :cond_9d
    const/16 v1, 0x2a9

    goto :goto_3b
.end method
