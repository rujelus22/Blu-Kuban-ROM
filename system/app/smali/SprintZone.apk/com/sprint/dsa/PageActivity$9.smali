.class Lcom/sprint/dsa/PageActivity$9;
.super Ljava/lang/Object;
.source "PageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/PageActivity;->showCallFromOtherPhoneDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/PageActivity;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/PageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/PageActivity$9;->this$0:Lcom/sprint/dsa/PageActivity;

    .line 1046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1048
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1049
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1050
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    const-string v1, "tel:*2"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1052
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity$9;->this$0:Lcom/sprint/dsa/PageActivity;

    invoke-virtual {v1, v0}, Lcom/sprint/dsa/PageActivity;->startActivity(Landroid/content/Intent;)V

    .line 1053
    return-void
.end method
