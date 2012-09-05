.class public Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;
.super Landroid/app/ListActivity;
.source "SetDefaultDestinationListActivity.java"


# static fields
.field private static final ADD_CONTACT_FROM_PHONE_BOOK:I = 0x0

.field private static final ADD_NEW_EMAIL_ADDRESS:I = 0x1

.field private static final ADD_NEW_PHONE_NUMBER:I = 0x2

.field public static final KEY_DEFAULT_DEST_COUNT:Ljava/lang/String; = "PREFS_COUNT"

.field public static final KEY_DEFAULT_DEST_RESULT:Ljava/lang/String; = "PREFS_RESULT"

.field public static final KEY_DEFAULT_DEST_SINGLE:Ljava/lang/String; = "PREFS_SINGLE"

.field private static final NEW_CONTACT:Ljava/lang/String; = "com.sec.android.app.mediabrowser.NEW_CONTACT"

.field private static final NEW_EMAIL:Ljava/lang/String; = "com.sec.android.app.mediabrowser.NEW_EMAIL"

.field private static final NEW_EMAIL_CONTACT:Ljava/lang/String; = "new_email_address"

.field private static final NEW_NUMBER_CONTACT:Ljava/lang/String; = "new_contact_number"

.field public static final PREFS_NAME:Ljava/lang/String; = "PREFS_DEFAULT_DESTI"

.field private static final REQUEST_NEW_CONTACT:I = 0x1f6

.field private static final REQUEST_NEW_EMAIL:I = 0x1f7

.field private static final REQUEST_ONLINE_ALBUM:I = 0x1f8

.field private static final REQUEST_PHONE_MULTI:I = 0x1f5

.field private static final REQUEST_RECENT_LOG:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "SET-DEFAULT-DESTINATION"


