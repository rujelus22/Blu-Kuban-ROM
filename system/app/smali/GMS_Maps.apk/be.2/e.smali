.class public Lbe/e;
.super Ljava/lang/Object;


# instance fields
.field a:Lbe/f;

.field b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lam/b;)Lbe/e;
    .registers 3

    new-instance v0, Lbe/e;

    invoke-direct {v0}, Lbe/e;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lam/g;->e(Lam/b;I)I

    move-result v1

    packed-switch v1, :pswitch_data_34

    const/4 v0, 0x0

    :goto_e
    return-object v0

    :pswitch_f
    sget-object v1, Lbe/f;->a:Lbe/f;

    iput-object v1, v0, Lbe/e;->a:Lbe/f;

    :goto_13
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lam/g;->e(Lam/b;I)I

    move-result v1

    iput v1, v0, Lbe/e;->b:I

    goto :goto_e

    :pswitch_1b
    sget-object v1, Lbe/f;->b:Lbe/f;

    iput-object v1, v0, Lbe/e;->a:Lbe/f;

    goto :goto_13

    :pswitch_20
    sget-object v1, Lbe/f;->c:Lbe/f;

    iput-object v1, v0, Lbe/e;->a:Lbe/f;

    goto :goto_13

    :pswitch_25
    sget-object v1, Lbe/f;->d:Lbe/f;

    iput-object v1, v0, Lbe/e;->a:Lbe/f;

    goto :goto_13

    :pswitch_2a
    sget-object v1, Lbe/f;->e:Lbe/f;

    iput-object v1, v0, Lbe/e;->a:Lbe/f;

    goto :goto_13

    :pswitch_2f
    sget-object v1, Lbe/f;->f:Lbe/f;

    iput-object v1, v0, Lbe/e;->a:Lbe/f;

    goto :goto_13

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_f
        :pswitch_1b
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_2f
    .end packed-switch
.end method
