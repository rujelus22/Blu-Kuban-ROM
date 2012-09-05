.class Lcom/vlingo/client/vvs/handlers/LPActionHandler$1;
.super Ljava/lang/Object;
.source "LPActionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/vvs/handlers/LPActionHandler;->showToast(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/vvs/handlers/LPActionHandler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vlingo/client/vvs/handlers/LPActionHandler;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vlingo/client/vvs/handlers/LPActionHandler$1;->this$0:Lcom/vlingo/client/vvs/handlers/LPActionHandler;

    iput-object p2, p0, Lcom/vlingo/client/vvs/handlers/LPActionHandler$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/vlingo/client/vvs/handlers/LPActionHandler$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vlingo/client/vvs/handlers/LPActionHandler$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vlingo/client/vvs/handlers/LPActionHandler$1;->val$text:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 74
    return-void
.end method
