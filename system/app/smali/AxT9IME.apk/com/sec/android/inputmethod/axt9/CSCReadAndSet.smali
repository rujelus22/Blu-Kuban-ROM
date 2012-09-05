.class public Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;
.super Landroid/content/BroadcastReceiver;
.source "CSCReadAndSet.java"


# static fields
.field private static mCustomerNode:Lorg/w3c/dom/Node;

.field private static mDoc:Lorg/w3c/dom/Document;

.field private static mRoot:Lorg/w3c/dom/Node;

.field private static sInstance:Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCscVal_Auto_capitalization:Z

.field private mCscVal_Auto_period:Z

.field private mCscVal_LangList:Ljava/lang/String;

.field private mCscVal_apply_da_concept:Z

.field private mCscVal_auto_append:Z

.field private mCscVal_auto_subtitution:Z

.field private mCscVal_inputmethod_type:Ljava/lang/String;

.field private mCscVal_keypad_sweeping:Z

.field private mCscVal_lang_az:Z

.field private mCscVal_lang_bg:Z

.field private mCscVal_lang_ca:Z

.field private mCscVal_lang_cs:Z

.field private mCscVal_lang_da:Z

.field private mCscVal_lang_de:Z

.field private mCscVal_lang_el:Z

.field private mCscVal_lang_en_gb:Z

.field private mCscVal_lang_en_us:Z

.field private mCscVal_lang_es:Z

.field private mCscVal_lang_et:Z

.field private mCscVal_lang_eu:Z

.field private mCscVal_lang_fi:Z

.field private mCscVal_lang_fr:Z

.field private mCscVal_lang_gl:Z

.field private mCscVal_lang_hr:Z

.field private mCscVal_lang_hu:Z

.field private mCscVal_lang_hy:Z

.field private mCscVal_lang_is:Z

.field private mCscVal_lang_it:Z

.field private mCscVal_lang_ka:Z

.field private mCscVal_lang_kk:Z

.field private mCscVal_lang_ko:Z

.field private mCscVal_lang_lt:Z

.field private mCscVal_lang_lv:Z

.field private mCscVal_lang_nl:Z

.field private mCscVal_lang_no:Z

.field private mCscVal_lang_pl:Z

.field private mCscVal_lang_pt:Z

.field private mCscVal_lang_ro:Z

.field private mCscVal_lang_ru:Z

.field private mCscVal_lang_sk:Z

.field private mCscVal_lang_sl:Z

.field private mCscVal_lang_sr:Z

.field private mCscVal_lang_sv:Z

.field private mCscVal_lang_tr:Z

.field private mCscVal_lang_uk:Z

.field private mCscVal_next_word_prediction:Z

.field private mCscVal_recapture:Z

.field private mCscVal_recognition_time:Ljava/lang/String;

.field private mCscVal_regional_correction:Z

.field private mCscVal_spell_correction:Z

.field private mCscVal_trace:Z

.field private mCscVal_use_trace:Z

.field private mCscVal_voice_input_enabled:Z

.field private mCscVal_word_completion:Z

.field private mCscVal_word_completion_point:Ljava/lang/String;

.field private mCscVal_xt9_enabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->sInstance:Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 174
    return-void
.end method

