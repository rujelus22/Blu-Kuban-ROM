.class Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;
.super Landroid/os/AsyncTask;
.source "TermsAndConditions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/delivery/TermsAndConditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field generalTC:Ljava/lang/String;

.field handler:Lcom/sprint/w/installer/delivery/TermsAndConditions$MyHandler;

.field final synthetic this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/delivery/TermsAndConditions;Lcom/sprint/w/installer/delivery/TermsAndConditions$MyHandler;)V
    .registers 3
    .parameter
    .parameter "handler"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 206
    iput-object p2, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;->handler:Lcom/sprint/w/installer/delivery/TermsAndConditions$MyHandler;

    .line 207
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 199
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 10
    .parameter "params"

    .prologue
    .line 215
    :try_start_0
    iget-object v6, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    invoke-virtual {v6}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "SprintTandC.html"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 216
    .local v3, mInput:Ljava/io/InputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 217
    .local v4, mReader:Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 218
    .local v2, mBufferReader:Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .local v5, sb:Ljava/lang/StringBuilder;
    :goto_1b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_2b

    .line 221
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_1b

    .line 225
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #mBufferReader:Ljava/io/BufferedReader;
    .end local v3           #mInput:Ljava/io/InputStream;
    .end local v4           #mReader:Ljava/io/InputStreamReader;
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :catch_25
    move-exception v0

    .line 226
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 229
    .end local v0           #e:Ljava/io/IOException;
    :goto_29
    const/4 v6, 0x0

    return-object v6

    .line 223
    .restart local v1       #line:Ljava/lang/String;
    .restart local v2       #mBufferReader:Ljava/io/BufferedReader;
    .restart local v3       #mInput:Ljava/io/InputStream;
    .restart local v4       #mReader:Ljava/io/InputStreamReader;
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    :cond_2b
    :try_start_2b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 224
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;->generalTC:Ljava/lang/String;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_34} :catch_25

    goto :goto_29
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 199
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;->handler:Lcom/sprint/w/installer/delivery/TermsAndConditions$MyHandler;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;->generalTC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/delivery/TermsAndConditions$MyHandler;->handle(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public setHandler(Lcom/sprint/w/installer/delivery/TermsAndConditions$MyHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;->handler:Lcom/sprint/w/installer/delivery/TermsAndConditions$MyHandler;

    .line 239
    return-void
.end method
