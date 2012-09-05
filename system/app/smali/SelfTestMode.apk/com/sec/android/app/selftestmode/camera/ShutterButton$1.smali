.class Lcom/sec/android/app/selftestmode/camera/ShutterButton$1;
.super Ljava/lang/Object;
.source "ShutterButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/selftestmode/camera/ShutterButton;->drawableStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/selftestmode/camera/ShutterButton;

.field final synthetic val$pressed:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/selftestmode/camera/ShutterButton;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/camera/ShutterButton$1;->this$0:Lcom/sec/android/app/selftestmode/camera/ShutterButton;

    iput-boolean p2, p0, Lcom/sec/android/app/selftestmode/camera/ShutterButton$1;->val$pressed:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/ShutterButton$1;->this$0:Lcom/sec/android/app/selftestmode/camera/ShutterButton;

    iget-boolean v1, p0, Lcom/sec/android/app/selftestmode/camera/ShutterButton$1;->val$pressed:Z

    #calls: Lcom/sec/android/app/selftestmode/camera/ShutterButton;->callShutterButtonFocus(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/selftestmode/camera/ShutterButton;->access$000(Lcom/sec/android/app/selftestmode/camera/ShutterButton;Z)V

    .line 183
    return-void
.end method
