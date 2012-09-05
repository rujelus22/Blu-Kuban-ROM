.class public Lcom/sprint/dsa/dss/DsaJavaScriptInterface;
.super Ljava/lang/Object;
.source "DsaJavaScriptInterface.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SprintZone_DSA"


# instance fields
.field private allowSetInputType:Z

.field private dsaClient:Lcom/sprint/dsa/dss/DsaClient;

.field formData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/sprint/dsa/dss/DsaClient;)V
    .registers 3
    .parameter "app"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->allowSetInputType:Z

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->formData:Ljava/util/HashMap;

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->mHandler:Landroid/os/Handler;

    .line 22
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/dss/DsaJavaScriptInterface;)Lcom/sprint/dsa/dss/DsaClient;
    .registers 2
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    return-object v0
.end method


# virtual methods
.method public doneWrite(I)V
    .registers 7
    .parameter "size"

    .prologue
    const/4 v4, 0x0

    .line 194
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v1, v1, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v1, :cond_1b

    const-string v1, "SprintZone_DSA"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DsaJavascript.doneWrite(): size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_1b
    if-lez p1, :cond_2c

    .line 196
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v1, v1, Lcom/sprint/dsa/dss/DsaClient;->DEVICE:Z

    if-eqz v1, :cond_3c

    .line 197
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->dsaSystem:Lcom/sprint/dsa/dss/DsaSystem;

    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/dss/DsaSystem;->sysPropWrite(Lcom/sprint/dsa/dss/DsaClient;)V

    .line 208
    :cond_2c
    :goto_2c
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->dsaStateManager:Lcom/sprint/dsa/dss/StateManager;

    sget-object v2, Lcom/sprint/dsa/dss/StateManager$dsaUIState;->DSA_WAIT_USER_ACTION:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/dss/StateManager;->setUIState(Lcom/sprint/dsa/dss/StateManager$dsaUIState;)V

    .line 209
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/sprint/dsa/dss/DsaClient;->enableUI(ZLjava/lang/String;)V

    .line 210
    return-void

    .line 200
    :cond_3c
    const-wide/16 v1, 0xbb8

    :try_start_3e
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_4f

    .line 204
    :goto_41
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const-string v2, "option=prov_success"

    iput-object v2, v1, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->dsaJavascript:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

    invoke-virtual {v1, v4}, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->processFormData(Ljava/lang/String;)V

    goto :goto_2c

    .line 201
    :catch_4f
    move-exception v0

    .line 202
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SprintZone_DSA"

    const-string v2, "write"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "key"

    .prologue
    .line 267
    const/4 v1, 0x0

    .line 269
    .local v1, timeout:I
    :try_start_1
    const-string v2, "mdn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 270
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v2, v2, Lcom/sprint/dsa/dss/DsaClient;->mdn:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v2, v2, Lcom/sprint/dsa/dss/DsaClient;->mdn:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 271
    :cond_1b
    :goto_1b
    const/16 v2, 0x3e9

    if-lt v1, v2, :cond_24

    .line 276
    :cond_1f
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v2, v2, Lcom/sprint/dsa/dss/DsaClient;->mdn:Ljava/lang/String;

    .line 287
    :goto_23
    return-object v2

    .line 272
    :cond_24
    add-int/lit16 v1, v1, 0xfa

    .line 273
    const-wide/16 v2, 0xfa

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2c

    goto :goto_1b

    .line 284
    :catch_2c
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SprintZone_DSA"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    .end local v0           #e:Ljava/lang/Exception;
    :cond_36
    const-string v2, ""

    goto :goto_23

    .line 277
    :cond_39
    :try_start_39
    const-string v2, "nai"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 278
    sget-object v2, Lcom/sprint/dsa/dss/DsaSystem;->nai:Ljava/lang/String;

    goto :goto_23

    .line 279
    :cond_44
    const-string v2, "firmwarever"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 280
    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    goto :goto_23

    .line 281
    :cond_4f
    const-string v2, "prlver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_54} :catch_2c

    move-result v2

    if-eqz v2, :cond_36

    .line 282
    const-string v2, "2.0.0.1"

    goto :goto_23
.end method