.method private getCustomerPref()Z
    .registers 3

    .prologue
    .line 298
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.sec.android.inputmethod.axt9/shared_prefs/com.sec.android.inputmethod.axt9_preferences.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, filePrefs:Ljava/io/File;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCustomerNode:Lorg/w3c/dom/Node;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_15

    if-nez v1, :cond_16

    .line 301
    :cond_13
    const/4 v1, 0x1

    .line 307
    .end local v0           #filePrefs:Ljava/io/File;
    :goto_14
    return v1

    .line 303
    :catch_15
    move-exception v1

    .line 307
    :cond_16
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;
    .registers 3
    .parameter "fileName"

    .prologue
    .line 177
    if-nez p0, :cond_c

    .line 178
    sget-object v0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->sInstance:Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;

    const-string v1, "others.xml"

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->loadXMLFile(Ljava/lang/String;)V

    .line 181
    :goto_9
    sget-object v0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->sInstance:Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;

    return-object v0

    .line 180
    :cond_c
    sget-object v0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->sInstance:Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->loadXMLFile(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 9
    .parameter "parent"
    .parameter "tagName"

    .prologue
    const/4 v4, 0x0

    .line 226
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move-object v0, v4

    .line 244
    :cond_6
    :goto_6
    return-object v0

    .line 232
    :cond_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 233
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_27

    .line 234
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 235
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_12
    if-ge v2, v3, :cond_27

    .line 236
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 237
    .local v0, child:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_24

    .line 239
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 235
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :cond_27
    move-object v0, v4

    .line 244
    goto :goto_6
.end method

.method private getTagValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "tagFullName"

    .prologue
    const/4 v1, 0x0

    .line 248
    if-eqz p1, :cond_7

    sget-object v2, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCustomerNode:Lorg/w3c/dom/Node;

    if-nez v2, :cond_8

    .line 260
    :cond_7
    :goto_7
    return-object v1

    .line 254
    :cond_8
    sget-object v2, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCustomerNode:Lorg/w3c/dom/Node;

    invoke-direct {p0, v2, p1}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 256
    .local v0, node:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_7

    .line 257
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method private getTagValueReturnBoolean(Ljava/lang/String;Z)Z
    .registers 6
    .parameter "tagFullName"
    .parameter "defValue"

    .prologue
    .line 264
    if-nez p1, :cond_4

    .line 265
    const/4 v1, 0x0

    .line 279
    :cond_3
    :goto_3
    return v1

    .line 270
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, tagValue:Ljava/lang/String;
    move v1, p2

    .line 274
    .local v1, value:Z
    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 275
    const/4 v1, 0x1

    goto :goto_3

    .line 276
    :cond_13
    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 277
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "tagFullName"
    .parameter "defValue"

    .prologue
    .line 283
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 284
    :cond_4
    const/4 p2, 0x0

    .line 293
    .end local p2
    :cond_5
    :goto_5
    return-object p2

    .line 288
    .restart local p2
    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, tagValue:Ljava/lang/String;
    if-eqz v0, :cond_5

    move-object p2, v0

    .line 293
    goto :goto_5
.end method

.method private loadXMLFile(Ljava/lang/String;)V
    .registers 7
    .parameter "fileName"

    .prologue
    .line 196
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 197
    .local v1, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 198
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/csc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    sput-object v2, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mDoc:Lorg/w3c/dom/Document;

    .line 199
    sget-object v2, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mDoc:Lorg/w3c/dom/Document;

    if-nez v2, :cond_2b

    .line 223
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_2a
    :goto_2a
    return-void

    .line 204
    .restart local v0       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_2b
    sget-object v2, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    sput-object v2, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mRoot:Lorg/w3c/dom/Node;

    .line 205
    sget-object v2, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mRoot:Lorg/w3c/dom/Node;

    if-eqz v2, :cond_2a

    .line 210
    sget-object v2, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mRoot:Lorg/w3c/dom/Node;

    const-string v3, "SamsungKeypad"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    sput-object v2, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCustomerNode:Lorg/w3c/dom/Node;

    .line 211
    sget-object v2, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCustomerNode:Lorg/w3c/dom/Node;
    :try_end_43
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_43} :catch_4a
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_43} :catch_48
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_43} :catch_46

    if-nez v2, :cond_2a

    goto :goto_2a

    .line 220
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_46
    move-exception v2

    goto :goto_2a

    .line 218
    :catch_48
    move-exception v2

    goto :goto_2a

    .line 216
    :catch_4a
    move-exception v2

    goto :goto_2a
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 188
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getInstance(Ljava/lang/String;)Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;

    move-result-object v0

    .line 189
    .local v0, cscInstance:Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;
    if-eqz v0, :cond_a

    .line 190
    invoke-virtual {v0, p1}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->setCustomerCSC(Landroid/content/Context;)V

    .line 192
    :cond_a
    return-void
.end method

