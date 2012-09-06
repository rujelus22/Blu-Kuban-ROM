.class final enum LaC/H;
.super LaC/D;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, LaC/D;-><init>(Ljava/lang/String;IIIILaC/C;)V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 2

    .prologue
    .line 203
    sget-object v0, LaC/B;->a:Lcom/google/googlenav/ui/wizard/gi;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gi;->X_()V

    .line 204
    return-void
.end method
