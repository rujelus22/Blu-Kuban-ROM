.class Lah/h;
.super LY/b;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Vector;

.field private final b:Lah/a;

.field private final f:Lah/i;


# direct methods
.method public constructor <init>(LY/c;Ljava/util/Vector;Lah/a;Lah/i;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 705
    invoke-direct {p0, p1}, LY/b;-><init>(LY/c;)V

    .line 706
    iput-object p2, p0, Lah/h;->a:Ljava/util/Vector;

    .line 707
    iput-object p3, p0, Lah/h;->b:Lah/a;

    .line 708
    iput-object p4, p0, Lah/h;->f:Lah/i;

    .line 709
    return-void
.end method


# virtual methods
.method public a(Lah/n;)Lah/m;
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 732
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    .line 734
    invoke-virtual {p1}, Lah/n;->b()Ljava/lang/Long;

    move-result-object v2

    .line 735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHOTO_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/common/io/j;->d(Ljava/lang/String;)[B

    move-result-object v1

    .line 736
    if-eqz v1, :cond_29

    array-length v2, v1

    if-nez v2, :cond_2a

    .line 756
    :cond_29
    :goto_29
    return-object v0

    .line 742
    :cond_2a
    :try_start_2a
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/ag;->w:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 743
    invoke-virtual {v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 744
    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-static {p1, v1, v2, v3, v4}, Lah/m;->a(Lah/n;ILcom/google/googlenav/common/io/protocol/ProtoBuf;II)Lah/m;

    move-result-object v0

    .line 750
    invoke-virtual {v0}, Lah/m;->f()LS/f;

    move-result-object v1

    invoke-interface {v1}, LS/f;->a()I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_42} :catch_43

    goto :goto_29

    .line 751
    :catch_43
    move-exception v1

    .line 752
    const-string v2, "PHOTO_LOAD-PhotoLoadFromDiskTask failed to load photo"

    invoke-static {v2, v1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 754
    iget-object v1, p0, Lah/h;->b:Lah/a;

    invoke-static {v1}, Lah/a;->e(Lah/a;)V

    goto :goto_29
.end method

.method public a()V
    .registers 6

    .prologue
    .line 713
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 714
    const/4 v0, 0x0

    iget-object v1, p0, Lah/h;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    move v1, v0

    :goto_d
    if-ge v1, v3, :cond_2f

    .line 715
    iget-object v0, p0, Lah/h;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lah/n;

    .line 716
    invoke-virtual {p0, v0}, Lah/h;->a(Lah/n;)Lah/m;

    move-result-object v4

    .line 717
    if-eqz v4, :cond_29

    .line 718
    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 719
    iget-object v0, p0, Lah/h;->f:Lah/i;

    invoke-interface {v0, v4}, Lah/i;->a(Lah/m;)V

    .line 714
    :goto_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 721
    :cond_29
    iget-object v4, p0, Lah/h;->f:Lah/i;

    invoke-interface {v4, v0}, Lah/i;->a(Lah/n;)V

    goto :goto_25

    .line 725
    :cond_2f
    iget-object v0, p0, Lah/h;->f:Lah/i;

    invoke-interface {v0, v2}, Lah/i;->a(Ljava/util/Vector;)V

    .line 726
    return-void
.end method
