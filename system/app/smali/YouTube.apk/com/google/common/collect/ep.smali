.class final Lcom/google/common/collect/ep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/jh;


# instance fields
.field private final a:Ljava/util/Iterator;

.field private b:Z

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 3
    .parameter

    .prologue
    .line 1157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1158
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/ep;->a:Ljava/util/Iterator;

    .line 1159
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1185
    iget-boolean v0, p0, Lcom/google/common/collect/ep;->b:Z

    if-nez v0, :cond_f

    .line 1186
    iget-object v0, p0, Lcom/google/common/collect/ep;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ep;->c:Ljava/lang/Object;

    .line 1187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/ep;->b:Z

    .line 1189
    :cond_f
    iget-object v0, p0, Lcom/google/common/collect/ep;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final hasNext()Z
    .registers 2

    .prologue
    .line 1163
    iget-boolean v0, p0, Lcom/google/common/collect/ep;->b:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/common/collect/ep;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1168
    iget-boolean v0, p0, Lcom/google/common/collect/ep;->b:Z

    if-nez v0, :cond_b

    .line 1169
    iget-object v0, p0, Lcom/google/common/collect/ep;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1174
    :goto_a
    return-object v0

    .line 1171
    :cond_b
    iget-object v0, p0, Lcom/google/common/collect/ep;->c:Ljava/lang/Object;

    .line 1172
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/common/collect/ep;->b:Z

    .line 1173
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/ep;->c:Ljava/lang/Object;

    goto :goto_a
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 1179
    iget-boolean v0, p0, Lcom/google/common/collect/ep;->b:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Can\'t remove after you\'ve peeked at next"

    invoke-static {v0, v1}, Lcom/google/common/base/ag;->b(ZLjava/lang/Object;)V

    .line 1180
    iget-object v0, p0, Lcom/google/common/collect/ep;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1181
    return-void

    .line 1179
    :cond_10
    const/4 v0, 0x0

    goto :goto_5
.end method
