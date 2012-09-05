.class Lcom/google/googlenav/ui/wizard/ag;
.super Ljava/lang/Object;

# interfaces
.implements LaY/f;
.implements LaY/g;
.implements Lcom/google/googlenav/r;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ad;

.field private b:Lcom/google/googlenav/a;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/ad;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ag;->a:Lcom/google/googlenav/ui/wizard/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/ad;Lcom/google/googlenav/ui/wizard/ae;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/ag;-><init>(Lcom/google/googlenav/ui/wizard/ad;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ag;->a:Lcom/google/googlenav/ui/wizard/ad;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ad;->a(Lcom/google/googlenav/ui/wizard/ad;)Lcom/google/googlenav/ui/wizard/ah;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ag;->b:Lcom/google/googlenav/a;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ah;->a(ZLcom/google/googlenav/a;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/E;)V
    .registers 5

    if-eqz p1, :cond_22

    new-instance v0, Lax/aS;

    invoke-direct {v0, p1}, Lax/aS;-><init>(Lcom/google/googlenav/E;)V

    invoke-virtual {v0}, Lax/aS;->d()Lax/aP;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ag;->b:Lcom/google/googlenav/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lax/aP;->a(Lcom/google/googlenav/a;I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ag;->a:Lcom/google/googlenav/ui/wizard/ad;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ad;->c(Lcom/google/googlenav/ui/wizard/ad;)LaY/a;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ag;->a:Lcom/google/googlenav/ui/wizard/ad;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/ad;->b(Lcom/google/googlenav/ui/wizard/ad;)Lcom/google/googlenav/android/ac;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2, p0}, LaY/a;->a(ILcom/google/googlenav/E;Lcom/google/googlenav/android/ac;LaY/g;)V

    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ag;->a:Lcom/google/googlenav/ui/wizard/ad;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ad;->a(Lcom/google/googlenav/ui/wizard/ad;)Lcom/google/googlenav/ui/wizard/ah;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ag;->b:Lcom/google/googlenav/a;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ah;->a(ZLcom/google/googlenav/a;)V

    goto :goto_21
.end method

.method public a(ZLcom/google/googlenav/a;Lcom/google/googlenav/h;Ljava/util/List;)V
    .registers 8

    if-eqz p1, :cond_37

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ag;->b:Lcom/google/googlenav/a;

    invoke-virtual {p3}, Lcom/google/googlenav/h;->l()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Lcom/google/googlenav/aJ;->a()Lcom/google/googlenav/aJ;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ag;->b:Lcom/google/googlenav/a;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aJ;->a(Lcom/google/googlenav/a;)V

    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ag;->a:Lcom/google/googlenav/ui/wizard/ad;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ad;->c(Lcom/google/googlenav/ui/wizard/ad;)LaY/a;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ag;->a:Lcom/google/googlenav/ui/wizard/ad;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/ad;->b(Lcom/google/googlenav/ui/wizard/ad;)Lcom/google/googlenav/android/ac;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, LaY/a;->a(ILcom/google/googlenav/android/ac;LaY/f;)V

    invoke-static {p3}, Lcom/google/googlenav/RatingReminderManager;->a(Lcom/google/googlenav/h;)V

    :goto_26
    invoke-virtual {p3}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lax/aA;->a(Lam/b;)V

    invoke-virtual {p3}, Lcom/google/googlenav/h;->l()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {}, Lax/aA;->x()V

    :cond_36
    return-void

    :cond_37
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ag;->a:Lcom/google/googlenav/ui/wizard/ad;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ad;->a(Lcom/google/googlenav/ui/wizard/ad;)Lcom/google/googlenav/ui/wizard/ah;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ah;->a(ZLcom/google/googlenav/a;)V

    goto :goto_26
.end method
