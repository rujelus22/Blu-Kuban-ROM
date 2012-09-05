.class Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;
.super Ljava/lang/Object;
.source "UrlGatewayLoaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;->this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;->this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    #calls: Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->onPublicIdResolved()V
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->access$000(Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;)V

    .line 142
    return-void
.end method
