.class Lcom/google/googlenav/ui/wizard/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaM/f;
.implements LaM/g;
.implements Lcom/google/googlenav/r;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ag;

.field private b:Lcom/google/googlenav/a;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/ag;)V
    .registers 2
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aj;->a:Lcom/google/googlenav/ui/wizard/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/ag;Lcom/google/googlenav/ui/wizard/ah;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/aj;-><init>(Lcom/google/googlenav/ui/wizard/ag;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->a:Lcom/google/googlenav/ui/wizard/ag;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ag;->a(Lcom/google/googlenav/ui/wizard/ag;)Lcom/google/googlenav/ui/wizard/ak;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aj;->b:Lcom/google/googlenav/a;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ak;->a(ZLcom/google/googlenav/a;)V

    .line 385
    return-void
.end method

.method public a(Lcom/google/googlenav/F;)V
    .registers 5
    .parameter

    .prologue
    .line 364
    if-eqz p1, :cond_22

    .line 365
    new-instance v0, Lcom/google/googlenav/friend/aM;

    invoke-direct {v0, p1}, Lcom/google/googlenav/friend/aM;-><init>(Lcom/google/googlenav/F;)V

    .line 366
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aM;->d()Lcom/google/googlenav/friend/aK;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aj;->b:Lcom/google/googlenav/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/friend/aK;->a(Lcom/google/googlenav/a;I)V

    .line 368
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->a:Lcom/google/googlenav/ui/wizard/ag;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ag;->c(Lcom/google/googlenav/ui/wizard/ag;)LaM/a;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aj;->a:Lcom/google/googlenav/ui/wizard/ag;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/ag;->b(Lcom/google/googlenav/ui/wizard/ag;)Lcom/google/googlenav/android/Y;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2, p0}, LaM/a;->a(ILcom/google/googlenav/F;Lcom/google/googlenav/android/Y;LaM/g;)V

    .line 373
    :goto_21
    return-void

    .line 371
    :cond_22
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->a:Lcom/google/googlenav/ui/wizard/ag;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ag;->a(Lcom/google/googlenav/ui/wizard/ag;)Lcom/google/googlenav/ui/wizard/ak;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aj;->b:Lcom/google/googlenav/a;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ak;->a(ZLcom/google/googlenav/a;)V

    goto :goto_21
.end method

.method public a(ZLcom/google/googlenav/a;Lcom/google/googlenav/h;Ljava/util/List;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 327
    if-eqz p1, :cond_37

    .line 328
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aj;->b:Lcom/google/googlenav/a;

    .line 329
    invoke-virtual {p3}, Lcom/google/googlenav/h;->l()Z

    move-result v0

    if-nez v0, :cond_13

    .line 331
    invoke-static {}, Lcom/google/googlenav/aM;->a()Lcom/google/googlenav/aM;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aj;->b:Lcom/google/googlenav/a;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aM;->a(Lcom/google/googlenav/a;)V

    .line 334
    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->a:Lcom/google/googlenav/ui/wizard/ag;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ag;->c(Lcom/google/googlenav/ui/wizard/ag;)LaM/a;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aj;->a:Lcom/google/googlenav/ui/wizard/ag;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/ag;->b(Lcom/google/googlenav/ui/wizard/ag;)Lcom/google/googlenav/android/Y;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, LaM/a;->a(ILcom/google/googlenav/android/Y;LaM/f;)V

    .line 337
    invoke-static {p3}, Lcom/google/googlenav/RatingReminderManager;->a(Lcom/google/googlenav/h;)V

    .line 344
    :goto_26
    invoke-virtual {p3}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/af;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 345
    invoke-virtual {p3}, Lcom/google/googlenav/h;->l()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 346
    invoke-static {}, Lcom/google/googlenav/friend/af;->v()V

    .line 348
    :cond_36
    return-void

    .line 342
    :cond_37
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->a:Lcom/google/googlenav/ui/wizard/ag;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ag;->a(Lcom/google/googlenav/ui/wizard/ag;)Lcom/google/googlenav/ui/wizard/ak;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ak;->a(ZLcom/google/googlenav/a;)V

    goto :goto_26
.end method
