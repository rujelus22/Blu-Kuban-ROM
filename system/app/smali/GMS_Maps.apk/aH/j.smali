.class Lah/j;
.super LY/b;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Vector;

.field private final b:Lah/k;


# direct methods
.method public constructor <init>(LY/c;Ljava/util/Vector;Lah/k;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 774
    invoke-direct {p0, p1}, LY/b;-><init>(LY/c;)V

    .line 775
    iput-object p2, p0, Lah/j;->a:Ljava/util/Vector;

    .line 776
    iput-object p3, p0, Lah/j;->b:Lah/k;

    .line 777
    return-void
.end method


# virtual methods
.method public a()V
    .registers 8

    .prologue
    .line 787
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v2

    .line 788
    const/4 v0, 0x0

    iget-object v1, p0, Lah/j;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    move v1, v0

    :goto_10
    if-ge v1, v3, :cond_89

    .line 789
    iget-object v0, p0, Lah/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lah/m;

    .line 792
    invoke-virtual {v0}, Lah/m;->h()Z

    move-result v4

    if-nez v4, :cond_24

    .line 788
    :goto_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 796
    :cond_24
    :try_start_24
    invoke-virtual {v0}, Lah/m;->g()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 797
    invoke-virtual {v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v4

    .line 798
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PHOTO_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lah/m;->a()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I

    move-result v4

    .line 801
    if-gtz v4, :cond_83

    .line 802
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write failed, error Code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_62} :catch_62

    .line 806
    :catch_62
    move-exception v1

    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FLASH-PhotoSaveToDiskTask can\'t savePHOTO_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lah/m;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 815
    iget-object v0, p0, Lah/j;->b:Lah/k;

    invoke-interface {v0}, Lah/k;->b()V

    .line 820
    :goto_82
    return-void

    .line 804
    :cond_83
    :try_start_83
    iget-object v4, p0, Lah/j;->b:Lah/k;

    invoke-interface {v4, v0}, Lah/k;->a(Lah/m;)V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_88} :catch_62

    goto :goto_20

    .line 819
    :cond_89
    iget-object v0, p0, Lah/j;->b:Lah/k;

    invoke-interface {v0}, Lah/k;->a()V

    goto :goto_82
.end method
