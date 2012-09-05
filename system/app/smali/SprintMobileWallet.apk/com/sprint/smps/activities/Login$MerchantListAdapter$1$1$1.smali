.class Lcom/sprint/smps/activities/Login$MerchantListAdapter$1$1$1;
.super Ljava/lang/Object;
.source "Login.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/Login$MerchantListAdapter$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/sprint/smps/activities/Login$MerchantListAdapter$1$1;

.field private final synthetic val$parentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/Login$MerchantListAdapter$1$1;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1$1$1;->this$3:Lcom/sprint/smps/activities/Login$MerchantListAdapter$1$1;

    iput-object p2, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1$1$1;->val$parentView:Landroid/view/View;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 87
    iget-object v2, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1$1$1;->this$3:Lcom/sprint/smps/activities/Login$MerchantListAdapter$1$1;

    iget-object v2, v2, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1$1;->merchant:Lcom/sprint/smps/pojo/Merchant;

    invoke-virtual {v2}, Lcom/sprint/smps/pojo/Merchant;->getMerchantUrl()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sprint/smps/properties/Properties;->PARTNER_URL:Ljava/lang/String;

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Lcom/sprint/smps/properties/Properties;->PARTNER_URL:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v1, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Started Partner URL"

    sget-object v3, Lcom/sprint/smps/properties/Properties;->PARTNER_URL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v2, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v3, "Login"

    invoke-virtual {v2, v3, v1}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 101
    if-eqz v0, :cond_36

    invoke-static {}, Lcom/sprint/smps/activities/Login;->access$0()Lcom/sprint/smps/activities/Login;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sprint/smps/activities/Login;->startActivity(Landroid/content/Intent;)V

    .line 102
    :cond_36
    iget-object v2, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1$1$1;->val$parentView:Landroid/view/View;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 103
    return-void
.end method
