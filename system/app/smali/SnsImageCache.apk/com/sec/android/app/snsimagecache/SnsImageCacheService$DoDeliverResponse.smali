.class Lcom/sec/android/app/snsimagecache/SnsImageCacheService$DoDeliverResponse;
.super Ljava/lang/Object;
.source "SnsImageCacheService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsimagecache/SnsImageCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoDeliverResponse"
.end annotation


# instance fields
.field private mCallbackData:Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;

.field final synthetic this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsimagecache/SnsImageCacheService;Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;)V
    .registers 4
    .parameter
    .parameter "data"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$DoDeliverResponse;->this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$DoDeliverResponse;->mCallbackData:Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;

    .line 110
    iput-object p2, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$DoDeliverResponse;->mCallbackData:Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;

    .line 111
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$DoDeliverResponse;->this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    iget-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$DoDeliverResponse;->mCallbackData:Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;

    #calls: Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->invokeCallback(Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->access$200(Lcom/sec/android/app/snsimagecache/SnsImageCacheService;Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;)V

    .line 118
    return-void
.end method
