.class public Lcom/dropbox/android/util/b;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 39
    const-class v0, Lcom/dropbox/android/util/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/util/b;->a:Ljava/lang/String;

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.dropbox.android.activity.DropboxSendTo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/android/util/b;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 93
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_11

    .line 94
    check-cast p0, Landroid/app/Activity;

    .line 95
    :goto_6
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p0

    goto :goto_6

    .line 100
    :cond_11
    return-object p0
.end method

.method protected static a(Lcom/dropbox/android/util/d;Lcom/dropbox/android/util/e;Ljava/util/Collection;Lcom/dropbox/android/util/Z;)Landroid/content/DialogInterface$OnClickListener;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    new-instance v0, Lcom/dropbox/android/util/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dropbox/android/util/c;-><init>(Lcom/dropbox/android/util/d;Lcom/dropbox/android/util/e;Ljava/util/Collection;Lcom/dropbox/android/util/Z;)V

    return-object v0
.end method

.method public static a()V
    .registers 3

    .prologue
    .line 297
    invoke-static {}, Lcom/dropbox/android/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 298
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dropbox/android/activity/DropboxBrowser;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 300
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 301
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 4
    .parameter

    .prologue
    .line 48
    const v0, 0x7f090002

    .line 56
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 58
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v2, 0x35c

    if-le v1, v2, :cond_1c

    .line 59
    const v0, 0x7f090003

    .line 62
    :cond_1c
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 64
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 65
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v2, "video/mp4"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    :try_start_33
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 69
    invoke-static {}, Lcom/dropbox/android/util/h;->Z()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V
    :try_end_3d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_33 .. :try_end_3d} :catch_3e

    .line 77
    :goto_3d
    return-void

    .line 70
    :catch_3e
    move-exception v0

    .line 71
    sget-object v1, Lcom/dropbox/android/util/b;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    const v0, 0x7f09006d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3d
.end method