.method public logError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "from"
    .parameter "desc"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_24

    const-string v0, "SprintZone_DSA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DsaJavascript.logError(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SprintZone_DSA-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method public popup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "msg"
    .parameter "title"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_24

    const-string v0, "SprintZone_DSA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DsaJavascript.logError(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_24
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    new-instance v1, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$4;-><init>(Lcom/sprint/dsa/dss/DsaJavaScriptInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/dss/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 256
    return-void
.end method

.method public processFormData(Ljava/lang/String;)V
    .registers 8
    .parameter "formData"

    .prologue
    .line 98
    iget-object v3, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v3, v3, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v3, :cond_1a

    const-string v3, "SprintZone_DSA"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DsaJavascript.processFormData(): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1a
    :try_start_1a
    iget-object v3, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v3, v3, Lcom/sprint/dsa/dss/DsaClient;->exitAction:Z

    if-eqz v3, :cond_bd

    .line 102
    iget-object v3, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const/4 v4, 0x0

    const-string v5, "Shutting Down..."

    invoke-virtual {v3, v4, v5}, Lcom/sprint/dsa/dss/DsaClient;->enableUI(ZLjava/lang/String;)V

    .line 108
    :goto_28
    const/4 v0, 0x0

    .line 109
    .local v0, data:Ljava/lang/String;
    if-eqz p1, :cond_4c

    .line 110
    iget-object v3, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v3, v3, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v3, :cond_4b

    const-string v3, "SprintZone_DSA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_4b
    move-object v0, p1

    .line 121
    :cond_4c
    iget-object v3, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v3, v3, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    if-eqz v3, :cond_58

    .line 122
    if-nez v0, :cond_d0

    .line 123
    iget-object v3, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v3, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    .line 129
    :cond_58
    :goto_58
    const/4 v2, 0x0

    .line 130
    .local v2, url:Ljava/lang/String;
    if-eqz v0, :cond_68

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 131
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    :cond_68
    if-eqz v0, :cond_12c

    const-string v3, ""

    if-eq v0, v3, :cond_12c

    .line 134
    iget-object v3, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v3, v3, Lcom/sprint/dsa/dss/DsaClient;->nextURL:Ljava/lang/String;

    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_ed

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v4, v4, Lcom/sprint/dsa/dss/DsaClient;->nextURL:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    :goto_96
    iget-object v3, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v3, v3, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v3, :cond_b0

    const-string v3, "SprintZone_DSA"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DsaJavascript.processFormData(): URL: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_b0
    iget-object v3, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sprint/dsa/dss/DsaClient;->htmlPage:Ljava/lang/String;

    .line 150
    iget-object v3, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v3, v3, Lcom/sprint/dsa/dss/DsaClient;->dsaHttpClient:Lcom/sprint/dsa/dss/DsaHttpClient;

    invoke-virtual {v3, v2}, Lcom/sprint/dsa/dss/DsaHttpClient;->execute(Ljava/lang/String;)V

    .line 158
    .end local v0           #data:Ljava/lang/String;
    .end local v2           #url:Ljava/lang/String;
    :goto_bc
    return-void

    .line 104
    :cond_bd
    iget-object v3, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const/4 v4, 0x0

    const-string v5, "Loading..."

    invoke-virtual {v3, v4, v5}, Lcom/sprint/dsa/dss/DsaClient;->enableUI(ZLjava/lang/String;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_c5} :catch_c7

    goto/16 :goto_28

    .line 155
    :catch_c7
    move-exception v1

    .line 156
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "SprintZone_DSA"

    const-string v4, "DsaJavascript.processFormData(): ERROR"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_bc

    .line 125
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #data:Ljava/lang/String;
    :cond_d0
    :try_start_d0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v4, v4, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_58

    .line 136
    .restart local v2       #url:Ljava/lang/String;
    :cond_ed
    iget-object v3, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v3, v3, Lcom/sprint/dsa/dss/DsaClient;->nextURL:Ljava/lang/String;

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v4, v4, Lcom/sprint/dsa/dss/DsaClient;->nextURL:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_96

    .line 139
    :cond_10f
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v4, v4, Lcom/sprint/dsa/dss/DsaClient;->nextURL:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_96

    .line 142
    :cond_12c
    iget-object v3, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v2, v3, Lcom/sprint/dsa/dss/DsaClient;->nextURL:Ljava/lang/String;
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_130} :catch_c7

    goto/16 :goto_96
.end method

