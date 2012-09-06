.class final Lcom/dropbox/android/widget/ad;
.super Landroid/os/Handler;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/GalleryView;


# direct methods
.method private constructor <init>(Lcom/dropbox/android/widget/GalleryView;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/dropbox/android/widget/ad;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/widget/GalleryView;Lcom/dropbox/android/widget/ac;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/dropbox/android/widget/ad;-><init>(Lcom/dropbox/android/widget/GalleryView;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter

    .prologue
    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 104
    :goto_5
    return-void

    .line 98
    :pswitch_6
    iget-object v0, p0, Lcom/dropbox/android/widget/ad;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/GalleryView;->invalidate()V

    goto :goto_5

    .line 101
    :pswitch_c
    iget-object v0, p0, Lcom/dropbox/android/widget/ad;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v0}, Lcom/dropbox/android/widget/GalleryView;->b(Lcom/dropbox/android/widget/GalleryView;)V

    goto :goto_5

    .line 96
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
