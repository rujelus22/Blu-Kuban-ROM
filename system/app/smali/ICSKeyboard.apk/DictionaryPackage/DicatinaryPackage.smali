.class public LDictionaryPackage/DicatinaryPackage;
.super Ljava/lang/Object;
.source "DicatinaryPackage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LDictionaryPackage/DicatinaryPackage$BinaryDictionaryBuilderImpl;,
        LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ASK ExtDictFctry"

.field private static final XML_ASSETS_ATTRIBUTE:Ljava/lang/String; = "dictionaryAssertName"

.field private static final XML_DESCRIPTION_ATTRIBUTE:Ljava/lang/String; = "description"

.field private static final XML_DICTIONARIES_TAG:Ljava/lang/String; = "Dictionaries"

.field private static final XML_DICTIONARY_TAG:Ljava/lang/String; = "Dictionary"

.field private static final XML_ID_ATTRIBUTE:Ljava/lang/String; = "id"

.field private static final XML_LANGUAGE_ATTRIBUTE:Ljava/lang/String; = "locale"

.field private static final XML_NAME_RES_ID_ATTRIBUTE:Ljava/lang/String; = "nameResId"

.field private static final XML_RESOURCE_ATTRIBUTE:Ljava/lang/String; = "dictionaryResourceId"

