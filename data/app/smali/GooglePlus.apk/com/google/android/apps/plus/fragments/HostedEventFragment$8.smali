.class Lcom/google/android/apps/plus/fragments/HostedEventFragment$8;
.super Landroid/os/AsyncTask;
.source "HostedEventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedEventFragment;->postPhotos(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$8;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1064
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$8;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .registers 12
    .parameter "params"

    .prologue
    .line 1067
    const/4 v8, 0x0

    aget-object v1, p1, v8

    .line 1068
    .local v1, eventId:Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v0, p1, v8

    .line 1069
    .local v0, accountName:Ljava/lang/String;
    const/4 v8, 0x2

    aget-object v3, p1, v8

    .line 1071
    .local v3, localUrls:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$8;->val$context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1072
    .local v4, resolver:Landroid/content/ContentResolver;
    sget-object v6, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->uploadsUri:Landroid/net/Uri;

    .line 1074
    .local v6, uploadUri:Landroid/net/Uri;
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1075
    .local v5, tokenizer:Ljava/util/StringTokenizer;
    :goto_16
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_53

    .line 1076
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1077
    .local v2, localUrl:Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1078
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "account"

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    const-string v8, "content_uri"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    const-string v8, "event_id"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$8;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcom/google/android/apps/plus/phone/InstantUpload;->getInstantShareEventId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 1082
    const-string v8, "album_id"

    const-string v9, "camera-sync"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    :goto_47
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_16

    .line 1084
    :cond_4b
    const-string v8, "album_id"

    const-string v9, "events"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 1088
    .end local v2           #localUrl:Ljava/lang/String;
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_53
    const/4 v8, 0x0

    return-object v8
.end method
