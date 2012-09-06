.class LaM/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field final synthetic d:I

.field final synthetic e:LaM/am;


# direct methods
.method constructor <init>(LaM/am;ZLjava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3419
    iput-object p1, p0, LaM/as;->e:LaM/am;

    iput-boolean p2, p0, LaM/as;->a:Z

    iput-object p3, p0, LaM/as;->b:Ljava/lang/String;

    iput-object p4, p0, LaM/as;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iput p5, p0, LaM/as;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 3425
    :try_start_0
    iget-boolean v0, p0, LaM/as;->a:Z

    if-eqz v0, :cond_5d

    iget-object v0, p0, LaM/as;->b:Ljava/lang/String;

    const-string v1, "PROTO_SAVED_LAYER_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, LaM/as;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, LaM/as;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 3428
    iget-object v0, p0, LaM/as;->e:LaM/am;

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 3429
    iget v1, p0, LaM/as;->d:I

    if-lez v1, :cond_5d

    if-eqz v0, :cond_5d

    .line 3430
    invoke-virtual {v0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v1

    .line 3431
    iget-object v2, p0, LaM/as;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 3436
    if-ltz v2, :cond_5e

    invoke-interface {v1}, Lcom/google/googlenav/F;->f()I

    move-result v3

    if-ge v2, v3, :cond_5e

    .line 3437
    iget-object v3, p0, LaM/as;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, LaM/i;->b(B)V

    .line 3439
    invoke-interface {v1, v2}, Lcom/google/googlenav/F;->a(I)V

    .line 3442
    iget-object v1, p0, LaM/as;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    invoke-virtual {v0, v1}, LaM/i;->d(I)V

    .line 3463
    :cond_5d
    :goto_5d
    return-void

    .line 3446
    :cond_5e
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LaM/i;->b(B)V

    .line 3447
    const/4 v0, -0x1

    invoke-interface {v1, v0}, Lcom/google/googlenav/F;->a(I)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_66} :catch_67

    goto :goto_5d

    .line 3451
    :catch_67
    move-exception v0

    .line 3458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAYER_MANAGER-LayersManager set state and index -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LaM/as;->e:LaM/am;

    invoke-virtual {v2}, LaM/am;->I()LaM/i;

    move-result-object v2

    invoke-virtual {v2}, LaM/i;->av()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3460
    iget-object v0, p0, LaM/as;->e:LaM/am;

    invoke-static {v0}, LaM/am;->a(LaM/am;)V

    goto :goto_5d
.end method
