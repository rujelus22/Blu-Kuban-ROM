.class public Lbb/f;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/EnumSet;

.field public final b:I

.field public final c:I

.field public d:Ljava/lang/String;

.field public e:Lbb/q;

.field public f:I

.field g:Z

.field private h:[Laq/a;


# direct methods
.method public constructor <init>(IILjava/lang/String;[Laq/a;)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lbb/h;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lbb/f;->a:Ljava/util/EnumSet;

    iput v1, p0, Lbb/f;->f:I

    iput-boolean v1, p0, Lbb/f;->g:Z

    iput p1, p0, Lbb/f;->b:I

    iput p2, p0, Lbb/f;->c:I

    iput-object p3, p0, Lbb/f;->d:Ljava/lang/String;

    iput-object p4, p0, Lbb/f;->h:[Laq/a;

    return-void
.end method


# virtual methods
.method public a(Lbb/h;)V
    .registers 4

    sget-object v0, Lbb/g;->a:[I

    invoke-virtual {p1}, Lbb/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    :goto_b
    return-void

    :pswitch_c
    iget-object v0, p0, Lbb/f;->a:Ljava/util/EnumSet;

    sget-object v1, Lbb/h;->a:Lbb/h;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :pswitch_14
    iget-object v0, p0, Lbb/f;->a:Ljava/util/EnumSet;

    sget-object v1, Lbb/h;->b:Lbb/h;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :pswitch_1c
    iget-object v0, p0, Lbb/f;->a:Ljava/util/EnumSet;

    sget-object v1, Lbb/h;->d:Lbb/h;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :pswitch_24
    iget-object v0, p0, Lbb/f;->a:Ljava/util/EnumSet;

    sget-object v1, Lbb/h;->c:Lbb/h;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :pswitch_2c
    iget-object v0, p0, Lbb/f;->a:Ljava/util/EnumSet;

    sget-object v1, Lbb/h;->e:Lbb/h;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_c
        :pswitch_14
        :pswitch_1c
        :pswitch_24
        :pswitch_2c
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lbb/f;->d:Ljava/lang/String;

    iget-object v0, p0, Lbb/f;->a:Ljava/util/EnumSet;

    sget-object v1, Lbb/h;->b:Lbb/h;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a([Laq/a;)V
    .registers 3

    iput-object p1, p0, Lbb/f;->h:[Laq/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbb/f;->g:Z

    return-void
.end method

.method public a()[Laq/a;
    .registers 2

    iget-object v0, p0, Lbb/f;->h:[Laq/a;

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lbb/f;->g:Z

    return v0
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Lbb/f;->a:Ljava/util/EnumSet;

    sget-object v1, Lbb/h;->b:Lbb/h;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 3

    iget-object v0, p0, Lbb/f;->a:Ljava/util/EnumSet;

    sget-object v1, Lbb/h;->a:Lbb/h;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lbb/f;->a:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lbb/f;->a:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    return-void
.end method
