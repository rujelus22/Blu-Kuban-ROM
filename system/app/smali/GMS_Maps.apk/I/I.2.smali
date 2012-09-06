.class public Li/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Li/I;->a:Landroid/content/Context;

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Li/I;->b:Landroid/os/Handler;

    .line 22
    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/os/Handler;)Li/a;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    packed-switch p1, :pswitch_data_1c

    .line 53
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 47
    :pswitch_5
    const v0, 0x7f070002

    invoke-static {p0, v0, p2}, Li/O;->a(Landroid/content/Context;ILandroid/os/Handler;)Li/a;

    move-result-object v0

    goto :goto_4

    .line 49
    :pswitch_d
    const/high16 v0, 0x7f07

    invoke-static {p0, v0, p2}, Li/O;->a(Landroid/content/Context;ILandroid/os/Handler;)Li/a;

    move-result-object v0

    goto :goto_4

    .line 51
    :pswitch_14
    const v0, 0x7f070001

    invoke-static {p0, v0, p2}, Li/O;->a(Landroid/content/Context;ILandroid/os/Handler;)Li/a;

    move-result-object v0

    goto :goto_4

    .line 45
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
.method public a(Li/U;)Li/a;
    .registers 5
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Li/I;->a:Landroid/content/Context;

    invoke-virtual {p1}, Li/U;->c()I

    move-result v1

    iget-object v2, p0, Li/I;->b:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Li/I;->a(Landroid/content/Context;ILandroid/os/Handler;)Li/a;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 31
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 35
    return-void
.end method
