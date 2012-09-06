.class Lcom/google/googlenav/ui/wizard/cy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/iR;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/iS;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/cw;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cw;Lcom/google/googlenav/ui/wizard/iS;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cy;->b:Lcom/google/googlenav/ui/wizard/cw;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cy;->a:Lcom/google/googlenav/ui/wizard/iS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 176
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 180
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 181
    sget-object v0, Lcom/google/googlenav/ui/wizard/cB;->a:[I

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cy;->a:Lcom/google/googlenav/ui/wizard/iS;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/iS;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_38

    .line 189
    :goto_12
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cy;->b:Lcom/google/googlenav/ui/wizard/cw;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cw;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v0

    const/16 v1, 0x14c

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 191
    return-void

    .line 183
    :pswitch_24
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cy;->b:Lcom/google/googlenav/ui/wizard/cw;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cw;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/at;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/at;->a(Ljava/lang/String;)V

    goto :goto_12

    .line 186
    :pswitch_2e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cy;->b:Lcom/google/googlenav/ui/wizard/cw;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cw;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/at;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/at;->b(Ljava/lang/String;)V

    goto :goto_12

    .line 181
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_24
        :pswitch_2e
    .end packed-switch
.end method
