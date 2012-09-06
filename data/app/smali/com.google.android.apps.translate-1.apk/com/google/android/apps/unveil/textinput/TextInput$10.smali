.class Lcom/google/android/apps/unveil/textinput/TextInput$10;
.super Ljava/lang/Object;
.source "TextInput.java"

# interfaces
.implements Lcom/google/android/apps/unveil/env/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/textinput/TextInput;->newQueryManager()Lcom/google/android/apps/unveil/protocol/QueryManager;
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
        "Landroid/content/res/Configuration;",
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
    .line 833
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextInput$10;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/content/res/Configuration;
    .registers 2

    .prologue
    .line 836
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput$10;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/textinput/TextInput;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/TextInput$10;->get()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method
