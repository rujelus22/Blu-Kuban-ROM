.class Lcom/infraware/polarisoffice/OfficeMainLogo$1;
.super Ljava/lang/Object;
.source "OfficeMainLogo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/OfficeMainLogo;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/OfficeMainLogo;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/OfficeMainLogo;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo$1;->this$0:Lcom/infraware/polarisoffice/OfficeMainLogo;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo$1;->this$0:Lcom/infraware/polarisoffice/OfficeMainLogo;

    #getter for: Lcom/infraware/polarisoffice/OfficeMainLogo;->m_nShowTime:I
    invoke-static {v1}, Lcom/infraware/polarisoffice/OfficeMainLogo;->access$0(Lcom/infraware/polarisoffice/OfficeMainLogo;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_1d

    .line 83
    :goto_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, result:Landroid/content/Intent;
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo$1;->this$0:Lcom/infraware/polarisoffice/OfficeMainLogo;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/infraware/polarisoffice/OfficeMainLogo;->setResult(ILandroid/content/Intent;)V

    .line 86
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo$1;->this$0:Lcom/infraware/polarisoffice/OfficeMainLogo;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/OfficeMainLogo;->finish()V

    .line 87
    return-void

    .line 81
    .end local v0           #result:Landroid/content/Intent;
    :catch_1d
    move-exception v1

    goto :goto_a
.end method