.method public static a(Landroid/content/Intent;Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 308
    const-string v0, "com.dropbox.android.intent.extra.DROPBOX_PATH"

    iget-object v1, p1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 280
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static a(Lcom/dropbox/android/util/d;Landroid/content/Context;Ljava/util/Collection;Lcom/dropbox/android/util/Z;Landroid/database/Cursor;)Z
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x7f09000d

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 144
    if-nez p4, :cond_22

    .line 145
    new-instance v0, Lcom/dropbox/android/activity/delegate/P;

    invoke-direct {v0}, Lcom/dropbox/android/activity/delegate/P;-><init>()V

    invoke-virtual {p3}, Lcom/dropbox/android/util/Z;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p1, v3, v1}, Lcom/dropbox/android/activity/delegate/P;->a(Landroid/content/Context;Lcom/dropbox/android/activity/E;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/dropbox/android/provider/B;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4

    .line 153
    :cond_22
    :try_start_22
    invoke-static {p2, p1}, Lcom/dropbox/android/util/aa;->a(Ljava/util/Collection;Landroid/content/Context;)Ljava/util/HashMap;
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_25} :catch_4b

    move-result-object v1

    .line 162
    invoke-static {p4}, Lcom/dropbox/android/util/aa;->a(Landroid/database/Cursor;)Ljava/util/Set;

    move-result-object v0

    .line 163
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/dropbox/android/util/aM;->a(Ljava/util/Set;Ljava/util/Set;)Ljava/util/HashSet;

    move-result-object v2

    .line 164
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/dropbox/android/util/aM;->a(Ljava/util/Set;Ljava/util/Set;)Ljava/util/HashSet;

    move-result-object v4

    .line 166
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 167
    sget-object v0, Lcom/dropbox/android/util/e;->a:Lcom/dropbox/android/util/e;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {p0, v0, v1, p3}, Lcom/dropbox/android/util/d;->a(Lcom/dropbox/android/util/e;Ljava/util/Collection;Lcom/dropbox/android/util/Z;)V

    :goto_49
    move v0, v6

    .line 250
    :goto_4a
    return v0

    .line 154
    :catch_4b
    move-exception v0

    .line 155
    sget-object v0, Lcom/dropbox/android/util/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security Exception trying to import: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const v0, 0x7f09003f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v6}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v7

    .line 160
    goto :goto_4a

    .line 172
    :cond_82
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_119

    .line 176
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v6, :cond_d5

    .line 177
    const v0, 0x7f0900cc

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 178
    const v0, 0x7f0900cd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v7

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v7

    invoke-static {v2, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 181
    const v0, 0x7f0900ce

    sget-object v2, Lcom/dropbox/android/util/e;->b:Lcom/dropbox/android/util/e;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {p0, v2, v1, p3}, Lcom/dropbox/android/util/b;->a(Lcom/dropbox/android/util/d;Lcom/dropbox/android/util/e;Ljava/util/Collection;Lcom/dropbox/android/util/Z;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    sget-object v0, Lcom/dropbox/android/util/e;->d:Lcom/dropbox/android/util/e;

    invoke-static {p0, v0, v3, p3}, Lcom/dropbox/android/util/b;->a(Lcom/dropbox/android/util/d;Lcom/dropbox/android/util/e;Ljava/util/Collection;Lcom/dropbox/android/util/Z;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-virtual {v5, v9, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 248
    :goto_d0
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_49

    .line 196
    :cond_d5
    const v0, 0x7f0900d7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 199
    const v0, 0x7f0900d8

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 200
    const v0, 0x7f0900d9

    sget-object v2, Lcom/dropbox/android/util/e;->b:Lcom/dropbox/android/util/e;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {p0, v2, v1, p3}, Lcom/dropbox/android/util/b;->a(Lcom/dropbox/android/util/d;Lcom/dropbox/android/util/e;Ljava/util/Collection;Lcom/dropbox/android/util/Z;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 207
    sget-object v0, Lcom/dropbox/android/util/e;->d:Lcom/dropbox/android/util/e;

    invoke-static {p0, v0, v3, p3}, Lcom/dropbox/android/util/b;->a(Lcom/dropbox/android/util/d;Lcom/dropbox/android/util/e;Ljava/util/Collection;Lcom/dropbox/android/util/Z;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-virtual {v5, v9, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_d0

    .line 218
    :cond_119
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v6, :cond_181

    const v0, 0x7f0900cf

    :goto_122
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v8, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 224
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v6, :cond_185

    const v0, 0x7f0900d0

    :goto_14c
    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 228
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v6, :cond_189

    const v0, 0x7f0900d1

    :goto_158
    sget-object v3, Lcom/dropbox/android/util/e;->b:Lcom/dropbox/android/util/e;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-static {p0, v3, v7, p3}, Lcom/dropbox/android/util/b;->a(Lcom/dropbox/android/util/d;Lcom/dropbox/android/util/e;Ljava/util/Collection;Lcom/dropbox/android/util/Z;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v6, :cond_18d

    const v0, 0x7f0900d2

    :goto_16e
    sget-object v3, Lcom/dropbox/android/util/e;->c:Lcom/dropbox/android/util/e;

    invoke-static {v2, v1}, Lcom/dropbox/android/util/aM;->a(Ljava/util/Set;Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {p0, v3, v1, p3}, Lcom/dropbox/android/util/b;->a(Lcom/dropbox/android/util/d;Lcom/dropbox/android/util/e;Ljava/util/Collection;Lcom/dropbox/android/util/Z;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_d0

    .line 218
    :cond_181
    const v0, 0x7f0900d3

    goto :goto_122

    .line 224
    :cond_185
    const v0, 0x7f0900d4

    goto :goto_14c

    .line 228
    :cond_189
    const v0, 0x7f0900d5

    goto :goto_158

    .line 237
    :cond_18d
    const v0, 0x7f0900d6

    goto :goto_16e
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 84
    sget-object v2, Lcom/dropbox/android/util/b;->b:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_10

    aget-object v4, v2, v1

    .line 85
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 86
    const/4 v0, 0x1

    .line 89
    :cond_10
    return v0

    .line 84
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public static b(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 104
    sget-object v0, Lcom/dropbox/android/util/b;->a:Ljava/lang/String;

    const-string v1, "Unauthorized token, unlinking account"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/a;->d()Z

    .line 106
    invoke-static {}, Lcom/dropbox/android/util/ba;->a()V

    .line 107
    invoke-static {}, Lcom/dropbox/android/util/b;->a()V

    .line 108
    return-void
.end method

.method public static c(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 6
    .parameter

    .prologue
    const/16 v4, 0xa

    .line 286
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-static {}, Lcom/dropbox/android/util/aW;->c()I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 287
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 288
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 289
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 290
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 291
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x106000c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 292
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 293
    return-object v1
.end method
