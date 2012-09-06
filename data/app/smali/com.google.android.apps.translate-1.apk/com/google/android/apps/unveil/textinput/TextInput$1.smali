.class Lcom/google/android/apps/unveil/textinput/TextInput$1;
.super Ljava/lang/Object;
.source "TextInput.java"

# interfaces
.implements Lcom/google/android/apps/unveil/env/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/textinput/TextInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/unveil/env/Provider",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/textinput/TextInput;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/textinput/TextInput;)V
    .registers 2
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextInput$1;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/TextInput$1;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput$1;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    #getter for: Lcom/google/android/apps/unveil/textinput/TextInput;->userAgent:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/unveil/textinput/TextInput;->access$000(Lcom/google/android/apps/unveil/textinput/TextInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
