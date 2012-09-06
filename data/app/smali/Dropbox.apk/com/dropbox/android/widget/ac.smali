.class final Lcom/dropbox/android/widget/ac;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/GalleryView;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/GalleryView;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/dropbox/android/widget/ac;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dropbox/android/widget/ac;->a:Lcom/dropbox/android/widget/GalleryView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dropbox/android/widget/GalleryView;->a(Lcom/dropbox/android/widget/GalleryView;Z)Z

    .line 87
    iget-object v0, p0, Lcom/dropbox/android/widget/ac;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v0}, Lcom/dropbox/android/widget/GalleryView;->a(Lcom/dropbox/android/widget/GalleryView;)Lcom/dropbox/android/widget/ae;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 88
    iget-object v0, p0, Lcom/dropbox/android/widget/ac;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v0}, Lcom/dropbox/android/widget/GalleryView;->a(Lcom/dropbox/android/widget/GalleryView;)Lcom/dropbox/android/widget/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/dropbox/android/widget/ae;->a()V

    .line 90
    :cond_17
    return-void
.end method
