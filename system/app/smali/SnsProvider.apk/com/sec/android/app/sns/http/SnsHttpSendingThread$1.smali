.class Lcom/sec/android/app/sns/http/SnsHttpSendingThread$1;
.super Lcom/sec/android/app/sns/http/CustomRedirectHandler;
.source "SnsHttpMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->doSendHttp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sns/http/SnsHttpSendingThread;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sns/http/SnsHttpSendingThread;)V
    .registers 2
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread$1;->this$0:Lcom/sec/android/app/sns/http/SnsHttpSendingThread;

    invoke-direct {p0}, Lcom/sec/android/app/sns/http/CustomRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getRedirectURL(Ljava/net/URI;)V
    .registers 4
    .parameter "uri"

    .prologue
    .line 637
    if-eqz p1, :cond_a

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread$1;->this$0:Lcom/sec/android/app/sns/http/SnsHttpSendingThread;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mRedirectURL:Ljava/lang/String;

    .line 639
    :cond_a
    return-void
.end method
