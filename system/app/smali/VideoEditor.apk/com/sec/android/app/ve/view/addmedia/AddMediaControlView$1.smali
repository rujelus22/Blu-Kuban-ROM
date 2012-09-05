.class Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView$1;
.super Ljava/lang/Object;
.source "AddMediaControlView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView$1;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 239
    const/4 v0, 0x4

    if-ne p2, v0, :cond_b

    .line 240
    const-string v0, "Inside onSearchKeydown/back of cam camcorder dialog"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 241
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 244
    :cond_b
    const/4 v0, 0x1

    return v0
.end method
