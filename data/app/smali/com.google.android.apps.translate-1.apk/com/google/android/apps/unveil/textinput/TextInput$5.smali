.class Lcom/google/android/apps/unveil/textinput/TextInput$5;
.super Ljava/lang/Object;
.source "TextInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/textinput/TextInput;->restart()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/textinput/TextInput;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/textinput/TextInput;)V
    .registers 2
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextInput$5;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput$5;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    #calls: Lcom/google/android/apps/unveil/textinput/TextInput;->startCameraPreviewAndLooper()V
    invoke-static {v0}, Lcom/google/android/apps/unveil/textinput/TextInput;->access$200(Lcom/google/android/apps/unveil/textinput/TextInput;)V

    .line 299
    return-void
.end method
