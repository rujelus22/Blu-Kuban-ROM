.class public Lcom/google/googlenav/friend/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/android/Y;

.field private final b:Lcom/google/googlenav/friend/as;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/as;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/googlenav/friend/aq;->a:Lcom/google/googlenav/android/Y;

    .line 32
    iput-object p2, p0, Lcom/google/googlenav/friend/aq;->b:Lcom/google/googlenav/friend/as;

    .line 33
    return-void
.end method

.method private a(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lcom/google/googlenav/friend/aq;->b:Lcom/google/googlenav/friend/as;

    if-nez v0, :cond_7

    .line 77
    :goto_6
    return-void

    .line 63
    :cond_7
    packed-switch p1, :pswitch_data_1e

    goto :goto_6

    .line 65
    :pswitch_b
    iget-object v0, p0, Lcom/google/googlenav/friend/aq;->b:Lcom/google/googlenav/friend/as;

    invoke-interface {v0, v2, v1}, Lcom/google/googlenav/friend/as;->a(ZLcom/google/googlenav/friend/aS;)V

    goto :goto_6

    .line 68
    :pswitch_11
    iget-object v0, p0, Lcom/google/googlenav/friend/aq;->b:Lcom/google/googlenav/friend/as;

    invoke-interface {v0, v1, v1, v2, v1}, Lcom/google/googlenav/friend/as;->a(Lat/B;Ljava/lang/Long;ZLcom/google/googlenav/friend/aS;)V

    goto :goto_6

    .line 72
    :pswitch_17
    iget-object v0, p0, Lcom/google/googlenav/friend/aq;->b:Lcom/google/googlenav/friend/as;

    invoke-interface {v0, v2, v1}, Lcom/google/googlenav/friend/as;->b(ZLcom/google/googlenav/friend/aS;)V

    goto :goto_6

    .line 63
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_11
        :pswitch_17
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/googlenav/friend/aq;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/aq;->a(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter

    .prologue
    .line 42
    new-instance v0, Lcom/google/googlenav/friend/ag;

    new-instance v1, Lcom/google/googlenav/friend/W;

    invoke-direct {v1, p1}, Lcom/google/googlenav/friend/W;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/W;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/friend/ag;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 44
    invoke-virtual {v0}, Lcom/google/googlenav/friend/ag;->a()I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/google/googlenav/friend/aq;->a:Lcom/google/googlenav/android/Y;

    if-eqz v1, :cond_23

    .line 48
    const/4 v1, 0x0

    .line 49
    iget-object v2, p0, Lcom/google/googlenav/friend/aq;->a:Lcom/google/googlenav/android/Y;

    new-instance v3, Lcom/google/googlenav/friend/ar;

    invoke-direct {v3, p0, v0}, Lcom/google/googlenav/friend/ar;-><init>(Lcom/google/googlenav/friend/aq;I)V

    invoke-virtual {v2, v3, v1}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 57
    :goto_22
    return-void

    .line 55
    :cond_23
    invoke-direct {p0, v0}, Lcom/google/googlenav/friend/aq;->a(I)V

    goto :goto_22
.end method
