.class Lah/f;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Vector;

.field final synthetic b:Lah/a;


# direct methods
.method constructor <init>(Lah/a;LY/c;Ljava/util/Vector;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lah/f;->b:Lah/a;

    iput-object p3, p0, Lah/f;->a:Ljava/util/Vector;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    .prologue
    .line 539
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v2

    .line 541
    :try_start_8
    new-instance v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ag;->u:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 542
    const/4 v0, 0x0

    iget-object v1, p0, Lah/f;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    move v1, v0

    :goto_17
    if-ge v1, v4, :cond_2d

    .line 543
    iget-object v0, p0, Lah/f;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lah/n;

    .line 544
    const/4 v5, 0x1

    invoke-virtual {v0}, Lah/n;->c()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 542
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    .line 546
    :cond_2d
    invoke-virtual {v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v0

    const-string v1, "PROTO_CLIENT_SAVED_PHOTO_CACHE"

    invoke-interface {v2, v0, v1}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_36} :catch_37

    .line 554
    :goto_36
    return-void

    .line 547
    :catch_37
    move-exception v0

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOURCE_PROFILE_PHOTO_MANAGER_IMP-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lah/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t save photo index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 552
    iget-object v0, p0, Lah/f;->b:Lah/a;

    invoke-static {v0}, Lah/a;->e(Lah/a;)V

    goto :goto_36
.end method
