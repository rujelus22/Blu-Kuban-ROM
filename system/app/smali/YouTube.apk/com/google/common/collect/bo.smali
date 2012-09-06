.class final Lcom/google/common/collect/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/bl;


# instance fields
.field final synthetic a:Lcom/google/common/collect/bl;

.field final synthetic b:Lcom/google/common/collect/bk;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bl;Lcom/google/common/collect/bk;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/common/collect/bo;->a:Lcom/google/common/collect/bl;

    iput-object p2, p0, Lcom/google/common/collect/bo;->b:Lcom/google/common/collect/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;
    .registers 12
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
    const-wide/16 v6, 0x4

    .line 191
    if-nez p2, :cond_5

    .line 207
    :goto_4
    return-object p3

    .line 193
    :cond_5
    if-nez p3, :cond_9

    move-object p3, p2

    .line 194
    goto :goto_4

    .line 196
    :cond_9
    iget-object v0, p0, Lcom/google/common/collect/bo;->b:Lcom/google/common/collect/bk;

    invoke-interface {v0, p2}, Lcom/google/common/collect/bk;->a(Lcom/google/common/collect/bw;)J

    move-result-wide v0

    .line 197
    iget-object v2, p0, Lcom/google/common/collect/bo;->b:Lcom/google/common/collect/bk;

    invoke-interface {v2, p3}, Lcom/google/common/collect/bk;->a(Lcom/google/common/collect/bw;)J

    move-result-wide v2

    .line 198
    mul-long v4, v6, v0

    cmp-long v4, v4, v2

    if-gtz v4, :cond_32

    .line 199
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p3, v0}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/bo;->a(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/google/common/collect/bo;->a:Lcom/google/common/collect/bl;

    sget-object v2, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p3, v2}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v2

    invoke-interface {v1, p1, p3, v0, v2}, Lcom/google/common/collect/bl;->a(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object p3

    goto :goto_4

    .line 202
    :cond_32
    mul-long/2addr v2, v6

    cmp-long v0, v2, v0

    if-gtz v0, :cond_4e

    .line 203
    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p2, v0}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/common/collect/bo;->a(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/google/common/collect/bo;->a:Lcom/google/common/collect/bl;

    sget-object v2, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p2, v2}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/google/common/collect/bl;->a(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object p3

    goto :goto_4

    .line 207
    :cond_4e
    iget-object v0, p0, Lcom/google/common/collect/bo;->a:Lcom/google/common/collect/bl;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/collect/bl;->a(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object p3

    goto :goto_4
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
    const-wide/16 v6, 0x4

    .line 168
    if-nez p3, :cond_b

    .line 169
    iget-object v0, p0, Lcom/google/common/collect/bo;->a:Lcom/google/common/collect/bl;

    invoke-static {p4, p2, p1, v0}, Lcom/google/common/collect/bz;->a(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/by;Lcom/google/common/collect/bl;)Lcom/google/common/collect/bw;

    move-result-object v0

    .line 184
    :goto_a
    return-object v0

    .line 170
    :cond_b
    if-nez p4, :cond_14

    .line 171
    iget-object v0, p0, Lcom/google/common/collect/bo;->a:Lcom/google/common/collect/bl;

    invoke-static {p3, p2, p1, v0}, Lcom/google/common/collect/bz;->b(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/by;Lcom/google/common/collect/bl;)Lcom/google/common/collect/bw;

    move-result-object v0

    goto :goto_a

    .line 173
    :cond_14
    iget-object v0, p0, Lcom/google/common/collect/bo;->b:Lcom/google/common/collect/bk;

    invoke-interface {v0, p3}, Lcom/google/common/collect/bk;->a(Lcom/google/common/collect/bw;)J

    move-result-wide v0

    .line 174
    iget-object v2, p0, Lcom/google/common/collect/bo;->b:Lcom/google/common/collect/bk;

    invoke-interface {v2, p4}, Lcom/google/common/collect/bk;->a(Lcom/google/common/collect/bw;)J

    move-result-wide v2

    .line 175
    mul-long v4, v6, v0

    cmp-long v4, v4, v2

    if-gtz v4, :cond_3d

    .line 176
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p4, v0}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/common/collect/bo;->a(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/google/common/collect/bo;->a:Lcom/google/common/collect/bl;

    sget-object v2, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p4, v2}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v2

    invoke-interface {v1, p1, p4, v0, v2}, Lcom/google/common/collect/bl;->a(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    goto :goto_a

    .line 179
    :cond_3d
    mul-long/2addr v2, v6

    cmp-long v0, v2, v0

    if-gtz v0, :cond_59

    .line 180
    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p3, v0}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/google/common/collect/bo;->a(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/google/common/collect/bo;->a:Lcom/google/common/collect/bl;

    sget-object v2, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p3, v2}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v2

    invoke-interface {v1, p1, p3, v2, v0}, Lcom/google/common/collect/bl;->a(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    goto :goto_a

    .line 184
    :cond_59
    invoke-virtual {p1, p2, p3, p4}, Lcom/google/common/collect/by;->a(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    goto :goto_a
.end method
