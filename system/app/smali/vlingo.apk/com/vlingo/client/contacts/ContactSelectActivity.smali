.class public Lcom/vlingo/client/contacts/ContactSelectActivity;
.super Lcom/vlingo/client/ui/VLActivity;
.source "ContactSelectActivity.java"

# interfaces
.implements Lcom/vlingo/client/core/contacts/ContactsMatcherListener;
.implements Lcom/vlingo/client/contacts/ContactScreen;


# static fields
.field public static final ACTION_TYPE_CALL:Ljava/lang/String; = "call"

.field public static final ACTION_TYPE_EMAIL:Ljava/lang/String; = "email"

.field public static final ACTION_TYPE_SMS:Ljava/lang/String; = "sms"

.field static final EVENT_AUTO_DIAL:I = 0x2

.field static final EVENT_FINISH:I = 0x3

.field static final EVENT_SEARCH:I = 0x0

.field static final EVENT_SEARCH_WITH_QUERY:I = 0x1

.field public static final EXTRA_ACTION_TYPE:Ljava/lang/String; = "com.vlingo.client.action"

.field public static final EXTRA_AUTODIAL_COUNTDOWN_ENABLED:Ljava/lang/String; = "com.vlingo.client.autodialcountdown.enabled"

.field public static final EXTRA_AUTODIAL_COUNTDOWN_TIME_MS:Ljava/lang/String; = "com.vlingo.client.autodialcountdown.msec"

.field public static final EXTRA_AUTODIAL_ENABLED:Ljava/lang/String; = "com.vlingo.client.autodial.enabled"

.field public static final EXTRA_CONFIDENCE_SCORE:Ljava/lang/String; = "com.vlingo.client.confidenceScore"

.field public static final EXTRA_EMAIL_TYPES:Ljava/lang/String; = "com.vlingo.client.emailTypes"

.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "com.vlingo.client.message"

.field public static final EXTRA_PHONE_TYPES:Ljava/lang/String; = "com.vlingo.client.phoneTypes"

.field public static final EXTRA_SEARCH_QUERY:Ljava/lang/String; = "query"

.field public static final EXTRA_SUBJECT:Ljava/lang/String; = "com.vlingo.client.subject"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "com.vlingo.client.title"

.field public static final TASK_FINISH_TIMEOUT:I = 0x1f40

.field private static log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field m_actionType:Ljava/lang/String;

.field m_autoActionAttempted:Z

.field m_autodialCountdownEnabled:Z

.field m_autodialCountdownTimeMs:I

.field m_contactAdapter:Lcom/vlingo/client/contacts/ContactsListAdapter;

.field m_contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

.field protected m_currentSearchText:Ljava/lang/String;

