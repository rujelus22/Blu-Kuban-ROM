.class public Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;
.super Lcom/vlingo/client/core/contacts/ContactsMatcher;
.source "AndroidContactsMatcher.java"


# static fields
.field private static final MIN_PARTIAL_WORD_LEN:I

.field private static log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field private m_parentActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/vlingo/client/core/contacts/ContactsMatcherListener;Landroid/app/Activity;)V
    .registers 4
    .parameter "listener"
    .parameter "parentActivity"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;-><init>(Lcom/vlingo/client/core/contacts/ContactsMatcherListener;Landroid/app/Activity;Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/vlingo/client/core/contacts/ContactsMatcherListener;Landroid/app/Activity;Z)V
    .registers 4
    .parameter "listener"
    .parameter "parentActivity"
    .parameter "useGroupedSortedContacts"

    .prologue
    .line 53
    invoke-direct {p0, p1, p3}, Lcom/vlingo/client/core/contacts/ContactsMatcher;-><init>(Lcom/vlingo/client/core/contacts/ContactsMatcherListener;Z)V

    .line 54
    iput-object p2, p0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->m_parentActivity:Landroid/app/Activity;

    .line 55
    return-void
.end method

.method private static augmentWords([Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .parameter "rawWords"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 336
    .local v9, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v4           #i$:I
    .local v5, i$:I
    :goto_9
    if-ge v5, v6, :cond_6b

    aget-object v7, v0, v5

    .line 339
    .local v7, word:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ".*"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\\W"

    const-string v12, ""

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".*"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 344
    .local v8, wordPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 345
    .local v3, foundmatch:Z
    sget-object v10, Lcom/vlingo/client/settings/Settings;->contactCasing:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v5           #i$:I
    .local v4, i$:Ljava/util/Iterator;
    :cond_41
    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_62

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 346
    .local v1, contact:Ljava/lang/String;
    invoke-virtual {v8, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 347
    .local v2, contactMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_41

    .line 350
    sget-object v10, Lcom/vlingo/client/settings/Settings;->contactCasing:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    const/4 v3, 0x1

    goto :goto_41

    .line 356
    .end local v1           #contact:Ljava/lang/String;
    .end local v2           #contactMatcher:Ljava/util/regex/Matcher;
    :cond_62
    if-nez v3, :cond_67

    .line 357
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_67
    add-int/lit8 v4, v5, 0x1

    .local v4, i$:I
    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_9

    .line 359
    .end local v3           #foundmatch:Z
    .end local v7           #word:Ljava/lang/String;
    .end local v8           #wordPattern:Ljava/util/regex/Pattern;
    :cond_6b
    return-object v9
.end method

.method private static sortByName(Ljava/util/List;Z)Ljava/util/List;
    .registers 3
    .parameter
    .parameter "desc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vlingo/client/core/contacts/VlingoContact;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/vlingo/client/core/contacts/VlingoContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/vlingo/client/core/contacts/VlingoContact;>;"
    new-instance v0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher$1;

    invoke-direct {v0, p1}, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher$1;-><init>(Z)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 372
    return-object p0
.end method


# virtual methods
.method protected getNewSortAlgorithm()Lcom/vlingo/client/core/util/SortAlgorithm;
    .registers 2

    .prologue
    .line 62
    new-instance v0, Lcom/vlingo/client/android/core/contacts/AndroidSortAlgorithm;

    invoke-direct {v0}, Lcom/vlingo/client/android/core/contacts/AndroidSortAlgorithm;-><init>()V

    return-object v0
.end method

.method protected getNewSortedContactList(Z)Lcom/vlingo/client/core/contacts/SortedContactList;
    .registers 3
    .parameter "groupSortedContacts"

    .prologue
    .line 58
    new-instance v0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;

    invoke-direct {v0, p1}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;-><init>(Z)V

    return-object v0
.end method

.method protected handleStartSearch(Ljava/lang/String;)Lcom/vlingo/client/core/contacts/VlingoContact;
    .registers 51
    .parameter "query"

    .prologue
    .line 75
    if-nez p1, :cond_5

    .line 76
    const/16 v43, 0x0

    .line 328
    :cond_4
    :goto_4
    return-object v43

    .line 79
    :cond_5
    const/4 v3, 0x0

    .line 80
    .local v3, contacts:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 82
    .local v5, whereString:Ljava/lang/String;
    const/16 v26, 0x0

    .line 83
    .local v26, dataColumnName:Ljava/lang/String;
    const/16 v45, 0x0

    .line 84
    .local v45, typeColumnName:Ljava/lang/String;
    const/16 v22, 0x0

    .line 89
    .local v22, contactIDName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->m_actionType:Ljava/lang/String;

    const-string v6, "call"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->m_actionType:Ljava/lang/String;

    const-string v6, "sms"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    :cond_25
    const/16 v16, 0x1

    .line 91
    .local v16, isPhoneNumber:Z
    :goto_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->m_actionType:Ljava/lang/String;

    const-string v6, "email"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 92
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    .line 93
    const-string v26, "data1"

    .line 94
    const-string v45, "data2"

    .line 95
    const-string v22, "contact_id"

    .line 108
    :cond_3b
    :goto_3b
    const-string v41, " "

    .line 109
    .local v41, space:Ljava/lang/String;
    const/4 v10, 0x0

    .line 110
    .local v10, words:[Ljava/lang/String;
    new-instance v28, Ljava/util/LinkedList;

    invoke-direct/range {v28 .. v28}, Ljava/util/LinkedList;-><init>()V

    .line 111
    .local v28, editedWords:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c4

    .line 113
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v20

    .line 114
    .local v20, cb:Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    move-object/from16 v0, v20

    if-eq v2, v0, :cond_66

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    move-object/from16 v0, v20

    if-eq v2, v0, :cond_66

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_a6

    .line 118
    :cond_66
    const-string v41, ""

    .line 119
    const-string v2, " "

    const-string v6, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v10, v2, [Ljava/lang/String;

    .line 121
    const/16 v29, 0x0

    .local v29, i:I
    :goto_7a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v29

    if-ge v0, v2, :cond_ae

    .line 122
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v6, v29, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v10, v29

    .line 121
    add-int/lit8 v29, v29, 0x1

    goto :goto_7a

    .line 89
    .end local v10           #words:[Ljava/lang/String;
    .end local v16           #isPhoneNumber:Z
    .end local v20           #cb:Ljava/lang/Character$UnicodeBlock;
    .end local v28           #editedWords:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v29           #i:I
    .end local v41           #space:Ljava/lang/String;
    :cond_96
    const/16 v16, 0x0

    goto :goto_27

    .line 98
    .restart local v16       #isPhoneNumber:Z
    :cond_99
    if-eqz v16, :cond_3b

    .line 99
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 100
    const-string v26, "data1"

    .line 101
    const-string v45, "data2"

    .line 102
    const-string v22, "contact_id"

    .line 104
    const-string v5, "data1 is not NULL"

    goto :goto_3b

    .line 125
    .restart local v10       #words:[Ljava/lang/String;
    .restart local v20       #cb:Ljava/lang/Character$UnicodeBlock;
    .restart local v28       #editedWords:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v41       #space:Ljava/lang/String;
    :cond_a6
    const-string v2, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 129
    :cond_ae
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    move-object/from16 v0, v20

    if-eq v2, v0, :cond_c0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    move-object/from16 v0, v20

    if-eq v2, v0, :cond_c0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_136

    .line 132
    :cond_c0
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    .line 136
    .end local v20           #cb:Ljava/lang/Character$UnicodeBlock;
    :cond_c4
    :goto_c4
    if-eqz v28, :cond_1de

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1de

    .line 137
    const/16 v27, 0x0

    .line 138
    .local v27, dispNameWhere:Ljava/lang/String;
    const/16 v17, 0x0

    .line 139
    .local v17, anyOutput:Z
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :cond_d4
    :goto_d4
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d8

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    .line 140
    .local v38, rawWord:Ljava/lang/String;
    const-string v2, "\'"

    const-string v6, "\'\'"

    move-object/from16 v0, v38

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v48

    .line 141
    .local v48, word:Ljava/lang/String;
    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_151

    .line 142
    if-nez v17, :cond_13b

    .line 143
    const/16 v17, 0x1

    .line 144
    const-string v27, ""

    .line 149
    :goto_f6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "display_name LIKE \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v48

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "%\' OR "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "display_name"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " LIKE \'%"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v48

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "%\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto :goto_d4

    .line 134
    .end local v17           #anyOutput:Z
    .end local v27           #dispNameWhere:Ljava/lang/String;
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v38           #rawWord:Ljava/lang/String;
    .end local v48           #word:Ljava/lang/String;
    .restart local v20       #cb:Ljava/lang/Character$UnicodeBlock;
    :cond_136
    invoke-static {v10}, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->augmentWords([Ljava/lang/String;)Ljava/util/List;

    move-result-object v28

    goto :goto_c4

    .line 147
    .end local v20           #cb:Ljava/lang/Character$UnicodeBlock;
    .restart local v17       #anyOutput:Z
    .restart local v27       #dispNameWhere:Ljava/lang/String;
    .restart local v30       #i$:Ljava/util/Iterator;
    .restart local v38       #rawWord:Ljava/lang/String;
    .restart local v48       #word:Ljava/lang/String;
    :cond_13b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " OR "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto :goto_f6

    .line 153
    :cond_151
    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d4

    .line 154
    if-nez v17, :cond_1c2

    .line 155
    const/16 v17, 0x1

    .line 156
    const-string v27, ""

    .line 161
    :goto_15d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "display_name LIKE \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v48

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "%\' OR "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "display_name"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " LIKE \'%"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v48

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\' OR "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "display_name"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " LIKE \'%"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v48

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " %\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_d4

    .line 159
    :cond_1c2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " OR "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto :goto_15d

    .line 167
    .end local v38           #rawWord:Ljava/lang/String;
    .end local v48           #word:Ljava/lang/String;
    :cond_1d8
    if-eqz v27, :cond_1de

    .line 168
    if-nez v5, :cond_3ae

    .line 169
    move-object/from16 v5, v27

    .line 179
    .end local v17           #anyOutput:Z
    .end local v27           #dispNameWhere:Ljava/lang/String;
    .end local v30           #i$:Ljava/util/Iterator;
    :cond_1de
    :goto_1de
    invoke-static {}, Lcom/vlingo/client/core/logging/LogServerMgr;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1fa

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Android Contact Match.  WhereString: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vlingo/client/core/logging/LogServerMgr;->addToLogString(Ljava/lang/String;)V

    .line 186
    :cond_1fa
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v22, v4, v2

    const/4 v2, 0x1

    const-string v6, "display_name"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    aput-object v26, v4, v2

    const/4 v2, 0x3

    aput-object v45, v4, v2

    const/4 v2, 0x4

    const-string v6, "starred"

    aput-object v6, v4, v2

    .line 194
    .local v4, projection:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3cf

    const/16 v19, 0x1

    .line 195
    .local v19, blankQuery:Z
    :goto_21c
    const/4 v7, 0x0

    .line 197
    .local v7, orderBy:Ljava/lang/String;
    const/16 v24, 0x0

    .line 211
    .local v24, cur:Landroid/database/Cursor;
    :try_start_21f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v2, v6, :cond_3d3

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->m_parentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_231
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21f .. :try_end_231} :catch_3de

    move-result-object v24

    .line 228
    :goto_232
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->m_contactSorter:Lcom/vlingo/client/core/contacts/ContactSorter;

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->m_phoneTypes:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->m_emailTypes:[I

    const/high16 v13, 0x4120

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->m_mru:Lcom/vlingo/client/core/mru/MRU;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->m_actionType:Ljava/lang/String;

    invoke-virtual/range {v8 .. v15}, Lcom/vlingo/client/core/contacts/ContactSorter;->initialize(I[Ljava/lang/String;[I[IFLcom/vlingo/client/core/mru/MRU;Ljava/lang/String;)V

    .line 229
    const/16 v37, -0x1

    .line 231
    .local v37, preferredType:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->m_actionType:Ljava/lang/String;

    const-string v6, "sms"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25f

    .line 232
    const/16 v37, 0x2

    .line 237
    :cond_25f
    const/16 v36, 0x0

    .line 238
    .local v36, numContacts:I
    invoke-static/range {v24 .. v24}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_40f

    .line 239
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_40c

    .line 240
    new-instance v23, Ljava/util/Hashtable;

    const/16 v2, 0x64

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/util/Hashtable;-><init>(I)V

    .line 242
    .local v23, contactTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/vlingo/client/core/contacts/VlingoContact;>;"
    const-string v2, "display_name"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 243
    .local v35, nameColumn:I
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 244
    .local v25, dataColumn:I
    move-object/from16 v0, v24

    move-object/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 245
    .local v44, typeColumn:I
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 246
    .local v32, idColumn:I
    const-string v2, "starred"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v42

    .line 250
    .local v42, starredColumn:I
    :cond_29e
    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 251
    .local v34, name:Ljava/lang/String;
    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 252
    .local v31, id:I
    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 253
    .local v12, data:Ljava/lang/String;
    move-object/from16 v0, v24

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 254
    .local v13, type:I
    move-object/from16 v0, v24

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 258
    .local v15, starred:I
    if-eqz v34, :cond_37e

    .line 259
    const/4 v2, 0x5

    move/from16 v0, v36

    if-ge v0, v2, :cond_307

    .line 260
    invoke-static {}, Lcom/vlingo/client/core/logging/LogServerMgr;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_307

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got: name="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " data="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " ID "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " type "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vlingo/client/core/logging/LogServerMgr;->addToLogString(Ljava/lang/String;)V

    .line 264
    :cond_307
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 265
    .local v46, vc:Lcom/vlingo/client/core/contacts/VlingoContact;
    if-nez v46, :cond_333

    .line 266
    new-instance v46, Lcom/vlingo/client/android/core/contacts/ComparableVlingoContact;

    .end local v46           #vc:Lcom/vlingo/client/core/contacts/VlingoContact;
    const/4 v2, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/android/core/contacts/ComparableVlingoContact;-><init>(Ljava/lang/String;Lcom/vlingo/client/core/contacts/ContactDetailProvider;)V

    .line 267
    .restart local v46       #vc:Lcom/vlingo/client/core/contacts/VlingoContact;
    move-object/from16 v0, v46

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/contacts/VlingoContact;->setId(I)V

    .line 268
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    add-int/lit8 v36, v36, 0x1

    .line 272
    :cond_333
    const/4 v14, 0x0

    .line 273
    .local v14, boostAmount:F
    move/from16 v0, v37

    if-ne v13, v0, :cond_33c

    .line 274
    const v2, 0x3f666666

    add-float/2addr v14, v2

    .line 276
    :cond_33c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->m_phoneTypes:[I

    if-eqz v2, :cond_35f

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->m_phoneTypes:[I

    move-object/from16 v18, v0

    .local v18, arr$:[I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v33, v0

    .local v33, len$:I
    const/16 v30, 0x0

    .local v30, i$:I
    :goto_34f
    move/from16 v0, v30

    move/from16 v1, v33

    if-ge v0, v1, :cond_35f

    aget v39, v18, v30

    .line 278
    .local v39, requestedType:I
    move/from16 v0, v39

    if-ne v0, v13, :cond_3ee

    .line 279
    const v2, 0x3f7d70a4

    add-float/2addr v14, v2

    .line 284
    .end local v18           #arr$:[I
    .end local v30           #i$:I
    .end local v33           #len$:I
    .end local v39           #requestedType:I
    :cond_35f
    const/4 v2, 0x2

    if-ne v13, v2, :cond_366

    const v2, 0x3bc49ba6

    add-float/2addr v14, v2

    .line 285
    :cond_366
    const/4 v2, 0x3

    if-ne v13, v2, :cond_36d

    const v2, 0x3ba3d70a

    add-float/2addr v14, v2

    .line 286
    :cond_36d
    const/4 v2, 0x1

    if-ne v13, v2, :cond_374

    const v2, 0x3b83126f

    add-float/2addr v14, v2

    .line 287
    :cond_374
    new-instance v11, Lcom/vlingo/client/core/contacts/ContactDetail;

    invoke-direct/range {v11 .. v16}, Lcom/vlingo/client/core/contacts/ContactDetail;-><init>(Ljava/lang/String;IFIZ)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v11}, Lcom/vlingo/client/core/contacts/VlingoContact;->addDetail(Lcom/vlingo/client/core/contacts/ContactDetail;)V

    .line 290
    .end local v14           #boostAmount:F
    .end local v46           #vc:Lcom/vlingo/client/core/contacts/VlingoContact;
    :cond_37e
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_29e

    .line 291
    if-eqz v19, :cond_3f2

    .line 292
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual/range {v23 .. v23}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->sortByName(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :goto_398
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40c

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 295
    .local v21, contact:Lcom/vlingo/client/core/contacts/VlingoContact;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->m_contactSorter:Lcom/vlingo/client/core/contacts/ContactSorter;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/vlingo/client/core/contacts/ContactSorter;->add(Lcom/vlingo/client/core/contacts/VlingoContact;)V

    goto :goto_398

    .line 172
    .end local v4           #projection:[Ljava/lang/String;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v12           #data:Ljava/lang/String;
    .end local v13           #type:I
    .end local v15           #starred:I
    .end local v19           #blankQuery:Z
    .end local v21           #contact:Lcom/vlingo/client/core/contacts/VlingoContact;
    .end local v23           #contactTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/vlingo/client/core/contacts/VlingoContact;>;"
    .end local v24           #cur:Landroid/database/Cursor;
    .end local v25           #dataColumn:I
    .end local v31           #id:I
    .end local v32           #idColumn:I
    .end local v34           #name:Ljava/lang/String;
    .end local v35           #nameColumn:I
    .end local v36           #numContacts:I
    .end local v37           #preferredType:I
    .end local v42           #starredColumn:I
    .end local v44           #typeColumn:I
    .restart local v17       #anyOutput:Z
    .restart local v27       #dispNameWhere:Ljava/lang/String;
    :cond_3ae
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " AND ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1de

    .line 194
    .end local v17           #anyOutput:Z
    .end local v27           #dispNameWhere:Ljava/lang/String;
    .end local v30           #i$:Ljava/util/Iterator;
    .restart local v4       #projection:[Ljava/lang/String;
    :cond_3cf
    const/16 v19, 0x0

    goto/16 :goto_21c

    .line 214
    .restart local v7       #orderBy:Ljava/lang/String;
    .restart local v19       #blankQuery:Z
    .restart local v24       #cur:Landroid/database/Cursor;
    :cond_3d3
    :try_start_3d3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->m_parentActivity:Landroid/app/Activity;

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3db
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3d3 .. :try_end_3db} :catch_3de

    move-result-object v24

    goto/16 :goto_232

    .line 220
    :catch_3de
    move-exception v40

    .line 221
    .local v40, s:Landroid/database/sqlite/SQLiteException;
    sget-object v2, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v6, "CON1"

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Lcom/vlingo/client/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/16 v43, 0x0

    goto/16 :goto_4

    .line 277
    .end local v40           #s:Landroid/database/sqlite/SQLiteException;
    .restart local v12       #data:Ljava/lang/String;
    .restart local v13       #type:I
    .restart local v14       #boostAmount:F
    .restart local v15       #starred:I
    .restart local v18       #arr$:[I
    .restart local v23       #contactTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/vlingo/client/core/contacts/VlingoContact;>;"
    .restart local v25       #dataColumn:I
    .local v30, i$:I
    .restart local v31       #id:I
    .restart local v32       #idColumn:I
    .restart local v33       #len$:I
    .restart local v34       #name:Ljava/lang/String;
    .restart local v35       #nameColumn:I
    .restart local v36       #numContacts:I
    .restart local v37       #preferredType:I
    .restart local v39       #requestedType:I
    .restart local v42       #starredColumn:I
    .restart local v44       #typeColumn:I
    .restart local v46       #vc:Lcom/vlingo/client/core/contacts/VlingoContact;
    :cond_3ee
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_34f

    .line 298
    .end local v14           #boostAmount:F
    .end local v18           #arr$:[I
    .end local v30           #i$:I
    .end local v33           #len$:I
    .end local v39           #requestedType:I
    .end local v46           #vc:Lcom/vlingo/client/core/contacts/VlingoContact;
    :cond_3f2
    invoke-virtual/range {v23 .. v23}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v47

    .line 299
    .local v47, vce:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/vlingo/client/core/contacts/VlingoContact;>;"
    :goto_3f6
    invoke-interface/range {v47 .. v47}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_40c

    .line 300
    invoke-interface/range {v47 .. v47}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 301
    .restart local v46       #vc:Lcom/vlingo/client/core/contacts/VlingoContact;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->m_contactSorter:Lcom/vlingo/client/core/contacts/ContactSorter;

    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Lcom/vlingo/client/core/contacts/ContactSorter;->add(Lcom/vlingo/client/core/contacts/VlingoContact;)V

    goto :goto_3f6

    .line 305
    .end local v12           #data:Ljava/lang/String;
    .end local v13           #type:I
    .end local v15           #starred:I
    .end local v23           #contactTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/vlingo/client/core/contacts/VlingoContact;>;"
    .end local v25           #dataColumn:I
    .end local v31           #id:I
    .end local v32           #idColumn:I
    .end local v34           #name:Ljava/lang/String;
    .end local v35           #nameColumn:I
    .end local v42           #starredColumn:I
    .end local v44           #typeColumn:I
    .end local v46           #vc:Lcom/vlingo/client/core/contacts/VlingoContact;
    .end local v47           #vce:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/vlingo/client/core/contacts/VlingoContact;>;"
    :cond_40c
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 309
    :cond_40f
    sget-object v2, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "numContacts found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 315
    if-eqz v19, :cond_472

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->m_contactSorter:Lcom/vlingo/client/core/contacts/ContactSorter;

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/ContactSorter;->skipSort()Lcom/vlingo/client/core/contacts/VlingoContact;

    move-result-object v43

    .line 320
    .local v43, topchoice:Lcom/vlingo/client/core/contacts/VlingoContact;
    :goto_433
    invoke-static {}, Lcom/vlingo/client/core/logging/LogServerMgr;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numContacts found: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vlingo/client/core/logging/LogServerMgr;->addToLogString(Ljava/lang/String;)V

    .line 322
    if-eqz v43, :cond_46d

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "topChoice: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v43 .. v43}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vlingo/client/core/logging/LogServerMgr;->addToLogString(Ljava/lang/String;)V

    .line 326
    :cond_46d
    invoke-static {}, Lcom/vlingo/client/core/logging/LogServerMgr;->sendToServer()V

    goto/16 :goto_4

    .line 318
    .end local v43           #topchoice:Lcom/vlingo/client/core/contacts/VlingoContact;
    :cond_472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->m_contactSorter:Lcom/vlingo/client/core/contacts/ContactSorter;

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/ContactSorter;->startSort()Lcom/vlingo/client/core/contacts/VlingoContact;

    move-result-object v43

    .restart local v43       #topchoice:Lcom/vlingo/client/core/contacts/VlingoContact;
    goto :goto_433
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->m_contactSorter:Lcom/vlingo/client/core/contacts/ContactSorter;

    if-eqz v0, :cond_9

    .line 67
    iget-object v0, p0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->m_contactSorter:Lcom/vlingo/client/core/contacts/ContactSorter;

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/ContactSorter;->stopSort()V

    .line 69
    :cond_9
    return-void
.end method
