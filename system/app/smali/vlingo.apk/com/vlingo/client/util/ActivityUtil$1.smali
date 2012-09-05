.class final Lcom/vlingo/client/util/ActivityUtil$1;
.super Ljava/lang/Object;
.source "ActivityUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/util/ActivityUtil;->showToast(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/vlingo/client/util/ActivityUtil$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/vlingo/client/util/ActivityUtil$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vlingo/client/util/ActivityUtil$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vlingo/client/util/ActivityUtil$1;->val$text:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 107
    return-void
.end method
