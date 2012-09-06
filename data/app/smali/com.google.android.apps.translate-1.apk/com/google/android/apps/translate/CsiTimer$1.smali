.class Lcom/google/android/apps/translate/CsiTimer$1;
.super Ljava/lang/Object;
.source "CsiTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/CsiTimer;->report(Lorg/apache/http/client/HttpClient;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/CsiTimer;

.field final synthetic val$additionalData:Ljava/lang/String;

.field final synthetic val$httpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/CsiTimer;Lorg/apache/http/client/HttpClient;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/google/android/apps/translate/CsiTimer$1;->this$0:Lcom/google/android/apps/translate/CsiTimer;

    iput-object p2, p0, Lcom/google/android/apps/translate/CsiTimer$1;->val$httpClient:Lorg/apache/http/client/HttpClient;

    iput-object p3, p0, Lcom/google/android/apps/translate/CsiTimer$1;->val$additionalData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/apps/translate/CsiTimer$1;->this$0:Lcom/google/android/apps/translate/CsiTimer;

    iget-object v1, p0, Lcom/google/android/apps/translate/CsiTimer$1;->val$httpClient:Lorg/apache/http/client/HttpClient;

    iget-object v2, p0, Lcom/google/android/apps/translate/CsiTimer$1;->val$additionalData:Ljava/lang/String;

    #calls: Lcom/google/android/apps/translate/CsiTimer;->runReport(Lorg/apache/http/client/HttpClient;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/translate/CsiTimer;->access$000(Lcom/google/android/apps/translate/CsiTimer;Lorg/apache/http/client/HttpClient;Ljava/lang/String;)Z

    .line 221
    return-void
.end method
