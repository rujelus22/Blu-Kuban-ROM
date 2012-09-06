.class Lcom/google/android/apps/unveil/textinput/TextInput$2;
.super Lcom/google/android/apps/unveil/network/NetworkInfoProvider;
.source "TextInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/textinput/TextInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/textinput/TextInput;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/textinput/TextInput;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextInput$2;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-direct {p0, p2}, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getSignalStrength()I
    .registers 2

    .prologue
    .line 188
    const/4 v0, -0x1

    return v0
.end method
