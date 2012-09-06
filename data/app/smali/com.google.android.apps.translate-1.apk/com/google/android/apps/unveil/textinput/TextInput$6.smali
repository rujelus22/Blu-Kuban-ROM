.class Lcom/google/android/apps/unveil/textinput/TextInput$6;
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
    .line 309
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextInput$6;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput$6;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    #getter for: Lcom/google/android/apps/unveil/textinput/TextInput;->smudgeView:Lcom/google/android/apps/unveil/textinput/SmudgeView;
    invoke-static {v0}, Lcom/google/android/apps/unveil/textinput/TextInput;->access$300(Lcom/google/android/apps/unveil/textinput/TextInput;)Lcom/google/android/apps/unveil/textinput/SmudgeView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->setImageToDisplay(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 313
    return-void
.end method
