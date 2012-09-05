.class public Lcom/vlingo/client/contacts/AutoDialActivity;
.super Lcom/vlingo/client/ui/VLActivity;
.source "AutoDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/contacts/AutoDialActivity$ContactImageLoadTask;
    }
.end annotation


# static fields
.field public static final EXTRA_ADDRESS:Ljava/lang/String; = "com.vlingo.client.autodial.address"

.field public static final EXTRA_ADDRESS_TYPE:Ljava/lang/String; = "com.vlingo.client.autodial.address_type"

.field public static final EXTRA_AUTODIAL_COUNTDOWN_TIME_MS:Ljava/lang/String; = "com.vlingo.client.autodial.countdownTime"

.field public static final EXTRA_AUTODIAL_ELAPSED:Ljava/lang/String; = "com.vlingo.client.autodial.elapsed"

.field public static final EXTRA_AUTODIAL_REDIAL:Ljava/lang/String; = "com.vlingo.client.autodialRedial"

.field public static final EXTRA_CONTACT_ID:Ljava/lang/String; = "com.vlingo.client.autodial.contact_id"

.field public static final EXTRA_NAME:Ljava/lang/String; = "com.vlingo.client.autodial.name"


# instance fields
.field m_autodialCountdownTimeMs:I

.field m_contactAddress:Ljava/lang/String;

.field m_contactAddressType:Ljava/lang/String;

.field m_contactId:J

.field m_contactName:Ljava/lang/String;

.field m_countDownView:Lcom/vlingo/client/contacts/AutoDialCountDownView;

.field m_qcb:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vlingo/client/ui/VLActivity;-><init>()V

    .line 38
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_autodialCountdownTimeMs:I

    .line 99
    return-void
.end method


# virtual methods
.method cancel()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_countDownView:Lcom/vlingo/client/contacts/AutoDialCountDownView;

    invoke-virtual {v0}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->cancel()V

    .line 131
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/AutoDialActivity;->finish()V

    .line 132
    return-void
.end method

.method extractExtras()V
    .registers 4

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/AutoDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 115
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.vlingo.client.autodial.contact_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_contactId:J

    .line 116
    const-string v1, "com.vlingo.client.autodial.name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_contactName:Ljava/lang/String;

    .line 117
    const-string v1, "com.vlingo.client.autodial.address"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_contactAddress:Ljava/lang/String;

    .line 118
    const-string v1, "com.vlingo.client.autodial.address_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_contactAddressType:Ljava/lang/String;

    .line 119
    const-string v1, "com.vlingo.client.autodial.countdownTime"

    const/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_autodialCountdownTimeMs:I

    .line 121
    return-void
.end method

