.class Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$4;
.super Ljava/lang/Object;
.source "VoiceListOptionShareAppListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 16
    .parameter
    .parameter

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mDisplayedAppList:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 255
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 257
    const-string v4, "audio/amr"

    .line 258
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 259
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mSharableAppList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_29
    :goto_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 262
    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 264
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 267
    :cond_55
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    sput-object v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mShareInfo:Landroid/content/pm/ResolveInfo;

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    const-string v1, "share_app_info"

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 270
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 271
    const-string v1, "share_app_packageName"

    sget-object v6, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mShareInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 272
    const-string v1, "share_app_name"

    sget-object v6, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mShareInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 273
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v6, v5

    move-object v1, v2

    move-object v2, v4

    .line 275
    :goto_85
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_d4

    .line 276
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move v4, v5

    .line 278
    :goto_92
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v8}, Landroid/content/IntentFilter;->countActions()I

    move-result v8

    if-ge v4, v8, :cond_d0

    .line 279
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v8, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b2

    .line 280
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->getSetOfMimeType(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->access$200(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 284
    :cond_b2
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v8, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_132

    .line 285
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->getSetOfMimeType(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->access$200(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 278
    :goto_ca
    add-int/lit8 v4, v4, 0x1

    move-object v12, v2

    move-object v2, v3

    move-object v3, v12

    goto :goto_92

    .line 275
    :cond_d0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_85

    .line 291
    :cond_d4
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mMode:I
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->access$300(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;)I

    move-result v0

    if-ne v0, v11, :cond_f7

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mId:J
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->access$400(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mFile:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->access$500(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->singleSend(Landroid/content/Context;JLjava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->finish()V

    .line 315
    :cond_f6
    :goto_f6
    return-void

    .line 295
    :cond_f7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_117

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_117

    .line 296
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    const-class v2, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->startActivity(Landroid/content/Intent;)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->finish()V

    goto :goto_f6

    .line 308
    :cond_117
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f6

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f6

    .line 310
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    const-class v2, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    invoke-virtual {v1, v0, v11}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_f6

    :cond_132
    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_ca
.end method
