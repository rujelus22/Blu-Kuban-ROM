.class public Lo/F;
.super Ljava/lang/Object;

# interfaces
.implements Lo/c;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/F;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lo/F;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/os/Handler;)Lo/a;
    .registers 4

    packed-switch p1, :pswitch_data_1c

    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    const v0, 0x7f060002

    invoke-static {p0, v0, p2}, Lo/L;->a(Landroid/content/Context;ILandroid/os/Handler;)Lo/a;

    move-result-object v0

    goto :goto_4

    :pswitch_d
    const/high16 v0, 0x7f06

    invoke-static {p0, v0, p2}, Lo/L;->a(Landroid/content/Context;ILandroid/os/Handler;)Lo/a;

    move-result-object v0

    goto :goto_4

    :pswitch_14
    const v0, 0x7f060001

    invoke-static {p0, v0, p2}, Lo/L;->a(Landroid/content/Context;ILandroid/os/Handler;)Lo/a;

    move-result-object v0

    goto :goto_4

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_d
        :pswitch_3
        :pswitch_3
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public a(Lo/R;)Lo/a;
    .registers 5

    iget-object v0, p0, Lo/F;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lo/R;->c()I

    move-result v1

    iget-object v2, p0, Lo/F;->b:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lo/F;->a(Landroid/content/Context;ILandroid/os/Handler;)Lo/a;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