.method public saveFormElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "id"
    .parameter "value"

    .prologue
    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->formData:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 264
    :goto_5
    return-void

    .line 261
    :catch_6
    move-exception v0

    .line 262
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SprintZone_DSA"

    const-string v2, "error storing formdata"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setBackMessage(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_1a

    const-string v0, "SprintZone_DSA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DsaJavaScript.setBackMessage(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_1a
    if-eqz p1, :cond_35

    .line 216
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_27

    const-string v0, "SprintZone_DSA:setBackMessage"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_27
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 223
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sprint/dsa/dss/DsaClient;->back:Z

    .line 229
    :goto_34
    return-void

    .line 218
    :cond_35
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sprint/dsa/dss/DsaClient;->backMessage:Ljava/lang/String;

    goto :goto_34

    .line 224
    :cond_3b
    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 225
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sprint/dsa/dss/DsaClient;->back:Z

    goto :goto_34

    .line 227
    :cond_49
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iput-object p1, v0, Lcom/sprint/dsa/dss/DsaClient;->backMessage:Ljava/lang/String;

    goto :goto_34
.end method

.method public setExitMessage(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_1a

    const-string v0, "SprintZone_DSA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DsaJavaScript.setExitMessage(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_1a
    if-nez p1, :cond_1d

    .line 242
    :goto_1c
    return-void

    .line 241
    :cond_1d
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iput-object p1, v0, Lcom/sprint/dsa/dss/DsaClient;->exitMessage:Ljava/lang/String;

    goto :goto_1c
.end method

.method public setInputType(I)V
    .registers 6
    .parameter "type"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_1a

    const-string v0, "SprintZone_DSA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DsaJavascript.setInputType(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1a
    iget-boolean v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->allowSetInputType:Z

    if-eqz v0, :cond_30

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->allowSetInputType:Z

    .line 164
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$3;

    invoke-direct {v1, p0, p1}, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$3;-><init>(Lcom/sprint/dsa/dss/DsaJavaScriptInterface;I)V

    .line 176
    const-wide/16 v2, 0xc8

    .line 164
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->allowSetInputType:Z

    .line 179
    :cond_30
    return-void
.end method

.method public setLeftSoftKey(Ljava/lang/String;)V
    .registers 3
    .parameter "label"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iput-object p1, v0, Lcom/sprint/dsa/dss/DsaClient;->leftSoftKeyText:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->btnLeft:Landroid/widget/Button;

    invoke-virtual {p0, p1, v0}, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->setSoftKey(Ljava/lang/String;Landroid/widget/Button;)V

    .line 28
    return-void
.end method

.method public setNextURL(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_1a

    const-string v0, "SprintZone_DSA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DsaJavascript.setNextURL(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1a
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->SWITCH_TO_HTTP:Z

    if-eqz v0, :cond_42

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 91
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/dsa/dss/DsaClient;->nextURL:Ljava/lang/String;

    .line 95
    :goto_41
    return-void

    .line 93
    :cond_42
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iput-object p1, v0, Lcom/sprint/dsa/dss/DsaClient;->nextURL:Ljava/lang/String;

    goto :goto_41
.end method

.method public setRightSoftKey(Ljava/lang/String;)V
    .registers 3
    .parameter "label"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iput-object p1, v0, Lcom/sprint/dsa/dss/DsaClient;->rightSoftKeyText:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->btnRight:Landroid/widget/Button;

    invoke-virtual {p0, p1, v0}, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->setSoftKey(Ljava/lang/String;Landroid/widget/Button;)V

    .line 33
    return-void
.end method

.method public setSoftKey(Ljava/lang/String;Landroid/widget/Button;)V
    .registers 13
    .parameter "label"
    .parameter "btnSoftKey"

    .prologue
    const/4 v9, -0x1

    const/16 v8, 0x3a

    .line 36
    iget-object v5, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v5, v5, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v5, :cond_1d

    const-string v5, "SprintZone_DSA"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DsaJavascript.setSoftKey(): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_1d
    if-eqz p1, :cond_25

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v9, :cond_27

    .line 38
    :cond_25
    const-string p1, "000:"

    .line 40
    :cond_27
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 41
    .local v2, index:I
    const/4 v3, 0x0

    .line 42
    .local v3, locLabel:Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, command:Ljava/lang/String;
    :try_start_32
    const-string v5, "004"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_42

    const-string v5, "00C"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 46
    :cond_42
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 47
    const/16 v6, 0x3a

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 48
    const/16 v7, 0x2c

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 46
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_6c} :catch_7c

    move-result-object v3

    .line 53
    :cond_6d
    :goto_6d
    if-nez v3, :cond_70

    .line 54
    move-object v3, p1

    .line 57
    :cond_70
    const/4 v4, 0x0

    .line 58
    .local v4, subLabel:Ljava/lang/String;
    if-ne v9, v2, :cond_85

    .line 59
    move-object v4, v3

    .line 64
    :goto_74
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p2, v5}, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->setViewText(Landroid/widget/Button;Ljava/lang/String;)V

    .line 65
    return-void

    .line 50
    .end local v4           #subLabel:Ljava/lang/String;
    :catch_7c
    move-exception v1

    .line 51
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "SprintZone_DSA"

    const-string v6, "DsaJavascript.setSoftKey(): Error in Option Format"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6d

    .line 61
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v4       #subLabel:Ljava/lang/String;
    :cond_85
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_74
.end method

.method public setSysProp(Ljava/lang/String;)V
    .registers 7
    .parameter "str"

    .prologue
    .line 182
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v2, v2, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v2, :cond_1a

    const-string v2, "SprintZone_DSA"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DsaJavascript.setSysPros(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_1a
    if-nez p1, :cond_1d

    .line 191
    :cond_1c
    :goto_1c
    return-void

    .line 184
    :cond_1d
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v2, v2, Lcom/sprint/dsa/dss/DsaClient;->DEVICE:Z

    if-eqz v2, :cond_1c

    .line 185
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, code:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_1c

    if-eqz v0, :cond_1c

    .line 188
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v2, v2, Lcom/sprint/dsa/dss/DsaClient;->dsaSystem:Lcom/sprint/dsa/dss/DsaSystem;

    iget-object v2, v2, Lcom/sprint/dsa/dss/DsaSystem;->mapPayload:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 4
    .parameter "label"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iput-object p1, v0, Lcom/sprint/dsa/dss/DsaClient;->titleText:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->titleText:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected setViewText(Landroid/widget/Button;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "text"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$1;-><init>(Lcom/sprint/dsa/dss/DsaJavaScriptInterface;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method

.method protected setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "text"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$2;-><init>(Lcom/sprint/dsa/dss/DsaJavaScriptInterface;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method
