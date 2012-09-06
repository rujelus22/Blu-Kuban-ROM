.class Lcom/google/googlenav/ui/wizard/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/aT;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ag;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ag;)V
    .registers 2
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ah;->a:Lcom/google/googlenav/ui/wizard/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/aS;)V
    .registers 4
    .parameter

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    invoke-virtual {p1}, Lcom/google/googlenav/aS;->i()I

    move-result v1

    if-lez v1, :cond_c

    .line 196
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aS;->a(I)Lcom/google/googlenav/aU;

    move-result-object v0

    .line 198
    :cond_c
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ah;->a:Lcom/google/googlenav/ui/wizard/ag;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ag;->a(Lcom/google/googlenav/ui/wizard/ag;)Lcom/google/googlenav/ui/wizard/ak;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/ak;->a(Lcom/google/googlenav/aU;)V

    .line 199
    return-void
.end method
