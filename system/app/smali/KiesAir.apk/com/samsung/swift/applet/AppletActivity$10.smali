.class Lcom/samsung/swift/applet/AppletActivity$10;
.super Ljava/lang/Object;
.source "AppletActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/applet/AppletActivity;->updateUrl(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/applet/AppletActivity;

.field final synthetic val$networkName:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/swift/applet/AppletActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    iput-object p2, p0, Lcom/samsung/swift/applet/AppletActivity$10;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/swift/applet/AppletActivity$10;->val$networkName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/16 v13, 0x2d0

    const/16 v12, 0x32

    const/16 v11, 0x23

    const/16 v9, 0x8

    const/4 v10, 0x0

    .line 1166
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->val$url:Ljava/lang/String;

    if-nez v7, :cond_50

    .line 1168
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->ipAddress:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$700(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1169
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v7

    if-eqz v7, :cond_2b

    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->ipAddressAuthorised:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$800(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1171
    :cond_2b
    sget-boolean v7, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-nez v7, :cond_4f

    .line 1173
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->layoutAuthorisedDevice:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$1200(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1175
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->helpInWaiting:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$1300(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1176
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->helpInStop:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$1400(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1178
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->showStatus(I)V
    invoke-static {v7, v10}, Lcom/samsung/swift/applet/AppletActivity;->access$1500(Lcom/samsung/swift/applet/AppletActivity;I)V

    .line 1261
    :cond_4f
    :goto_4f
    return-void

    .line 1183
    :cond_50
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->ipAddress:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$700(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/swift/applet/AppletActivity$10;->val$url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1184
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v7

    if-eqz v7, :cond_6e

    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->ipAddressAuthorised:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$800(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/swift/applet/AppletActivity$10;->val$url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1186
    :cond_6e
    sget-boolean v7, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-nez v7, :cond_4f

    .line 1188
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->val$url:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->url_local()Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/swift/applet/AppletActivity;->access$1600(Lcom/samsung/swift/applet/AppletActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d9

    .line 1190
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->helpInStart:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$1700(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    sget v8, Lcom/samsung/swift/R$string;->restart_network_text:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1191
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v7

    if-eqz v7, :cond_9e

    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->helpInStartAuthorised:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$1800(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    sget v8, Lcom/samsung/swift/R$string;->restart_network_text:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1192
    :cond_9e
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->ipAddress:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$700(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1193
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v7

    if-eqz v7, :cond_b8

    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->ipAddressAuthorised:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$800(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1194
    :cond_b8
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->networkNameText:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$1900(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1195
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v7

    if-eqz v7, :cond_d2

    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->networkNameText:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$1900(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1258
    :cond_d2
    :goto_d2
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    invoke-virtual {v7}, Lcom/samsung/swift/applet/AppletActivity;->updateAuthorisedDevice()V

    goto/16 :goto_4f

    .line 1199
    :cond_d9
    const-string v7, "help_in_start_msg4"

    invoke-static {v7}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1200
    .local v3, hstPart1:Ljava/lang/String;
    const-string v7, "help_in_start_msg2"

    invoke-static {v7}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1201
    .local v4, hstPart2:Ljava/lang/String;
    if-eqz v3, :cond_19a

    if-eqz v4, :cond_19a

    .line 1205
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->model:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$2000(Lcom/samsung/swift/applet/AppletActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "P1000"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_121

    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->model:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$2000(Lcom/samsung/swift/applet/AppletActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "M180S"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_121

    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->model:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$2000(Lcom/samsung/swift/applet/AppletActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "M180K"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_121

    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->model:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$2000(Lcom/samsung/swift/applet/AppletActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "M180L"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_237

    .line 1207
    :cond_121
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->helpInStart:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$1700(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v7

    if-eqz v7, :cond_13b

    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->helpInStartAuthorised:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$1800(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1235
    :cond_13b
    :goto_13b
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->currentOrientation:I
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$2200(Lcom/samsung/swift/applet/AppletActivity;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2bc

    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->model:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$2000(Lcom/samsung/swift/applet/AppletActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "E160L"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2bc

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2bc

    .line 1236
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->ipAddress:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$700(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10, v11, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1237
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v7

    if-eqz v7, :cond_180

    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->ipAddressAuthorised:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$800(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10, v11, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1238
    :cond_180
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->networkNameText:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$1900(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10, v11, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1239
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v7

    if-eqz v7, :cond_19a

    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->networkNameTextAuthorised:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$2300(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10, v11, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1248
    :cond_19a
    :goto_19a
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->networkNameText:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$1900(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "network"

    invoke-static {v9}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/swift/applet/AppletActivity$10;->val$networkName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1249
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v7

    if-eqz v7, :cond_1fa

    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->networkNameTextAuthorised:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$2300(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "network"

    invoke-static {v9}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/swift/applet/AppletActivity$10;->val$networkName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1251
    :cond_1fa
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    iget-object v8, p0, Lcom/samsung/swift/applet/AppletActivity$10;->val$networkName:Ljava/lang/String;

    #setter for: Lcom/samsung/swift/applet/AppletActivity;->currentNetworkName:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/samsung/swift/applet/AppletActivity;->access$2402(Lcom/samsung/swift/applet/AppletActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1252
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->ipAddress:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$700(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1253
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v7

    if-eqz v7, :cond_21b

    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->ipAddressAuthorised:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$800(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1254
    :cond_21b
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->networkNameText:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$1900(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1255
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v7

    if-eqz v7, :cond_d2

    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->networkNameTextAuthorised:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$2300(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_d2

    .line 1212
    :cond_237
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->connectNetwork:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$2100(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    if-nez v7, :cond_2a0

    .line 1214
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    invoke-virtual {v7}, Lcom/samsung/swift/applet/AppletActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    .line 1215
    .local v5, w:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1216
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 1217
    .local v6, width:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1219
    .local v1, height:I
    if-eq v6, v13, :cond_255

    if-ne v1, v13, :cond_288

    .line 1220
    :cond_255
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1224
    .local v2, helpInStartText:Ljava/lang/String;
    :goto_26c
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->helpInStart:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$1700(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v7

    if-eqz v7, :cond_13b

    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->helpInStartAuthorised:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$1800(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13b

    .line 1222
    .end local v2           #helpInStartText:Ljava/lang/String;
    :cond_288
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #helpInStartText:Ljava/lang/String;
    goto :goto_26c

    .line 1229
    .end local v0           #d:Landroid/view/Display;
    .end local v1           #height:I
    .end local v2           #helpInStartText:Ljava/lang/String;
    .end local v5           #w:Landroid/view/WindowManager;
    .end local v6           #width:I
    :cond_2a0
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->helpInStart:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$1700(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1230
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v7

    if-eqz v7, :cond_13b

    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->helpInStartAuthorised:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$1800(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13b

    .line 1240
    :cond_2bc
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->currentOrientation:I
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$2200(Lcom/samsung/swift/applet/AppletActivity;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_19a

    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->model:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$2000(Lcom/samsung/swift/applet/AppletActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "E160L"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19a

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19a

    .line 1241
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->ipAddress:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$700(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10, v12, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1242
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v7

    if-eqz v7, :cond_301

    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->ipAddressAuthorised:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$800(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10, v12, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1243
    :cond_301
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->networkNameText:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$1900(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10, v12, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1244
    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v7

    if-eqz v7, :cond_19a

    iget-object v7, p0, Lcom/samsung/swift/applet/AppletActivity$10;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->networkNameTextAuthorised:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/samsung/swift/applet/AppletActivity;->access$2300(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10, v12, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_19a
.end method
