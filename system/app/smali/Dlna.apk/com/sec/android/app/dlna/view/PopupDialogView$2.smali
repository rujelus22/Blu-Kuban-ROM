.class Lcom/sec/android/app/dlna/view/PopupDialogView$2;
.super Ljava/lang/Object;
.source "PopupDialogView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/view/PopupDialogView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/view/PopupDialogView;)V
    .registers 2
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$2;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$2;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/view/PopupDialogView;->finish()V

    .line 299
    return-void
.end method
