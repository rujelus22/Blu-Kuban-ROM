.class Lcom/samsung/handsfreeactivation/ActFail$2;
.super Ljava/lang/Object;
.source "ActFail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/handsfreeactivation/ActFail;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/handsfreeactivation/ActFail;


# direct methods
.method constructor <init>(Lcom/samsung/handsfreeactivation/ActFail;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/handsfreeactivation/ActFail$2;->this$0:Lcom/samsung/handsfreeactivation/ActFail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 59
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/ActFail$2;->this$0:Lcom/samsung/handsfreeactivation/ActFail;

    #calls: Lcom/samsung/handsfreeactivation/ActFail;->doCancel()V
    invoke-static {v1}, Lcom/samsung/handsfreeactivation/ActFail;->access$200(Lcom/samsung/handsfreeactivation/ActFail;)V

    .line 60
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/ActFail$2;->this$0:Lcom/samsung/handsfreeactivation/ActFail;

    invoke-virtual {v1}, Lcom/samsung/handsfreeactivation/ActFail;->finish()V

    .line 62
    :try_start_a
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/ActFail$2;->this$0:Lcom/samsung/handsfreeactivation/ActFail;

    #getter for: Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v1}, Lcom/samsung/handsfreeactivation/ActFail;->access$000(Lcom/samsung/handsfreeactivation/ActFail;)Lcom/samsung/client/DMApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->launchDSAapp()V
    :try_end_13
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_13} :catch_14

    .line 66
    :goto_13
    return-void

    .line 63
    :catch_14
    move-exception v0

    .line 64
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v1, "ActFail"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method
