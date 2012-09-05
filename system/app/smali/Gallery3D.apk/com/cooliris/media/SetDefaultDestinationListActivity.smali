.class public Lcom/cooliris/media/SetDefaultDestinationListActivity;
.super Landroid/app/ListActivity;
.source "SetDefaultDestinationListActivity.java"


# instance fields
.field option_items:[Ljava/lang/String;

.field private optionsListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 16
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 161
    const-string v5, ""

    .line 162
    .local v5, result:Ljava/lang/String;
    const/4 v1, 0x0

    .line 163
    .local v1, count:I
    const-string v7, ""

    .line 165
    .local v7, singleDD:Ljava/lang/String;
    if-eq p2, v10, :cond_22

    .line 166
    const-string v8, "SET-DEFAULT-DESTINATION"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onActivityResult: bail due to resultCode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_21
    return-void

    .line 169
    :cond_22
    packed-switch p1, :pswitch_data_172

    .line 280
    :goto_25
    invoke-virtual {p0, v5, v1, v7}, Lcom/cooliris/media/SetDefaultDestinationListActivity;->saveresultDataToSharedPrefs(Ljava/lang/String;ILjava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/cooliris/media/SetDefaultDestinationListActivity;->finish()V

    goto :goto_21

    .line 192
    :pswitch_2c
    const-string v8, "SET-DEFAULT-DESTINATION"

    const-string v9, "You Got Result for REQUEST_PHONE_MULTI"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "result"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 194
    .local v6, selectedContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_9e

    .line 195
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 196
    .local v4, rListSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_44
    if-ge v2, v4, :cond_7b

    .line 197
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    .local v0, contactStr:Ljava/lang/String;
    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 200
    .local v3, indexStart:I
    if-eq v3, v10, :cond_61

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_61

    .line 201
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    :cond_61
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 207
    .end local v0           #contactStr:Ljava/lang/String;
    .end local v3           #indexStart:I
    :cond_7b
    move v1, v4

    .line 208
    const-string v8, "SET-DEFAULT-DESTINATION"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Slected Contacts Data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local v2           #i:I
    .end local v4           #rListSize:I
    :cond_9e
    const-string v7, ""

    .line 219
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "contact_name"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 220
    const-string v8, "SetDefaultDestinationListActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Name card result is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 226
    .end local v6           #selectedContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_c4
    const-string v8, "SET-DEFAULT-DESTINATION"

    const-string v9, "You Got Result for REQUEST_NEW_EMAIL"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new_email_address"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 228
    const-string v8, "new_email_address"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_119

    .line 229
    const/4 v1, 0x0

    .line 232
    :goto_f3
    const-string v8, "SET-DEFAULT-DESTINATION"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Data given in the to field is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v7, ""

    .line 235
    const-string v8, ";"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 236
    goto/16 :goto_25

    .line 231
    :cond_119
    const/4 v1, 0x1

    goto :goto_f3

    .line 238
    :pswitch_11b
    const-string v8, "SET-DEFAULT-DESTINATION"

    const-string v9, "You Got Result for REQUEST_NEW_CONTACT"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new_contact_number"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 240
    const-string v8, "new_contact_number"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_170

    .line 241
    const/4 v1, 0x0

    .line 245
    :goto_14a
    const-string v8, "SET-DEFAULT-DESTINATION"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Data given in the to field is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v7, ""

    .line 248
    const-string v8, ";"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_25

    .line 243
    :cond_170
    const/4 v1, 0x1

    goto :goto_14a

    .line 169
    :pswitch_data_172
    .packed-switch 0x1f5
        :pswitch_2c
        :pswitch_11b
        :pswitch_c4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/cooliris/media/SetDefaultDestinationListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/cooliris/media/SetDefaultDestinationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, setDefaultDestinationTitle:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/cooliris/media/SetDefaultDestinationListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    const v2, 0x7f050002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cooliris/media/SetDefaultDestinationListActivity;->option_items:[Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/cooliris/media/SetDefaultDestinationListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/cooliris/media/SetDefaultDestinationListActivity;->optionsListView:Landroid/widget/ListView;

    .line 85
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/cooliris/media/SetDefaultDestinationListActivity;->option_items:[Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/cooliris/media/SetDefaultDestinationListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    iget-object v2, p0, Lcom/cooliris/media/SetDefaultDestinationListActivity;->optionsListView:Landroid/widget/ListView;

    new-instance v3, Lcom/cooliris/media/SetDefaultDestinationListActivity$1;

    invoke-direct {v3, p0}, Lcom/cooliris/media/SetDefaultDestinationListActivity$1;-><init>(Lcom/cooliris/media/SetDefaultDestinationListActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 157
    const-string v2, "SET-DEFAULT-DESTINATION"

    const-string v3, "Exiting from the class"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public saveresultDataToSharedPrefs(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .parameter "result"
    .parameter "count"
    .parameter "singleDD"

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/cooliris/media/SetDefaultDestinationListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 308
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "PREFS_COUNT"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 309
    const-string v1, "PREFS_RESULT"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 310
    const/4 v1, 0x1

    if-ne p2, v1, :cond_17

    .line 311
    const-string v1, "PREFS_SINGLE"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 317
    :goto_16
    return-void

    .line 313
    :cond_17
    const-string v1, "PREFS_SINGLE"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_16
.end method
