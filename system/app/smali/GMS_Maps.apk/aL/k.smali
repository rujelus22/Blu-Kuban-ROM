.class public LaL/k;
.super LaL/s;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    .line 18
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, LaL/s;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V

    .line 19
    return-void
.end method


# virtual methods
.method protected a(LaL/t;)V
    .registers 5
    .parameter

    .prologue
    .line 23
    iget-object v0, p1, LaL/t;->c:Landroid/widget/TextView;

    iget-object v1, p0, LaL/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p1, LaL/t;->b:Landroid/widget/TextView;

    const/16 v1, 0x1ee

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p1, LaL/t;->a:Landroid/widget/ImageView;

    const v1, 0x7f0203fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    return-void
.end method
