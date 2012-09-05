.class Lcom/sec/android/app/myfiles/ManagedFileBrowser$9$1;
.super Ljava/lang/Object;
.source "ManagedFileBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;)V
    .registers 2
    .parameter

    .prologue
    .line 884
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9$1;->this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 886
    const/16 v1, 0x52

    if-ne p2, v1, :cond_6

    .line 892
    :cond_5
    :goto_5
    return v0

    .line 889
    :cond_6
    const/16 v1, 0x54

    if-eq p2, v1, :cond_5

    .line 892
    const/4 v0, 0x0

    goto :goto_5
.end method
