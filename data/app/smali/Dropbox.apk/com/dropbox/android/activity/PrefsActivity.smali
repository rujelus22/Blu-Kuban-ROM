.class public Lcom/dropbox/android/activity/PrefsActivity;
.super Lcom/dropbox/android/activity/lock/LockableBetterPreferenceActivity;
.source "panda.py"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Landroid/preference/Preference;

.field private d:Landroid/preference/Preference;

.field private e:Landroid/preference/PreferenceCategory;

.field private f:Landroid/preference/Preference;

.field private g:Landroid/preference/ListPreference;

.field private h:Landroid/preference/ListPreference;

.field private i:Landroid/preference/CheckBoxPreference;

.field private j:Landroid/preference/Preference;

.field private k:Landroid/preference/Preference;

.field private l:Landroid/preference/Preference;

.field private m:Landroid/preference/Preference;

.field private n:Landroid/preference/Preference;

.field private o:Landroid/preference/Preference;

.field private p:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-class v0, Lcom/dropbox/android/activity/PrefsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/PrefsActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/LockableBetterPreferenceActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 405
    const-string v0, ""

    .line 407
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 408
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_12} :catch_c6

    .line 412
    :goto_12
    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 414
    const v2, 0x7f09012f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 415
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 417
    const v0, 0x7f090130

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v3

    invoke-virtual {v3}, Ldbxyzptlk/h/b;->a()Ldbxyzptlk/h/g;

    move-result-object v3

    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\n\n\nInfo: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v3, Ldbxyzptlk/h/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v3, Ldbxyzptlk/h/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v3, Ldbxyzptlk/h/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " UID: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v3, Ldbxyzptlk/h/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 422
    const/16 v0, 0x3e8

    invoke-static {v0}, Ldbxyzptlk/h/f;->a(I)Ljava/util/List;

    move-result-object v0

    .line 423
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 424
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 425
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8a

    .line 428
    :cond_ad
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-static {p0, v1, v2, v0}, Lcom/dropbox/android/activity/PrefsActivity;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void

    .line 409
    :catch_c6
    move-exception v1

    goto/16 :goto_12
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-static {p0, p1, p2, p3}, Lcom/dropbox/android/activity/PrefsActivity;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/PrefsActivity;Ldbxyzptlk/j/m;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/PrefsActivity;->a(Ldbxyzptlk/j/m;)V

    return-void
.end method

.method private a(Ldbxyzptlk/j/m;)V
    .registers 4
    .parameter

    .prologue
    .line 310
    invoke-virtual {p1}, Ldbxyzptlk/j/m;->f()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 311
    iget-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->f:Landroid/preference/Preference;

    const v1, 0x7f0900f0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 313
    invoke-static {}, Lcom/dropbox/android/util/X;->b()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 314
    invoke-virtual {p1}, Ldbxyzptlk/j/m;->p()Z

    move-result v0

    if-eqz v0, :cond_59

    const-string v0, "3g"

    .line 315
    :goto_1c
    iget-object v1, p0, Lcom/dropbox/android/activity/PrefsActivity;->g:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->g:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/dropbox/android/activity/PrefsActivity;->g:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->e:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/dropbox/android/activity/PrefsActivity;->g:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 319
    invoke-virtual {p1}, Ldbxyzptlk/j/m;->p()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 320
    invoke-virtual {p1}, Ldbxyzptlk/j/m;->q()Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string v0, "limit"

    .line 321
    :goto_41
    iget-object v1, p0, Lcom/dropbox/android/activity/PrefsActivity;->h:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->h:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/dropbox/android/activity/PrefsActivity;->h:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->e:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/dropbox/android/activity/PrefsActivity;->h:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 337
    :goto_58
    return-void

    .line 314
    :cond_59
    const-string v0, "wifi"

    goto :goto_1c

    .line 320
    :cond_5c
    const-string v0, "nolimit"

    goto :goto_41

    .line 325
    :cond_5f
    iget-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->e:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/dropbox/android/activity/PrefsActivity;->h:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_58

    .line 329
    :cond_67
    iget-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->e:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/dropbox/android/activity/PrefsActivity;->g:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 330
    iget-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->e:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/dropbox/android/activity/PrefsActivity;->h:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_58

    .line 333
    :cond_76
    iget-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->f:Landroid/preference/Preference;

    const v1, 0x7f0900ef

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 334
    iget-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->e:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/dropbox/android/activity/PrefsActivity;->g:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 335
    iget-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->e:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/dropbox/android/activity/PrefsActivity;->h:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_58
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 341
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 342
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 343
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    if-eqz p1, :cond_17

    .line 346
    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    :cond_17
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    :try_start_26
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_29
    .catch Landroid/content/ActivityNotFoundException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 357
    :goto_29
    return-void

    .line 354
    :catch_2a
    move-exception v0

    .line 355
    sget-object v0, Lcom/dropbox/android/activity/PrefsActivity;->b:Ljava/lang/String;

    const-string v1, "Mail app not found."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method


# virtual methods
.method public final a(J)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 304
    invoke-static {p0, p1, p2, v2}, Lcom/dropbox/android/util/af;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 305
    const v1, 0x7f0900eb

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/PrefsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/dropbox/android/activity/PrefsActivity;->o:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 307
    return-void
