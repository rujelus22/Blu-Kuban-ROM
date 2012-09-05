.class public Lcom/vlingo/client/util/WebSearchUtil;
.super Ljava/lang/Object;
.source "WebSearchUtil.java"


# static fields
.field public static final WEB_SEARCH_URL_BAIDU_DEFAULT:Ljava/lang/String;

.field public static final WEB_SEARCH_URL_BAIDU_HOME_DEFAULT:Ljava/lang/String;

.field public static final WEB_SEARCH_URL_BING_DEFAULT:Ljava/lang/String;

.field public static final WEB_SEARCH_URL_BING_HOME_DEFAULT:Ljava/lang/String;

.field public static final WEB_SEARCH_URL_DAUM_DEFAULT:Ljava/lang/String;

.field public static final WEB_SEARCH_URL_DAUM_HOME_DEFAULT:Ljava/lang/String;

.field public static final WEB_SEARCH_URL_DEFAULT:Ljava/lang/String;

.field public static final WEB_SEARCH_URL_DEFAULT_CN:Ljava/lang/String;

.field public static final WEB_SEARCH_URL_GOOGLE_DEFAULT:Ljava/lang/String;

.field public static final WEB_SEARCH_URL_GOOGLE_HOME_DEFAULT:Ljava/lang/String;

.field public static final WEB_SEARCH_URL_HOME_DEFAULT:Ljava/lang/String;

.field public static final WEB_SEARCH_URL_HOME_DEFAULT_CN:Ljava/lang/String;

.field public static final WEB_SEARCH_URL_NAVER_DEFAULT:Ljava/lang/String;

.field public static final WEB_SEARCH_URL_NAVER_HOME_DEFAULT:Ljava/lang/String;

.field public static final WEB_SEARCH_URL_YAHOO_DEFAULT:Ljava/lang/String;

.field public static final WEB_SEARCH_URL_YAHOO_HOME_DEFAULT:Ljava/lang/String;

