.class Lcom/android/samsungtest/camera/ShutterButton$1;
.super Ljava/lang/Object;
.source "ShutterButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/camera/ShutterButton;->drawableStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/camera/ShutterButton;

.field final synthetic val$pressed:Z


# direct methods
.method constructor <init>(Lcom/android/samsungtest/camera/ShutterButton;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/samsungtest/camera/ShutterButton$1;->this$0:Lcom/android/samsungtest/camera/ShutterButton;

    iput-boolean p2, p0, Lcom/android/samsungtest/camera/ShutterButton$1;->val$pressed:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/samsungtest/camera/ShutterButton$1;->this$0:Lcom/android/samsungtest/camera/ShutterButton;

    iget-boolean v1, p0, Lcom/android/samsungtest/camera/ShutterButton$1;->val$pressed:Z

    #calls: Lcom/android/samsungtest/camera/ShutterButton;->callShutterButtonFocus(Z)V
    invoke-static {v0, v1}, Lcom/android/samsungtest/camera/ShutterButton;->access$000(Lcom/android/samsungtest/camera/ShutterButton;Z)V

    .line 92
    return-void
.end method
