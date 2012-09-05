.class Lcom/vlingo/client/car/iux/CarIUXActivity$5;
.super Ljava/lang/Object;
.source "CarIUXActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/iux/CarIUXActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/iux/CarIUXActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$5;->this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 203
    .local v0, installIntent:Landroid/content/Intent;
    const-string v1, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$5;->this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v0, v2}, Lcom/vlingo/client/car/iux/CarIUXActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 205
    return-void
.end method
