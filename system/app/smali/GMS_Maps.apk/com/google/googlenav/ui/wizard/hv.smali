.class Lcom/google/googlenav/ui/wizard/hv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/cx;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/google/googlenav/ai;

.field private final c:Lcom/google/googlenav/ui/bw;

.field private final d:LaF/c;

.field private final e:Lcom/google/googlenav/J;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 287
    const-class v0, Lcom/google/googlenav/ui/wizard/ho;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/ui/wizard/hv;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/bw;LaF/c;Lcom/google/googlenav/J;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hv;->b:Lcom/google/googlenav/ai;

    .line 299
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hv;->c:Lcom/google/googlenav/ui/bw;

    .line 300
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/hv;->d:LaF/c;

    .line 301
    sget-boolean v0, Lcom/google/googlenav/ui/wizard/hv;->a:Z

    if-nez v0, :cond_15

    if-nez p3, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 302
    :cond_15
    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/hv;->e:Lcom/google/googlenav/J;

    .line 303
    return-void
.end method


# virtual methods
.method public a(ZLjava/util/List;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 308
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 310
    if-eqz p1, :cond_5a

    if-eqz p2, :cond_5a

    .line 312
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hv;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ap()Lcom/google/googlenav/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ax;->a()V

    .line 313
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 314
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 315
    new-instance v3, Lcom/google/googlenav/ay;

    invoke-direct {v3, v0}, Lcom/google/googlenav/ay;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 317
    invoke-virtual {v3}, Lcom/google/googlenav/ay;->b()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hv;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ap()Lcom/google/googlenav/ax;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ax;->a(Lcom/google/googlenav/ay;)Z

    goto :goto_15

    .line 323
    :cond_3e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_54

    .line 325
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hv;->c:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->b()Lah/s;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/ui/wizard/hu;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hv;->d:LaF/c;

    invoke-direct {v2, v3}, Lcom/google/googlenav/ui/wizard/hu;-><init>(LaF/c;)V

    invoke-virtual {v0, v1, v2}, Lah/s;->a(Ljava/lang/Iterable;Lah/p;)V

    .line 329
    :cond_54
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hv;->d:LaF/c;

    invoke-virtual {v0}, LaF/c;->J_()V

    .line 336
    :goto_59
    return-void

    .line 331
    :cond_5a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hv;->e:Lcom/google/googlenav/J;

    const/16 v1, 0x401

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hv;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ap()Lcom/google/googlenav/ax;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ax;->a(Z)V

    goto :goto_59
.end method