.field private static ms_creators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 118
    const/4 v0, 0x0

    sput-object v0, LDictionaryPackage/DicatinaryPackage;->ms_creators:Ljava/util/ArrayList;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAllBuilders(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    const-class v2, LDictionaryPackage/DicatinaryPackage;

    monitor-enter v2

    :try_start_3
    sget-object v1, LDictionaryPackage/DicatinaryPackage;->ms_creators:Ljava/util/ArrayList;

    if-nez v1, :cond_15

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v0, dictionaries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;>;"
    invoke-static {p0}, LDictionaryPackage/DicatinaryPackage;->getAllExternalDictionaryBuilders(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 293
    sput-object v0, LDictionaryPackage/DicatinaryPackage;->ms_creators:Ljava/util/ArrayList;

    .line 296
    .end local v0           #dictionaries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;>;"
    :cond_15
    sget-object v1, LDictionaryPackage/DicatinaryPackage;->ms_creators:Ljava/util/ArrayList;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v2

    return-object v1

    .line 284
    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getAllExternalDictionaryBuilders(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, 0x80

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 232
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.ics.android.icskeyboard.DICTIONARY"

    .line 231
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v9}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 235
    .local v0, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v6, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v6, :cond_2d

    .line 236
    const-string v6, "ASK ExtDictFctry"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Number of potential external dictionary packages found: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 236
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_2d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v2, externalDictionaryBuilders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_36
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_59

    .line 268
    sget-boolean v6, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v6, :cond_58

    .line 269
    const-string v6, "ASK ExtDictFctry"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Number of external dictionary builders successfully parsed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 269
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_58
    return-object v2

    .line 242
    :cond_59
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 244
    .local v5, receiver:Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v7, :cond_80

    .line 245
    const-string v7, "ASK ExtDictFctry"

    .line 246
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "BroadcastReceiver has null ActivityInfo. Receiver\'s label is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 246
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 245
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 255
    :cond_80
    :try_start_80
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 256
    const/16 v8, 0x80

    .line 254
    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 259
    .local v3, externalPackageContext:Landroid/content/Context;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 257
    invoke-static {v3, v7}, LDictionaryPackage/DicatinaryPackage;->getDictionaryBuildersFromActivityInfo(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/util/ArrayList;

    move-result-object v4

    .line 261
    .local v4, packageKeyboardCreators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;>;"
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_93
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_80 .. :try_end_93} :catch_94

    goto :goto_36

    .line 263
    .end local v3           #externalPackageContext:Landroid/content/Context;
    .end local v4           #packageKeyboardCreators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;>;"
    :catch_94
    move-exception v1

    .line 264
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "ASK ExtDictFctry"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Did not find package: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method private static getDictionaryBuildersFromActivityInfo(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/util/ArrayList;
    .registers 5
    .parameter "context"
    .parameter "ai"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ActivityInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 141
    const-string v2, "com.ics.android.icskeyboard.dictionaries"

    .line 140
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 142
    .local v0, allDictionaries:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {p0, v0}, LDictionaryPackage/DicatinaryPackage;->parseDictionaryBuildersFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private static getDictionaryBuildersFromResId(Landroid/content/Context;I)Ljava/util/ArrayList;
    .registers 4
    .parameter "context"
    .parameter "keyboardsResId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 135
    .local v0, allKeyboards:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {p0, v0}, LDictionaryPackage/DicatinaryPackage;->parseDictionaryBuildersFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private static parseDictionaryBuildersFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .registers 18
    .parameter "context"
    .parameter "xmlParser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v9, dictionaries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;>;"
    const/4 v12, 0x0

    .line 152
    .local v12, inDictionaries:Z
    :cond_6
    :goto_6
    :try_start_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, event:I
    const/4 v1, 0x1

    if-ne v11, v1, :cond_e

    .line 225
    .end local v11           #event:I
    :goto_d
    return-object v9

    .line 154
    .restart local v11       #event:I
    :cond_e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 155
    .local v13, tag:Ljava/lang/String;
    const/4 v1, 0x2

    if-ne v11, v1, :cond_b2

    .line 156
    const-string v1, "Dictionaries"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 157
    const/4 v12, 0x1

    goto :goto_6

    .line 162
    :cond_1f
    if-eqz v12, :cond_6

    const-string v1, "Dictionary"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 167
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    .line 169
    .local v8, attrs:Landroid/util/AttributeSet;
    const/4 v1, 0x0

    const-string v14, "id"

    invoke-interface {v8, v1, v14}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, id:Ljava/lang/String;
    const/4 v1, 0x0

    const-string v14, "locale"

    invoke-interface {v8, v1, v14}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, language:Ljava/lang/String;
    const/4 v1, 0x0

    const-string v14, "nameResId"

    const/4 v15, -0x1

    invoke-interface {v8, v1, v14, v15}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 172
    .local v4, nameId:I
    const/4 v1, 0x0

    const-string v14, "dictionaryAssertName"

    invoke-interface {v8, v1, v14}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 173
    .local v5, assets:Ljava/lang/String;
    const/4 v1, 0x0

    const-string v14, "description"

    invoke-interface {v8, v1, v14}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, description:Ljava/lang/String;
    const/4 v1, 0x0

    const-string v14, "dictionaryResourceId"

    const/4 v15, -0x1

    invoke-interface {v8, v1, v14, v15}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 178
    .local v6, dictionaryResourceId:I
    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6b

    if-eqz v3, :cond_6b

    const/4 v1, -0x1

    if-eq v4, v1, :cond_6b

    if-nez v5, :cond_8c

    const/4 v1, -0x1

    if-ne v6, v1, :cond_8c

    .line 180
    :cond_6b
    const-string v1, "ASK ExtDictFctry"

    const-string v14, "External dictionary does not include all mandatory details! Will not create dictionary."

    invoke-static {v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_72} :catch_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_72} :catch_98
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_72} :catch_c9

    goto :goto_6

    .line 214
    .end local v2           #id:Ljava/lang/String;
    .end local v3           #language:Ljava/lang/String;
    .end local v4           #nameId:I
    .end local v5           #assets:Ljava/lang/String;
    .end local v6           #dictionaryResourceId:I
    .end local v7           #description:Ljava/lang/String;
    .end local v8           #attrs:Landroid/util/AttributeSet;
    .end local v11           #event:I
    .end local v13           #tag:Ljava/lang/String;
    :catch_73
    move-exception v10

    .line 215
    .local v10, e:Ljava/io/IOException;
    const-string v1, "ASK ExtDictFctry"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "IO error:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 188
    .end local v10           #e:Ljava/io/IOException;
    .restart local v2       #id:Ljava/lang/String;
    .restart local v3       #language:Ljava/lang/String;
    .restart local v4       #nameId:I
    .restart local v5       #assets:Ljava/lang/String;
    .restart local v6       #dictionaryResourceId:I
    .restart local v7       #description:Ljava/lang/String;
    .restart local v8       #attrs:Landroid/util/AttributeSet;
    .restart local v11       #event:I
    .restart local v13       #tag:Ljava/lang/String;
    :cond_8c
    :try_start_8c
    new-instance v0, LDictionaryPackage/DicatinaryPackage$BinaryDictionaryBuilderImpl;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, LDictionaryPackage/DicatinaryPackage$BinaryDictionaryBuilderImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 193
    .local v0, creator:LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_96} :catch_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8c .. :try_end_96} :catch_98
    .catch Ljava/lang/NullPointerException; {:try_start_8c .. :try_end_96} :catch_c9

    goto/16 :goto_6

    .line 217
    .end local v0           #creator:LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;
    .end local v2           #id:Ljava/lang/String;
    .end local v3           #language:Ljava/lang/String;
    .end local v4           #nameId:I
    .end local v5           #assets:Ljava/lang/String;
    .end local v6           #dictionaryResourceId:I
    .end local v7           #description:Ljava/lang/String;
    .end local v8           #attrs:Landroid/util/AttributeSet;
    .end local v11           #event:I
    .end local v13           #tag:Ljava/lang/String;
    :catch_98
    move-exception v10

    .line 218
    .local v10, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v1, "ASK ExtDictFctry"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Parse error:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_d

    .line 198
    .end local v10           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v11       #event:I
    .restart local v13       #tag:Ljava/lang/String;
    :cond_b2
    const/4 v1, 0x3

    if-ne v11, v1, :cond_6

    .line 199
    :try_start_b5
    const-string v1, "Dictionaries"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 200
    const/4 v12, 0x0

    .line 204
    goto/16 :goto_d

    .line 206
    :cond_c0
    if-eqz v12, :cond_6

    const-string v1, "Dictionary"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_c7} :catch_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b5 .. :try_end_c7} :catch_98
    .catch Ljava/lang/NullPointerException; {:try_start_b5 .. :try_end_c7} :catch_c9

    goto/16 :goto_6

    .line 220
    .end local v11           #event:I
    .end local v13           #tag:Ljava/lang/String;
    :catch_c9
    move-exception v10

    .line 221
    .local v10, e:Ljava/lang/NullPointerException;
    const-string v1, "ASK ExtDictFctry"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Parse error:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_d
.end method

.method public static declared-synchronized resetBuildersCache()V
    .registers 2

    .prologue
    .line 279
    const-class v0, LDictionaryPackage/DicatinaryPackage;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-object v1, LDictionaryPackage/DicatinaryPackage;->ms_creators:Ljava/util/ArrayList;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    .line 280
    monitor-exit v0

    return-void

    .line 279
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method
