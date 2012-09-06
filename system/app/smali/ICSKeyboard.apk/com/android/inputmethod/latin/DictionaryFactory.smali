.class public Lcom/android/inputmethod/latin/DictionaryFactory;
.super Ljava/lang/Object;
.source "DictionaryFactory.java"


# static fields
.field private static final PLACEHOLDER_LENGTH:J = 0x22L

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Lcom/android/inputmethod/latin/DictionaryFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static createBinaryDictionary(Landroid/content/Context;ILjava/util/Locale;)Lcom/android/inputmethod/latin/BinaryDictionary;
    .registers 16
    .parameter "context"
    .parameter "resId"
    .parameter "locale"

    .prologue
    .line 103
    const/4 v8, 0x0

    .line 105
    .local v8, afd:Landroid/content/res/AssetFileDescriptor;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 106
    .local v11, res:Landroid/content/res/Resources;
    if-eqz p2, :cond_2f

    .line 107
    invoke-static {v11, p2}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v12

    .line 108
    .local v12, savedLocale:Ljava/util/Locale;
    invoke-virtual {v11, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 109
    invoke-static {v11, v12}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 113
    .end local v12           #savedLocale:Ljava/util/Locale;
    :goto_12
    if-nez v8, :cond_34

    .line 114
    sget-object v0, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Found the resource but it is compressed. resId="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_99
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_28} :catch_7d

    .line 131
    :cond_28
    if-eqz v8, :cond_2d

    .line 133
    :try_start_2a
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_a0

    .line 115
    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    .line 129
    .end local v11           #res:Landroid/content/res/Resources;
    :cond_2e
    :goto_2e
    return-object v0

    .line 111
    .restart local v11       #res:Landroid/content/res/Resources;
    :cond_2f
    :try_start_2f
    invoke-virtual {v11, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    goto :goto_12

    .line 117
    :cond_34
    invoke-static {v8}, Lcom/android/inputmethod/latin/DictionaryFactory;->isFullDictionary(Landroid/content/res/AssetFileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 119
    .local v2, sourceDir:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v10, packagePath:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_66

    .line 122
    sget-object v0, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "sourceDir is not a file: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_2f .. :try_end_5f} :catchall_99
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2f .. :try_end_5f} :catch_7d

    .line 131
    if-eqz v8, :cond_64

    .line 133
    :try_start_61
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_a2

    .line 123
    :cond_64
    :goto_64
    const/4 v0, 0x0

    goto :goto_2e

    .line 125
    :cond_66
    :try_start_66
    new-instance v0, Lcom/android/inputmethod/latin/BinaryDictionary;

    .line 126
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v1, p0

    .line 125
    invoke-direct/range {v0 .. v7}, Lcom/android/inputmethod/latin/BinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;JJ[Lcom/android/inputmethod/latin/Flag;)V
    :try_end_75
    .catchall {:try_start_66 .. :try_end_75} :catchall_99
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_66 .. :try_end_75} :catch_7d

    .line 131
    if-eqz v8, :cond_2e

    .line 133
    :try_start_77
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_2e

    .line 134
    :catch_7b
    move-exception v1

    goto :goto_2e

    .line 127
    .end local v2           #sourceDir:Ljava/lang/String;
    .end local v10           #packagePath:Ljava/io/File;
    .end local v11           #res:Landroid/content/res/Resources;
    :catch_7d
    move-exception v9

    .line 128
    .local v9, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_7e
    sget-object v0, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Could not find the resource. resId="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catchall {:try_start_7e .. :try_end_92} :catchall_99

    .line 131
    if-eqz v8, :cond_97

    .line 133
    :try_start_94
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_a4

    .line 129
    :cond_97
    :goto_97
    const/4 v0, 0x0

    goto :goto_2e

    .line 130
    .end local v9           #e:Landroid/content/res/Resources$NotFoundException;
    :catchall_99
    move-exception v0

    .line 131
    if-eqz v8, :cond_9f

    .line 133
    :try_start_9c
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a6

    .line 138
    :cond_9f
    :goto_9f
    throw v0

    .line 134
    .restart local v11       #res:Landroid/content/res/Resources;
    :catch_a0
    move-exception v0

    goto :goto_2d

    .restart local v2       #sourceDir:Ljava/lang/String;
    .restart local v10       #packagePath:Ljava/io/File;
    :catch_a2
    move-exception v0

    goto :goto_64

    .end local v2           #sourceDir:Ljava/lang/String;
    .end local v10           #packagePath:Ljava/io/File;
    .end local v11           #res:Landroid/content/res/Resources;
    .restart local v9       #e:Landroid/content/res/Resources$NotFoundException;
    :catch_a4
    move-exception v0

    goto :goto_97

    .end local v9           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_a6
    move-exception v1

    goto :goto_9f
