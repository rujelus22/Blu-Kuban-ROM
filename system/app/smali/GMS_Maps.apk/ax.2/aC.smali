.class public Lax/aC;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/android/ac;

.field private final b:Lax/aE;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/ac;Lax/aE;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lax/aC;->a:Lcom/google/googlenav/android/ac;

    iput-object p2, p0, Lax/aC;->b:Lax/aE;

    return-void
.end method

.method static synthetic a(Lax/aC;Lam/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lax/aC;->b(Lam/b;)V

    return-void
.end method

.method private b(Lam/b;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lax/aC;->b:Lax/aE;

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x1

    const/4 v2, -0x1

    invoke-static {p1, v0, v2}, Lam/g;->c(Lam/b;II)I

    move-result v0

    packed-switch v0, :pswitch_data_26

    goto :goto_6

    :pswitch_11
    iget-object v0, p0, Lax/aC;->b:Lax/aE;

    invoke-interface {v0, v4, v1}, Lax/aE;->a(ZLax/aZ;)V

    goto :goto_6

    :pswitch_17
    iget-object v0, p0, Lax/aC;->b:Lax/aE;

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-interface/range {v0 .. v5}, Lax/aE;->a(LaJ/B;Ljava/lang/Long;Lam/b;ZLax/aZ;)V

    goto :goto_6

    :pswitch_20
    iget-object v0, p0, Lax/aC;->b:Lax/aE;

    invoke-interface {v0, v4, v1}, Lax/aE;->b(ZLax/aZ;)V

    goto :goto_6

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_11
        :pswitch_17
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public a(Lam/b;)V
    .registers 6

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    iget-object v1, p0, Lax/aC;->a:Lcom/google/googlenav/android/ac;

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    iget-object v2, p0, Lax/aC;->a:Lcom/google/googlenav/android/ac;

    new-instance v3, Lax/aD;

    invoke-direct {v3, p0, v0}, Lax/aD;-><init>(Lax/aC;Lam/b;)V

    invoke-virtual {v2, v3, v1}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    goto :goto_7

    :cond_1d
    invoke-direct {p0, v0}, Lax/aC;->b(Lam/b;)V

    goto :goto_7
.end method
