.class public LaO/f;
.super LaO/a;
.source "SourceFile"


# static fields
.field private static final c:C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    sget-char v0, Lcom/google/googlenav/ui/bn;->aR:C

    sput-char v0, LaO/f;->c:C

    return-void
.end method

.method public constructor <init>(LaM/i;)V
    .registers 2
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, LaO/a;-><init>(LaM/i;)V

    .line 22
    return-void
.end method


# virtual methods
.method public b(I)Lcom/google/googlenav/e;
    .registers 4
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, LaO/f;->a:LaM/i;

    invoke-virtual {v0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_30

    .line 29
    invoke-interface {v0}, Lcom/google/googlenav/E;->c()B

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_27

    .line 30
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->C()LS/g;

    move-result-object v0

    sget-char v1, LaO/f;->c:C

    invoke-interface {v0, v1}, LS/g;->e(C)LS/f;

    move-result-object v0

    .line 34
    :goto_22
    invoke-static {v0}, Lcom/google/googlenav/e;->a(LS/f;)Lcom/google/googlenav/e;

    move-result-object v0

    .line 36
    :goto_26
    return-object v0

    .line 32
    :cond_27
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->M()LS/f;

    move-result-object v0

    goto :goto_22

    .line 36
    :cond_30
    const/4 v0, 0x0

    goto :goto_26
.end method
