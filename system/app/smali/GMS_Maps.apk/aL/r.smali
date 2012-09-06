.class public LaL/r;
.super LaL/s;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, LaL/s;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V

    .line 21
    iput-object p1, p0, LaL/r;->b:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method protected a(LaL/t;)V
    .registers 4
    .parameter

    .prologue
    .line 26
    iget-object v0, p1, LaL/t;->b:Landroid/widget/TextView;

    iget-object v1, p0, LaL/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p1, LaL/t;->c:Landroid/widget/TextView;

    const/16 v1, 0x26d

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p1, LaL/t;->a:Landroid/widget/ImageView;

    const v1, 0x7f020403

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method
