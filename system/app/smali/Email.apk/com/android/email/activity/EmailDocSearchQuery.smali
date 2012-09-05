.class public Lcom/android/email/activity/EmailDocSearchQuery;
.super Landroid/app/Activity;
.source "EmailDocSearchQuery.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mController:Lcom/android/email/Controller;

.field private mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

.field mHandler:Landroid/os/Handler;

.field private mLabelText:Landroid/widget/TextView;

.field private mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field private mQuery:Landroid/widget/EditText;

.field private mSearchButton:Landroid/widget/Button;

.field private mSearchString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/android/email/activity/EmailDocSearchQuery;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/EmailDocSearchQuery;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mHandler:Landroid/os/Handler;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mSearchString:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/EmailDocSearchQuery;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mQuery:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/email/EmailSearchAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/email/Controller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/email/activity/EmailDocSearchQuery;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private readArgumentsFromIntent()V
    .registers 10

    .prologue
    const-wide/16 v7, -0x1

    .line 257
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.email.AccountId"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 258
    .local v0, accountId:J
    cmp-long v5, v0, v7

    if-nez v5, :cond_4e

    .line 259
    sget-object v5, Lcom/android/email/activity/EmailDocSearchQuery;->TAG:Ljava/lang/String;

    const-string v6, "Must pass com.android.email.AccountId of type long in extras"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->finish()V

    .line 264
    :goto_1a
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.email.MailboxId"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 265
    .local v2, mailboxId:J
    cmp-long v5, v2, v7

    if-gtz v5, :cond_55

    .line 276
    sget-object v5, Lcom/android/email/activity/EmailDocSearchQuery;->TAG:Ljava/lang/String;

    const-string v6, "Must pass com.android.email.AccountId of type long in extras"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const v5, 0x7f080481

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 278
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->finish()V

    .line 282
    :goto_3d
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.email.SearchString"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, searchString:Ljava/lang/String;
    if-nez v4, :cond_5c

    .line 284
    const-string v5, ""

    iput-object v5, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mSearchString:Ljava/lang/String;

    .line 290
    :goto_4d
    return-void

    .line 262
    .end local v2           #mailboxId:J
    .end local v4           #searchString:Ljava/lang/String;
    :cond_4e
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    goto :goto_1a

    .line 280
    .restart local v2       #mailboxId:J
    :cond_55
    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    goto :goto_3d

    .line 286
    .restart local v4       #searchString:Ljava/lang/String;
    :cond_5c
    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 287
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 288
    :cond_6f
    iput-object v4, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mSearchString:Ljava/lang/String;

    goto :goto_4d
.end method

.method public static startActivity(Landroid/app/Activity;JJI)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    const-class v1, Lcom/android/email/activity/EmailDocSearchQuery;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 152
    const-string v1, "com.android.email.AccountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 153
    const-string v1, "com.android.email.MailboxId"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0, v0, p5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 155
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;JJLjava/lang/String;I)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    const-class v1, Lcom/android/email/activity/EmailDocSearchQuery;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 161
    const-string v1, "com.android.email.AccountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 162
    const-string v1, "com.android.email.MailboxId"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 163
    const-string v1, "com.android.email.SearchString"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v0, p6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 165
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .parameter "editText"

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mQuery:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, queryString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 170
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mSearchButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    :goto_16
    return-void

    .line 172
    :cond_17
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mSearchButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_16
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 178
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .registers 6
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    const/4 v1, 0x1

    .line 136
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 138
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 139
    const v0, 0x103012e

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 144
    :goto_10
    return-void

    .line 141
    :cond_11
    const v0, 0x1030132

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_10
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f080392

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 186
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 187
    const v1, 0x7f040064

    invoke-virtual {p0, v1}, Lcom/android/email/activity/EmailDocSearchQuery;->setContentView(I)V

    .line 188
    invoke-direct {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->readArgumentsFromIntent()V

    .line 190
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v1, :cond_63

    .line 191
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/EmailDocSearchQuery;->setTitle(Ljava/lang/CharSequence;)V

    .line 204
    :goto_28
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mController:Lcom/android/email/Controller;

    .line 205
    new-instance v1, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v1, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    .line 206
    new-instance v1, Lcom/android/email/EmailSearchAdapter;

    invoke-direct {v1, p0}, Lcom/android/email/EmailSearchAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    .line 207
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    iget-object v2, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v2}, Lcom/android/email/EmailSearchAdapter;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 209
    const v1, 0x7f10012f

    invoke-virtual {p0, v1}, Lcom/android/email/activity/EmailDocSearchQuery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mSearchButton:Landroid/widget/Button;

    .line 211
    const v1, 0x7f10012d

    invoke-virtual {p0, v1}, Lcom/android/email/activity/EmailDocSearchQuery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mLabelText:Landroid/widget/TextView;

    .line 213
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mSearchButton:Landroid/widget/Button;

    if-nez v1, :cond_a5

    .line 214
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->finish()V

    .line 254
    :goto_62
    return-void

    .line 193
    :cond_63
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_7d

    .line 194
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/EmailDocSearchQuery;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_28

    .line 196
    :cond_7d
    sget-object v1, Lcom/android/email/activity/EmailDocSearchQuery;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not restoreAccountWithId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.email.AccountId"

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->finish()V

    goto :goto_28

    .line 218
    :cond_a5
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mSearchButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 219
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mSearchButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;-><init>(Lcom/android/email/activity/EmailDocSearchQuery;Lcom/android/email/activity/EmailDocSearchQuery$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v1, 0x7f100130

    invoke-virtual {p0, v1}, Lcom/android/email/activity/EmailDocSearchQuery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 223
    .local v0, cancelButton:Landroid/widget/Button;
    if-nez v0, :cond_c4

    .line 224
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->finish()V

    goto :goto_62

    .line 228
    :cond_c4
    new-instance v1, Lcom/android/email/activity/EmailDocSearchQuery$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/EmailDocSearchQuery$1;-><init>(Lcom/android/email/activity/EmailDocSearchQuery;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    const v1, 0x7f10012e

    invoke-virtual {p0, v1}, Lcom/android/email/activity/EmailDocSearchQuery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mQuery:Landroid/widget/EditText;

    .line 237
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mQuery:Landroid/widget/EditText;

    if-nez v1, :cond_df

    .line 238
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->finish()V

    goto :goto_62

    .line 242
    :cond_df
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mQuery:Landroid/widget/EditText;

    const v2, 0x7f080393

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 243
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mQuery:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 244
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mQuery:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mSearchString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 247
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v1

    if-eqz v1, :cond_101

    .line 248
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mLabelText:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_62

    .line 250
    :cond_101
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mLabelText:Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_62
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 182
    return-void
.end method
