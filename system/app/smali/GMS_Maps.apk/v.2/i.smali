.class public Lv/i;
.super Lv/h;


# instance fields
.field b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lv/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput p3, p0, Lv/i;->b:I

    return-void
.end method

.method private e()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lv/i;->b:I

    packed-switch v1, :pswitch_data_32

    :goto_6
    if-eqz v0, :cond_2f

    iget-object v1, p0, Lv/i;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :pswitch_f
    const v0, 0x7f0b00d9

    goto :goto_6

    :pswitch_13
    const v0, 0x7f0b00da

    goto :goto_6

    :pswitch_17
    const v0, 0x7f0b00db

    goto :goto_6

    :pswitch_1b
    const v0, 0x7f0b00dc

    goto :goto_6

    :pswitch_1f
    const v0, 0x7f0b00dd

    goto :goto_6

    :pswitch_23
    const v0, 0x7f0b00de

    goto :goto_6

    :pswitch_27
    const v0, 0x7f0b00df

    goto :goto_6

    :pswitch_2b
    const v0, 0x7f0b00e0

    goto :goto_6

    :cond_2f
    const/4 v0, 0x0

    goto :goto_e

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lv/i;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {p0, v5}, Lv/i;->a(I)Lu/K;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v2, p0, Lv/i;->a:Landroid/content/Context;

    const v3, 0x7f0b00e2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v1}, Lu/K;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_22
    return-object v0

    :cond_23
    iget-object v1, p0, Lv/i;->a:Landroid/content/Context;

    const v2, 0x7f0b00e1

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_31
    const/4 v0, 0x0

    goto :goto_22
.end method
