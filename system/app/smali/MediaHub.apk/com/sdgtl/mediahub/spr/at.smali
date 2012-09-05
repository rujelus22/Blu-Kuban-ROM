.class final Lcom/sdgtl/mediahub/spr/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/at;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/at;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->c(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/at;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->d(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/at;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->g(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)[[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/at;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->e(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/at;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->g(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)[[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/at;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->b(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/at;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    invoke-static {v1, v3}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->a(Lcom/sdgtl/mediahub/spr/TestConfigSetting;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9a

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/at;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->f(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/at;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    invoke-static {v2, v4}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->a(Lcom/sdgtl/mediahub/spr/TestConfigSetting;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_84
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/at;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    const-string v1, "deviceUid"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/at;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->b(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->a(Lcom/sdgtl/mediahub/spr/TestConfigSetting;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_9a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/at;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->f(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/at;->a:Lcom/sdgtl/mediahub/spr/TestConfigSetting;

    invoke-static {v1, v4}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->a(Lcom/sdgtl/mediahub/spr/TestConfigSetting;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_84
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2

    return-void
.end method
