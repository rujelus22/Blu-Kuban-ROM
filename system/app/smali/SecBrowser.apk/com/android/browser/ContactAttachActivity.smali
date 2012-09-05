.class public Lcom/android/browser/ContactAttachActivity;
.super Landroid/app/Activity;
.source "ContactAttachActivity.java"


# instance fields
.field private final LOGTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const-string v0, "ContactAttachActivity"

    iput-object v0, p0, Lcom/android/browser/ContactAttachActivity;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method private createAndWriteContacts([Landroid/net/Uri;)Landroid/net/Uri;
    .registers 15
    .parameter "uri"

    .prologue
    const/4 v12, 0x1

    .line 185
    const/4 v5, 0x0

    .line 186
    .local v5, sftemp:Ljava/io/File;
    const/4 v7, 0x0

    .line 188
    .local v7, stream:Ljava/io/FileOutputStream;
    const-string v9, "ContactAttachActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createAndWriteContacts create : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/browser/ContactAttachActivity;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/contacts.vcf"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :try_start_25
    new-instance v6, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/browser/ContactAttachActivity;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/contacts.vcf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_a7
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_41} :catch_7c

    .line 193
    .end local v5           #sftemp:Ljava/io/File;
    .local v6, sftemp:Ljava/io/File;
    :try_start_41
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-ne v9, v12, :cond_4a

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 194
    :cond_4a
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_53

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 195
    :cond_53
    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v9, 0x1

    invoke-direct {v8, v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_59
    .catchall {:try_start_41 .. :try_end_59} :catchall_ef
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_59} :catch_f6

    .line 197
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .local v8, stream:Ljava/io/FileOutputStream;
    move-object v0, p1

    .local v0, arr$:[Landroid/net/Uri;
    :try_start_5a
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_5c
    if-ge v2, v3, :cond_66

    aget-object v4, v0, v2

    .line 198
    .local v4, oneUri:Landroid/net/Uri;
    invoke-direct {p0, v8, v4}, Lcom/android/browser/ContactAttachActivity;->writeContactToStream(Ljava/io/OutputStream;Landroid/net/Uri;)Z
    :try_end_63
    .catchall {:try_start_5a .. :try_end_63} :catchall_f2
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_63} :catch_f9

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 208
    .end local v4           #oneUri:Landroid/net/Uri;
    :cond_66
    if-eqz v8, :cond_6b

    .line 209
    :try_start_68
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_71

    :cond_6b
    move-object v7, v8

    .end local v8           #stream:Ljava/io/FileOutputStream;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 216
    .end local v0           #arr$:[Landroid/net/Uri;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v6           #sftemp:Ljava/io/File;
    .restart local v5       #sftemp:Ljava/io/File;
    :cond_6d
    :goto_6d
    if-nez v5, :cond_b7

    .line 217
    const/4 v9, 0x0

    .line 223
    :goto_70
    return-object v9

    .line 211
    .end local v5           #sftemp:Ljava/io/File;
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .restart local v0       #arr$:[Landroid/net/Uri;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v6       #sftemp:Ljava/io/File;
    .restart local v8       #stream:Ljava/io/FileOutputStream;
    :catch_71
    move-exception v1

    .line 212
    .local v1, e:Ljava/io/IOException;
    const-string v9, "ContactAttachActivity"

    const-string v10, "IOException caught while closing stream"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v8

    .end local v8           #stream:Ljava/io/FileOutputStream;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 214
    .end local v6           #sftemp:Ljava/io/File;
    .restart local v5       #sftemp:Ljava/io/File;
    goto :goto_6d

    .line 202
    .end local v0           #arr$:[Landroid/net/Uri;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catch_7c
    move-exception v1

    .line 203
    .local v1, e:Ljava/lang/Exception;
    :goto_7d
    :try_start_7d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    const-string v9, "ContactAttachActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception e : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_7d .. :try_end_98} :catchall_a7

    .line 208
    if-eqz v7, :cond_6d

    .line 209
    :try_start_9a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    goto :goto_6d

    .line 211
    :catch_9e
    move-exception v1

    .line 212
    .local v1, e:Ljava/io/IOException;
    const-string v9, "ContactAttachActivity"

    const-string v10, "IOException caught while closing stream"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6d

    .line 207
    .end local v1           #e:Ljava/io/IOException;
    :catchall_a7
    move-exception v9

    .line 208
    :goto_a8
    if-eqz v7, :cond_ad

    .line 209
    :try_start_aa
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_ae

    .line 213
    :cond_ad
    :goto_ad
    throw v9

    .line 211
    :catch_ae
    move-exception v1

    .line 212
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "ContactAttachActivity"

    const-string v11, "IOException caught while closing stream"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ad

    .line 221
    .end local v1           #e:Ljava/io/IOException;
    :cond_b7
    const-string v9, "ContactAttachActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createAndWriteContacts final : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_70

    .line 207
    .end local v5           #sftemp:Ljava/io/File;
    .restart local v6       #sftemp:Ljava/io/File;
    :catchall_ef
    move-exception v9

    move-object v5, v6

    .end local v6           #sftemp:Ljava/io/File;
    .restart local v5       #sftemp:Ljava/io/File;
    goto :goto_a8

    .end local v5           #sftemp:Ljava/io/File;
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .restart local v0       #arr$:[Landroid/net/Uri;
    .restart local v6       #sftemp:Ljava/io/File;
    .restart local v8       #stream:Ljava/io/FileOutputStream;
    :catchall_f2
    move-exception v9

    move-object v7, v8

    .end local v8           #stream:Ljava/io/FileOutputStream;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6           #sftemp:Ljava/io/File;
    .restart local v5       #sftemp:Ljava/io/File;
    goto :goto_a8

    .line 202
    .end local v0           #arr$:[Landroid/net/Uri;
    .end local v5           #sftemp:Ljava/io/File;
    .restart local v6       #sftemp:Ljava/io/File;
    :catch_f6
    move-exception v1

    move-object v5, v6

    .end local v6           #sftemp:Ljava/io/File;
    .restart local v5       #sftemp:Ljava/io/File;
    goto :goto_7d

    .end local v5           #sftemp:Ljava/io/File;
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .restart local v0       #arr$:[Landroid/net/Uri;
    .restart local v6       #sftemp:Ljava/io/File;
    .restart local v8       #stream:Ljava/io/FileOutputStream;
    :catch_f9
    move-exception v1

    move-object v7, v8

    .end local v8           #stream:Ljava/io/FileOutputStream;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6           #sftemp:Ljava/io/File;
    .restart local v5       #sftemp:Ljava/io/File;
    goto :goto_7d
