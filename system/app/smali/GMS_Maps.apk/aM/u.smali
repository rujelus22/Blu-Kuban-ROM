.class LaM/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/aB;


# instance fields
.field final synthetic a:LaM/m;

.field private final b:Lcom/google/googlenav/ai;


# direct methods
.method private constructor <init>(LaM/m;Lcom/google/googlenav/ai;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2086
    iput-object p1, p0, LaM/u;->a:LaM/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2087
    iput-object p2, p0, LaM/u;->b:Lcom/google/googlenav/ai;

    .line 2088
    return-void
.end method

.method synthetic constructor <init>(LaM/m;Lcom/google/googlenav/ai;LaM/n;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2083
    invoke-direct {p0, p1, p2}, LaM/u;-><init>(LaM/m;Lcom/google/googlenav/ai;)V

    return-void
.end method


# virtual methods
.method public a(JZ)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 2093
    iget-object v0, p0, LaM/u;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->aa()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2102
    :goto_8
    return-void

    .line 2097
    :cond_9
    new-instance v0, Lcom/google/googlenav/R;

    invoke-direct {v0}, Lcom/google/googlenav/R;-><init>()V

    .line 2098
    iget-object v1, p0, LaM/u;->a:LaM/m;

    iget-object v2, p0, LaM/u;->b:Lcom/google/googlenav/ai;

    const/16 v3, 0x11

    invoke-virtual {v1, v0, v2, v3}, LaM/m;->a(Lcom/google/googlenav/R;Lcom/google/googlenav/E;I)V

    .line 2100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LaM/u;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/R;->c(Ljava/lang/String;)Lcom/google/googlenav/R;

    .line 2101
    invoke-virtual {v0}, Lcom/google/googlenav/R;->a()V

    goto :goto_8
.end method
