.class LaY/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/az;


# instance fields
.field final synthetic a:LaY/m;

.field private final b:Lcom/google/googlenav/ah;


# direct methods
.method private constructor <init>(LaY/m;Lcom/google/googlenav/ah;)V
    .registers 3

    iput-object p1, p0, LaY/p;->a:LaY/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LaY/p;->b:Lcom/google/googlenav/ah;

    return-void
.end method

.method synthetic constructor <init>(LaY/m;Lcom/google/googlenav/ah;LaY/n;)V
    .registers 4

    invoke-direct {p0, p1, p2}, LaY/p;-><init>(LaY/m;Lcom/google/googlenav/ah;)V

    return-void
.end method


# virtual methods
.method public a(JZ)V
    .registers 8

    iget-object v0, p0, LaY/p;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->ae()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v0, Lcom/google/googlenav/O;

    invoke-direct {v0}, Lcom/google/googlenav/O;-><init>()V

    iget-object v1, p0, LaY/p;->a:LaY/m;

    iget-object v2, p0, LaY/p;->b:Lcom/google/googlenav/ah;

    const/16 v3, 0x11

    invoke-virtual {v1, v0, v2, v3}, LaY/m;->a(Lcom/google/googlenav/O;Lcom/google/googlenav/D;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LaY/p;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/O;->c(Ljava/lang/String;)Lcom/google/googlenav/O;

    invoke-virtual {v0}, Lcom/google/googlenav/O;->a()V

    goto :goto_8
.end method
