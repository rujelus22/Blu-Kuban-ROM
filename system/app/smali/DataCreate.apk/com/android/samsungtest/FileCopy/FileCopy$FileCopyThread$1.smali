.class Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread$1;
.super Ljava/lang/Object;
.source "FileCopy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 958
    iput-object p1, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread$1;->this$0:Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;

    iput-object p2, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread$1;->val$content:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread$1;->this$0:Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;

    iget-object v0, v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread$1;->val$content:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 964
    return-void
.end method
