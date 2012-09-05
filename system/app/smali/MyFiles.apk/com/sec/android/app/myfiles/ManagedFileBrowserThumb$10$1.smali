.class Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10$1;
.super Ljava/lang/Object;
.source "ManagedFileBrowserThumb.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;)V
    .registers 2
    .parameter

    .prologue
    .line 873
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10$1;->this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;

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

    .line 875
    const/16 v1, 0x52

    if-ne p2, v1, :cond_6

    .line 881
    :cond_5
    :goto_5
    return v0

    .line 878
    :cond_6
    const/16 v1, 0x54

    if-eq p2, v1, :cond_5

    .line 881
    const/4 v0, 0x0

    goto :goto_5
.end method
