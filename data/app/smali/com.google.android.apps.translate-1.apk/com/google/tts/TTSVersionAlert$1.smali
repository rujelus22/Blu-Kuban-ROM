.class Lcom/google/tts/TTSVersionAlert$1;
.super Ljava/lang/Object;
.source "TTSVersionAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tts/TTSVersionAlert;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tts/TTSVersionAlert;


# direct methods
.method constructor <init>(Lcom/google/tts/TTSVersionAlert;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/tts/TTSVersionAlert$1;->this$0:Lcom/google/tts/TTSVersionAlert;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 68
    const-string v2, "market://search?q=pname:com.google.tts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 69
    .local v1, marketUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 70
    .local v0, marketIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/tts/TTSVersionAlert$1;->this$0:Lcom/google/tts/TTSVersionAlert;

    #getter for: Lcom/google/tts/TTSVersionAlert;->parent:Landroid/app/Activity;
    invoke-static {v2}, Lcom/google/tts/TTSVersionAlert;->access$0(Lcom/google/tts/TTSVersionAlert;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method
