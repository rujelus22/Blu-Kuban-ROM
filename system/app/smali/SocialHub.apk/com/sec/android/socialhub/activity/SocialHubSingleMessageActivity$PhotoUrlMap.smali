.class public Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$PhotoUrlMap;
.super Ljava/lang/Object;
.source "SocialHubSingleMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhotoUrlMap"
.end annotation


# instance fields
.field public mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$PhotoUrlMap;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$PhotoUrlMap;->mMap:Ljava/util/HashMap;

    .line 1057
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$PhotoUrlMap;->mMap:Ljava/util/HashMap;

    .line 1058
    return-void
.end method

.method private getSenderInfoSnsDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;
    .registers 16
    .parameter "actor_id"
    .parameter "message_id"
    .parameter "folder"

    .prologue
    const/4 v11, 0x1

    .line 1080
    const/4 v6, 0x0

    .line 1081
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1085
    .local v8, info:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;
    :try_start_3
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1086
    .local v10, where:Ljava/lang/StringBuffer;
    const-string v0, "message_id"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1088
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$PhotoUrlMap;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sns/db/SnsDB$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "sender_photo_url"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "sender_name"

    aput-object v4, v2, v3

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1090
    if-eqz v6, :cond_5f

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v11, :cond_5f

    .line 1092
    new-instance v9, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;

    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$PhotoUrlMap;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    invoke-direct {v9, v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;-><init>(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)V
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_6c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_50} :catch_65

    .line 1093
    .end local v8           #info:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;
    .local v9, info:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;
    const/4 v0, 0x1

    :try_start_51
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;->mPhotoUrl:Ljava/lang/String;

    .line 1094
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;->mName:Ljava/lang/String;
    :try_end_5e
    .catchall {:try_start_51 .. :try_end_5e} :catchall_73
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5e} :catch_76

    move-object v8, v9

    .line 1103
    .end local v9           #info:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;
    .restart local v8       #info:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;
    :cond_5f
    if-eqz v6, :cond_64

    .line 1105
    .end local v10           #where:Ljava/lang/StringBuffer;
    :goto_61
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1109
    :cond_64
    return-object v8

    .line 1097
    :catch_65
    move-exception v7

    .line 1099
    .local v7, e:Ljava/lang/Exception;
    :goto_66
    :try_start_66
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6c

    .line 1103
    if-eqz v6, :cond_64

    goto :goto_61

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_6c
    move-exception v0

    :goto_6d
    if-eqz v6, :cond_72

    .line 1105
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1103
    :cond_72
    throw v0

    .end local v8           #info:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;
    .restart local v9       #info:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;
    .restart local v10       #where:Ljava/lang/StringBuffer;
    :catchall_73
    move-exception v0

    move-object v8, v9

    .end local v9           #info:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;
    .restart local v8       #info:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;
    goto :goto_6d

    .line 1097
    .end local v8           #info:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;
    .restart local v9       #info:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;
    :catch_76
    move-exception v7

    move-object v8, v9

    .end local v9           #info:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;
    .restart local v8       #info:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;
    goto :goto_66
.end method


# virtual methods
.method public getSenderInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;
    .registers 6
    .parameter "actor_id"
    .parameter "message_id"
    .parameter "folder"

    .prologue
    .line 1062
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$PhotoUrlMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;

    .line 1064
    .local v0, sender:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;
    if-nez v0, :cond_15

    .line 1066
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$PhotoUrlMap;->getSenderInfoSnsDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;

    move-result-object v0

    .line 1068
    if-eqz v0, :cond_15

    .line 1070
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$PhotoUrlMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    :cond_15
    return-object v0
.end method