.end method

.method public final a(Ldbxyzptlk/p/x;J)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 275
    if-eqz p1, :cond_5b

    .line 276
    iget-wide v0, p1, Ldbxyzptlk/p/x;->c:J

    .line 277
    iget-wide v2, p1, Ldbxyzptlk/p/x;->d:J

    .line 278
    iget-wide v4, p1, Ldbxyzptlk/p/x;->e:J

    .line 280
    add-long/2addr v2, v4

    invoke-static {p0, v2, v3, v0, v1}, Lcom/dropbox/android/util/af;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v2

    .line 282
    const/4 v3, -0x1

    invoke-static {p0, v0, v1, v3}, Lcom/dropbox/android/util/af;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 284
    const v1, 0x7f0900de

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/PrefsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v7

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/dropbox/android/activity/PrefsActivity;->d:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p1, Ldbxyzptlk/p/x;->h:Ljava/lang/String;

    if-eqz v0, :cond_4f

    .line 288
    iget-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->c:Landroid/preference/Preference;

    iget-object v1, p1, Ldbxyzptlk/p/x;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 298
    :cond_36
    :goto_36
    invoke-static {p0, p2, p3, v6}, Lcom/dropbox/android/util/af;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 299
    const v1, 0x7f0900eb

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/PrefsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/dropbox/android/activity/PrefsActivity;->o:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 301
    return-void

    .line 290
    :cond_4f
    iget-object v0, p1, Ldbxyzptlk/p/x;->b:Ljava/lang/String;

    if-eqz v0, :cond_36

    .line 291
    iget-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->c:Landroid/preference/Preference;

    iget-object v1, p1, Ldbxyzptlk/p/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_36

    .line 295
    :cond_5b
    sget-object v0, Lcom/dropbox/android/activity/PrefsActivity;->b:Ljava/lang/String;

    const-string v1, "Null returned from account info call!"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 74
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/PrefsActivity;->requestWindowFeature(I)Z

    .line 76
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v1

    .line 79
    invoke-static {}, Ldbxyzptlk/j/a;->a()Ldbxyzptlk/j/a;

    move-result-object v2

    .line 82
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/PrefsActivity;->addPreferencesFromResource(I)V

    .line 84
    const-string v0, "settings_name"

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->c:Landroid/preference/Preference;

    .line 85
    const-string v0, "settings_space"

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->d:Landroid/preference/Preference;

    .line 87
    const-string v0, "camera_upload_category"

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->e:Landroid/preference/PreferenceCategory;

    .line 89
    const-string v0, "camera_upload_on_off"

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->f:Landroid/preference/Preference;

    .line 90
    iget-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->f:Landroid/preference/Preference;

    new-instance v3, Lcom/dropbox/android/activity/aW;

    invoke-direct {v3, p0, v1}, Lcom/dropbox/android/activity/aW;-><init>(Lcom/dropbox/android/activity/PrefsActivity;Ldbxyzptlk/j/m;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 109
    const-string v0, "camera_upload_connection"

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->g:Landroid/preference/ListPreference;

    .line 110
    iget-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->g:Landroid/preference/ListPreference;

    new-instance v3, Lcom/dropbox/android/activity/ba;

    invoke-direct {v3, p0, v1}, Lcom/dropbox/android/activity/ba;-><init>(Lcom/dropbox/android/activity/PrefsActivity;Ldbxyzptlk/j/m;)V

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    const-string v0, "camera_upload_3g_limit"

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->h:Landroid/preference/ListPreference;

    .line 122
    iget-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->h:Landroid/preference/ListPreference;

    new-instance v3, Lcom/dropbox/android/activity/bb;

    invoke-direct {v3, p0, v1}, Lcom/dropbox/android/activity/bb;-><init>(Lcom/dropbox/android/activity/PrefsActivity;Ldbxyzptlk/j/m;)V

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    invoke-static {}, Lcom/dropbox/android/util/X;->a()Z

    move-result v0

    if-nez v0, :cond_79

    .line 137
    invoke-virtual {p0}, Lcom/dropbox/android/activity/PrefsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/dropbox/android/activity/PrefsActivity;->e:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 140
    :cond_79
    const-string v0, "settings_lock_code"

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->i:Landroid/preference/CheckBoxPreference;

    .line 141
    invoke-virtual {v2}, Ldbxyzptlk/j/a;->d()Z

    move-result v0

    .line 142
    iget-object v2, p0, Lcom/dropbox/android/activity/PrefsActivity;->i:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 143
    iget-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->i:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/dropbox/android/activity/bc;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/bc;-><init>(Lcom/dropbox/android/activity/PrefsActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    const-string v0, "settings_unlink"

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->j:Landroid/preference/Preference;

    .line 154
    iget-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->j:Landroid/preference/Preference;

    new-instance v2, Lcom/dropbox/android/activity/bd;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/bd;-><init>(Lcom/dropbox/android/activity/PrefsActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 162
    const-string v0, "settings_version"

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->k:Landroid/preference/Preference;

    .line 163
    const-string v0, ""

    .line 165
    :try_start_b2
    invoke-virtual {p0}, Lcom/dropbox/android/activity/PrefsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dropbox/android/activity/PrefsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 166
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 167
    iget-object v2, p0, Lcom/dropbox/android/activity/PrefsActivity;->k:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_c6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b2 .. :try_end_c6} :catch_150

    .line 172
    :goto_c6
    const-string v2, "settings_watch_video"

    invoke-virtual {p0, v2}, Lcom/dropbox/android/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/dropbox/android/activity/PrefsActivity;->l:Landroid/preference/Preference;

    .line 173
    iget-object v2, p0, Lcom/dropbox/android/activity/PrefsActivity;->l:Landroid/preference/Preference;

    new-instance v3, Lcom/dropbox/android/activity/be;

    invoke-direct {v3, p0}, Lcom/dropbox/android/activity/be;-><init>(Lcom/dropbox/android/activity/PrefsActivity;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 181
    const-string v2, "settings_tell_friends"

    invoke-virtual {p0, v2}, Lcom/dropbox/android/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/dropbox/android/activity/PrefsActivity;->m:Landroid/preference/Preference;

    .line 182
    iget-object v2, p0, Lcom/dropbox/android/activity/PrefsActivity;->m:Landroid/preference/Preference;

    new-instance v3, Lcom/dropbox/android/activity/bf;

    invoke-direct {v3, p0, v1}, Lcom/dropbox/android/activity/bf;-><init>(Lcom/dropbox/android/activity/PrefsActivity;Ldbxyzptlk/j/m;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 201
    const-string v2, "settings_legal"

    invoke-virtual {p0, v2}, Lcom/dropbox/android/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/dropbox/android/activity/bg;

    invoke-direct {v3, p0}, Lcom/dropbox/android/activity/bg;-><init>(Lcom/dropbox/android/activity/PrefsActivity;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 226
    const-string v2, "settings_send_feedback"

    invoke-virtual {p0, v2}, Lcom/dropbox/android/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/dropbox/android/activity/PrefsActivity;->n:Landroid/preference/Preference;

    .line 227
    iget-object v2, p0, Lcom/dropbox/android/activity/PrefsActivity;->n:Landroid/preference/Preference;

    new-instance v3, Lcom/dropbox/android/activity/bi;

    invoke-direct {v3, p0, v0}, Lcom/dropbox/android/activity/bi;-><init>(Lcom/dropbox/android/activity/PrefsActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 244
    const-string v0, "settings_cache"

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->o:Landroid/preference/Preference;

    .line 246
    const-string v0, "settings_clear_cache"

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->p:Landroid/preference/Preference;

    .line 247
    iget-object v0, p0, Lcom/dropbox/android/activity/PrefsActivity;->p:Landroid/preference/Preference;

    new-instance v2, Lcom/dropbox/android/activity/aX;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/aX;-><init>(Lcom/dropbox/android/activity/PrefsActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 260
    invoke-virtual {v1}, Ldbxyzptlk/j/m;->c()Ldbxyzptlk/p/x;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_148

    .line 262
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/dropbox/android/activity/PrefsActivity;->a(Ldbxyzptlk/p/x;J)V

    .line 268
    :goto_12f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/PrefsActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 269
    new-instance v0, Ldbxyzptlk/e/s;

    invoke-direct {v0, p0}, Ldbxyzptlk/e/s;-><init>(Landroid/content/Context;)V

    .line 270
    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ldbxyzptlk/e/s;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 271
    const v0, 0x7f0900da

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/PrefsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/PrefsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 272
    return-void

    .line 264
    :cond_148
    sget-object v0, Lcom/dropbox/android/activity/PrefsActivity;->b:Ljava/lang/String;

    const-string v1, "onCreate(): Account info empty, should be set"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12f

    .line 168
    :catch_150
    move-exception v2

    goto/16 :goto_c6
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 361
    packed-switch p1, :pswitch_data_4e

    .line 391
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected dialog id in PrefsActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :pswitch_1c
    new-instance v0, Lcom/dropbox/android/activity/aY;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/aY;-><init>(Lcom/dropbox/android/activity/PrefsActivity;)V

    .line 380
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 381
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 382
    const v2, 0x7f090133

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 383
    const v0, 0x7f090134

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 385
    const v0, 0x7f090131

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 386
    const v0, 0x7f090132

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 387
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 389
    :goto_47
    return-object v0

    :pswitch_48
    invoke-static {p0}, Lcom/dropbox/android/util/b;->c(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_47

    .line 361
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_48
    .end packed-switch
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 397
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    .line 398
    invoke-static {}, Ldbxyzptlk/j/a;->a()Ldbxyzptlk/j/a;

    move-result-object v1

    .line 399
    iget-object v2, p0, Lcom/dropbox/android/activity/PrefsActivity;->i:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Ldbxyzptlk/j/a;->d()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 400
    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/PrefsActivity;->a(Ldbxyzptlk/j/m;)V

    .line 401
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/LockableBetterPreferenceActivity;->onResume()V

    .line 402
    return-void
.end method
