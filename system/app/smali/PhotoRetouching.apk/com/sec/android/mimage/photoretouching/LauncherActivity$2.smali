.class Lcom/sec/android/mimage/photoretouching/LauncherActivity$2;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/LauncherActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/LauncherActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/LauncherActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/LauncherActivity;

    .line 93
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
    .line 95
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_14

    .line 96
    const/4 v0, 0x4

    if-eq p2, v0, :cond_d

    const/16 v0, 0x52

    if-ne p2, v0, :cond_14

    .line 97
    :cond_d
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/LauncherActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->finish()V

    .line 98
    const/4 v0, 0x1

    .line 100
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
