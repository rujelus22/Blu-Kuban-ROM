.class Lcom/sec/android/app/selftestmode/camera/Camera$8;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/selftestmode/camera/Camera;->dialogFocusPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/selftestmode/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 3105
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$8;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3111
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$8;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3113
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$8;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 3117
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$8;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->finish()V

    .line 3119
    return-void
.end method
