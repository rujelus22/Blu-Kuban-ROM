.class public abstract Lcom/coremobility/f/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/g/a;


# instance fields
.field c:Lcom/coremobility/g/b;

.field final synthetic d:Lcom/coremobility/f/g;


# direct methods
.method public constructor <init>(Lcom/coremobility/f/g;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/f/i;->d:Lcom/coremobility/f/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(I)V
    .registers 4

    const v1, 0x340001

    invoke-static {v1, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/f/i;->c:Lcom/coremobility/g/b;

    invoke-virtual {v0, v1, p1, p0}, Lcom/coremobility/g/b;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public final a(ILjava/lang/Object;II)V
    .registers 5

    packed-switch p1, :pswitch_data_a

    :cond_3
    :goto_3
    return-void

    :pswitch_4
    if-ne p2, p0, :cond_3

    invoke-virtual {p0}, Lcom/coremobility/f/i;->a()V

    goto :goto_3

    :pswitch_data_a
    .packed-switch 0x340001
        :pswitch_4
    .end packed-switch
.end method

.method public final b()V
    .registers 3

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/f/i;->c:Lcom/coremobility/g/b;

    iget-object v0, p0, Lcom/coremobility/f/i;->c:Lcom/coremobility/g/b;

    const/high16 v1, 0x34

    invoke-virtual {v0, v1, p0}, Lcom/coremobility/g/b;->a(ILcom/coremobility/g/a;)V

    return-void
.end method
