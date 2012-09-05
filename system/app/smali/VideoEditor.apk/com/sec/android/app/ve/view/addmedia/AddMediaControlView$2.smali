.class Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView$2;
.super Ljava/lang/Object;
.source "AddMediaControlView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->launchCameraDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView$2;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView$2;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->resetBackToPreviousView()V

    .line 252
    return-void
.end method