.method launchAction()V
    .registers 7

    .prologue
    .line 135
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v2

    const-string v3, "voicecall"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageAction(Ljava/lang/String;Ljava/util/Vector;Z)V

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_contactAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, url:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, action:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 139
    const/high16 v2, 0x5400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v0}, Lcom/vlingo/client/contacts/AutoDialActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/vlingo/client/contacts/AutoDialActivity;->setResult(I)V

    .line 142
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/AutoDialActivity;->finish()V

    .line 143
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "extras"

    .prologue
    const/4 v4, 0x1

    const/16 v11, 0x8

    .line 45
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0, v4}, Lcom/vlingo/client/contacts/AutoDialActivity;->requestWindowFeature(I)Z

    .line 48
    const v7, 0x7f030002

    invoke-virtual {p0, v7}, Lcom/vlingo/client/contacts/AutoDialActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/AutoDialActivity;->extractExtras()V

    .line 52
    iget-wide v7, p0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_contactId:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_96

    .line 54
    .local v4, dialingPhoneNumber:Z
    :goto_1a
    const v7, 0x7f0f000f

    invoke-virtual {p0, v7}, Lcom/vlingo/client/contacts/AutoDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 55
    .local v1, contactAddress:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_contactAddress:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const v7, 0x7f0f000d

    invoke-virtual {p0, v7}, Lcom/vlingo/client/contacts/AutoDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 57
    .local v2, contactName:Landroid/widget/TextView;
    const v7, 0x7f0f000e

    invoke-virtual {p0, v7}, Lcom/vlingo/client/contacts/AutoDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 58
    .local v3, contactType:Landroid/widget/TextView;
    const v7, 0x7f0f000c

    invoke-virtual {p0, v7}, Lcom/vlingo/client/contacts/AutoDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/QuickContactBadge;

    iput-object v7, p0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_qcb:Landroid/widget/QuickContactBadge;

    .line 60
    if-eqz v4, :cond_98

    .line 61
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v7, p0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_qcb:Landroid/widget/QuickContactBadge;

    invoke-virtual {v7, v11}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 70
    :goto_52
    const v7, 0x7f0f0011

    invoke-virtual {p0, v7}, Lcom/vlingo/client/contacts/AutoDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 71
    .local v0, btn:Landroid/widget/Button;
    new-instance v7, Lcom/vlingo/client/contacts/AutoDialActivity$1;

    invoke-direct {v7, p0}, Lcom/vlingo/client/contacts/AutoDialActivity$1;-><init>(Lcom/vlingo/client/contacts/AutoDialActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v7, 0x7f0f0010

    invoke-virtual {p0, v7}, Lcom/vlingo/client/contacts/AutoDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vlingo/client/contacts/AutoDialCountDownView;

    iput-object v7, p0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_countDownView:Lcom/vlingo/client/contacts/AutoDialCountDownView;

    .line 78
    iget-object v7, p0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_countDownView:Lcom/vlingo/client/contacts/AutoDialCountDownView;

    iget v8, p0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_autodialCountdownTimeMs:I

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->setDuration(J)V

    .line 79
    iget-object v7, p0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_countDownView:Lcom/vlingo/client/contacts/AutoDialCountDownView;

    new-instance v8, Lcom/vlingo/client/contacts/AutoDialActivity$2;

    invoke-direct {v8, p0}, Lcom/vlingo/client/contacts/AutoDialActivity$2;-><init>(Lcom/vlingo/client/contacts/AutoDialActivity;)V

    invoke-virtual {v7, v8}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    if-eqz p1, :cond_8d

    .line 86
    const-string v7, "com.vlingo.client.autodial.elapsed"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 87
    .local v5, elapsed:J
    iget-object v7, p0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_countDownView:Lcom/vlingo/client/contacts/AutoDialCountDownView;

    invoke-virtual {v7, v5, v6}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->setTimeElapsed(J)V

    .line 90
    .end local v5           #elapsed:J
    :cond_8d
    new-instance v7, Lcom/vlingo/client/contacts/AutoDialActivity$3;

    invoke-direct {v7, p0}, Lcom/vlingo/client/contacts/AutoDialActivity$3;-><init>(Lcom/vlingo/client/contacts/AutoDialActivity;)V

    invoke-virtual {p0, v7}, Lcom/vlingo/client/contacts/AutoDialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 97
    return-void

    .line 52
    .end local v0           #btn:Landroid/widget/Button;
    .end local v1           #contactAddress:Landroid/widget/TextView;
    .end local v2           #contactName:Landroid/widget/TextView;
    .end local v3           #contactType:Landroid/widget/TextView;
    .end local v4           #dialingPhoneNumber:Z
    :cond_96
    const/4 v4, 0x0

    goto :goto_1a

    .line 66
    .restart local v1       #contactAddress:Landroid/widget/TextView;
    .restart local v2       #contactName:Landroid/widget/TextView;
    .restart local v3       #contactType:Landroid/widget/TextView;
    .restart local v4       #dialingPhoneNumber:Z
    :cond_98
    iget-object v7, p0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_contactName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v7, p0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_contactAddressType:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_52
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    const-string v0, "com.vlingo.client.autodial.elapsed"

    iget-object v1, p0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_countDownView:Lcom/vlingo/client/contacts/AutoDialCountDownView;

    invoke-virtual {v1}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->getTimeElapsed()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 126
    return-void
.end method
