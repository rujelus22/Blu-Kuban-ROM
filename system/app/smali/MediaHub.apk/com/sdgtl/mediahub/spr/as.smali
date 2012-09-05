.class final Lcom/sdgtl/mediahub/spr/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/as;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 10

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/as;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->a(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/a;->e:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/as;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    const-string v1, "deviceUid"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/as;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->b(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->a(Lcom/sdgtl/mediahub/spr/TestConfigSetting;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/as;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->c(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/as;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    const-string v3, "csc"

    invoke-static {}, Lcom/sdgtl/mediahub/spr/au;->values()[Lcom/sdgtl/mediahub/spr/au;

    move-result-object v4

    aget-object v1, v4, v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/au;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->a(Lcom/sdgtl/mediahub/spr/TestConfigSetting;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/as;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    const-string v3, "mcc"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/as;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->d(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->a(Lcom/sdgtl/mediahub/spr/TestConfigSetting;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/as;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    const-string v4, "mnc"

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/as;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->e(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->a(Lcom/sdgtl/mediahub/spr/TestConfigSetting;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/as;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    const-string v5, "deviceid"

    iget-object v6, p0, Lcom/sdgtl/mediahub/spr/as;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    invoke-static {v6}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->f(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->a(Lcom/sdgtl/mediahub/spr/TestConfigSetting;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "HTTPCLIENTPOOL_UA"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "deviceUid"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "mcc"

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "mnc"

    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "csc"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "deviceid"

    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "useragent"

    invoke-virtual {v6, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/as;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v6}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/as;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->finish()V

    return-void
.end method
