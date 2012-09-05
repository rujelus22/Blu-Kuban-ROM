.class public Lcom/vlingo/client/typedrequests/provider/ApplicationSuggestionProvider;
.super Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;
.source "ApplicationSuggestionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/typedrequests/provider/ApplicationSuggestionProvider$ApplicationColumns;
    }
.end annotation


# static fields
.field public static final APPLICATION_PATH:Ljava/lang/String; = "applications"

.field private static final APP_FILTER_URI:Ljava/lang/String; = "content://applications/search"

.field private static final APP_URI:Ljava/lang/String; = "content://applications/applications"

.field public static final AUTHORITY:Ljava/lang/String; = "applications"

.field public static final NAME:Ljava/lang/String; = "ApplicationSuggestionProvider"

.field private static final SCORE_APPS:F = 0.5f


# instance fields
.field private final applicationsUri:Landroid/net/Uri;

.field private usePackageInfoMethod:Z


# direct methods
.method constructor <init>(I)V
    .registers 3
    .parameter "maxResults"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;-><init>(I)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/typedrequests/provider/ApplicationSuggestionProvider;->usePackageInfoMethod:Z

    .line 50
    const-string v0, "content://applications/search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/ApplicationSuggestionProvider;->applicationsUri:Landroid/net/Uri;

    .line 51
    return-void
.end method

.method private queryWithPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 18
    .parameter "context"
    .parameter "query"
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v12, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v9, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 131
    .local v11, pm:Landroid/content/pm/PackageManager;
    new-instance v10, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v10, v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 132
    .local v10, mainIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v10, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 136
    const/4 v3, 0x0

    invoke-virtual {v11, v10, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 137
    .local v7, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_33
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v8, v3, :cond_b5

    .line 138
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 139
    .local v13, ri:Landroid/content/pm/ResolveInfo;
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, label:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/vlingo/client/util/StringMatchUtil;->isPrefixMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.resource://"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, icon:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://applications/applications/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, appUri:Ljava/lang/String;
    new-instance v1, Lcom/vlingo/client/typedrequests/provider/Suggestion;

    const-string v3, "Application"

    const/high16 v6, 0x3f00

    invoke-direct/range {v1 .. v6}, Lcom/vlingo/client/typedrequests/provider/Suggestion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    .line 148
    .local v1, s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v1           #s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    .end local v4           #icon:Ljava/lang/String;
    .end local v5           #appUri:Ljava/lang/String;
    :cond_ad
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, p3

    if-lt v3, v0, :cond_b6

    .line 154
    .end local v2           #label:Ljava/lang/String;
    .end local v13           #ri:Landroid/content/pm/ResolveInfo;
    :cond_b5
    return-object v12

    .line 137
    .restart local v2       #label:Ljava/lang/String;
    .restart local v13       #ri:Landroid/content/pm/ResolveInfo;
    :cond_b6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_33
.end method

.method public static uriToComponentName(Landroid/net/Uri;)Landroid/content/ComponentName;
    .registers 7
    .parameter "appUri"

    .prologue
    const/4 v3, 0x0

    .line 162
    if-nez p0, :cond_4

    .line 170
    :cond_3
    :goto_3
    return-object v3

    .line 163
    :cond_4
    const-string v4, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 164
    const-string v4, "applications"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 165
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 166
    .local v2, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 167
    const-string v4, "applications"

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 168
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 169
    .local v1, packageName:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    .local v0, name:Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static uriToComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 2
    .parameter "appUri"

    .prologue
    .line 158
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/typedrequests/provider/ApplicationSuggestionProvider;->uriToComponentName(Landroid/net/Uri;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic executeQuery(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;->executeQuery(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    const-string v0, "ApplicationSuggestionProvider"

    return-object v0
.end method

.method protected query(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 20
    .parameter "context"
    .parameter "query"
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v10, 0x0

    .line 61
    .local v10, cur:Landroid/database/Cursor;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v15, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vlingo/client/typedrequests/provider/ApplicationSuggestionProvider;->usePackageInfoMethod:Z

    if-nez v1, :cond_17

    .line 64
    :try_start_c
    invoke-static/range {p2 .. p2}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_aa
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_9d

    move-result v1

    if-eqz v1, :cond_22

    .line 108
    :cond_12
    :goto_12
    if-eqz v10, :cond_17

    .line 109
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_17
    :goto_17
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vlingo/client/typedrequests/provider/ApplicationSuggestionProvider;->usePackageInfoMethod:Z

    if-eqz v1, :cond_21

    .line 113
    invoke-direct/range {p0 .. p3}, Lcom/vlingo/client/typedrequests/provider/ApplicationSuggestionProvider;->queryWithPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v15

    .line 118
    :cond_21
    return-object v15

    .line 67
    :cond_22
    const/4 v1, 0x3

    :try_start_23
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "name"

    aput-object v6, v3, v1

    const/4 v1, 0x1

    const-string v6, "icon"

    aput-object v6, v3, v1

    const/4 v1, 0x2

    const-string v6, "uri"

    aput-object v6, v3, v1

    .line 73
    .local v3, projection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/typedrequests/provider/ApplicationSuggestionProvider;->applicationsUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 77
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 79
    invoke-static {v10}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 80
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_12

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 81
    const-string v1, "name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 82
    .local v13, idxName:I
    const-string v1, "icon"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 83
    .local v12, idxIcon:I
    const-string v1, "uri"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 85
    .local v14, idxUri:I
    :cond_75
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, name:Ljava/lang/String;
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 87
    .local v7, icon:Ljava/lang/String;
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, appUri:Ljava/lang/String;
    new-instance v4, Lcom/vlingo/client/typedrequests/provider/Suggestion;

    const-string v6, "Application"

    const/high16 v9, 0x3f00

    invoke-direct/range {v4 .. v9}, Lcom/vlingo/client/typedrequests/provider/Suggestion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    .line 92
    .local v4, s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I
    :try_end_96
    .catchall {:try_start_23 .. :try_end_96} :catchall_aa
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_96} :catch_9d

    move-result v1

    move/from16 v0, p3

    if-lt v1, v0, :cond_75

    goto/16 :goto_12

    .line 97
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #projection:[Ljava/lang/String;
    .end local v4           #s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #icon:Ljava/lang/String;
    .end local v8           #appUri:Ljava/lang/String;
    .end local v12           #idxIcon:I
    .end local v13           #idxName:I
    .end local v14           #idxUri:I
    :catch_9d
    move-exception v11

    .line 105
    .local v11, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    :try_start_9f
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vlingo/client/typedrequests/provider/ApplicationSuggestionProvider;->usePackageInfoMethod:Z
    :try_end_a3
    .catchall {:try_start_9f .. :try_end_a3} :catchall_aa

    .line 108
    if-eqz v10, :cond_17

    .line 109
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_17

    .line 108
    .end local v11           #ex:Ljava/lang/Exception;
    :catchall_aa
    move-exception v1

    if-eqz v10, :cond_b0

    .line 109
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_b0
    throw v1
.end method
