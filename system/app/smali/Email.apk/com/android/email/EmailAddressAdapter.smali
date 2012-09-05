.class public Lcom/android/email/EmailAddressAdapter;
.super Lcom/android/common/contacts/BaseEmailAddressAdapterSec;
.source "EmailAddressAdapter.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 58
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;-><init>(Landroid/content/Context;I)V

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/EmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 60
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .parameter "view"
    .parameter "directoryType"
    .parameter "directoryName"
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "inputText"
    .parameter "pictureData"

    .prologue
    .line 77
    const/4 v8, 0x0

    .line 78
    .local v8, pictureDataByte:[B
    if-eqz p7, :cond_e

    .line 79
    const-string v1, "gal_search_show_more"

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 80
    const/4 v8, 0x0

    :cond_e
    :goto_e
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    .line 90
    invoke-virtual/range {v1 .. v8}, Lcom/android/email/EmailAddressAdapter;->bindView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 91
    return-void

    .line 83
    :cond_1a
    const/4 v1, 0x0

    :try_start_1b
    move-object/from16 v0, p7

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_22

    move-result-object v8

    goto :goto_e

    .line 84
    :catch_22
    move-exception v9

    .line 85
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method protected bindView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 24
    .parameter "view"
    .parameter "directoryType"
    .parameter "directoryName"
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "inputText"
    .parameter "pictureData"

    .prologue
    .line 95
    const v14, 0x7f10014a

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 96
    .local v11, text1:Landroid/widget/TextView;
    const v14, 0x7f1000fa

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 97
    .local v12, text2:Landroid/widget/TextView;
    const v14, 0x7f1000fb

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 100
    .local v13, text3:Landroid/widget/TextView;
    const v14, 0x7f10026e

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 101
    .local v6, iv1:Landroid/widget/ImageView;
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    const/4 v14, 0x3

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 105
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    const/4 v14, 0x3

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 107
    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 110
    if-eqz p4, :cond_96

    const-string v14, "gal_search_show_more"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_96

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/EmailAddressAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080530

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 113
    .local v10, showMore:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 114
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const/16 v14, 0x11

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 116
    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    .end local v10           #showMore:Ljava/lang/String;
    :goto_7e
    const/4 v2, 0x0

    .line 162
    .local v2, bm:Landroid/graphics/Bitmap;
    if-eqz p7, :cond_17e

    .line 164
    const/4 v14, 0x0

    :try_start_82
    move-object/from16 v0, p7

    array-length v15, v0

    move-object/from16 v0, p7

    invoke-static {v0, v14, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 165
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_92
    .catchall {:try_start_82 .. :try_end_92} :catchall_179
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_92} :catch_16c

    .line 170
    const/16 p7, 0x0

    .line 171
    const/4 v2, 0x0

    .line 177
    :goto_95
    return-void

    .line 120
    .end local v2           #bm:Landroid/graphics/Bitmap;
    :cond_96
    move-object/from16 v7, p4

    .line 123
    .local v7, nameText:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_135

    .line 124
    const/4 v14, 0x0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 125
    .local v9, originNameBit:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<font color=#0881d3>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</font>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v9, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, exchangedName:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .end local v5           #exchangedName:Ljava/lang/String;
    .end local v9           #originNameBit:Ljava/lang/String;
    :goto_d3
    move-object/from16 v1, p5

    .line 135
    .local v1, addrText:Ljava/lang/String;
    if-eqz v1, :cond_160

    .line 136
    const-string v14, "(Group)"

    if-eq v1, v14, :cond_156

    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_139

    .line 138
    const/4 v14, 0x0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v1, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, originAddrBit:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<font color=#0881d3>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</font>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v8, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, exchangedAddr:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "&#60;"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&#62;"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .end local v4           #exchangedAddr:Ljava/lang/String;
    .end local v8           #originAddrBit:Ljava/lang/String;
    :goto_12f
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7e

    .line 130
    .end local v1           #addrText:Ljava/lang/String;
    :cond_135
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d3

    .line 148
    .restart local v1       #addrText:Ljava/lang/String;
    :cond_139
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12f

    .line 151
    :cond_156
    const-string v14, "<font color=#797979>(Group)</font>"

    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12f

    .line 155
    :cond_160
    const-string v14, ""

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7e

    .line 167
    .end local v1           #addrText:Ljava/lang/String;
    .end local v7           #nameText:Ljava/lang/String;
    .restart local v2       #bm:Landroid/graphics/Bitmap;
    :catch_16c
    move-exception v3

    .line 168
    .local v3, e:Ljava/lang/Exception;
    :try_start_16d
    const-string v14, "EmailAddressAdapter:bindView"

    const-string v15, "Error"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_174
    .catchall {:try_start_16d .. :try_end_174} :catchall_179

    .line 170
    const/16 p7, 0x0

    .line 171
    const/4 v2, 0x0

    .line 172
    goto/16 :goto_95

    .line 170
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_179
    move-exception v14

    const/16 p7, 0x0

    .line 171
    const/4 v2, 0x0

    throw v14

    .line 174
    :cond_17e
    const/16 v14, 0x8

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_95
.end method

.method protected bindViewLoading(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "view"
    .parameter "directoryType"
    .parameter "directoryName"

    .prologue
    .line 181
    const v2, 0x7f10014a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 182
    .local v1, text1:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/email/EmailAddressAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080176

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_24

    .end local p2
    :goto_1a
    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, text:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    return-void

    .end local v0           #text:Ljava/lang/String;
    .restart local p2
    :cond_24
    move-object p2, p3

    .line 182
    goto :goto_1a
.end method

.method protected inflateItemView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "parent"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/EmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/android/email/activity/ActivityResourceInterface;->getId_recipient_dropdown_item()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected inflateItemViewLoading(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "parent"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/email/EmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/android/email/activity/ActivityResourceInterface;->getId_recipient_dropdown_item_loading()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 6
    .parameter "account"

    .prologue
    .line 192
    if-eqz p1, :cond_14

    .line 195
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 196
    .local v0, AccId:Ljava/lang/Long;
    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v3, "unknown"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v1, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->setAccount(Landroid/accounts/Account;Ljava/lang/Long;)V

    .line 198
    .end local v0           #AccId:Ljava/lang/Long;
    :cond_14
    return-void
.end method