.field m_emailTypes:[I

.field private m_eventHandler:Landroid/os/Handler;

.field m_firstView:Z

.field m_listView:Landroid/widget/ListView;

.field m_message:Ljava/lang/String;

.field private m_pageId:Ljava/lang/String;

.field m_phoneTypes:[I

.field m_recognizerConfidenceScore:F

.field m_searchBox:Landroid/widget/EditText;

.field m_speakButton:Landroid/widget/ImageButton;

.field m_subject:Ljava/lang/String;

.field m_topChoiceView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-class v0, Lcom/vlingo/client/contacts/ContactSelectActivity;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/contacts/ContactSelectActivity;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/vlingo/client/ui/VLActivity;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_recognizerConfidenceScore:F

    .line 84
    iput-boolean v2, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_autodialCountdownEnabled:Z

    .line 85
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_autodialCountdownTimeMs:I

    .line 87
    iput-boolean v2, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_autoActionAttempted:Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_firstView:Z

    .line 90
    iput-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    .line 104
    iput-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_currentSearchText:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_pageId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/contacts/ContactSelectActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_eventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .registers 11
    .parameter "intent"

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/vlingo/client/contacts/ContactSelectActivity;->extractExtras(Landroid/content/Intent;)V

    .line 214
    const-string v5, "com.vlingo.client.title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, title:Ljava/lang/String;
    if-eqz v4, :cond_14

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_14

    .line 216
    invoke-virtual {p0, v4}, Lcom/vlingo/client/contacts/ContactSelectActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 219
    :cond_14
    const/4 v1, 0x0

    .line 220
    .local v1, autoDialType:I
    const-string v5, "auto_dial"

    const-string v6, "confident"

    invoke-static {v5, v6}, Lcom/vlingo/client/settings/Settings;->getEnum(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, autodial:Ljava/lang/String;
    const-string v5, "com.vlingo.client.autodial.enabled"

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 222
    .local v0, autoDialEnabled:Z
    if-eqz v0, :cond_2f

    .line 223
    const-string v5, "always"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 224
    const/4 v1, 0x2

    .line 230
    :cond_2f
    :goto_2f
    sget-object v5, Lcom/vlingo/client/contacts/ContactSelectActivity;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got autoDial "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 231
    iget-object v5, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    invoke-virtual {v5, v1}, Lcom/vlingo/client/contacts/VLContactsMatcher;->setAutoActionType(I)V

    .line 233
    const-string v5, "query"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, query:Ljava/lang/String;
    iget-object v5, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_searchBox:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v5, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_searchBox:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->clearFocus()V

    .line 239
    const-string v5, "call"

    iget-object v6, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_actionType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 240
    const-string v5, "voicecall"

    iput-object v5, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_pageId:Ljava/lang/String;

    .line 251
    :cond_74
    :goto_74
    iget-boolean v5, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_firstView:Z

    if-eqz v5, :cond_8c

    .line 254
    iget-object v5, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_pageId:Ljava/lang/String;

    if-eqz v5, :cond_89

    iget-boolean v5, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_firstView:Z

    if-eqz v5, :cond_89

    .line 255
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v5

    iget-object v6, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_pageId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 258
    :cond_89
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_firstView:Z

    .line 262
    :cond_8c
    iget-object v5, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    iget-object v6, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_actionType:Ljava/lang/String;

    iget-object v7, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_phoneTypes:[I

    iget-object v8, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_emailTypes:[I

    invoke-virtual {v5, v6, v7, v8}, Lcom/vlingo/client/contacts/VLContactsMatcher;->initialize(Ljava/lang/String;[I[I)V

    .line 264
    iget v5, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_recognizerConfidenceScore:F

    invoke-virtual {p0, v3, v5}, Lcom/vlingo/client/contacts/ContactSelectActivity;->executeSearch(Ljava/lang/String;F)V

    .line 265
    return-void

    .line 226
    .end local v3           #query:Ljava/lang/String;
    :cond_9d
    const-string v5, "confident"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 227
    const/4 v1, 0x1

    goto :goto_2f

    .line 243
    .restart local v3       #query:Ljava/lang/String;
    :cond_a7
    const-string v5, "email"

    iget-object v6, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_actionType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 244
    const-string v5, "email"

    iput-object v5, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_pageId:Ljava/lang/String;

    goto :goto_74

    .line 247
    :cond_b6
    const-string v5, "sms"

    iget-object v6, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_actionType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 248
    const-string v5, "sms"

    iput-object v5, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_pageId:Ljava/lang/String;

    goto :goto_74
.end method


# virtual methods
.method clearEvents()V
    .registers 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_eventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 269
    iget-object v0, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_eventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    return-void
.end method

.method executeSearch(Ljava/lang/String;F)V
    .registers 6
    .parameter "query"
    .parameter "recognizerConfidenceScore"

    .prologue
    .line 381
    iget-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_currentSearchText:Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_currentSearchText:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 382
    sget-object v1, Lcom/vlingo/client/contacts/ContactSelectActivity;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v2, "Ignored dup search"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 393
    :goto_13
    return-void

    .line 385
    :cond_14
    iget-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_currentSearchText:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 386
    sget-object v1, Lcom/vlingo/client/contacts/ContactSelectActivity;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v2, "Disable auto-action for keyboard activated search"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vlingo/client/contacts/VLContactsMatcher;->setAutoActionType(I)V

    .line 389
    :cond_25
    iput-object p1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_currentSearchText:Ljava/lang/String;

    .line 390
    iget-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    invoke-virtual {v1, p1, p2}, Lcom/vlingo/client/contacts/VLContactsMatcher;->startSearch(Ljava/lang/String;F)Lcom/vlingo/client/core/contacts/VlingoContact;

    move-result-object v0

    .line 391
    .local v0, topChoice:Lcom/vlingo/client/core/contacts/VlingoContact;
    invoke-virtual {p0, v0}, Lcom/vlingo/client/contacts/ContactSelectActivity;->updateTopChoiceView(Lcom/vlingo/client/core/contacts/VlingoContact;)V

    .line 392
    iget-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_contactAdapter:Lcom/vlingo/client/contacts/ContactsListAdapter;

    invoke-virtual {v1}, Lcom/vlingo/client/contacts/ContactsListAdapter;->notifyDataSetInvalidated()V

    goto :goto_13
.end method

.method extractExtras(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    .line 365
    const-string v5, "com.vlingo.client.phoneTypes"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    .line 366
    .local v3, phoneTypes:[I
    const-string v5, "com.vlingo.client.emailTypes"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 367
    .local v1, emailTypes:[I
    const-string v5, "com.vlingo.client.action"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, actionType:Ljava/lang/String;
    const-string v5, "com.vlingo.client.subject"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 369
    .local v4, subject:Ljava/lang/String;
    const-string v5, "com.vlingo.client.message"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, message:Ljava/lang/String;
    const-string v5, "com.vlingo.client.confidenceScore"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v5

    iput v5, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_recognizerConfidenceScore:F

    .line 371
    if-eqz v3, :cond_2b

    iput-object v3, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_phoneTypes:[I

    .line 372
    :cond_2b
    if-eqz v1, :cond_2f

    iput-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_emailTypes:[I

    .line 373
    :cond_2f
    if-eqz v0, :cond_33

    iput-object v0, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_actionType:Ljava/lang/String;

    .line 374
    :cond_33
    if-eqz v4, :cond_37

    iput-object v4, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_subject:Ljava/lang/String;

    .line 375
    :cond_37
    if-eqz v2, :cond_3b

    iput-object v2, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_message:Ljava/lang/String;

    .line 376
    :cond_3b
    const-string v5, "com.vlingo.client.autodialcountdown.enabled"

    iget-boolean v6, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_autodialCountdownEnabled:Z

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_autodialCountdownEnabled:Z

    .line 377
    const-string v5, "com.vlingo.client.autodialcountdown.msec"

    iget v6, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_autodialCountdownTimeMs:I

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_autodialCountdownTimeMs:I

    .line 378
    return-void
.end method

.method public getActionType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_actionType:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 570
    return-object p0
.end method

.method public launchAction(Ljava/lang/String;Z)Z
    .registers 11
    .parameter "address"
    .parameter "autoAction"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 515
    const/4 v0, 0x0

    .line 517
    .local v0, action:Landroid/content/Intent;
    const-string v5, "call"

    iget-object v6, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_actionType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 518
    if-eqz p1, :cond_44

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_44

    .line 519
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v5

    iget-object v6, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_pageId:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, p2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageAction(Ljava/lang/String;Ljava/util/Vector;Z)V

    .line 520
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, url:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #action:Landroid/content/Intent;
    const-string v5, "android.intent.action.CALL"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    .restart local v0       #action:Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 555
    .end local v2           #url:Ljava/lang/String;
    :cond_44
    :goto_44
    if-eqz v0, :cond_cf

    .line 556
    const/high16 v4, 0x1400

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 560
    invoke-virtual {p0, v0}, Lcom/vlingo/client/contacts/ContactSelectActivity;->startActivity(Landroid/content/Intent;)V

    .line 563
    :goto_4e
    return v3

    .line 526
    :cond_4f
    const-string v5, "email"

    iget-object v6, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_actionType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 527
    new-instance v0, Landroid/content/Intent;

    .end local v0           #action:Landroid/content/Intent;
    const-string v5, "android.intent.action.SEND"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .restart local v0       #action:Landroid/content/Intent;
    if-eqz p1, :cond_6b

    .line 529
    const-string v5, "android.intent.extra.EMAIL"

    new-array v6, v3, [Ljava/lang/String;

    aput-object p1, v6, v4

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    :cond_6b
    iget-object v5, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_subject:Ljava/lang/String;

    if-eqz v5, :cond_76

    .line 533
    const-string v5, "android.intent.extra.SUBJECT"

    iget-object v6, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_subject:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    :cond_76
    iget-object v5, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_message:Ljava/lang/String;

    if-eqz v5, :cond_81

    .line 536
    const-string v5, "android.intent.extra.TEXT"

    iget-object v6, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_message:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    :cond_81
    const-string v5, "message/rfc822"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_44

    .line 541
    :cond_87
    const-string v5, "sms"

    iget-object v6, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_actionType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 542
    new-instance v0, Landroid/content/Intent;

    .end local v0           #action:Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 543
    .restart local v0       #action:Landroid/content/Intent;
    if-eqz p1, :cond_bd

    .line 544
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, number:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 546
    .restart local v2       #url:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 547
    const-string v5, "address"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    .end local v1           #number:Ljava/lang/String;
    .end local v2           #url:Ljava/lang/String;
    :cond_bd
    iget-object v5, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_message:Ljava/lang/String;

    if-eqz v5, :cond_c8

    .line 551
    const-string v5, "sms_body"

    iget-object v6, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_message:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    :cond_c8
    const-string v5, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_44

    :cond_cf
    move v3, v4

    .line 563
    goto/16 :goto_4e
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 328
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 329
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/ContactSelectActivity;->finish()V

    .line 331
    :cond_6
    return-void
.end method

.method public onAutoAction(Lcom/vlingo/client/core/contacts/DisplayItem;)V
    .registers 6
    .parameter "contact"

    .prologue
    const/4 v1, 0x1

    .line 301
    iget-boolean v0, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_autoActionAttempted:Z

    if-nez v0, :cond_14

    .line 302
    iput-boolean v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_autoActionAttempted:Z

    .line 303
    invoke-static {v1}, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->setIgnored(Z)V

    .line 304
    iget-boolean v0, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_autodialCountdownEnabled:Z

    if-eqz v0, :cond_15

    .line 305
    iget-object v0, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_eventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 314
    :cond_14
    :goto_14
    return-void

    .line 309
    :cond_15
    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/contacts/ContactSelectActivity;->launchAction(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 310
    iget-object v0, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_eventHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_14
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_pageId:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 280
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_pageId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageCanceled(Ljava/lang/String;Ljava/util/Vector;)V

    .line 282
    :cond_e
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onBackPressed()V

    .line 283
    return-void
.end method

.method public onContactMatchResultsUpdate()V
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_contactAdapter:Lcom/vlingo/client/contacts/ContactsListAdapter;

    invoke-virtual {v0}, Lcom/vlingo/client/contacts/ContactsListAdapter;->notifyDataSetChanged()V

    .line 362
    return-void
.end method

.method public onContactMatchingFinished()V
    .registers 7

    .prologue
    .line 317
    iget-object v3, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    invoke-virtual {v3}, Lcom/vlingo/client/contacts/VLContactsMatcher;->getTopChoice()Lcom/vlingo/client/core/contacts/VlingoContact;

    move-result-object v0

    .line 318
    .local v0, c:Lcom/vlingo/client/core/contacts/VlingoContact;
    iget-object v3, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    invoke-virtual {v3}, Lcom/vlingo/client/contacts/VLContactsMatcher;->getNumContacts()I

    move-result v2

    .line 319
    .local v2, matches:I
    if-nez v2, :cond_3d

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/VlingoContact;->getNumDetails()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3d

    .line 320
    new-instance v1, Lcom/vlingo/client/core/contacts/DisplayItem;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/vlingo/client/core/contacts/DisplayItem;-><init>(Lcom/vlingo/client/core/contacts/VlingoContact;I)V

    .line 321
    .local v1, di:Lcom/vlingo/client/core/contacts/DisplayItem;
    iget-object v3, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactId()I

    move-result v4

    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/vlingo/client/contacts/VLContactsMatcher;->notifyContactUsed(ILjava/lang/String;)V

    .line 322
    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactId()I

    move-result v3

    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vlingo/client/contacts/ContactSelectActivity;->onItemSelected(ILjava/lang/String;)V

    .line 324
    .end local v1           #di:Lcom/vlingo/client/core/contacts/DisplayItem;
    :cond_3d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    sget-object v1, Lcom/vlingo/client/contacts/ContactSelectActivity;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v2, "in contactSelectActivity.onCreate()"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/vlingo/client/contacts/ContactSelectActivity;->unpackSavedInstanceState(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/ContactSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.vlingo.client.title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, title:Ljava/lang/String;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_24

    .line 116
    :cond_20
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vlingo/client/contacts/ContactSelectActivity;->requestWindowFeature(I)Z

    .line 119
    :cond_24
    const v1, 0x7f03001a

    invoke-virtual {p0, v1}, Lcom/vlingo/client/contacts/ContactSelectActivity;->setContentView(I)V

    .line 121
    new-instance v1, Lcom/vlingo/client/contacts/VLContactsMatcher;

    invoke-direct {v1, p0, p0}, Lcom/vlingo/client/contacts/VLContactsMatcher;-><init>(Lcom/vlingo/client/core/contacts/ContactsMatcherListener;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    .line 122
    new-instance v1, Lcom/vlingo/client/contacts/ContactsListAdapter;

    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    invoke-direct {v1, p0, v2}, Lcom/vlingo/client/contacts/ContactsListAdapter;-><init>(Lcom/vlingo/client/contacts/ContactScreen;Lcom/vlingo/client/core/contacts/ContactsMatcher;)V

    iput-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_contactAdapter:Lcom/vlingo/client/contacts/ContactsListAdapter;

    .line 128
    const v1, 0x7f03001c

    invoke-static {p0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_topChoiceView:Landroid/view/View;

    .line 130
    const v1, 0x7f0f0071

    invoke-virtual {p0, v1}, Lcom/vlingo/client/contacts/ContactSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_listView:Landroid/widget/ListView;

    .line 131
    iget-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_topChoiceView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 132
    iget-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_contactAdapter:Lcom/vlingo/client/contacts/ContactsListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    iget-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_listView:Landroid/widget/ListView;

    new-instance v2, Lcom/vlingo/client/contacts/ContactSelectActivity$1;

    invoke-direct {v2, p0}, Lcom/vlingo/client/contacts/ContactSelectActivity$1;-><init>(Lcom/vlingo/client/contacts/ContactSelectActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 146
    const v1, 0x7f0f002e

    invoke-virtual {p0, v1}, Lcom/vlingo/client/contacts/ContactSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_speakButton:Landroid/widget/ImageButton;

    .line 147
    iget-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_speakButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/vlingo/client/contacts/ContactSelectActivity$2;

    invoke-direct {v2, p0}, Lcom/vlingo/client/contacts/ContactSelectActivity$2;-><init>(Lcom/vlingo/client/contacts/ContactSelectActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v1, 0x7f0f0070

    invoke-virtual {p0, v1}, Lcom/vlingo/client/contacts/ContactSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_searchBox:Landroid/widget/EditText;

    .line 156
    iget-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_searchBox:Landroid/widget/EditText;

    new-instance v2, Lcom/vlingo/client/contacts/ContactSelectActivity$3;

    invoke-direct {v2, p0}, Lcom/vlingo/client/contacts/ContactSelectActivity$3;-><init>(Lcom/vlingo/client/contacts/ContactSelectActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 168
    new-instance v1, Lcom/vlingo/client/contacts/ContactSelectActivity$4;

    invoke-direct {v1, p0}, Lcom/vlingo/client/contacts/ContactSelectActivity$4;-><init>(Lcom/vlingo/client/contacts/ContactSelectActivity;)V

    iput-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_eventHandler:Landroid/os/Handler;

    .line 200
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/ContactSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vlingo/client/contacts/ContactSelectActivity;->handleIntent(Landroid/content/Intent;)V

    .line 202
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/vlingo/client/contacts/ContactSelectActivity;->makeDefaultMenu(Landroid/view/Menu;)V

    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public onItemSelected(ILjava/lang/String;)V
    .registers 4
    .parameter "contactId"
    .parameter "address"

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/vlingo/client/contacts/ContactSelectActivity;->launchAction(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 296
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/ContactSelectActivity;->finish()V

    .line 298
    :cond_a
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_firstView:Z

    .line 208
    invoke-direct {p0, p1}, Lcom/vlingo/client/contacts/ContactSelectActivity;->handleIntent(Landroid/content/Intent;)V

    .line 209
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 347
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 348
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 338
    const-string v0, "AutoDialAttempted"

    iget-boolean v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_autoActionAttempted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 339
    const-string v0, "FirstView"

    iget-boolean v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_firstView:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 341
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/ContactSelectActivity;->clearEvents()V

    .line 275
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onStop()V

    .line 276
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasFocus"

    .prologue
    .line 502
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onWindowFocusChanged(Z)V

    .line 503
    if-nez p1, :cond_b

    .line 504
    iget-object v0, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_eventHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 506
    :cond_b
    return-void
.end method

.method protected startRecognition()V
    .registers 5

    .prologue
    .line 399
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/asr/RecognitionTarget;

    .line 400
    .local v1, target:Lcom/vlingo/client/core/asr/RecognitionTarget;
    invoke-interface {v1}, Lcom/vlingo/client/core/asr/RecognitionTarget;->getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;

    move-result-object v0

    .line 401
    .local v0, srContext:Lcom/vlingo/client/core/recognizer/SRContext;
    const-string v2, "Vlingo"

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldContext(Ljava/lang/String;)V

    .line 402
    const-string v2, "vp_dial"

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldID(Ljava/lang/String;)V

    .line 403
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/recognizer/SRContext;->setCursorPos(I)V

    .line 404
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/recognizer/SRContext;->setCurText(Ljava/lang/String;)V

    .line 405
    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_searchBox:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 407
    new-instance v2, Lcom/vlingo/client/contacts/ContactSelectActivity$5;

    invoke-direct {v2, p0}, Lcom/vlingo/client/contacts/ContactSelectActivity$5;-><init>(Lcom/vlingo/client/contacts/ContactSelectActivity;)V

    invoke-static {v2}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setResultDispatcher(Lcom/vlingo/client/asr/ResultDispatcher;)V

    .line 438
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->resetDialogs()V

    .line 439
    invoke-static {p0}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->initiateRecognition(Landroid/content/Context;)Z

    .line 440
    return-void
.end method

.method unpackSavedInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 351
    if-eqz p1, :cond_14

    .line 352
    const-string v0, "AutoDialAttempted"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_autoActionAttempted:Z

    .line 353
    const-string v0, "FirstView"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_firstView:Z

    .line 355
    :cond_14
    return-void
.end method

.method updateTopChoiceView(Lcom/vlingo/client/core/contacts/VlingoContact;)V
    .registers 16
    .parameter "c"

    .prologue
    const v13, 0x7f090259

    const/4 v10, 0x1

    const/4 v12, -0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 449
    iget-object v7, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_contactAdapter:Lcom/vlingo/client/contacts/ContactsListAdapter;

    invoke-virtual {v7}, Lcom/vlingo/client/contacts/ContactsListAdapter;->reset()V

    .line 451
    iget-object v7, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_topChoiceView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v7, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_topChoiceView:Landroid/view/View;

    const v11, 0x7f0f0073

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 454
    .local v3, noMatch:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_topChoiceView:Landroid/view/View;

    const v11, 0x7f0f000d

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 455
    .local v1, contactName:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_topChoiceView:Landroid/view/View;

    const v11, 0x7f0f000c

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/QuickContactBadge;

    .line 456
    .local v4, qcb:Landroid/widget/QuickContactBadge;
    iget-object v7, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_topChoiceView:Landroid/view/View;

    const v11, 0x7f0f006b

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 458
    .local v2, iv_star:Landroid/widget/ImageView;
    if-eqz p1, :cond_87

    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getId()I

    move-result v7

    if-eq v7, v12, :cond_87

    move v5, v10

    .line 460
    .local v5, showTopChoice:Z
    :goto_47
    if-nez v5, :cond_89

    move v7, v8

    :goto_4a
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    if-eqz v5, :cond_8b

    move v7, v8

    :goto_50
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    if-eqz v5, :cond_8d

    move v7, v8

    :goto_56
    invoke-virtual {v4, v7}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 464
    if-eqz v5, :cond_93

    .line 466
    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getNumDetails()I

    move-result v7

    if-lez v7, :cond_8f

    .line 469
    invoke-virtual {p1, v8}, Lcom/vlingo/client/core/contacts/VlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v0

    .line 470
    .local v0, cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/ContactDetail;->isStarred()Z

    move-result v7

    if-eqz v7, :cond_75

    .line 471
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    .end local v0           #cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    :cond_75
    :goto_75
    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getId()I

    move-result v7

    iget-object v9, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_actionType:Ljava/lang/String;

    invoke-virtual {p1, v8}, Lcom/vlingo/client/core/contacts/VlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v4, v9, v8, p0}, Lcom/vlingo/client/contacts/AndroidContactUtil;->applyContactImageToQuickContactBadge(ILandroid/widget/QuickContactBadge;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 498
    :goto_86
    return-void

    .end local v5           #showTopChoice:Z
    :cond_87
    move v5, v8

    .line 458
    goto :goto_47

    .restart local v5       #showTopChoice:Z
    :cond_89
    move v7, v9

    .line 460
    goto :goto_4a

    :cond_8b
    move v7, v9

    .line 461
    goto :goto_50

    :cond_8d
    move v7, v9

    .line 462
    goto :goto_56

    .line 475
    :cond_8f
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_75

    .line 484
    :cond_93
    if-eqz p1, :cond_a3

    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getId()I

    move-result v7

    if-ne v7, v12, :cond_a3

    .line 485
    invoke-virtual {p0, v13}, Lcom/vlingo/client/contacts/ContactSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 495
    .local v6, text:Ljava/lang/String;
    :goto_9f
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_86

    .line 488
    .end local v6           #text:Ljava/lang/String;
    :cond_a3
    iget-object v7, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_currentSearchText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_b9

    .line 489
    const v7, 0x7f09025c

    new-array v9, v10, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_currentSearchText:Ljava/lang/String;

    aput-object v10, v9, v8

    invoke-virtual {p0, v7, v9}, Lcom/vlingo/client/contacts/ContactSelectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #text:Ljava/lang/String;
    goto :goto_9f

    .line 493
    .end local v6           #text:Ljava/lang/String;
    :cond_b9
    invoke-virtual {p0, v13}, Lcom/vlingo/client/contacts/ContactSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #text:Ljava/lang/String;
    goto :goto_9f
.end method
