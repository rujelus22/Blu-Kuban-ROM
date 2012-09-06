.class final Lcom/github/droidfu/widgets/a;
.super Ldbxyzptlk/s/c;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/github/droidfu/widgets/WebImageView;


# direct methods
.method public constructor <init>(Lcom/github/droidfu/widgets/WebImageView;)V
    .registers 3
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/github/droidfu/widgets/a;->a:Lcom/github/droidfu/widgets/WebImageView;

    .line 200
    invoke-static {p1}, Lcom/github/droidfu/widgets/WebImageView;->a(Lcom/github/droidfu/widgets/WebImageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Ldbxyzptlk/s/c;-><init>(Landroid/widget/ImageView;)V

    .line 201
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 205
    invoke-super {p0, p1}, Ldbxyzptlk/s/c;->handleMessage(Landroid/os/Message;)V

    .line 206
    iget-object v0, p0, Lcom/github/droidfu/widgets/a;->a:Lcom/github/droidfu/widgets/WebImageView;

    invoke-static {v0, v1}, Lcom/github/droidfu/widgets/WebImageView;->a(Lcom/github/droidfu/widgets/WebImageView;Z)Z

    .line 208
    iget-object v0, p0, Lcom/github/droidfu/widgets/a;->a:Lcom/github/droidfu/widgets/WebImageView;

    invoke-virtual {v0, v1}, Lcom/github/droidfu/widgets/WebImageView;->setDisplayedChild(I)V

    .line 209
    return-void
.end method
