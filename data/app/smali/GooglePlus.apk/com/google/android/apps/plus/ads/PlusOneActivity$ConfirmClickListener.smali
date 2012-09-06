.class Lcom/google/android/apps/plus/ads/PlusOneActivity$ConfirmClickListener;
.super Ljava/lang/Object;
.source "PlusOneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/ads/PlusOneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/ads/PlusOneActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$ConfirmClickListener;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/ads/PlusOneActivity;Lcom/google/android/apps/plus/ads/PlusOneActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/ads/PlusOneActivity$ConfirmClickListener;-><init>(Lcom/google/android/apps/plus/ads/PlusOneActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "view"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$ConfirmClickListener;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    #calls: Lcom/google/android/apps/plus/ads/PlusOneActivity;->maybeRecordFriendsShown()V
    invoke-static {v0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->access$400(Lcom/google/android/apps/plus/ads/PlusOneActivity;)V

    .line 383
    iget-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$ConfirmClickListener;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ADS_CONFIRM_PLUSONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    #calls: Lcom/google/android/apps/plus/ads/PlusOneActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->access$500(Lcom/google/android/apps/plus/ads/PlusOneActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 385
    const-string v0, "delete"

    iget-object v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$ConfirmClickListener;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    #getter for: Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->access$600(Lcom/google/android/apps/plus/ads/PlusOneActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 386
    iget-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$ConfirmClickListener;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$ConfirmClickListener;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    #getter for: Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->access$700(Lcom/google/android/apps/plus/ads/PlusOneActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$ConfirmClickListener;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    #getter for: Lcom/google/android/apps/plus/ads/PlusOneActivity;->mPlusOneId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->access$800(Lcom/google/android/apps/plus/ads/PlusOneActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->deleteAdPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    .line 396
    :cond_2b
    :goto_2b
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 397
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "com.google.circles.platform.result.extra.CONFIRMATION"

    const-string v1, "yes"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v0, "com.google.circles.platform.result.extra.ACTION"

    iget-object v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$ConfirmClickListener;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    #getter for: Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->access$600(Lcom/google/android/apps/plus/ads/PlusOneActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    iget-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$ConfirmClickListener;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v7}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->setResult(ILandroid/content/Intent;)V

    .line 401
    iget-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$ConfirmClickListener;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->finish()V

    .line 402
    return-void

    .line 387
    .end local v7           #intent:Landroid/content/Intent;
    :cond_4e
    const-string v0, "insert"

    iget-object v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$ConfirmClickListener;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    #getter for: Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->access$600(Lcom/google/android/apps/plus/ads/PlusOneActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 388
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v6

    .line 389
    .local v6, audienceBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PUBLIC:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setCircleType(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 391
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v4

    .line 392
    .local v4, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    iget-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$ConfirmClickListener;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$ConfirmClickListener;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    #getter for: Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->access$700(Lcom/google/android/apps/plus/ads/PlusOneActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->AD:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    iget-object v3, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$ConfirmClickListener;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    #getter for: Lcom/google/android/apps/plus/ads/PlusOneActivity;->mEntity:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->access$900(Lcom/google/android/apps/plus/ads/PlusOneActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->createPostPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;Z)I

    goto :goto_2b
.end method
