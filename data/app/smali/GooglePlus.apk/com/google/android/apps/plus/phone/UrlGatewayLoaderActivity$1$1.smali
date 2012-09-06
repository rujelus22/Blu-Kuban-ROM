.class Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1$1;
.super Ljava/lang/Object;
.source "UrlGatewayLoaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1$1;->this$1:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1$1;->this$1:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;->this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    #calls: Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->onDesktopActivityIdResolved()V
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->access$100(Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;)V

    .line 58
    return-void
.end method