.end method

.method public static createDictionaryForTest(Landroid/content/Context;Ljava/io/File;JJ[Lcom/android/inputmethod/latin/Flag;)Lcom/android/inputmethod/latin/Dictionary;
    .registers 15
    .parameter "context"
    .parameter "dictionary"
    .parameter "startOffset"
    .parameter "length"
    .parameter "flagArray"

    .prologue
    .line 152
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 153
    new-instance v0, Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/inputmethod/latin/BinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;JJ[Lcom/android/inputmethod/latin/Flag;)V

    .line 157
    :goto_13
    return-object v0

    .line 156
    :cond_14
    sget-object v0, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find the file. path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static createDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;I)Lcom/android/inputmethod/latin/DictionaryCollection;
    .registers 4
    .parameter "context"
    .parameter "locale"
    .parameter "fallbackResId"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/DictionaryFactory;->createDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;I[Lcom/android/inputmethod/latin/Flag;)Lcom/android/inputmethod/latin/DictionaryCollection;

    move-result-object v0

    return-object v0
.end method

.method public static createDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;I[Lcom/android/inputmethod/latin/Flag;)Lcom/android/inputmethod/latin/DictionaryCollection;
    .registers 16
    .parameter "context"
    .parameter "locale"
    .parameter "fallbackResId"
    .parameter "flagArray"

    .prologue
    .line 54
    if-nez p1, :cond_19

    .line 55
    sget-object v1, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    const-string v2, "No locale defined for dictionary"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v1, Lcom/android/inputmethod/latin/DictionaryCollection;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/inputmethod/latin/Dictionary;

    const/4 v3, 0x0

    invoke-static {p0, p2, p1}, Lcom/android/inputmethod/latin/DictionaryFactory;->createBinaryDictionary(Landroid/content/Context;ILjava/util/Locale;)Lcom/android/inputmethod/latin/BinaryDictionary;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/android/inputmethod/latin/DictionaryCollection;-><init>([Lcom/android/inputmethod/latin/Dictionary;)V

    .line 75
    :goto_18
    return-object v1

    .line 59
    :cond_19
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 61
    .local v9, dictList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/Dictionary;>;"
    invoke-static {p1, p0, p2}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getDictionaryFiles(Ljava/util/Locale;Landroid/content/Context;I)Ljava/util/List;

    move-result-object v8

    .line 62
    .local v8, assetFileList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/AssetFileAddress;>;"
    if-eqz v8, :cond_2e

    .line 63
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_28
    :goto_28
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_34

    .line 75
    :cond_2e
    new-instance v1, Lcom/android/inputmethod/latin/DictionaryCollection;

    invoke-direct {v1, v9}, Lcom/android/inputmethod/latin/DictionaryCollection;-><init>(Ljava/util/Collection;)V

    goto :goto_18

    .line 63
    :cond_34
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/inputmethod/latin/AssetFileAddress;

    .line 65
    .local v10, f:Lcom/android/inputmethod/latin/AssetFileAddress;
    new-instance v0, Lcom/android/inputmethod/latin/BinaryDictionary;

    iget-object v2, v10, Lcom/android/inputmethod/latin/AssetFileAddress;->mFilename:Ljava/lang/String;

    iget-wide v3, v10, Lcom/android/inputmethod/latin/AssetFileAddress;->mOffset:J

    iget-wide v5, v10, Lcom/android/inputmethod/latin/AssetFileAddress;->mLength:J

    move-object v1, p0

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/inputmethod/latin/BinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;JJ[Lcom/android/inputmethod/latin/Flag;)V

    .line 66
    .local v0, binaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->isValidDictionary()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 67
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28
.end method

.method public static getDictionaryId(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/Long;
    .registers 15
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 187
    .local v5, res:Landroid/content/res/Resources;
    invoke-static {v5, p1}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v7

    .line 189
    .local v7, saveLocale:Ljava/util/Locale;
    invoke-static {v5}, Lcom/android/inputmethod/latin/Utils;->getMainDictionaryResourceId(Landroid/content/res/Resources;)I

    move-result v6

    .line 191
    .local v6, resourceId:I
    invoke-static {p0}, LDictionaryPackage/DicatinaryPackage;->getAllBuilders(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 193
    .local v0, DictionaryBuilderASK:Ljava/util/ArrayList;,"Ljava/util/ArrayList<LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 196
    .local v4, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_15
    if-lt v2, v4, :cond_38

    .line 209
    :goto_17
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 210
    .local v1, afd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v1, :cond_72

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v9

    const-wide/16 v11, 0x22

    cmp-long v9, v9, v11

    if-lez v9, :cond_72

    .line 211
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 214
    .local v8, size:Ljava/lang/Long;
    :goto_2f
    if-eqz v1, :cond_34

    :try_start_31
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_74

    .line 218
    :cond_34
    :goto_34
    invoke-static {v5, v7}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 219
    return-object v8

    .line 198
    .end local v1           #afd:Landroid/content/res/AssetFileDescriptor;
    .end local v8           #size:Ljava/lang/Long;
    :cond_38
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, lang:Ljava/lang/String;
    const-string v9, "he"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_46

    const-string v3, "iw"

    .line 200
    :cond_46
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;

    invoke-interface {v9}, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 203
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;

    invoke-interface {v9}, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;->getDictionaryResourceId()I

    move-result v6

    .line 204
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;

    invoke-interface {v9}, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;->getPackageContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 205
    goto :goto_17

    .line 196
    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 212
    .end local v3           #lang:Ljava/lang/String;
    .restart local v1       #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_72
    const/4 v8, 0x0

    goto :goto_2f

    .line 215
    .restart local v8       #size:Ljava/lang/Long;
    :catch_74
    move-exception v9

    goto :goto_34
.end method

.method public static isDictionaryAvailable(Landroid/content/Context;Ljava/util/Locale;)Z
    .registers 8
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 169
    .local v2, res:Landroid/content/res/Resources;
    invoke-static {v2, p1}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v4

    .line 171
    .local v4, saveLocale:Ljava/util/Locale;
    invoke-static {v2}, Lcom/android/inputmethod/latin/Utils;->getMainDictionaryResourceId(Landroid/content/res/Resources;)I

    move-result v3

    .line 172
    .local v3, resourceId:I
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 173
    .local v0, afd:Landroid/content/res/AssetFileDescriptor;
    invoke-static {v0}, Lcom/android/inputmethod/latin/DictionaryFactory;->isFullDictionary(Landroid/content/res/AssetFileDescriptor;)Z

    move-result v1

    .line 175
    .local v1, hasDictionary:Z
    if-eqz v0, :cond_19

    :try_start_16
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1d

    .line 180
    :cond_19
    :goto_19
    invoke-static {v2, v4}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 181
    return v1

    .line 176
    :catch_1d
    move-exception v5

    goto :goto_19
.end method

.method protected static isFullDictionary(Landroid/content/res/AssetFileDescriptor;)Z
    .registers 5
    .parameter "afd"

    .prologue
    .line 233
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    const-wide/16 v2, 0x22

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
