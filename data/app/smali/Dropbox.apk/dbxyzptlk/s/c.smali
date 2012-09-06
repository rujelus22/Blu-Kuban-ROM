.class public Ldbxyzptlk/s/c;
.super Landroid/os/Handler;
.source "panda.py"


# instance fields
.field private a:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 2
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 29
    iput-object p1, p0, Ldbxyzptlk/s/c;->a:Landroid/widget/ImageView;

    .line 30
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter

    .prologue
    .line 34
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_15

    .line 35
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    const-string v1, "droidfu:extra_bitmap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 37
    iget-object v1, p0, Ldbxyzptlk/s/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 39
    :cond_15
    return-void
.end method
