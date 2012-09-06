.class Lcom/google/android/apps/unveil/textinput/TextInput$9;
.super Ljava/lang/Object;
.source "TextInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/textinput/TextInput;->onCameraLayoutComplete()V
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
    .line 786
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextInput$9;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput$9;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    #getter for: Lcom/google/android/apps/unveil/textinput/TextInput;->zoomableContainer:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;
    invoke-static {v0}, Lcom/google/android/apps/unveil/textinput/TextInput;->access$900(Lcom/google/android/apps/unveil/textinput/TextInput;)Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->requestLayout()V

    .line 790
    return-void
.end method
