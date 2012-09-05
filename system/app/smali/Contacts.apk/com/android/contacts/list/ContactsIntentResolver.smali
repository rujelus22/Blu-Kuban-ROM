.class public Lcom/android/contacts/list/ContactsIntentResolver;
.super Ljava/lang/Object;
.source "ContactsIntentResolver.java"


# instance fields
.field private final mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    .line 55
    return-void
.end method


# virtual methods
.method public resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;
    .registers 12
    .parameter

    .prologue
    const/16 v9, 0x64

    const/16 v8, 0x5a

    const/16 v7, 0xf

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 58
    new-instance v1, Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {v1}, Lcom/android/contacts/list/ContactsRequest;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v2, "ContactsIntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called with action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v2, "com.android.contacts.action.LIST_DEFAULT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 65
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 309
    :cond_36
    :goto_36
    const-string v0, "com.android.contacts.extra.TITLE_EXTRA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_41

    .line 311
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActivityTitle(Ljava/lang/CharSequence;)V

    .line 313
    :cond_41
    return-object v1

    .line 66
    :cond_42
    const-string v2, "com.android.contacts.action.LIST_ALL_CONTACTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 67
    invoke-virtual {v1, v7}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_36

    .line 68
    :cond_4e
    const-string v2, "com.android.contacts.action.LIST_CONTACTS_WITH_PHONES"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 69
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_36

    .line 70
    :cond_5c
    const-string v2, "com.android.contacts.action.LIST_STARRED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 71
    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_36

    .line 72
    :cond_6a
    const-string v2, "com.android.contacts.action.LIST_FREQUENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 73
    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_36

    .line 74
    :cond_78
    const-string v2, "com.android.contacts.action.LIST_STREQUENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 75
    const/16 v0, 0x32

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_36

    .line 76
    :cond_86
    const-string v2, "com.android.contacts.action.LIST_GROUP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 77
    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 81
    const-string v0, "com.android.contacts.extra.GROUP"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a3

    .line 83
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setGroupName(Ljava/lang/String;)V

    goto :goto_36

    .line 85
    :cond_a3
    const-string v0, "ContactsIntentResolver"

    const-string v2, "Intent missing a required extra: com.android.contacts.extra.GROUP"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setValid(Z)V

    goto :goto_36

    .line 88
    :cond_ae
    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14a

    .line 89
    iget-object v0, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v2, "vnd.android.cursor.dir/contact"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 91
    const/16 v0, 0x3c

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 115
    :cond_c9
    :goto_c9
    const-string v0, "phone-need-call"

    const-string v2, "additional"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 117
    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_36

    .line 92
    :cond_de
    const-string v2, "vnd.android.cursor.dir/person"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 93
    const/16 v0, 0x3c

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 94
    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto :goto_c9

    .line 95
    :cond_ef
    const-string v2, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 96
    invoke-virtual {v1, v8}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_c9

    .line 97
    :cond_fb
    const-string v2, "vnd.android.cursor.dir/phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 98
    invoke-virtual {v1, v8}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 99
    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto :goto_c9

    .line 100
    :cond_10a
    const-string v2, "vnd.android.cursor.dir/postal-address_v2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_116

    .line 101
    invoke-virtual {v1, v9}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_c9

    .line 102
    :cond_116
    const-string v2, "vnd.android.cursor.dir/postal-address"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    .line 103
    invoke-virtual {v1, v9}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 104
    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto :goto_c9

    .line 105
    :cond_125
    const-string v2, "vnd.android.cursor.dir/email_v2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_133

    .line 106
    const/16 v0, 0x69

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_c9

    .line 107
    :cond_133
    const-string v2, "text/x-vcard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 109
    const/16 v0, 0xfa

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 110
    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 111
    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 112
    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto :goto_c9

    .line 120
    :cond_14a
    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17f

    .line 121
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 122
    const-string v2, "alias.DialShortcut"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_169

    .line 123
    const/16 v0, 0x78

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_36

    .line 124
    :cond_169
    const-string v2, "alias.MessageShortcut"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_178

    .line 125
    const/16 v0, 0x82

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_36

    .line 127
    :cond_178
    const/16 v0, 0x6e

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_36

    .line 129
    :cond_17f
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1eb

    .line 130
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 131
    const-string v2, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19f

    .line 132
    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 133
    const/16 v0, 0x46

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_36

    .line 134
    :cond_19f
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ac

    .line 135
    invoke-virtual {v1, v8}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_36

    .line 136
    :cond_1ac
    const-string v2, "vnd.android.cursor.item/phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bc

    .line 137
    invoke-virtual {v1, v8}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 138
    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_36

    .line 139
    :cond_1bc
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c9

    .line 140
    invoke-virtual {v1, v9}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_36

    .line 141
    :cond_1c9
    const-string v2, "vnd.android.cursor.item/postal-address"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d9

    .line 142
    invoke-virtual {v1, v9}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 143
    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_36

    .line 144
    :cond_1d9
    const-string v2, "vnd.android.cursor.item/person"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 145
    const/16 v0, 0x46

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 146
    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_36

    .line 148
    :cond_1eb
    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20d

    .line 149
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 150
    const-string v2, "hidecreatelabel"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_209

    .line 151
    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setHideCreateLabel(Z)V

    .line 155
    :goto_202
    const/16 v0, 0x50

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_36

    .line 153
    :cond_209
    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setHideCreateLabel(Z)V

    goto :goto_202

    .line 156
    :cond_20d
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_250

    .line 158
    const-string v0, "call"

    const-string v2, "action_msg"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_242

    .line 159
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 161
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 163
    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->setRedirectIntent(Landroid/content/Intent;)V

    goto/16 :goto_36

    .line 166
    :cond_242
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_36

    .line 169
    :cond_250
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28a

    .line 170
    iget-object v0, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v2, "vnd.android.cursor.dir/contact"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26e

    const-string v2, "vnd.android.cursor.dir/person"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_273

    .line 173
    :cond_26e
    invoke-virtual {v1, v7}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_36

    .line 175
    :cond_273
    const/16 v0, 0x8c

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 176
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    .line 177
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_36

    .line 180
    :cond_28a
    const-string v2, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b8

    .line 184
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 185
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_2b3

    .line 187
    const-string v2, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    .line 189
    const-string v2, "originalRequest"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactsRequest;

    .line 191
    if-eqz v0, :cond_2b3

    .line 192
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->copyFrom(Lcom/android/contacts/list/ContactsRequest;)V

    .line 196
    :cond_2b3
    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_36

    .line 201
    :cond_2b8
    const-string v2, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f6

    .line 202
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 204
    const-string v2, "call"

    const-string v3, "action_msg"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e3

    .line 205
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    const-class v4, Lcom/android/contacts/CallContactActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 207
    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->setRedirectIntent(Landroid/content/Intent;)V

    goto/16 :goto_36

    .line 209
    :cond_2e3
    const/16 v2, 0x8c

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 210
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    .line 211
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_36

    .line 214
    :cond_2f6
    const-string v2, "android.provider.Contacts.SEARCH_SUGGESTION_DIAL_NUMBER_CLICKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30e

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setRedirectIntent(Landroid/content/Intent;)V

    goto/16 :goto_36

    .line 216
    :cond_30e
    const-string v2, "android.provider.Contacts.SEARCH_SUGGESTION_CREATE_CONTACT_CLICKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_331

    .line 218
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 219
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 220
    const-string v3, "phone"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->setRedirectIntent(Landroid/content/Intent;)V

    goto/16 :goto_36

    .line 225
    :cond_331
    const-string v2, "intent.action.INTERACTION_TAB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_349

    const-string v2, "intent.action.INTERACTION_LIST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_349

    const-string v2, "intent.action.INTERACTION_TOPMENU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45c

    .line 229
    :cond_349
    const-string v0, "email-phone-multi"

    const-string v2, "additional"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_364

    .line 231
    const/16 v0, 0x96

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 232
    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 233
    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto/16 :goto_36

    .line 234
    :cond_364
    const-string v0, "email-multi"

    const-string v2, "additional"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37f

    .line 236
    const/16 v0, 0xa0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 237
    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 238
    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto/16 :goto_36

    .line 239
    :cond_37f
    const-string v0, "phone-multi"

    const-string v2, "additional"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39a

    .line 241
    const/16 v0, 0xaa

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 242
    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 243
    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto/16 :goto_36

    .line 244
    :cond_39a
    const-string v0, "vcard-multi"

    const-string v2, "additional"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b8

    .line 246
    const/16 v0, 0xf0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 247
    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 248
    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 249
    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_36

    .line 250
    :cond_3b8
    const-string v0, "phone"

    const-string v2, "additional"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d3

    .line 252
    const/16 v0, 0xaa

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 253
    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 254
    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto/16 :goto_36

    .line 255
    :cond_3d3
    const-string v0, "email-phone"

    const-string v2, "additional"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f3

    .line 257
    const/16 v0, 0x96

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 258
    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 259
    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 260
    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_36

    .line 261
    :cond_3f3
    const-string v0, "namecard"

    const-string v2, "additional"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_411

    .line 263
    invoke-virtual {v1, v7}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 264
    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 265
    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 266
    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_36

    .line 267
    :cond_411
    const-string v0, "group-phone-email"

    const-string v2, "additional"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_431

    .line 269
    const/16 v0, 0x96

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 270
    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 271
    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 272
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_36

    .line 273
    :cond_431
    const-string v0, "group-email"

    const-string v2, "additional"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44f

    .line 275
    const/16 v0, 0xa0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 276
    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 277
    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 278
    invoke-virtual {v1, v7}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_36

    .line 280
    :cond_44f
    const/16 v0, 0xb4

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 281
    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 282
    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto/16 :goto_36

    .line 284
    :cond_45c
    const-string v2, "intent.action.INTERACTION_LIST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46b

    .line 285
    const/16 v0, 0x104

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_36

    .line 286
    :cond_46b
    const-string v2, "intent.action.EXPORT_SIM_CONTACT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47a

    .line 287
    const/16 v0, 0x12c

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_36

    .line 288
    :cond_47a
    const-string v2, "intent.action.IMPORT_SIM_CONTACT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49b

    .line 289
    const/16 v0, 0x136

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 290
    const-string v0, "account_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setAccountName(Ljava/lang/String;)V

    .line 291
    const-string v0, "account_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setAccountType(Ljava/lang/String;)V

    goto/16 :goto_36

    .line 292
    :cond_49b
    const-string v2, "android.intent.action.SIM_IMPORT_START"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b4

    .line 294
    const/16 v0, 0x136

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 295
    const-string v0, "vnd.sec.contact.phone"

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setAccountName(Ljava/lang/String;)V

    .line 296
    const-string v0, "vnd.sec.contact.phone"

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setAccountType(Ljava/lang/String;)V

    goto/16 :goto_36

    .line 297
    :cond_4b4
    const-string v2, "com.sec.android.app.contacts.action.CONTACT_SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c3

    .line 298
    const/16 v0, 0x14a

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_36

    .line 299
    :cond_4c3
    const-string v2, "com.sec.android.app.contacts.action.MULTI_DELETE_CONTACTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d2

    .line 300
    const/16 v0, 0x154

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_36

    .line 301
    :cond_4d2
    const-string v2, "com.sec.android.app.contacts.action.FAVORITE_ADD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e1

    .line 302
    const/16 v0, 0x15e

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_36

    .line 303
    :cond_4e1
    const-string v2, "com.sec.android.app.contacts.action.FAVORITE_DELETE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 304
    const/16 v0, 0x15f

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_36
.end method
