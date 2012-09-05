.class Lcom/vlingo/client/tos/DisclaimerActivity$3;
.super Ljava/lang/Object;
.source "DisclaimerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/tos/DisclaimerActivity;->switchToVlingoTOS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/tos/DisclaimerActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/tos/DisclaimerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/vlingo/client/tos/DisclaimerActivity$3;->this$0:Lcom/vlingo/client/tos/DisclaimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 207
    :try_start_0
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->initLanguage()V

    .line 208
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/vlingo/client/settings/Settings;->setTOSAccepted(Z)V

    .line 212
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vlingo/client/VlingoApplication;->startServices(Z)V

    .line 213
    iget-object v1, p0, Lcom/vlingo/client/tos/DisclaimerActivity$3;->this$0:Lcom/vlingo/client/tos/DisclaimerActivity;

    invoke-virtual {v1}, Lcom/vlingo/client/tos/DisclaimerActivity;->startCarActivity()V

    .line 214
    iget-object v1, p0, Lcom/vlingo/client/tos/DisclaimerActivity$3;->this$0:Lcom/vlingo/client/tos/DisclaimerActivity;

    invoke-virtual {v1}, Lcom/vlingo/client/tos/DisclaimerActivity;->finish()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 220
    :goto_19
    return-void

    .line 216
    :catch_1a
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method
