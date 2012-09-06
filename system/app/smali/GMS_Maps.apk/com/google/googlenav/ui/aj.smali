.class Lcom/google/googlenav/ui/aj;
.super Lcom/google/googlenav/ui/ao;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/ap;

.field final synthetic b:Lcom/google/googlenav/ui/ah;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/ah;Ljava/lang/String;Lcom/google/googlenav/ui/ap;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/googlenav/ui/aj;->b:Lcom/google/googlenav/ui/ah;

    iput-object p3, p0, Lcom/google/googlenav/ui/aj;->a:Lcom/google/googlenav/ui/ap;

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/ao;-><init>(Lcom/google/googlenav/ui/ah;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/googlenav/ui/aj;->a:Lcom/google/googlenav/ui/ap;

    invoke-static {}, Lcom/google/googlenav/ui/ap;->u()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    const/16 v0, 0x24e

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
