.class Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon$2;
.super Ljava/lang/Object;
.source "PopupDialogView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon$2;->this$1:Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon$2;->this$1:Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    #getter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->PlayerIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$400(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    return-void
.end method
