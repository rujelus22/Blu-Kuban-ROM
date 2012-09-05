.class Lcom/infraware/polarisoffice/common/ImmManager$1;
.super Ljava/lang/Object;
.source "ImmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/ImmManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/ImmManager;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/ImmManager;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ImmManager$1;->this$0:Lcom/infraware/polarisoffice/common/ImmManager;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ImmManager$1;->this$0:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ImmManager;->showForcedIme()V

    .line 57
    return-void
.end method
