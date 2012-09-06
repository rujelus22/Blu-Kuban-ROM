.class public Lcom/android/ex/chips/RecipientAlternatesAdapter;
.super Landroid/widget/CursorAdapter;
.source "RecipientAlternatesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;
    }
.end annotation


# instance fields
.field private mCheckedItemChangedListener:Lcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

.field private mCheckedItemPosition:I

.field private final mCurrentId:J

.field private final mLayoutId:I

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;JJILcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;)V
    .registers 15
    .parameter "context"
    .parameter "contactId"
    .parameter "currentId"
    .parameter "viewId"
    .parameter "listener"

    .prologue
    const/4 v6, 0x0

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/ex/chips/BaseRecipientAdapter$EmailQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "contact_id =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, p1, v0, v6}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mCheckedItemPosition:I

    .line 116
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 117
    iput p6, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mLayoutId:I

    .line 118
    iput-wide p4, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mCurrentId:J

    .line 119
    iput-object p7, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mCheckedItemChangedListener:Lcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

    .line 120
    return-void
.end method

.method public static getMatchingRecipients(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;
    .registers 25
    .parameter "context"
    .parameter "inAddresses"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    const/16 v2, 0x32

    move-object/from16 v0, p1

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 62
    .local v17, addressesSize:I
    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/String;

    .line 63
    .local v6, addresses:[Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v18, bindString:Ljava/lang/StringBuilder;
    const/16 v20, 0x0

    .local v20, i:I
    :goto_14
    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_4c

    .line 66
    aget-object v2, p1, v20

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v22

    .line 67
    .local v22, tokens:[Landroid/text/util/Rfc822Token;
    move-object/from16 v0, v22

    array-length v2, v0

    if-lez v2, :cond_49

    const/4 v2, 0x0

    aget-object v2, v22, v2

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    :goto_30
    aput-object v2, v6, v20

    .line 68
    const-string v2, "?"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    add-int/lit8 v2, v17, -0x1

    move/from16 v0, v20

    if-ge v0, v2, :cond_46

    .line 70
    const-string v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_46
    add-int/lit8 v20, v20, 0x1

    goto :goto_14

    .line 67
    :cond_49
    aget-object v2, p1, v20

    goto :goto_30

    .line 74
    .end local v22           #tokens:[Landroid/text/util/Rfc822Token;
    :cond_4c
    const-string v2, "RecipAlternates"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 75
    const-string v2, "RecipAlternates"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Doing reverse lookup for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_71
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v21, recipientEntries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/ex/chips/RecipientEntry;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/ex/chips/BaseRecipientAdapter$EmailQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data1 IN ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 81
    .local v19, c:Landroid/database/Cursor;
    if-eqz v19, :cond_150

    .line 83
    :try_start_a2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_14d

    .line 85
    :cond_a8
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 86
    .local v16, address:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v2, 0x5

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v2, 0x6

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static/range {v7 .. v15}, Lcom/android/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v2

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v2, "RecipAlternates"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_147

    .line 95
    const-string v2, "RecipAlternates"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received reverse look up information for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RESULTS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NAME : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CONTACT ID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ADDRESS :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_147
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_14a
    .catchall {:try_start_a2 .. :try_end_14a} :catchall_151

    move-result v2

    if-nez v2, :cond_a8

    .line 104
    .end local v16           #address:Ljava/lang/String;
    :cond_14d
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_150
    return-object v21

    .line 104
    :catchall_151
    move-exception v2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private newView()Landroid/view/View;
    .registers 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 13
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 162
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 164
    .local v5, position:I
    const v6, 0x1020016

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 165
    .local v2, display:Landroid/widget/TextView;
    const v6, 0x1020006

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 166
    .local v4, imageView:Landroid/widget/ImageView;
    invoke-virtual {p0, v5}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getRecipientEntry(I)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    .line 167
    .local v3, entry:Lcom/android/ex/chips/RecipientEntry;
    if-nez v5, :cond_6d

    .line 168
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 173
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    :goto_33
    const v6, 0x1020014

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 179
    .local v0, destination:Landroid/widget/TextView;
    const/4 v6, 0x1

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const v6, 0x1020015

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 182
    .local v1, destinationType:Landroid/widget/TextView;
    if-eqz v1, :cond_6c

    .line 183
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x3

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_6c
    return-void

    .line 175
    .end local v0           #destination:Landroid/widget/TextView;
    .end local v1           #destinationType:Landroid/widget/TextView;
    :cond_6d
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_33
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 125
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 126
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 128
    :cond_e
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public getRecipientEntry(I)Lcom/android/ex/chips/RecipientEntry;
    .registers 12
    .parameter "position"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 133
    .local v9, c:Landroid/database/Cursor;
    invoke-interface {v9, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 134
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x5

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x6

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/android/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 144
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 145
    if-nez p2, :cond_d

    .line 146
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->newView()Landroid/view/View;

    move-result-object p2

    .line 148
    :cond_d
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mCurrentId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_25

    .line 149
    iput p1, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mCheckedItemPosition:I

    .line 150
    iget-object v1, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mCheckedItemChangedListener:Lcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

    if-eqz v1, :cond_25

    .line 151
    iget-object v1, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mCheckedItemChangedListener:Lcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

    iget v2, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mCheckedItemPosition:I

    invoke-interface {v1, v2}, Lcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;->onCheckedItemChanged(I)V

    .line 154
    :cond_25
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 155
    return-object p2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->newView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
