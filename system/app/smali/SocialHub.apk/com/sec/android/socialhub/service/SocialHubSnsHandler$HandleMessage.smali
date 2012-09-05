.class public Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;
.super Ljava/lang/Object;
.source "SocialHubSnsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/service/SocialHubSnsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandleMessage"
.end annotation


# instance fields
.field public callback:Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;

.field public reqID:I

.field public reqType:I

.field final synthetic this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;IILcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;)V
    .registers 5
    .parameter
    .parameter "id"
    .parameter "type"
    .parameter "callback"

    .prologue
    .line 473
    iput-object p1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 474
    iput p2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;->reqID:I

    .line 475
    iput p3, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;->reqType:I

    .line 476
    iput-object p4, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;->callback:Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;

    .line 477
    return-void
.end method
