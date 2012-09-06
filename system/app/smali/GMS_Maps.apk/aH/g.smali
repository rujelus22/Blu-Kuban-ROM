.class Lah/g;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lah/a;


# direct methods
.method constructor <init>(Lah/a;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lah/g;->a:Lah/a;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 638
    :try_start_1
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    .line 639
    const-string v1, "PROTO_CLIENT_SAVED_PHOTO_CACHE"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->d(Ljava/lang/String;)[B

    move-result-object v0

    .line 640
    if-eqz v0, :cond_14

    array-length v1, v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_b4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_82

    if-nez v1, :cond_1a

    .line 670
    :cond_14
    iget-object v0, p0, Lah/g;->a:Lah/a;

    invoke-static {v0, v7}, Lah/a;->a(Lah/a;Z)Z

    .line 672
    :goto_19
    return-void

    .line 644
    :cond_1a
    :try_start_1a
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/ag;->u:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 645
    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 646
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 647
    iget-object v0, p0, Lah/g;->a:Lah/a;

    iget-object v3, v0, Lah/a;->a:Ljava/util/Hashtable;

    monitor-enter v3
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_b4
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2e} :catch_82

    .line 648
    const/4 v0, 0x0

    :goto_2f
    if-ge v0, v2, :cond_48

    .line 649
    const/4 v4, 0x1

    :try_start_32
    invoke-virtual {v1, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-static {v4}, Lah/n;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lah/n;

    move-result-object v4

    .line 651
    iget-object v5, p0, Lah/g;->a:Lah/a;

    iget-object v5, v5, Lah/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v4}, Lah/n;->b()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 653
    :cond_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_32 .. :try_end_49} :catchall_7f

    .line 654
    :try_start_49
    iget-object v0, p0, Lah/g;->a:Lah/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lah/a;->a(Lah/a;Z)Z

    .line 657
    iget-object v0, p0, Lah/g;->a:Lah/a;

    invoke-static {v0}, Lah/a;->f(Lah/a;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_b4
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_56} :catch_82

    .line 658
    :try_start_56
    iget-object v0, p0, Lah/g;->a:Lah/a;

    invoke-static {v0}, Lah/a;->f(Lah/a;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_78

    .line 659
    iget-object v0, p0, Lah/g;->a:Lah/a;

    invoke-static {v0}, Lah/a;->f(Lah/a;)Ljava/util/Vector;

    move-result-object v0

    .line 660
    iget-object v2, p0, Lah/g;->a:Lah/a;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-static {v2, v3}, Lah/a;->c(Lah/a;Ljava/util/Vector;)Ljava/util/Vector;

    .line 661
    iget-object v2, p0, Lah/g;->a:Lah/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lah/a;->a(Ljava/util/Vector;Lah/p;)Z

    .line 663
    :cond_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_56 .. :try_end_79} :catchall_b1

    .line 670
    iget-object v0, p0, Lah/g;->a:Lah/a;

    invoke-static {v0, v7}, Lah/a;->a(Lah/a;Z)Z

    goto :goto_19

    .line 653
    :catchall_7f
    move-exception v0

    :try_start_80
    monitor-exit v3
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    :try_start_81
    throw v0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_b4
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_82} :catch_82

    .line 664
    :catch_82
    move-exception v0

    .line 665
    :try_start_83
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

    const-string v2, " failed to load IDs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 668
    iget-object v0, p0, Lah/g;->a:Lah/a;

    invoke-static {v0}, Lah/a;->e(Lah/a;)V
    :try_end_aa
    .catchall {:try_start_83 .. :try_end_aa} :catchall_b4

    .line 670
    iget-object v0, p0, Lah/g;->a:Lah/a;

    invoke-static {v0, v7}, Lah/a;->a(Lah/a;Z)Z

    goto/16 :goto_19

    .line 663
    :catchall_b1
    move-exception v0

    :try_start_b2
    monitor-exit v1
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    :try_start_b3
    throw v0
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b4
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b4} :catch_82

    .line 670
    :catchall_b4
    move-exception v0

    iget-object v1, p0, Lah/g;->a:Lah/a;

    invoke-static {v1, v7}, Lah/a;->a(Lah/a;Z)Z

    throw v0
.end method
