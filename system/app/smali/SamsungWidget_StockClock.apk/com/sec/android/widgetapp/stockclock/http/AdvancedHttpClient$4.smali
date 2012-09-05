.class Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$4;
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
    .line 108
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$4;->this$0:Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$4;->val$httpResponseHandler:Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$4;->val$httpResponseHandler:Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$4;->this$0:Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    iget v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->statusCode:I

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$4;->this$0:Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    iget-object v2, v2, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->strStatus:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$4;->this$0:Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    iget-object v3, v3, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->strResult:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;->onReceive(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method
