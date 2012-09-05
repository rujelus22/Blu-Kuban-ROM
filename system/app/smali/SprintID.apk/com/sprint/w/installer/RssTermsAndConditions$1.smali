.class Lcom/sprint/w/installer/RssTermsAndConditions$1;
.super Ljava/lang/Thread;
.source "RssTermsAndConditions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/RssTermsAndConditions;->loadContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/RssTermsAndConditions;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/RssTermsAndConditions;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sprint/w/installer/RssTermsAndConditions$1;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 73
    :try_start_0
    iget-object v6, p0, Lcom/sprint/w/installer/RssTermsAndConditions$1;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    invoke-virtual {v6}, Lcom/sprint/w/installer/RssTermsAndConditions;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "SprintTandC.html"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 74
    .local v3, mInput:Ljava/io/InputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 75
    .local v4, mReader:Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 76
    .local v2, mBufferReader:Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v5, mTandC:Ljava/lang/StringBuilder;
    :goto_1b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 79
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_1b

    .line 83
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #mBufferReader:Ljava/io/BufferedReader;
    .end local v3           #mInput:Ljava/io/InputStream;
    .end local v4           #mReader:Ljava/io/InputStreamReader;
    .end local v5           #mTandC:Ljava/lang/StringBuilder;
    :catch_25
    move-exception v0

    .line 84
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    .end local v0           #e:Ljava/io/IOException;
    :goto_29
    iget-object v6, p0, Lcom/sprint/w/installer/RssTermsAndConditions$1;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    iget-object v7, p0, Lcom/sprint/w/installer/RssTermsAndConditions$1;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    iget-object v7, v7, Lcom/sprint/w/installer/RssTermsAndConditions;->mLoadContent:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lcom/sprint/w/installer/RssTermsAndConditions;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 87
    return-void

    .line 81
    .restart local v1       #line:Ljava/lang/String;
    .restart local v2       #mBufferReader:Ljava/io/BufferedReader;
    .restart local v3       #mInput:Ljava/io/InputStream;
    .restart local v4       #mReader:Ljava/io/InputStreamReader;
    .restart local v5       #mTandC:Ljava/lang/StringBuilder;
    :cond_33
    :try_start_33
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 82
    iget-object v6, p0, Lcom/sprint/w/installer/RssTermsAndConditions$1;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sprint/w/installer/RssTermsAndConditions;->mGeneralTc:Ljava/lang/String;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3e} :catch_25

    goto :goto_29
.end method
