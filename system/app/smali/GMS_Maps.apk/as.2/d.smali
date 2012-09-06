.class public LaS/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:LaS/e;

.field b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)LaS/d;
    .registers 3
    .parameter

    .prologue
    .line 56
    new-instance v0, LaS/d;

    invoke-direct {v0}, LaS/d;-><init>()V

    .line 57
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v1

    .line 59
    packed-switch v1, :pswitch_data_34

    .line 79
    const/4 v0, 0x0

    .line 85
    :goto_e
    return-object v0

    .line 61
    :pswitch_f
    sget-object v1, LaS/e;->a:LaS/e;

    iput-object v1, v0, LaS/d;->a:LaS/e;

    .line 83
    :goto_13
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v1

    iput v1, v0, LaS/d;->b:I

    goto :goto_e

    .line 64
    :pswitch_1b
    sget-object v1, LaS/e;->b:LaS/e;

    iput-object v1, v0, LaS/d;->a:LaS/e;

    goto :goto_13

    .line 67
    :pswitch_20
    sget-object v1, LaS/e;->c:LaS/e;

    iput-object v1, v0, LaS/d;->a:LaS/e;

    goto :goto_13

    .line 70
    :pswitch_25
    sget-object v1, LaS/e;->d:LaS/e;

    iput-object v1, v0, LaS/d;->a:LaS/e;

    goto :goto_13

    .line 73
    :pswitch_2a
    sget-object v1, LaS/e;->e:LaS/e;

    iput-object v1, v0, LaS/d;->a:LaS/e;

    goto :goto_13

    .line 76
    :pswitch_2f
    sget-object v1, LaS/e;->f:LaS/e;

    iput-object v1, v0, LaS/d;->a:LaS/e;

    goto :goto_13

    .line 59
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
