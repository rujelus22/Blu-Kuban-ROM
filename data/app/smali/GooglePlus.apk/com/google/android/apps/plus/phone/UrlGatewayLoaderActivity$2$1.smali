.class Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2$1;
.super Ljava/lang/Object;
.source "UrlGatewayLoaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;->onLoadFinished(Landroid/support/v4/content/Loader;Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2$1;->this$1:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2$1;->this$1:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;->this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    #calls: Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->onProfileLoaded()V
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->access$200(Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;)V

    .line 93
    return-void
.end method
