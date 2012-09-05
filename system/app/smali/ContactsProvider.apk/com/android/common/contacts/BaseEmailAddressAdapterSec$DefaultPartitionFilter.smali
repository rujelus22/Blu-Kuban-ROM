.class final Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;
.super Landroid/widget/Filter;
.source "BaseEmailAddressAdapterSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/contacts/BaseEmailAddressAdapterSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultPartitionFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "resultValue"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    check-cast p1, Landroid/database/Cursor;

    .end local p1
    #calls: Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$500(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 21
    .parameter "constraint"

    .prologue
    .line 215
    const/4 v11, 0x0

    .line 216
    .local v11, directoryCursor:Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 218
    .local v17, recentCursor:Landroid/database/Cursor;
    if-eqz p1, :cond_16

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_16

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mInputText:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$002(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    #getter for: Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mDirectoriesLoaded:Z
    invoke-static {v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$100(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    iget-object v1, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryListQuery;->URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryListQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    const/4 v3, 0x1

    #setter for: Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mDirectoriesLoaded:Z
    invoke-static {v1, v3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$102(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;Z)Z

    .line 226
    :cond_39
    const/4 v15, 0x0

    .line 227
    .local v15, mergeResultCursor:Landroid/database/MergeCursor;
    new-instance v18, Landroid/widget/Filter$FilterResults;

    invoke-direct/range {v18 .. v18}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 228
    .local v18, results:Landroid/widget/Filter$FilterResults;
    const/4 v10, 0x0

    .line 229
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 230
    .local v14, groupCursor:Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 231
    .local v16, rICursor1:Landroid/database/Cursor;
    if-eqz p1, :cond_10e

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10e

    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 234
    .local v9, builder:Landroid/net/Uri$Builder;
    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-eqz v1, :cond_126

    .line 235
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 243
    :goto_5f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    #getter for: Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$300(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_87

    .line 244
    const-string v1, "name_for_primary_account"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    #getter for: Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;
    invoke-static {v3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$300(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 245
    const-string v1, "type_for_primary_account"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    #getter for: Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;
    invoke-static {v3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$300(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 247
    :cond_87
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 248
    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-eqz v1, :cond_99

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getGroupNameCursor(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v14

    .line 250
    :cond_99
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    iget-object v1, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 258
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    #getter for: Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->Acc_Id:Ljava/lang/Long;
    invoke-static {v3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$400(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v6, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->RIemailAddress(JLjava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v16

    .line 262
    if-nez p1, :cond_148

    :try_start_c0
    const-string v13, ""

    .line 264
    .local v13, filter:Ljava/lang/String;
    :goto_c2
    const-string v1, "content://com.android.email.provider/emailaddresscache/filter"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v13}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 265
    .local v4, emailCacheUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    iget-object v3, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "accountName as display_name"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string v6, "accountAddress as data1"

    aput-object v6, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "usageCount DESC, accountName"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_ea} :catch_14e

    move-result-object v17

    .line 270
    .end local v4           #emailCacheUri:Landroid/net/Uri;
    .end local v13           #filter:Ljava/lang/String;
    :goto_eb
    if-eqz v16, :cond_167

    if-eqz v17, :cond_167

    .line 271
    if-eqz v14, :cond_f5

    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-nez v1, :cond_152

    .line 272
    :cond_f5
    new-instance v15, Landroid/database/MergeCursor;

    .end local v15           #mergeResultCursor:Landroid/database/MergeCursor;
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v10, v1, v3

    const/4 v3, 0x1

    aput-object v16, v1, v3

    const/4 v3, 0x2

    aput-object v17, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 280
    .restart local v15       #mergeResultCursor:Landroid/database/MergeCursor;
    :goto_106
    invoke-virtual {v15}, Landroid/database/MergeCursor;->getCount()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 324
    .end local v2           #uri:Landroid/net/Uri;
    .end local v9           #builder:Landroid/net/Uri$Builder;
    :cond_10e
    :goto_10e
    if-eqz v14, :cond_114

    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-nez v1, :cond_118

    :cond_114
    if-nez v16, :cond_118

    if-eqz v17, :cond_1f2

    .line 325
    :cond_118
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v11, v1, v3

    const/4 v3, 0x1

    aput-object v15, v1, v3

    move-object/from16 v0, v18

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 330
    :goto_125
    return-object v18

    .line 238
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v9       #builder:Landroid/net/Uri$Builder;
    :cond_126
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "limit"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    #getter for: Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mPreferredMaxResultCount:I
    invoke-static {v5}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$200(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    goto/16 :goto_5f

    .line 262
    :cond_148
    :try_start_148
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_14b} :catch_14e

    move-result-object v13

    goto/16 :goto_c2

    .line 266
    :catch_14e
    move-exception v12

    .line 267
    .local v12, e:Ljava/lang/Exception;
    const/16 v17, 0x0

    goto :goto_eb

    .line 276
    .end local v12           #e:Ljava/lang/Exception;
    :cond_152
    new-instance v15, Landroid/database/MergeCursor;

    .end local v15           #mergeResultCursor:Landroid/database/MergeCursor;
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v14, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    const/4 v3, 0x2

    aput-object v16, v1, v3

    const/4 v3, 0x3

    aput-object v17, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .restart local v15       #mergeResultCursor:Landroid/database/MergeCursor;
    goto :goto_106

    .line 281
    :cond_167
    if-eqz v16, :cond_198

    .line 282
    if-eqz v14, :cond_16f

    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-nez v1, :cond_186

    .line 283
    :cond_16f
    new-instance v15, Landroid/database/MergeCursor;

    .end local v15           #mergeResultCursor:Landroid/database/MergeCursor;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v10, v1, v3

    const/4 v3, 0x1

    aput-object v16, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 291
    .restart local v15       #mergeResultCursor:Landroid/database/MergeCursor;
    :goto_17d
    invoke-virtual {v15}, Landroid/database/MergeCursor;->getCount()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_10e

    .line 287
    :cond_186
    new-instance v15, Landroid/database/MergeCursor;

    .end local v15           #mergeResultCursor:Landroid/database/MergeCursor;
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v14, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    const/4 v3, 0x2

    aput-object v16, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .restart local v15       #mergeResultCursor:Landroid/database/MergeCursor;
    goto :goto_17d

    .line 292
    :cond_198
    if-eqz v17, :cond_1ca

    .line 293
    if-eqz v14, :cond_1a0

    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-nez v1, :cond_1b8

    .line 294
    :cond_1a0
    new-instance v15, Landroid/database/MergeCursor;

    .end local v15           #mergeResultCursor:Landroid/database/MergeCursor;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v10, v1, v3

    const/4 v3, 0x1

    aput-object v17, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 302
    .restart local v15       #mergeResultCursor:Landroid/database/MergeCursor;
    :goto_1ae
    invoke-virtual {v15}, Landroid/database/MergeCursor;->getCount()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_10e

    .line 298
    :cond_1b8
    new-instance v15, Landroid/database/MergeCursor;

    .end local v15           #mergeResultCursor:Landroid/database/MergeCursor;
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v14, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    const/4 v3, 0x2

    aput-object v17, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .restart local v15       #mergeResultCursor:Landroid/database/MergeCursor;
    goto :goto_1ae

    .line 304
    :cond_1ca
    if-eqz v14, :cond_1d0

    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-nez v1, :cond_1da

    .line 305
    :cond_1d0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_10e

    .line 307
    :cond_1da
    new-instance v15, Landroid/database/MergeCursor;

    .end local v15           #mergeResultCursor:Landroid/database/MergeCursor;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v14, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 310
    .restart local v15       #mergeResultCursor:Landroid/database/MergeCursor;
    invoke-virtual {v15}, Landroid/database/MergeCursor;->getCount()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_10e

    .line 327
    .end local v2           #uri:Landroid/net/Uri;
    .end local v9           #builder:Landroid/net/Uri$Builder;
    :cond_1f2
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v11, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    move-object/from16 v0, v18

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto/16 :goto_125
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 7
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 335
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v1, :cond_16

    .line 336
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, [Landroid/database/Cursor;

    move-object v0, v1

    check-cast v0, [Landroid/database/Cursor;

    .line 337
    .local v0, cursors:[Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->onDirectoryLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;)V

    .line 339
    .end local v0           #cursors:[Landroid/database/Cursor;
    :cond_16
    iget-object v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    invoke-virtual {v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getCount()I

    move-result v1

    iput v1, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 340
    return-void
.end method