.field private static res:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/util/WebSearchUtil;->res:Landroid/content/res/Resources;

    .line 24
    sget-object v0, Lcom/vlingo/client/util/WebSearchUtil;->res:Landroid/content/res/Resources;

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_HOME_DEFAULT:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/vlingo/client/util/WebSearchUtil;->res:Landroid/content/res/Resources;

    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_DEFAULT:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/vlingo/client/util/WebSearchUtil;->res:Landroid/content/res/Resources;

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_HOME_DEFAULT_CN:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/vlingo/client/util/WebSearchUtil;->res:Landroid/content/res/Resources;

    const v1, 0x7f090036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_DEFAULT_CN:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/vlingo/client/util/WebSearchUtil;->res:Landroid/content/res/Resources;

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_BING_HOME_DEFAULT:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/vlingo/client/util/WebSearchUtil;->res:Landroid/content/res/Resources;

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_BING_DEFAULT:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/vlingo/client/util/WebSearchUtil;->res:Landroid/content/res/Resources;

    const v1, 0x7f09003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_YAHOO_HOME_DEFAULT:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/vlingo/client/util/WebSearchUtil;->res:Landroid/content/res/Resources;

    const v1, 0x7f09003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_YAHOO_DEFAULT:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/vlingo/client/util/WebSearchUtil;->res:Landroid/content/res/Resources;

    const v1, 0x7f090032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_BAIDU_HOME_DEFAULT:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/vlingo/client/util/WebSearchUtil;->res:Landroid/content/res/Resources;

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_BAIDU_DEFAULT:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/vlingo/client/util/WebSearchUtil;->res:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mcc:I

    const/16 v1, 0x136

    if-ne v0, v1, :cond_c7

    sget-object v0, Lcom/vlingo/client/util/WebSearchUtil;->res:Landroid/content/res/Resources;

    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_8d
    sput-object v0, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_GOOGLE_HOME_DEFAULT:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/vlingo/client/util/WebSearchUtil;->res:Landroid/content/res/Resources;

    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_GOOGLE_DEFAULT:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/vlingo/client/util/WebSearchUtil;->res:Landroid/content/res/Resources;

    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_NAVER_HOME_DEFAULT:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/vlingo/client/util/WebSearchUtil;->res:Landroid/content/res/Resources;

    const v1, 0x7f09003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_NAVER_DEFAULT:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/vlingo/client/util/WebSearchUtil;->res:Landroid/content/res/Resources;

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_DAUM_HOME_DEFAULT:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/vlingo/client/util/WebSearchUtil;->res:Landroid/content/res/Resources;

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_DAUM_DEFAULT:Ljava/lang/String;

    return-void

    .line 38
    :cond_c7
    sget-object v0, Lcom/vlingo/client/util/WebSearchUtil;->res:Landroid/content/res/Resources;

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWebSearchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .parameter "query"

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p0}, Lcom/vlingo/client/util/WebSearchUtil;->getWebSearchURI(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 56
    .local v0, searchIntent:Landroid/content/Intent;
    return-object v0
.end method

.method public static getWebSearchURI(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2
    .parameter "query"

    .prologue
    .line 133
    invoke-static {p0}, Lcom/vlingo/client/util/WebSearchUtil;->getWebSearchURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getWebSearchURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "query"

    .prologue
    .line 60
    sget-object v5, Lcom/vlingo/client/util/WebSearchUtil;->res:Landroid/content/res/Resources;

    const v6, 0x7f090029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, defaultWebSearchEngineName:Ljava/lang/String;
    const-string v5, "web_search_engine"

    invoke-static {v5, v0}, Lcom/vlingo/client/settings/Settings;->getEnum(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, engine:Ljava/lang/String;
    const-string v5, "yahoo"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 66
    invoke-static {p0}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 67
    const-string v5, "web_search_yahoo_default"

    sget-object v6, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_YAHOO_HOME_DEFAULT:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, url:Ljava/lang/String;
    :goto_29
    const-string v5, "{query}"

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 70
    .end local v2           #url:Ljava/lang/String;
    :cond_34
    const-string v5, "web_search_yahoo_query"

    sget-object v6, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_YAHOO_DEFAULT:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #url:Ljava/lang/String;
    goto :goto_29

    .line 73
    .end local v2           #url:Ljava/lang/String;
    :cond_3d
    const-string v5, "bing"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 74
    invoke-static {p0}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 75
    const-string v5, "web_search_bing_default"

    sget-object v6, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_BING_HOME_DEFAULT:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #url:Ljava/lang/String;
    goto :goto_29

    .line 78
    .end local v2           #url:Ljava/lang/String;
    :cond_54
    const-string v5, "web_search_bing_query"

    sget-object v6, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_BING_DEFAULT:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #url:Ljava/lang/String;
    goto :goto_29

    .line 81
    .end local v2           #url:Ljava/lang/String;
    :cond_5d
    const-string v5, "baidu"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 82
    invoke-static {p0}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 83
    const-string v5, "web_search_biadu_default"

    sget-object v6, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_BAIDU_HOME_DEFAULT:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #url:Ljava/lang/String;
    goto :goto_29

    .line 86
    .end local v2           #url:Ljava/lang/String;
    :cond_74
    const-string v5, "web_search_biadu_query"

    sget-object v6, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_BAIDU_DEFAULT:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #url:Ljava/lang/String;
    goto :goto_29

    .line 89
    .end local v2           #url:Ljava/lang/String;
    :cond_7d
    const-string v5, "google"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 90
    invoke-static {p0}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 91
    const-string v5, "web_search_google_default"

    sget-object v6, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_GOOGLE_HOME_DEFAULT:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #url:Ljava/lang/String;
    goto :goto_29

    .line 94
    .end local v2           #url:Ljava/lang/String;
    :cond_94
    const-string v5, "web_search_google_query"

    sget-object v6, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_GOOGLE_DEFAULT:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #url:Ljava/lang/String;
    goto :goto_29

    .line 97
    .end local v2           #url:Ljava/lang/String;
    :cond_9d
    const-string v5, "naver"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 98
    invoke-static {p0}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 99
    const-string v5, "web_search_naver_default"

    sget-object v6, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_NAVER_HOME_DEFAULT:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #url:Ljava/lang/String;
    goto/16 :goto_29

    .line 102
    .end local v2           #url:Ljava/lang/String;
    :cond_b5
    const-string v5, "web_search_naver_query"

    sget-object v6, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_NAVER_DEFAULT:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #url:Ljava/lang/String;
    goto/16 :goto_29

    .line 105
    .end local v2           #url:Ljava/lang/String;
    :cond_bf
    const-string v5, "daum"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 106
    invoke-static {p0}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 107
    const-string v5, "web_search_daum_default"

    sget-object v6, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_DAUM_HOME_DEFAULT:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #url:Ljava/lang/String;
    goto/16 :goto_29

    .line 110
    .end local v2           #url:Ljava/lang/String;
    :cond_d7
    const-string v5, "web_search_daum_query"

    sget-object v6, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_DAUM_DEFAULT:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #url:Ljava/lang/String;
    goto/16 :goto_29

    .line 114
    .end local v2           #url:Ljava/lang/String;
    :cond_e1
    sget-object v4, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_HOME_DEFAULT:Ljava/lang/String;

    .line 115
    .local v4, urlHomeDefault:Ljava/lang/String;
    sget-object v3, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_DEFAULT:Ljava/lang/String;

    .line 116
    .local v3, urlDefault:Ljava/lang/String;
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isChineseBuild()Z

    move-result v5

    if-eqz v5, :cond_ef

    .line 117
    sget-object v4, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_HOME_DEFAULT_CN:Ljava/lang/String;

    .line 118
    sget-object v3, Lcom/vlingo/client/util/WebSearchUtil;->WEB_SEARCH_URL_DEFAULT_CN:Ljava/lang/String;

    .line 121
    :cond_ef
    invoke-static {p0}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_fd

    .line 122
    const-string v5, "web_search_home_url"

    invoke-static {v5, v4}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #url:Ljava/lang/String;
    goto/16 :goto_29

    .line 125
    .end local v2           #url:Ljava/lang/String;
    :cond_fd
    const-string v5, "web_search_url"

    invoke-static {v5, v3}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #url:Ljava/lang/String;
    goto/16 :goto_29
.end method

.method public static launchWebSearch(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "ctx"
    .parameter "query"

    .prologue
    .line 50
    invoke-static {p1}, Lcom/vlingo/client/util/WebSearchUtil;->getWebSearchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 51
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    return-void
.end method
