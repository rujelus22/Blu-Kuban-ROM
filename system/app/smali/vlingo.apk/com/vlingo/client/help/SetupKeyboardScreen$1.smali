.class Lcom/vlingo/client/help/SetupKeyboardScreen$1;
.super Ljava/lang/Object;
.source "SetupKeyboardScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/help/SetupKeyboardScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/help/SetupKeyboardScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/help/SetupKeyboardScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/vlingo/client/help/SetupKeyboardScreen$1;->this$0:Lcom/vlingo/client/help/SetupKeyboardScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vlingo/client/help/SetupKeyboardScreen$1;->this$0:Lcom/vlingo/client/help/SetupKeyboardScreen;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/SetupKeyboardScreen;->startActivity(Landroid/content/Intent;)V

    .line 33
    return-void
.end method
