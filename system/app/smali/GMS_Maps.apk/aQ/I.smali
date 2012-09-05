.class public LaQ/I;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Z

.field private final e:LaQ/J;


# direct methods
.method public constructor <init>(Ljava/lang/String;LaQ/J;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaQ/I;->a:Ljava/lang/String;

    iput-object p1, p0, LaQ/I;->b:Ljava/lang/String;

    iput v0, p0, LaQ/I;->c:I

    iput-boolean v0, p0, LaQ/I;->d:Z

    iput-object p2, p0, LaQ/I;->e:LaQ/J;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILaQ/J;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaQ/I;->a:Ljava/lang/String;

    iput-object p2, p0, LaQ/I;->b:Ljava/lang/String;

    iput p3, p0, LaQ/I;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LaQ/I;->d:Z

    iput-object p4, p0, LaQ/I;->e:LaQ/J;

    return-void
.end method

.method public static a(Lam/b;LaQ/J;)LaQ/I;
    .registers 6

    new-instance v0, LaQ/I;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lam/b;->d(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, LaQ/I;-><init>(Ljava/lang/String;Ljava/lang/String;ILaQ/J;)V

    return-object v0
.end method

.method public static a(Landroid/view/View;LaQ/I;Landroid/view/View$OnClickListener;)V
    .registers 5

    if-eqz p1, :cond_26

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, LaQ/I;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x5245464d

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f02c3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, LaQ/I;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_26
    return-void
.end method

.method private g()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, LaQ/I;->d:Z

    if-eqz v0, :cond_7

    const-string v0, "cf"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "t"

    goto :goto_6
.end method


# virtual methods
.method public a()Lam/b;
    .registers 4

    iget-boolean v0, p0, LaQ/I;->d:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Lam/b;

    sget-object v1, LbD/em;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x3

    iget v2, p0, LaQ/I;->c:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    iget-object v1, p0, LaQ/I;->a:Ljava/lang/String;

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    iget-object v2, p0, LaQ/I;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    goto :goto_5
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaQ/I;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaQ/I;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, LaQ/I;->e:LaQ/J;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, LaQ/I;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, LaQ/I;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ui="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LaQ/I;->e:LaQ/J;

    invoke-virtual {v2}, LaQ/J;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LaQ/I;->e:LaQ/J;

    invoke-virtual {v1}, LaQ/J;->b()I

    move-result v1

    if-ltz v1, :cond_7f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LaQ/I;->e:LaQ/J;

    invoke-virtual {v2}, LaQ/J;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7f
    iget-object v1, p0, LaQ/I;->e:LaQ/J;

    invoke-virtual {v1}, LaQ/J;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LaQ/I;->e:LaQ/J;

    invoke-virtual {v2}, LaQ/J;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, LaQ/I;->d:Z

    return v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, LaQ/I;->d:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
