.class Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;
.super Ljava/lang/Object;
.source "LocalSearchListingDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonListenerImpl"
.end annotation


# instance fields
.field listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

.field final synthetic this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;Lcom/vlingo/client/localsearch/service/LocalSearchListing;)V
    .registers 3
    .parameter
    .parameter "listing"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p2, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    .line 314
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    .line 318
    const/4 v5, 0x0

    .line 319
    .local v5, trackingType:Ljava/lang/String;
    :try_start_1
    iget-object v7, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    #getter for: Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonCall:Landroid/widget/ImageButton;
    invoke-static {v7}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->access$300(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)Landroid/widget/ImageButton;

    move-result-object v7

    if-ne p1, v7, :cond_53

    .line 320
    const-string v5, "UserClickedToCallDetail"

    .line 321
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.CALL"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, action:Landroid/content/Intent;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    invoke-virtual {v8}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 323
    const/high16 v7, 0x1400

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 324
    iget-object v7, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    invoke-virtual {v7, v0}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 325
    iget-object v7, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    invoke-virtual {v7}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->finish()V

    .line 370
    .end local v0           #action:Landroid/content/Intent;
    :cond_45
    :goto_45
    if-eqz v5, :cond_52

    .line 371
    iget-object v7, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    #getter for: Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->localSearchService:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;
    invoke-static {v7}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->access$800(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    invoke-virtual {v7, v8, v5}, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->sendInfoActivityRequest(Lcom/vlingo/client/localsearch/service/LocalSearchListing;Ljava/lang/String;)V

    .line 376
    :cond_52
    :goto_52
    return-void

    .line 326
    :cond_53
    iget-object v7, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    #getter for: Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonMap:Landroid/widget/ImageButton;
    invoke-static {v7}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->access$400(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)Landroid/widget/ImageButton;

    move-result-object v7

    if-ne p1, v7, :cond_bf

    .line 327
    const-string v5, "UserClickedOnMap"

    .line 328
    const-string v2, "0"

    .line 329
    .local v2, lat:Ljava/lang/String;
    const-string v3, "0"

    .line 330
    .local v3, lon:Ljava/lang/String;
    iget-object v7, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    const-string v8, "Lat"

    invoke-virtual {v7, v8}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 331
    iget-object v7, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    const-string v8, "Lat"

    invoke-virtual {v7, v8}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 333
    :cond_73
    iget-object v7, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    const-string v8, "Lon"

    invoke-virtual {v7, v8}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_85

    .line 334
    iget-object v7, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    const-string v8, "Lon"

    invoke-virtual {v7, v8}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 336
    :cond_85
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    invoke-virtual {v8}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    invoke-virtual {v8}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getFullAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 337
    .local v4, query:Ljava/lang/String;
    iget-object v7, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    invoke-static {v7, v4, v2, v3}, Lcom/vlingo/client/util/GeoUtil;->getMapIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 338
    .restart local v0       #action:Landroid/content/Intent;
    iget-object v7, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    invoke-virtual {v7, v0}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b3} :catch_b4

    goto :goto_45

    .line 373
    .end local v0           #action:Landroid/content/Intent;
    .end local v2           #lat:Ljava/lang/String;
    .end local v3           #lon:Ljava/lang/String;
    .end local v4           #query:Ljava/lang/String;
    :catch_b4
    move-exception v1

    .line 374
    .local v1, ex:Ljava/lang/Exception;
    const-string v7, "VLG_EXCEPTION"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 339
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_bf
    :try_start_bf
    iget-object v7, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    #getter for: Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonNavigate:Landroid/widget/ImageButton;
    invoke-static {v7}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->access$500(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)Landroid/widget/ImageButton;

    move-result-object v7

    if-ne p1, v7, :cond_f9

    .line 340
    const-string v5, "UserClickedNavigate"

    .line 341
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    invoke-virtual {v8}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    invoke-virtual {v8}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getFullAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 342
    .restart local v4       #query:Ljava/lang/String;
    iget-object v7, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    invoke-static {v7, v4}, Lcom/vlingo/client/util/GeoUtil;->getNavigateIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 343
    .restart local v0       #action:Landroid/content/Intent;
    iget-object v7, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    invoke-virtual {v7, v0}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_45

    .line 344
    .end local v0           #action:Landroid/content/Intent;
    .end local v4           #query:Ljava/lang/String;
    :cond_f9
    iget-object v7, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    #getter for: Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonWeb:Landroid/widget/ImageButton;
    invoke-static {v7}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->access$600(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)Landroid/widget/ImageButton;

    move-result-object v7

    if-ne p1, v7, :cond_153

    .line 345
    const-string v5, "UserClickedLink"

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .restart local v0       #action:Landroid/content/Intent;
    iget-object v7, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    const-string v8, "ClickUrl"

    invoke-virtual {v7, v8}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, url:Ljava/lang/String;
    invoke-static {v6}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_120

    .line 350
    iget-object v7, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    const-string v8, "Url"

    invoke-virtual {v7, v8}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 353
    :cond_120
    invoke-static {v6}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_145

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_145

    .line 354
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 356
    :cond_145
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 357
    iget-object v7, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    invoke-virtual {v7, v0}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_45

    .line 359
    .end local v0           #action:Landroid/content/Intent;
    .end local v6           #url:Ljava/lang/String;
    :cond_153
    iget-object v7, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    #getter for: Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonReserve:Landroid/widget/ImageButton;
    invoke-static {v7}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->access$700(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)Landroid/widget/ImageButton;

    move-result-object v7

    if-ne p1, v7, :cond_45

    .line 360
    const-string v5, "UserClickedReserve"

    .line 361
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .restart local v0       #action:Landroid/content/Intent;
    iget-object v7, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    const-string v8, "ReservationURL"

    invoke-virtual {v7, v8}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 363
    .restart local v6       #url:Ljava/lang/String;
    invoke-static {v6}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_191

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_191

    .line 364
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 366
    :cond_191
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 367
    iget-object v7, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    invoke-virtual {v7, v0}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_19d} :catch_b4

    goto/16 :goto_45
.end method
