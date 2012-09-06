.class public LrO;
.super Ljava/lang/Object;
.source "DriveAppAuthorizerImpl.java"

# interfaces
.implements LrN;


# instance fields
.field private final a:LRS;


# direct methods
.method public constructor <init>(LRS;)V
    .registers 2
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, LrO;->a:LRS;

    .line 30
    return-void
.end method

.method static synthetic a(I)LpQ;
    .registers 2
    .parameter

    .prologue
    .line 23
    invoke-static {p0}, LrO;->b(I)LpQ;

    move-result-object v0

    return-object v0
.end method

.method private static b(I)LpQ;
    .registers 2
    .parameter

    .prologue
    .line 33
    if-eqz p0, :cond_c

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, LafQ;->a(Z)V

    .line 34
    packed-switch p0, :pswitch_data_18

    .line 42
    sget-object v0, LpQ;->h:LpQ;

    :goto_b
    return-object v0

    .line 33
    :cond_c
    const/4 v0, 0x0

    goto :goto_3

    .line 36
    :pswitch_e
    sget-object v0, LpQ;->g:LpQ;

    goto :goto_b

    .line 38
    :pswitch_11
    sget-object v0, LpQ;->g:LpQ;

    goto :goto_b

    .line 40
    :pswitch_14
    sget-object v0, LpQ;->f:LpQ;

    goto :goto_b

    .line 34
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public a(LpP;Ljava/lang/String;LkR;)Landroid/net/Uri;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {p3}, LkR;->a()LkG;

    move-result-object v1

    invoke-virtual {v1}, LkG;->b()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {p3}, LkR;->i()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {p3}, LkR;->c()Ljava/lang/String;

    .line 54
    new-instance v3, LrP;

    invoke-direct {v3, p0, p1}, LrP;-><init>(LrO;LpP;)V

    .line 64
    iget-object v4, p0, LrO;->a:LRS;

    invoke-interface {v4, v3}, LRS;->a(Lmo;)LRR;

    move-result-object v3

    .line 68
    invoke-interface {v3, v1, v2}, LRR;->a(Ljava/lang/String;Ljava/lang/String;)LSs;

    move-result-object v2

    .line 69
    if-nez v2, :cond_25

    .line 82
    :goto_24
    return-object v0

    .line 73
    :cond_25
    invoke-virtual {v2, p2}, LSs;->a(Ljava/lang/String;)V

    .line 74
    invoke-interface {v3, v2, v1}, LRR;->a(Lase;Ljava/lang/String;)LSs;

    move-result-object v1

    .line 75
    if-nez v1, :cond_34

    .line 76
    sget-object v1, LpQ;->h:LpQ;

    invoke-interface {p1, v1, v0}, LpP;->a(LpQ;Ljava/lang/Throwable;)V

    goto :goto_24

    .line 80
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://schemas.google.com/docs/2007#open-with-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {v1, v0}, LSs;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_24
.end method
