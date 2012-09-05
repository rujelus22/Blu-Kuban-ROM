.class final Lcom/android/browser/BookmarkUtils$2;
.super Ljava/lang/Object;
.source "BookmarkUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BookmarkUtils;->displayRemoveFolderDialog(JLjava/lang/String;Landroid/content/Context;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:J

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/os/Message;Landroid/content/Context;J)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/browser/BookmarkUtils$2;->val$msg:Landroid/os/Message;

    iput-object p2, p0, Lcom/android/browser/BookmarkUtils$2;->val$context:Landroid/content/Context;

    iput-wide p3, p0, Lcom/android/browser/BookmarkUtils$2;->val$id:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 278
    iget-object v1, p0, Lcom/android/browser/BookmarkUtils$2;->val$msg:Landroid/os/Message;

    if-eqz v1, :cond_9

    .line 279
    iget-object v1, p0, Lcom/android/browser/BookmarkUtils$2;->val$msg:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 281
    :cond_9
    new-instance v0, Lcom/android/browser/BookmarkUtils$2$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BookmarkUtils$2$1;-><init>(Lcom/android/browser/BookmarkUtils$2;)V

    .line 324
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 325
    return-void
.end method
