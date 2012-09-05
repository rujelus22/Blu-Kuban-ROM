.class Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$1;
.super Ljava/lang/Object;
.source "MXController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->displayToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    iput-object p2, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$1;->val$msg:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$1;->val$msg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 74
    return-void
.end method
