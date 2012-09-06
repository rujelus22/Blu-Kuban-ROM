.class Lcom/google/android/apps/plus/fragments/HostedEventFragment$7;
.super Landroid/os/AsyncTask;
.source "HostedEventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedEventFragment;->handleNewPhotoComplete(ILcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/String;)V
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
    .line 1020
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$7;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1020
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$7;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .registers 11
    .parameter "params"

    .prologue
    const/4 v8, 0x0

    .line 1023
    const/4 v6, 0x0

    aget-object v1, p1, v6

    .line 1024
    .local v1, eventId:Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v0, p1, v6

    .line 1025
    .local v0, accountName:Ljava/lang/String;
    const/4 v6, 0x2

    aget-object v2, p1, v6

    .line 1027
    .local v2, localUrl:Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1028
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "account"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const-string v6, "content_uri"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const-string v6, "event_id"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$7;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/apps/plus/phone/InstantUpload;->getInstantShareEventId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1041
    :goto_2a
    return-object v8

    .line 1034
    :cond_2b
    const-string v6, "album_id"

    const-string v7, "events"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$7;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1038
    .local v3, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->uploadsUri:Landroid/net/Uri;

    .line 1039
    .local v4, uploadUri:Landroid/net/Uri;
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2a
.end method
