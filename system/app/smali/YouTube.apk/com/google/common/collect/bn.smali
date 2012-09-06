.class final Lcom/google/common/collect/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/bl;


# instance fields
.field final synthetic a:Lcom/google/common/collect/bk;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bk;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/common/collect/bn;->a:Lcom/google/common/collect/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;
    .registers 6
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 119
    invoke-static {p3}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p3, v0}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/by;->a(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p3, v1}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v1

    invoke-virtual {p0, p3, v0, v1}, Lcom/google/common/collect/by;->a(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;
    .registers 6
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 126
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p2, v0}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p2, v1}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/common/collect/by;->a(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/common/collect/by;->a(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;
    .registers 8
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 134
    if-nez p2, :cond_3

    .line 149
    :goto_2
    return-object p3

    .line 136
    :cond_3
    if-nez p3, :cond_7

    move-object p3, p2

    .line 137
    goto :goto_2

    .line 140
    :cond_7
    iget-object v0, p0, Lcom/google/common/collect/bn;->a:Lcom/google/common/collect/bk;

    invoke-interface {v0, p2}, Lcom/google/common/collect/bk;->a(Lcom/google/common/collect/bw;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/common/collect/bn;->a:Lcom/google/common/collect/bk;

    invoke-interface {v2, p3}, Lcom/google/common/collect/bk;->a(Lcom/google/common/collect/bw;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    .line 141
    invoke-static {p2, p1, p0}, Lcom/google/common/collect/bz;->b(Lcom/google/common/collect/bw;Lcom/google/common/collect/by;Lcom/google/common/collect/bl;)Lcom/google/common/collect/bt;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Lcom/google/common/collect/bt;->c()Lcom/google/common/collect/bw;

    move-result-object v0

    .line 143
    invoke-virtual {v1}, Lcom/google/common/collect/bt;->b()Lcom/google/common/collect/bw;

    move-result-object p2

    .line 149
    :goto_23
    invoke-virtual {p1, v0, p2, p3}, Lcom/google/common/collect/by;->a(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object p3

    goto :goto_2

    .line 145
    :cond_28
    invoke-static {p3, p1, p0}, Lcom/google/common/collect/bz;->a(Lcom/google/common/collect/bw;Lcom/google/common/collect/by;Lcom/google/common/collect/bl;)Lcom/google/common/collect/bt;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Lcom/google/common/collect/bt;->c()Lcom/google/common/collect/bw;

    move-result-object v0

    .line 147
    invoke-virtual {v1}, Lcom/google/common/collect/bt;->b()Lcom/google/common/collect/bw;

    move-result-object p3

    goto :goto_23
.end method

.method public final a(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;
    .registers 13
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/common/collect/bn;->a:Lcom/google/common/collect/bk;

    invoke-interface {v0, p3}, Lcom/google/common/collect/bk;->a(Lcom/google/common/collect/bw;)J

    move-result-wide v0

    .line 87
    iget-object v2, p0, Lcom/google/common/collect/bn;->a:Lcom/google/common/collect/bk;

    invoke-interface {v2, p4}, Lcom/google/common/collect/bk;->a(Lcom/google/common/collect/bw;)J

    move-result-wide v2

    .line 88
    add-long v4, v0, v2

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-lez v4, :cond_78

    .line 89
    const-wide/16 v4, 0x4

    mul-long/2addr v4, v0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_46

    .line 90
    invoke-static {p4}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p4, v0}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p4, v1}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/bn;->a:Lcom/google/common/collect/bk;

    invoke-interface {v2, v0}, Lcom/google/common/collect/bk;->a(Lcom/google/common/collect/bw;)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    iget-object v6, p0, Lcom/google/common/collect/bn;->a:Lcom/google/common/collect/bk;

    invoke-interface {v6, v1}, Lcom/google/common/collect/bk;->a(Lcom/google/common/collect/bw;)J

    move-result-wide v6

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_41

    invoke-static {p1, p4, v0, v1}, Lcom/google/common/collect/bn;->c(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object p4

    :cond_41
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/collect/bn;->b(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    .line 95
    :goto_45
    return-object v0

    .line 91
    :cond_46
    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_78

    .line 92
    invoke-static {p3}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p3, v0}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p3, v1}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/bn;->a:Lcom/google/common/collect/bk;

    invoke-interface {v2, v0}, Lcom/google/common/collect/bk;->a(Lcom/google/common/collect/bw;)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    iget-object v6, p0, Lcom/google/common/collect/bn;->a:Lcom/google/common/collect/bk;

    invoke-interface {v6, v1}, Lcom/google/common/collect/bk;->a(Lcom/google/common/collect/bw;)J

    move-result-wide v6

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_73

    invoke-static {p1, p3, v1, v0}, Lcom/google/common/collect/bn;->b(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object p3

    :cond_73
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/collect/bn;->c(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    goto :goto_45

    .line 95
    :cond_78
    invoke-virtual {p1, p2, p3, p4}, Lcom/google/common/collect/by;->a(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    goto :goto_45
.end method
