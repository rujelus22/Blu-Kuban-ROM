.class public Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;
.super Ljava/lang/Object;
.source "EvDictionaryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/baseframe/porting/EvDictionaryHelper$ListAdapter;
    }
.end annotation


# instance fields
.field private mDictionaryDialog:Landroid/app/AlertDialog;

.field private mStrDictionary:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->mStrDictionary:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->mDictionaryDialog:Landroid/app/AlertDialog;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->mStrDictionary:Ljava/lang/String;

    return-object v0
.end method

.method public static isSupportDictionary()Z
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public static performDictionary(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 12
    .parameter "activity"
    .parameter "strDicitionary"

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v1, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 156
    .local v1, locale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, strLocaleCode:Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, strKey:Ljava/lang/String;
    const-string v7, "en"

    .local v7, szSrc:Ljava/lang/String;
    const-string v5, "en"

    .local v5, szDst:Ljava/lang/String;
    const-string v6, "ko"

    .line 160
    .local v6, szOut:Ljava/lang/String;
    const-string v8, "zh_CN"

    invoke-virtual {v3, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_4f

    .line 161
    const-string v2, "zh"

    .line 168
    :cond_24
    :goto_24
    move-object v6, v2

    move-object v5, v2

    move-object v7, v2

    .line 172
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http://"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".wiktionary.org/wiki/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, string:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 175
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 176
    return-void

    .line 164
    .end local v0           #intent:Landroid/content/Intent;
    .end local v4           #string:Ljava/lang/String;
    :cond_4f
    const-string v8, "zh_TW"

    invoke-virtual {v3, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_24

    .line 165
    const-string v2, "zh"

    goto :goto_24
.end method


# virtual methods
.method public dismissDictionaryDialog()V
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->mDictionaryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 68
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->mDictionaryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 69
    :cond_9
    return-void
.end method

.method public isShowingDialog()Z
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->mDictionaryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    .line 61
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->mDictionaryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 62
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public performDictionary(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->mStrDictionary:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->performDictionary(Landroid/app/Activity;Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->mStrDictionary:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setDictionaryPopup(Landroid/app/Activity;)V
    .registers 9
    .parameter "activity"

    .prologue
    .line 38
    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->mStrDictionary:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 56
    :goto_4
    return-void

    .line 41
    :cond_5
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080245

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, string:Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_11
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->mStrDictionary:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 45
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    new-instance v0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper$ListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper$ListAdapter;-><init>(Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;Landroid/content/Context;)V

    .line 47
    .local v0, adapter:Lcom/infraware/office/baseframe/porting/EvDictionaryHelper$ListAdapter;
    new-instance v4, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper$1;

    invoke-direct {v4, p0, p1}, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper$1;-><init>(Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 52
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    .line 47
    iput-object v4, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->mDictionaryDialog:Landroid/app/AlertDialog;
    :try_end_35
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_11 .. :try_end_35} :catch_36

    goto :goto_4

    .line 53
    .end local v0           #adapter:Lcom/infraware/office/baseframe/porting/EvDictionaryHelper$ListAdapter;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :catch_36
    move-exception v2

    .line 54
    .local v2, e:Ljava/util/UnknownFormatConversionException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/UnknownFormatConversionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public setDictionaryString(Ljava/lang/String;)V
    .registers 2
    .parameter "strDictionary"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->mStrDictionary:Ljava/lang/String;

    .line 35
    return-void
.end method
