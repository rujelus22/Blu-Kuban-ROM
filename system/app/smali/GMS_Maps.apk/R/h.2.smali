.class Lr/h;
.super Lt/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Lr/f;


# direct methods
.method constructor <init>(Lr/f;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lr/h;->a:Lr/f;

    invoke-direct {p0, p2}, Lt/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Ln/am;Lr/m;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lr/h;->a:Lr/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lr/f;->a(Lr/m;ILn/al;)V

    .line 243
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 238
    check-cast p1, Ln/am;

    check-cast p2, Lr/m;

    invoke-virtual {p0, p1, p2}, Lr/h;->a(Ln/am;Lr/m;)V

    return-void
.end method
