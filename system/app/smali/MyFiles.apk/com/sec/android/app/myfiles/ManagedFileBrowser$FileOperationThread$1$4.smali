.class Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread$1$4;
.super Ljava/lang/Object;
.source "ManagedFileBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread$1;)V
    .registers 2
    .parameter

    .prologue
    .line 1317
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread$1$4;->this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1319
    const/16 v0, 0x52

    if-ne p2, v0, :cond_6

    .line 1321
    const/4 v0, 0x1

    .line 1323
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
