.class Lcom/google/android/apps/unveil/textinput/TextInput$4;
.super Ljava/lang/Object;
.source "TextInput.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/textinput/TextInput;->onFinishInflate()V
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
    .line 234
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextInput$4;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput$4;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/textinput/TextInput;->snap()V

    .line 238
    return-void
.end method
