.class final enum LaQ/C;
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
.method public c()V
    .registers 2

    sget-object v0, LaQ/x;->a:Lcom/google/googlenav/ui/wizard/ez;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/ez;->U_()V

    return-void
.end method
