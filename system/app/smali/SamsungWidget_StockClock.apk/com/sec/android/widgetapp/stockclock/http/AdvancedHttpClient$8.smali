.class Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$8;
.super Ljava/lang/Object;
.source "AdvancedHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->processResult(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

.field final synthetic val$httpResponseHandler:Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$8;->this$0:Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$8;->val$httpResponseHandler:Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$8;->val$httpResponseHandler:Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;

    const/4 v1, -0x1

    const-string v2, "HTTP Error"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;->onReceive(ILjava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method
