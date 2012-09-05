.class Lby/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lby/c;

.field private b:Lbw/o;

.field private c:Ljava/lang/Exception;

.field private d:J

.field private e:J

.field private f:I


# direct methods
.method public constructor <init>(Lby/c;JJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lby/j;->a:Lby/c;

    iput-wide p2, p0, Lby/j;->d:J

    iput-wide p4, p0, Lby/j;->e:J

    const/4 v0, 0x4

    iput v0, p0, Lby/j;->f:I

    return-void
.end method

.method public constructor <init>(Lby/c;Lbw/o;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lby/j;->a:Lby/c;

    iput-object p2, p0, Lby/j;->b:Lbw/o;

    const/4 v0, 0x2

    iput v0, p0, Lby/j;->f:I

    return-void
.end method

.method public constructor <init>(Lby/c;Ljava/lang/Exception;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lby/j;->a:Lby/c;

    iput-object p2, p0, Lby/j;->c:Ljava/lang/Exception;

    const/4 v0, 0x3

    iput v0, p0, Lby/j;->f:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lby/j;->a:Lby/c;

    invoke-virtual {v0}, Lby/c;->d()Lby/d;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget v1, p0, Lby/j;->f:I

    packed-switch v1, :pswitch_data_30

    goto :goto_8

    :pswitch_f
    iget-object v1, p0, Lby/j;->a:Lby/c;

    invoke-interface {v0, v1}, Lby/d;->a(Lby/c;)V

    goto :goto_8

    :pswitch_15
    iget-object v1, p0, Lby/j;->a:Lby/c;

    iget-object v2, p0, Lby/j;->b:Lbw/o;

    invoke-interface {v0, v1, v2}, Lby/d;->a(Lby/c;Lbw/o;)V

    goto :goto_8

    :pswitch_1d
    iget-object v1, p0, Lby/j;->a:Lby/c;

    iget-object v2, p0, Lby/j;->c:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lby/d;->a(Lby/c;Ljava/lang/Exception;)V

    goto :goto_8

    :pswitch_25
    iget-object v1, p0, Lby/j;->a:Lby/c;

    iget-wide v2, p0, Lby/j;->d:J

    iget-wide v4, p0, Lby/j;->e:J

    invoke-interface/range {v0 .. v5}, Lby/d;->a(Lby/c;JJ)V

    goto :goto_8

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_f
        :pswitch_15
        :pswitch_1d
        :pswitch_25
    .end packed-switch
.end method