.method public setCustomerCSC(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 317
    const-string v2, "inputlist"

    const-string v3, "en(US);es;"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_LangList:Ljava/lang/String;

    .line 319
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_LangList:Ljava/lang/String;

    sput-object v2, Lcom/sec/android/inputmethod/axt9/AxT9Config;->LANG_LIST:Ljava/lang/String;

    .line 321
    if-eqz p1, :cond_1c

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getCustomerPref()Z

    move-result v2

    if-nez v2, :cond_1c

    sget-object v2, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCustomerNode:Lorg/w3c/dom/Node;

    if-nez v2, :cond_1d

    .line 508
    :cond_1c
    :goto_1c
    return-void

    .line 325
    :cond_1d
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mContext:Landroid/content/Context;

    .line 329
    const-string v2, "apply_da"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_apply_da_concept:Z

    .line 330
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_apply_da_concept:Z

    sput-boolean v2, Lcom/sec/android/inputmethod/axt9/AxT9Config;->DA_MODE:Z

    .line 331
    const-string v2, "SIP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AxT9Config.DA_MODE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/sec/android/inputmethod/axt9/AxT9Config;->DA_MODE:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v2, "use_trace"

    invoke-direct {p0, v2, v6}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_use_trace:Z

    .line 335
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_use_trace:Z

    sput-boolean v2, Lcom/sec/android/inputmethod/axt9/AxT9Config;->USE_TRACE:Z

    .line 337
    const-string v2, "inputmethod_type"

    const-string v3, "QwertyKeypad"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_inputmethod_type:Ljava/lang/String;

    .line 338
    const-string v2, "xt9_enabled"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_xt9_enabled:Z

    .line 339
    const-string v2, "word_completion"

    invoke-direct {p0, v2, v6}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_word_completion:Z

    .line 340
    const-string v2, "word_completion_point"

    const-string v3, "2"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_word_completion_point:Ljava/lang/String;

    .line 341
    const-string v2, "spell_correction"

    invoke-direct {p0, v2, v6}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_spell_correction:Z

    .line 342
    const-string v2, "next_word_prediction"

    invoke-direct {p0, v2, v6}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_next_word_prediction:Z

    .line 343
    const-string v2, "auto_append"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_auto_append:Z

    .line 344
    const-string v2, "auto_subtitution"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_auto_subtitution:Z

    .line 345
    const-string v2, "regional_correction"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_regional_correction:Z

    .line 346
    const-string v2, "recapture"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_recapture:Z

    .line 347
    const-string v2, "trace"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_trace:Z

    .line 348
    const-string v2, "keypad_sweeping"

    invoke-direct {p0, v2, v6}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_keypad_sweeping:Z

    .line 349
    const-string v2, "Auto_capitalization"

    invoke-direct {p0, v2, v6}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_Auto_capitalization:Z

    .line 350
    const-string v2, "recognition_time"

    const-string v3, "500"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_recognition_time:Ljava/lang/String;

    .line 351
    const-string v2, "Auto_period"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_Auto_period:Z

    .line 352
    const-string v2, "voice_input_enabled"

    invoke-direct {p0, v2, v6}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_voice_input_enabled:Z

    .line 353
    const-string v2, "lang_en_gb"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_en_gb:Z

    .line 354
    const-string v2, "lang_en_us"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_en_us:Z

    .line 355
    const-string v2, "lang_de"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_de:Z

    .line 356
    const-string v2, "lang_nl"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_nl:Z

    .line 357
    const-string v2, "lang_pl"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_pl:Z

    .line 358
    const-string v2, "lang_fr"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_fr:Z

    .line 359
    const-string v2, "lang_it"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_it:Z

    .line 360
    const-string v2, "lang_pt"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_pt:Z

    .line 361
    const-string v2, "lang_es"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_es:Z

    .line 362
    const-string v2, "lang_tr"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_tr:Z

    .line 363
    const-string v2, "lang_ko"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_ko:Z

    .line 365
    const-string v2, "Bulgarian"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_bg:Z

    .line 366
    const-string v2, "Czech"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_cs:Z

    .line 367
    const-string v2, "Danish"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_da:Z

    .line 368
    const-string v2, "Greek"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_el:Z

    .line 369
    const-string v2, "Finnish"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_fi:Z

    .line 370
    const-string v2, "Hungarian"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_hu:Z

    .line 371
    const-string v2, "Norwegian"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_no:Z

    .line 372
    const-string v2, "Romanian"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_ro:Z

    .line 373
    const-string v2, "Russian"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_ru:Z

    .line 374
    const-string v2, "Slovak"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_sk:Z

    .line 375
    const-string v2, "Swedish"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_sv:Z

    .line 376
    const-string v2, "Ukrainian"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_uk:Z

    .line 377
    const-string v2, "Slovenian"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_sl:Z

    .line 378
    const-string v2, "Latvian"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_lv:Z

    .line 379
    const-string v2, "Lithuanian"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_lt:Z

    .line 380
    const-string v2, "Croatian"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_hr:Z

    .line 381
    const-string v2, "Serbian"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_sr:Z

    .line 383
    const-string v2, "Estonian"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_et:Z

    .line 384
    const-string v2, "Kazakh"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_kk:Z

    .line 386
    const-string v2, "Armenian"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_hy:Z

    .line 387
    const-string v2, "Azerbaijani"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_az:Z

    .line 388
    const-string v2, "Georgian"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_ka:Z

    .line 390
    const-string v2, "Basque"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_eu:Z

    .line 391
    const-string v2, "Catalan"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_ca:Z

    .line 392
    const-string v2, "Galician"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_gl:Z

    .line 394
    const-string v2, "Icelandic"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_is:Z

    .line 411
    const-string v2, "QwertyKeypad"

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_inputmethod_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a6

    .line 412
    const-string v2, "0"

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_inputmethod_type:Ljava/lang/String;

    .line 425
    :goto_20d
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.android.inputmethod.axt9_preferences"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 426
    .local v1, sPrefs:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_1c

    .line 431
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 432
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_1c

    .line 438
    const-string v2, "apply_da"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_apply_da_concept:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 441
    const-string v2, "use_trace"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_use_trace:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 443
    const-string v2, "inputmethod_type"

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_inputmethod_type:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 444
    const-string v2, "xt9_enabled"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_xt9_enabled:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 445
    const-string v2, "word_completion"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_word_completion:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 446
    const-string v2, "word_completion_point"

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_word_completion_point:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 447
    const-string v2, "spell_correction"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_spell_correction:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 448
    const-string v2, "next_word_prediction"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_next_word_prediction:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 449
    const-string v2, "auto_append"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_auto_append:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 450
    const-string v2, "auto_subtitution"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_auto_subtitution:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 451
    const-string v2, "regional_correction"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_regional_correction:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 452
    const-string v2, "recapture"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_recapture:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 453
    const-string v2, "trace"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_trace:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 454
    const-string v2, "keypad_sweeping"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_keypad_sweeping:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 455
    const-string v2, "Auto_capitalization"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_Auto_capitalization:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 456
    const-string v2, "recognition_time"

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_recognition_time:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 457
    const-string v2, "Auto_period"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_Auto_period:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 458
    const-string v2, "voice_input_enabled"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_voice_input_enabled:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 459
    const-string v2, "en(UK)"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_en_gb:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 460
    const-string v2, "en(US)"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_en_us:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 461
    const-string v2, "de"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_de:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 462
    const-string v2, "nl"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_nl:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 463
    const-string v2, "pl"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_pl:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 464
    const-string v2, "fr"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_fr:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 465
    const-string v2, "it"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_it:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 466
    const-string v2, "pt"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_pt:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 467
    const-string v2, "es"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_es:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 468
    const-string v2, "tr"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_tr:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 469
    const-string v2, "ko"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_ko:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 471
    const-string v2, "bg"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_bg:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 472
    const-string v2, "cs"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_cs:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 473
    const-string v2, "da"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_da:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 474
    const-string v2, "el"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_el:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 475
    const-string v2, "fi"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_fi:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 476
    const-string v2, "hu"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_hu:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 477
    const-string v2, "no"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_no:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 478
    const-string v2, "ro"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_ro:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 479
    const-string v2, "ru"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_ru:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 480
    const-string v2, "sk"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_sk:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 481
    const-string v2, "sv"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_sv:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 482
    const-string v2, "uk"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_uk:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 483
    const-string v2, "sl"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_sl:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 484
    const-string v2, "lv"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_lv:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 485
    const-string v2, "lt"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_lt:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 486
    const-string v2, "hr"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_hr:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 487
    const-string v2, "sr"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_sr:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 489
    const-string v2, "et"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_et:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 490
    const-string v2, "kk"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_kk:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 492
    const-string v2, "hy"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_hy:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 493
    const-string v2, "az"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_az:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 494
    const-string v2, "ka"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_ka:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 496
    const-string v2, "eu"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_eu:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 497
    const-string v2, "ca"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_ca:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 498
    const-string v2, "gl"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_gl:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 500
    const-string v2, "is"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_is:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 502
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-ne v2, v6, :cond_1c

    goto/16 :goto_1c

    .line 413
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sPrefs:Landroid/content/SharedPreferences;
    :cond_3a6
    const-string v2, "3x4Keypad"

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_inputmethod_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b6

    .line 414
    const-string v2, "1"

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_inputmethod_type:Ljava/lang/String;

    goto/16 :goto_20d

    .line 415
    :cond_3b6
    const-string v2, "HandwritingBox1"

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_inputmethod_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c6

    .line 416
    const-string v2, "2"

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_inputmethod_type:Ljava/lang/String;

    goto/16 :goto_20d

    .line 417
    :cond_3c6
    const-string v2, "HandwritingBox2"

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_inputmethod_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d6

    .line 418
    const-string v2, "3"

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_inputmethod_type:Ljava/lang/String;

    goto/16 :goto_20d

    .line 420
    :cond_3d6
    const-string v2, "0"

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_inputmethod_type:Ljava/lang/String;

    goto/16 :goto_20d
.end method
