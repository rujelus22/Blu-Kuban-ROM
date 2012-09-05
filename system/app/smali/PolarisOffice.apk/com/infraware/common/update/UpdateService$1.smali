.class Lcom/infraware/common/update/UpdateService$1;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/update/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/update/UpdateService;


# direct methods
.method constructor <init>(Lcom/infraware/common/update/UpdateService;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/update/UpdateService$1;->this$0:Lcom/infraware/common/update/UpdateService;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 122
    :try_start_0
    iget-object v2, p0, Lcom/infraware/common/update/UpdateService$1;->this$0:Lcom/infraware/common/update/UpdateService;

    invoke-virtual {v2}, Lcom/infraware/common/update/UpdateService;->onUpdateApk()V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_2f

    .line 139
    :goto_5
    return-void

    .line 123
    :catch_6
    move-exception v0

    .line 125
    .local v0, e:Ljava/net/MalformedURLException;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.infraware.polarisoffice.ACTION_NETWORK_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/infraware/common/update/UpdateService$1;->this$0:Lcom/infraware/common/update/UpdateService;

    invoke-virtual {v2, v1}, Lcom/infraware/common/update/UpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 127
    iget-object v2, p0, Lcom/infraware/common/update/UpdateService$1;->this$0:Lcom/infraware/common/update/UpdateService;

    invoke-virtual {v2}, Lcom/infraware/common/update/UpdateService;->stopSelf()V

    goto :goto_5

    .line 128
    .end local v0           #e:Ljava/net/MalformedURLException;
    .end local v1           #intent:Landroid/content/Intent;
    :catch_19
    move-exception v0

    .line 129
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.infraware.polarisoffice.ACTION_NETWORK_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/infraware/common/update/UpdateService$1;->this$0:Lcom/infraware/common/update/UpdateService;

    invoke-virtual {v2, v1}, Lcom/infraware/common/update/UpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 131
    iget-object v2, p0, Lcom/infraware/common/update/UpdateService$1;->this$0:Lcom/infraware/common/update/UpdateService;

    invoke-virtual {v2}, Lcom/infraware/common/update/UpdateService;->stopSelf()V

    .line 132
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 133
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #intent:Landroid/content/Intent;
    :catch_2f
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.infraware.polarisoffice.ACTION_NETWORK_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/infraware/common/update/UpdateService$1;->this$0:Lcom/infraware/common/update/UpdateService;

    invoke-virtual {v2, v1}, Lcom/infraware/common/update/UpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 136
    iget-object v2, p0, Lcom/infraware/common/update/UpdateService$1;->this$0:Lcom/infraware/common/update/UpdateService;

    invoke-virtual {v2}, Lcom/infraware/common/update/UpdateService;->stopSelf()V

    .line 137
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_5
.end method
