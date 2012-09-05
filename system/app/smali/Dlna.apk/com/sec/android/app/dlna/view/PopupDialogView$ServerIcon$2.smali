.class Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon$2;
.super Ljava/lang/Object;
.source "PopupDialogView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon$2;->this$1:Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon$2;->this$1:Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    #getter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->ServerIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$600(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    return-void
.end method