.end method

.method public static launchChooser(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 52
    const/4 v1, 0x1

    new-array v4, v1, [Landroid/content/Intent;

    .line 55
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v3, "text/x-vcard"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 58
    const/high16 v3, 0x1

    invoke-virtual {v5, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 63
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_139

    .line 64
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 65
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v1

    .line 66
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 69
    :goto_3f
    const-string v5, "ContactAttachActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "info packageName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v5, "ContactAttachActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "info icon "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v5, "ContactAttachActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "info labelRes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/browser/ContactAttachActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    new-instance v6, Landroid/content/pm/LabeledIntent;

    invoke-direct {v6, v5, v3, v0, v1}, Landroid/content/pm/LabeledIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 76
    aput-object v6, v4, v2

    .line 78
    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 79
    if-eqz v3, :cond_101

    .line 80
    array-length v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Landroid/content/Intent;

    .line 81
    aput-object v6, v1, v2

    .line 82
    :goto_a4
    array-length v0, v3

    if-ge v2, v0, :cond_102

    .line 83
    aget-object v0, v3, v2

    instance-of v0, v0, Landroid/content/Intent;

    if-nez v0, :cond_d2

    .line 84
    const-string v0, "ChooseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initial intent #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " not an Intent: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_d1
    return-void

    .line 88
    :cond_d2
    const-string v0, "ChooseActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initial intent #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is an Intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    add-int/lit8 v4, v2, 0x1

    aget-object v0, v3, v2

    check-cast v0, Landroid/content/Intent;

    aput-object v0, v1, v4

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_a4

    :cond_101
    move-object v1, v4

    .line 94
    :cond_102
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v0, "*/*"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    .line 100
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 101
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 102
    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 104
    const/4 v0, 0x4

    invoke-virtual {p0, v3, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d1

    :cond_139
    move v1, v2

    move-object v3, v0

    goto/16 :goto_3f
.end method

.method private writeContactToStream(Ljava/io/OutputStream;Landroid/net/Uri;)Z
    .registers 13
    .parameter "outstream"
    .parameter "uri"

    .prologue
    const/4 v7, 0x0

    .line 229
    const/4 v6, 0x0

    .line 231
    .local v6, stream:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 232
    .local v5, pos:I
    :try_start_3
    invoke-virtual {p0}, Lcom/android/browser/ContactAttachActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 233
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 234
    .local v1, avail:I
    new-array v2, v1, [B

    .line 236
    .local v2, data:[B
    :cond_11
    :goto_11
    array-length v8, v2

    sub-int/2addr v8, v5

    invoke-virtual {v6, v2, v5, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 237
    .local v0, amt:I
    if-gtz v0, :cond_2c

    .line 238
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_57
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1c} :catch_40

    .line 239
    const/4 v7, 0x1

    .line 253
    if-eqz v6, :cond_22

    .line 255
    :try_start_1f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    .line 261
    .end local v0           #amt:I
    .end local v1           #avail:I
    .end local v2           #data:[B
    :cond_22
    :goto_22
    return v7

    .line 256
    .restart local v0       #amt:I
    .restart local v1       #avail:I
    .restart local v2       #data:[B
    :catch_23
    move-exception v3

    .line 257
    .local v3, e:Ljava/io/IOException;
    const-string v8, "ContactAttachActivity"

    const-string v9, "IOException caught while closing stream"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 241
    .end local v3           #e:Ljava/io/IOException;
    :cond_2c
    add-int/2addr v5, v0

    .line 242
    :try_start_2d
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 243
    array-length v8, v2

    sub-int/2addr v8, v5

    if-le v1, v8, :cond_11

    .line 244
    add-int v8, v5, v1

    new-array v4, v8, [B

    .line 245
    .local v4, newData:[B
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v8, v4, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_57
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3e} :catch_40

    .line 246
    move-object v2, v4

    goto :goto_11

    .line 250
    .end local v0           #amt:I
    .end local v1           #avail:I
    .end local v2           #data:[B
    .end local v4           #newData:[B
    :catch_40
    move-exception v3

    .line 251
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_41
    const-string v8, "ContactAttachActivity"

    const-string v9, "IOException caught while opening or reading stream"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_57

    .line 253
    if-eqz v6, :cond_22

    .line 255
    :try_start_4a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_22

    .line 256
    :catch_4e
    move-exception v3

    .line 257
    const-string v8, "ContactAttachActivity"

    const-string v9, "IOException caught while closing stream"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 253
    .end local v3           #e:Ljava/io/IOException;
    :catchall_57
    move-exception v7

    if-eqz v6, :cond_5d

    .line 255
    :try_start_5a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    .line 258
    :cond_5d
    :goto_5d
    throw v7

    .line 256
    :catch_5e
    move-exception v3

    .line 257
    .restart local v3       #e:Ljava/io/IOException;
    const-string v8, "ContactAttachActivity"

    const-string v9, "IOException caught while closing stream"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5d
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 19
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 122
    const-string v12, "ContactAttachActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onActivityResult requestCode "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v12, "ContactAttachActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onActivityResult resultCode "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v12, "ContactAttachActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onActivityResult intent "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    packed-switch p1, :pswitch_data_10a

    .line 180
    :goto_51
    return-void

    .line 130
    :pswitch_52
    const/4 v6, 0x1

    .line 132
    .local v6, isCanceled:Z
    if-eqz p3, :cond_ae

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 135
    .local v3, extras:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, action:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v8, retIntent:Landroid/content/Intent;
    const-string v12, "android.intent.action.SEND"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ba

    .line 139
    const-string v12, "android.intent.extra.STREAM"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 140
    .local v9, uri:Landroid/net/Uri;
    const-string v12, "vcard"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, extrastring:Ljava/lang/String;
    if-eqz v4, :cond_ae

    const-string v12, "vcard"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ae

    .line 144
    const/4 v12, 0x1

    new-array v12, v12, [Landroid/net/Uri;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    invoke-direct {p0, v12}, Lcom/android/browser/ContactAttachActivity;->createAndWriteContacts([Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 145
    .local v7, outuri:Landroid/net/Uri;
    const-string v12, "ContactAttachActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "VCARD_SELECTED "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v8, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 148
    const/4 v12, -0x1

    invoke-virtual {p0, v12, v8}, Lcom/android/browser/ContactAttachActivity;->setResult(ILandroid/content/Intent;)V

    .line 149
    const/4 v6, 0x0

    .line 169
    .end local v1           #action:Ljava/lang/String;
    .end local v3           #extras:Landroid/os/Bundle;
    .end local v4           #extrastring:Ljava/lang/String;
    .end local v7           #outuri:Landroid/net/Uri;
    .end local v8           #retIntent:Landroid/content/Intent;
    .end local v9           #uri:Landroid/net/Uri;
    :cond_ae
    :goto_ae
    const/4 v12, 0x1

    if-ne v6, v12, :cond_b6

    .line 171
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/android/browser/ContactAttachActivity;->setResult(ILandroid/content/Intent;)V

    .line 175
    :cond_b6
    invoke-virtual {p0}, Lcom/android/browser/ContactAttachActivity;->finish()V

    goto :goto_51

    .line 151
    .restart local v1       #action:Ljava/lang/String;
    .restart local v3       #extras:Landroid/os/Bundle;
    .restart local v8       #retIntent:Landroid/content/Intent;
    :cond_ba
    const-string v12, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ae

    .line 152
    const-string v12, "android.intent.extra.STREAM"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 153
    .local v11, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 155
    .local v10, uriCount:I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v2, v12, [Landroid/net/Uri;

    .line 156
    .local v2, curis:[Landroid/net/Uri;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_d3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_e4

    .line 157
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    aput-object v12, v2, v5

    .line 156
    add-int/lit8 v5, v5, 0x1

    goto :goto_d3

    .line 160
    :cond_e4
    invoke-direct {p0, v2}, Lcom/android/browser/ContactAttachActivity;->createAndWriteContacts([Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 161
    .restart local v7       #outuri:Landroid/net/Uri;
    const-string v12, "ContactAttachActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "VCARD_SELECTED "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v8, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 164
    const/4 v12, -0x1

    invoke-virtual {p0, v12, v8}, Lcom/android/browser/ContactAttachActivity;->setResult(ILandroid/content/Intent;)V

    .line 165
    const/4 v6, 0x0

    goto :goto_ae

    .line 126
    nop

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_52
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/ContactAttachActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 117
    return-void
.end method
