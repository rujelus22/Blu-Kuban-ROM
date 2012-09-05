.class final enum LaQ/B;
.super LaQ/z;


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, LaQ/z;-><init>(Ljava/lang/String;IIIILaQ/y;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/CharSequence;
    .registers 2

    sget-boolean v0, LaQ/x;->c:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x2f8

    iput v0, p0, LaQ/B;->e:I

    :cond_8
    iget v0, p0, LaQ/B;->e:I

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .registers 2

    sget-boolean v0, LaQ/x;->c:Z

    if-eqz v0, :cond_a

    sget-object v0, LaQ/x;->a:Lcom/google/googlenav/ui/wizard/ez;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/ez;->T_()V

    :goto_9
    return-void

    :cond_a
    sget-object v0, LaQ/x;->a:Lcom/google/googlenav/ui/wizard/ez;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/ez;->S_()V

    goto :goto_9
.end method
