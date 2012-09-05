.class Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;
.super Ljava/lang/Object;
.source "AxT9OptonAdvancedSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 14
    .parameter

    .prologue
    const/16 v10, 0x12

    const/4 v5, -0x1

    const/16 v2, 0x9

    const/4 v3, 0x0

    .line 207
    const/4 v6, 0x0

    .line 209
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 210
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    const-class v1, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 216
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)I

    move-result v0

    if-ne v0, v5, :cond_aa

    .line 217
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 218
    const-string v1, "nb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_111

    .line 219
    const-string v0, "no"

    move-object v1, v0

    .line 222
    :goto_36
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-result-object v8

    .line 224
    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v9

    move v4, v3

    :goto_3f
    if-ge v4, v9, :cond_10c

    .line 225
    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 226
    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v1

    .line 227
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangStringId()I

    move-result v0

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->GetStirngWithID(I)Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;I)Ljava/lang/String;

    move-result-object v0

    move v11, v1

    move v1, v4

    move-object v4, v0

    move v0, v11

    .line 233
    :goto_7b
    if-eqz v0, :cond_7f

    if-ne v0, v10, :cond_10a

    .line 235
    :cond_7f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9Language;->LANGUAGE_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangStringId()I

    move-result v1

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->GetStirngWithID(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;I)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    move v11, v2

    move-object v2, v0

    move v0, v11

    .line 253
    :goto_91
    sget-boolean v4, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    if-nez v4, :cond_ee

    .line 255
    invoke-static {v0, v3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    .line 256
    if-eqz v0, :cond_9b

    .line 267
    :cond_9b
    :goto_9b
    const-string v0, "CurrentLanguage"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    invoke-virtual {v0, v7, v3}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 269
    const/4 v0, 0x1

    return v0

    .line 224
    :cond_a7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 239
    :cond_aa
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mLangDBIDList:[S
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)[S

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I
    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)I

    move-result v1

    aget-short v0, v0, v1

    if-ne v0, v10, :cond_cd

    .line 242
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9Language;->LANGUAGE_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangStringId()I

    move-result v1

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->GetStirngWithID(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;I)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    move v11, v2

    move-object v2, v0

    move v0, v11

    .line 243
    goto :goto_91

    .line 245
    :cond_cd
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mLangDBIDList:[S
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)[S

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I
    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)I

    move-result v1

    aget-short v0, v0, v1

    .line 246
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mLanguageList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)I

    move-result v2

    aget-object v2, v1, v2

    .line 247
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I
    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)I

    move-result v1

    goto :goto_91

    .line 260
    :cond_ee
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 261
    const-string v4, "com.samsung.sec.android.inputmethod.axt9.AxT9IME"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v4, "sendingActivity"

    const-string v5, "AxT9Option"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v4, "languageShouldSet"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    invoke-virtual {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_9b

    :cond_10a
    move-object v2, v4

    goto :goto_91

    :cond_10c
    move v0, v3

    move v1, v5

    move-object v4, v6

    goto/16 :goto_7b

    :cond_111
    move-object v1, v0

    goto/16 :goto_36
.end method
