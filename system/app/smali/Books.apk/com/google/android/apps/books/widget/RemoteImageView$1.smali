.class Lcom/google/android/apps/books/widget/RemoteImageView$1;
.super Landroid/database/ContentObserver;
.source "RemoteImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/RemoteImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/RemoteImageView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/widget/RemoteImageView;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/apps/books/widget/RemoteImageView$1;->this$0:Lcom/google/android/apps/books/widget/RemoteImageView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/books/widget/RemoteImageView$1;->this$0:Lcom/google/android/apps/books/widget/RemoteImageView;

    const/4 v1, 0x0

    #calls: Lcom/google/android/apps/books/widget/RemoteImageView;->setMode(I)V
    invoke-static {v0, v1}, Lcom/google/android/apps/books/widget/RemoteImageView;->access$000(Lcom/google/android/apps/books/widget/RemoteImageView;I)V

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/books/widget/RemoteImageView$1;->this$0:Lcom/google/android/apps/books/widget/RemoteImageView;

    #calls: Lcom/google/android/apps/books/widget/RemoteImageView;->loadImage()V
    invoke-static {v0}, Lcom/google/android/apps/books/widget/RemoteImageView;->access$100(Lcom/google/android/apps/books/widget/RemoteImageView;)V

    .line 95
    return-void
.end method