# instance fields
.field option_items:[Ljava/lang/String;

.field private optionsListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 29
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 142
    const-string v20, ""

    .line 143
    .local v20, result:Ljava/lang/String;
    const/4 v12, 0x0

    .line 144
    .local v12, count:I
    const-string v24, ""

    .line 145
    .local v24, singleDD:Ljava/lang/String;
    const-string v11, ""

    .line 149
    .local v11, contactStr:Ljava/lang/String;
    const/4 v3, -0x1

    move/from16 v0, p2

    if-eq v0, v3, :cond_27

    .line 151
    const-string v3, "SET-DEFAULT-DESTINATION"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult: bail due to resultCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_26
    return-void

    .line 155
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "isReplace"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;->resetDefaultDestSharedPrefs()V

    .line 160
    :cond_37
    packed-switch p1, :pswitch_data_21c

    .line 280
    :cond_3a
    :goto_3a
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v12, v2}, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;->saveresultDataToSharedPrefs(Ljava/lang/String;ILjava/lang/String;)V

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;->finish()V

    goto :goto_26

    .line 163
    :pswitch_47
    const-string v3, "SET-DEFAULT-DESTINATION"

    const-string v5, "You Got Result for REQUEST_RECENT_LOG"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v3, "contact_number"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 166
    .local v18, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v18, :cond_3a

    .line 168
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 169
    .local v19, rListSize:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_5d
    move/from16 v0, v19

    if-ge v14, v0, :cond_9b

    .line 170
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #contactStr:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 172
    .restart local v11       #contactStr:Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v11, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 173
    .local v15, indexStart:I
    const/4 v3, -0x1

    if-eq v15, v3, :cond_7f

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x2

    if-lt v3, v5, :cond_7f

    .line 175
    add-int/lit8 v3, v15, 0x1

    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 177
    :cond_7f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 169
    add-int/lit8 v14, v14, 0x1

    goto :goto_5d

    .line 180
    .end local v15           #indexStart:I
    :cond_9b
    move/from16 v12, v19

    .line 182
    const/4 v3, 0x0

    const-string v5, ";"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 183
    goto :goto_3a

    .line 186
    .end local v14           #i:I
    .end local v18           #numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19           #rListSize:I
    :pswitch_ad
    const-string v3, "SET-DEFAULT-DESTINATION"

    const-string v5, "You Got Result for REQUEST_PHONE_MULTI"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "result"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    .line 188
    .local v23, selectedContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v23, :cond_3a

    .line 192
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 193
    .local v9, ContactId:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v5, ";"

    invoke-virtual {v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v9, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 195
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 196
    .local v4, uriContact:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 197
    .local v13, cur:Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 198
    const-string v3, "display_name"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 199
    .local v17, nameColumn:I
    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 201
    .local v16, name:Ljava/lang/String;
    move-object/from16 v24, v16

    .line 206
    .end local v16           #name:Ljava/lang/String;
    .end local v17           #nameColumn:I
    :cond_f8
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 207
    .restart local v19       #rListSize:I
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_fd
    move/from16 v0, v19

    if-ge v14, v0, :cond_13b

    .line 208
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #contactStr:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 210
    .restart local v11       #contactStr:Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v11, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 211
    .restart local v15       #indexStart:I
    const/4 v3, -0x1

    if-eq v15, v3, :cond_11f

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x2

    if-lt v3, v5, :cond_11f

    .line 213
    add-int/lit8 v3, v15, 0x1

    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 215
    :cond_11f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 207
    add-int/lit8 v14, v14, 0x1

    goto :goto_fd

    .line 218
    .end local v15           #indexStart:I
    :cond_13b
    move/from16 v12, v19

    .line 223
    goto/16 :goto_3a

    .line 234
    .end local v4           #uriContact:Landroid/net/Uri;
    .end local v9           #ContactId:Ljava/lang/String;
    .end local v13           #cur:Landroid/database/Cursor;
    .end local v14           #i:I
    .end local v19           #rListSize:I
    .end local v23           #selectedContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_13f
    const-string v3, "SET-DEFAULT-DESTINATION"

    const-string v5, "You Got Result for REQUEST_NEW_EMAIL"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new_email_address"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 236
    const/4 v12, 0x1

    .line 238
    const/4 v3, 0x0

    const-string v5, ";"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 239
    goto/16 :goto_3a

    .line 241
    :pswitch_173
    const-string v3, "SET-DEFAULT-DESTINATION"

    const-string v5, "You Got Result for REQUEST_NEW_CONTACT"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new_contact_number"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 243
    const/4 v12, 0x1

    .line 245
    const/4 v3, 0x0

    const-string v5, ";"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 246
    goto/16 :goto_3a

    .line 249
    :pswitch_1a7
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "emails"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21

    .line 252
    .local v21, selectedAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v21, :cond_1fe

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1fe

    .line 255
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 256
    .restart local v19       #rListSize:I
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_1be
    move/from16 v0, v19

    if-ge v14, v0, :cond_1fc

    .line 257
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 259
    .local v10, albumtStr:Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 260
    .restart local v15       #indexStart:I
    const/4 v3, -0x1

    if-eq v15, v3, :cond_1e0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x2

    if-lt v3, v5, :cond_1e0

    .line 262
    add-int/lit8 v3, v15, 0x1

    invoke-virtual {v10, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 264
    :cond_1e0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 256
    add-int/lit8 v14, v14, 0x1

    goto :goto_1be

    .line 267
    .end local v10           #albumtStr:Ljava/lang/String;
    .end local v15           #indexStart:I
    :cond_1fc
    move/from16 v12, v19

    .line 270
    .end local v14           #i:I
    .end local v19           #rListSize:I
    :cond_1fe
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "ablums"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v22

    .line 273
    .local v22, selectedAlbumsName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v22, :cond_3a

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3a

    .line 276
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #singleDD:Ljava/lang/String;
    check-cast v24, Ljava/lang/String;

    .restart local v24       #singleDD:Ljava/lang/String;
    goto/16 :goto_3a

    .line 160
    nop

    :pswitch_data_21c
    .packed-switch 0x1f4
        :pswitch_47
        :pswitch_ad
        :pswitch_173
        :pswitch_13f
        :pswitch_1a7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, setDefaultDestinationTitle:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    const/high16 v2, 0x7f05

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;->option_items:[Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;->optionsListView:Landroid/widget/ListView;

    .line 76
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;->option_items:[Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v2, p0, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;->optionsListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 79
    iget-object v2, p0, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;->optionsListView:Landroid/widget/ListView;

    new-instance v3, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity$1;

    invoke-direct {v3, p0}, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity$1;-><init>(Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 137
    const-string v2, "SET-DEFAULT-DESTINATION"

    const-string v3, "Exiting from the class"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method public resetDefaultDestSharedPrefs()V
    .registers 4

    .prologue
    .line 286
    const-string v1, "SET-DEFAULT-DESTINATION"

    const-string v2, "resetDefaultDestSharedPrefs"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p0}, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 289
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "PREFS_COUNT"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    const-string v1, "PREFS_RESULT"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 291
    const-string v1, "PREFS_SINGLE"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 292
    return-void
.end method

.method public saveresultDataToSharedPrefs(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .parameter "result"
    .parameter "count"
    .parameter "singleDD"

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 300
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "PREFS_COUNT"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 301
    .local v1, defaultDestCount:I
    add-int/2addr p2, v1

    .line 302
    const-string v3, "PREFS_RESULT"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, defaultDestCountResult:Ljava/lang/String;
    if-eqz v2, :cond_25

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 307
    :cond_25
    const-string v3, "PREFS_COUNT"

    invoke-static {v0, v3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 308
    const-string v3, "PREFS_RESULT"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 309
    const/4 v3, 0x1

    if-ne p2, v3, :cond_38

    .line 311
    const-string v3, "PREFS_SINGLE"

    invoke-static {v0, v3, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 319
    :goto_37
    return-void

    .line 315
    :cond_38
    const-string v3, "PREFS_SINGLE"

    const-string v4, ""

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_37
.end method
