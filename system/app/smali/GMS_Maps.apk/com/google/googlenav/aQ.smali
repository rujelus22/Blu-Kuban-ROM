.class public Lcom/google/googlenav/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/googlenav/an;

.field private final d:[Lcom/google/googlenav/an;


# direct methods
.method private constructor <init>([Lcom/google/googlenav/an;Lcom/google/googlenav/an;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3771
    iput-object p1, p0, Lcom/google/googlenav/aq;->d:[Lcom/google/googlenav/an;

    .line 3772
    iput-object p2, p0, Lcom/google/googlenav/aq;->c:Lcom/google/googlenav/an;

    .line 3773
    iput-object p3, p0, Lcom/google/googlenav/aq;->a:Ljava/lang/String;

    .line 3774
    iput-object p4, p0, Lcom/google/googlenav/aq;->b:Ljava/lang/String;

    .line 3775
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/aq;
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v4, 0x1

    .line 3787
    if-nez p0, :cond_7

    .line 3824
    :goto_6
    return-object v1

    .line 3791
    :cond_7
    invoke-static {p0, v4}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    .line 3795
    if-eqz v0, :cond_30

    .line 3796
    const-string v2, "/s24-c/"

    const-string v3, "/s64-c/"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3800
    const-string v2, "//"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 3801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3805
    :cond_30
    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 3808
    invoke-static {v2, v4}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v3

    .line 3811
    invoke-virtual {p0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    .line 3812
    new-array v5, v4, [Lcom/google/googlenav/an;

    .line 3813
    const/4 v2, 0x0

    :goto_40
    if-ge v2, v4, :cond_4f

    .line 3814
    invoke-virtual {p0, v7, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 3815
    invoke-static {v6}, Lcom/google/googlenav/an;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/an;

    move-result-object v6

    aput-object v6, v5, v2

    .line 3813
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 3819
    :cond_4f
    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 3820
    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/an;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/an;

    move-result-object v1

    .line 3824
    :cond_5d
    new-instance v2, Lcom/google/googlenav/aq;

    invoke-direct {v2, v5, v1, v0, v3}, Lcom/google/googlenav/aq;-><init>([Lcom/google/googlenav/an;Lcom/google/googlenav/an;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_6
.end method

.method public static a(I)Z
    .registers 2
    .parameter

    .prologue
    .line 3778
    if-eqz p0, :cond_5

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static b(I)Z
    .registers 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 3782
    if-eqz p0, :cond_5

    if-ne p0, v0, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public a()[Lcom/google/googlenav/an;
    .registers 2

    .prologue
    .line 3828
    iget-object v0, p0, Lcom/google/googlenav/aq;->d:[Lcom/google/googlenav/an;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3836
    iget-object v0, p0, Lcom/google/googlenav/aq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 3848
    iget-object v0, p0, Lcom/google/googlenav/aq;->a:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 3854
    invoke-virtual {p0}, Lcom/google/googlenav/aq;->c()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Justification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/aq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/aq;->c:Lcom/google/googlenav/an;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
