.class Lcom/google/googlenav/ui/wizard/ht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/bH;


# instance fields
.field private final a:Lcom/google/googlenav/J;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ai;Lcom/google/googlenav/J;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ht;->a:Lcom/google/googlenav/J;

    .line 74
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ap()Lcom/google/googlenav/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ax;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/ht;->b:Z

    .line 75
    return-void
.end method

.method private a(Z)V
    .registers 9
    .parameter

    .prologue
    .line 60
    if-eqz p1, :cond_29

    .line 61
    const-string v0, "s"

    .line 65
    :goto_4
    const/16 v1, 0x65

    const-string v2, "r"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void

    .line 63
    :cond_29
    const-string v0, "e"

    goto :goto_4
.end method


# virtual methods
.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 79
    if-nez p1, :cond_b

    .line 80
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/ht;->b:Z

    if-eqz v0, :cond_a

    .line 81
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/ht;->a(Z)V

    .line 92
    :cond_a
    :goto_a
    return-void

    .line 84
    :cond_b
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1e

    .line 85
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ht;->a:Lcom/google/googlenav/J;

    const/16 v1, 0x409

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 90
    :goto_19
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/ht;->a(Z)V

    goto :goto_a

    .line 88
    :cond_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ht;->a:Lcom/google/googlenav/J;

    const/16 v1, 0x403

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    goto :goto_19
.end method
