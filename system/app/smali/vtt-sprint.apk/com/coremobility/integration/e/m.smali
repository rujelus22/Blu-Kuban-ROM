.class public final Lcom/coremobility/integration/e/m;
.super Lcom/coremobility/integration/x;

# interfaces
.implements Lcom/coremobility/g/a;


# instance fields
.field d:Lcom/coremobility/f/g;

.field protected e:Lcom/coremobility/g/b;

.field f:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/coremobility/integration/x;-><init>(I)V

    iput-object v1, p0, Lcom/coremobility/integration/e/m;->d:Lcom/coremobility/f/g;

    iput-object v1, p0, Lcom/coremobility/integration/e/m;->e:Lcom/coremobility/g/b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/integration/e/m;->f:Z

    return-void
.end method

.method private a(Z)V
    .registers 7

    const/16 v4, 0x17

    const/4 v3, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/integration/e/m;->d:Lcom/coremobility/f/g;

    if-eqz v2, :cond_1e

    if-nez p1, :cond_21

    iget v2, p0, Lcom/coremobility/integration/x;->b:I

    if-eq v2, v3, :cond_1f

    move v2, v0

    :goto_10
    if-eqz v2, :cond_21

    const-string v0, "Provisioned"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/m;->d:Lcom/coremobility/f/g;

    invoke-virtual {v0, p0}, Lcom/coremobility/f/g;->d(Lcom/coremobility/integration/x;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    move v2, v1

    goto :goto_10

    :cond_21
    if-eqz p1, :cond_1e

    iget v2, p0, Lcom/coremobility/integration/x;->b:I

    if-eq v2, v3, :cond_36

    :goto_27
    if-nez v0, :cond_1e

    const-string v0, "Not Provisioned"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/m;->d:Lcom/coremobility/f/g;

    invoke-virtual {v0, p0}, Lcom/coremobility/f/g;->c(Lcom/coremobility/integration/x;)V

    goto :goto_1e

    :cond_36
    move v0, v1

    goto :goto_27
.end method

.method private e()V
    .registers 8

    const/4 v6, 0x1

    const/16 v5, 0x17

    const/4 v4, 0x0

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v4, v4, v1}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v6, v4, v2}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_58

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mdn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v5, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_2e
    if-eqz v0, :cond_60

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nai: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v5, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_48
    invoke-static {v1}, Lcom/coremobility/j/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-static {v0}, Lcom/coremobility/integration/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-direct {p0, v4}, Lcom/coremobility/integration/e/m;->a(Z)V

    :goto_57
    return-void

    :cond_58
    const-string v2, "Mdn: null"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v5, v2, v3}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2e

    :cond_60
    const-string v2, "Nai: null"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v5, v2, v3}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_48

    :cond_68
    invoke-direct {p0, v6}, Lcom/coremobility/integration/e/m;->a(Z)V

    goto :goto_57
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    const-string v0, "Provision"

    return-object v0
.end method

.method public final a(ILjava/lang/Object;II)V
    .registers 8

    packed-switch p1, :pswitch_data_2e

    :goto_3
    return-void

    :pswitch_4
    const/16 v0, 0x17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventData1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EventData2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/integration/e/m;->e()V

    goto :goto_3

    nop

    :pswitch_data_2e
    .packed-switch 0x3c
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Lcom/coremobility/f/g;)V
    .registers 4

    iput-object p1, p0, Lcom/coremobility/integration/e/m;->d:Lcom/coremobility/f/g;

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/e/m;->e:Lcom/coremobility/g/b;

    iget-object v0, p0, Lcom/coremobility/integration/e/m;->e:Lcom/coremobility/g/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/coremobility/g/b;->a(ILcom/coremobility/g/a;)V

    invoke-direct {p0}, Lcom/coremobility/integration/e/m;->e()V

    return-void
.end method

.method public final a(Lcom/coremobility/integration/v;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/e/m;->d:Lcom/coremobility/f/g;

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILcom/coremobility/g/a;)V

    return-void
.end method

.method public final d()V
    .registers 1

    return-void
.end method
