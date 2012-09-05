.class Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$TestOmadmSettings;
.super Landroid/preference/ListPreference;
.source "OMADM_Settings_2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TestOmadmSettings"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;


# direct methods
.method public constructor <init>(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "ctx"

    .prologue
    .line 369
    iput-object p1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$TestOmadmSettings;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;

    .line 370
    invoke-direct {p0, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 371
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .registers 5
    .parameter "positiveResult"

    .prologue
    .line 374
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 375
    const-string v0, "OMADM_Settings_2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TestOmadmSettings:onDialogClosed() - positiveResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    if-eqz p1, :cond_2f

    .line 378
    invoke-virtual {p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$TestOmadmSettings;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_42

    .line 389
    const-string v0, "OMADM_Settings_2"

    const-string v1, "INVALID VALUE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_2f
    :goto_2f
    return-void

    .line 380
    :pswitch_30
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$TestOmadmSettings;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;

    #calls: Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->setProdConfig()V
    invoke-static {v0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->access$400(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;)V

    goto :goto_2f

    .line 383
    :pswitch_36
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$TestOmadmSettings;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;

    #calls: Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->setSCTSConfig()V
    invoke-static {v0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->access$500(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;)V

    goto :goto_2f

    .line 386
    :pswitch_3c
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$TestOmadmSettings;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;

    #calls: Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->setSprintLabConfig()V
    invoke-static {v0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->access$600(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;)V

    goto :goto_2f

    .line 378
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_30
        :pswitch_36
        :pswitch_3c
    .end packed-switch
.end method
