.class public Lcom/android/inputmethod/latin/DictionaryPackInstallBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DictionaryPackInstallBroadcastReceiver.java"


# static fields
.field static final NEW_DICTIONARY_INTENT_ACTION:Ljava/lang/String; = "com.android.inputmethod.latin.dictionarypack.newdict"


# instance fields
.field final mService:Lcom/android/inputmethod/latin/LatinIME;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/LatinIME;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryPackInstallBroadcastReceiver;->mService:Lcom/android/inputmethod/latin/LatinIME;

    .line 46
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 54
    .local v3, manager:Landroid/content/pm/PackageManager;
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 56
    .local v6, packageUri:Landroid/net/Uri;
    if-nez v6, :cond_18

    .line 94
    .end local v6           #packageUri:Landroid/net/Uri;
    :cond_17
    :goto_17
    return-void

    .line 57
    .restart local v6       #packageUri:Landroid/net/Uri;
    :cond_18
    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, packageName:Ljava/lang/String;
    if-eqz v5, :cond_17

    .line 61
    const/16 v9, 0x8

    :try_start_20
    invoke-virtual {v3, v5, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_23} :catch_3d

    move-result-object v4

    .line 65
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 66
    .local v7, providers:[Landroid/content/pm/ProviderInfo;
    if-eqz v7, :cond_17

    .line 69
    array-length v9, v7

    :goto_29
    if-ge v8, v9, :cond_17

    aget-object v2, v7, v8

    .line 70
    .local v2, info:Landroid/content/pm/ProviderInfo;
    const-string v10, "com.android.inputmethod.latin.dictionarypack"

    iget-object v11, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3f

    .line 71
    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryPackInstallBroadcastReceiver;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/LatinIME;->resetSuggestMainDict()V

    goto :goto_17

    .line 62
    .end local v2           #info:Landroid/content/pm/ProviderInfo;
    .end local v4           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v7           #providers:[Landroid/content/pm/ProviderInfo;
    :catch_3d
    move-exception v1

    .line 63
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_17

    .line 69
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #info:Landroid/content/pm/ProviderInfo;
    .restart local v4       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v7       #providers:[Landroid/content/pm/ProviderInfo;
    :cond_3f
    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    .line 79
    .end local v2           #info:Landroid/content/pm/ProviderInfo;
    .end local v4           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #packageUri:Landroid/net/Uri;
    .end local v7           #providers:[Landroid/content/pm/ProviderInfo;
    :cond_42
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_58

    .line 80
    const-string v9, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_58

    .line 90
    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryPackInstallBroadcastReceiver;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/LatinIME;->resetSuggestMainDict()V

    goto :goto_17

    .line 91
    :cond_58
    const-string v8, "com.android.inputmethod.latin.dictionarypack.newdict"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 92
    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryPackInstallBroadcastReceiver;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/LatinIME;->resetSuggestMainDict()V

    goto :goto_17
.end method
