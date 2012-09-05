.class Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;
.super Landroid/os/AsyncTask;
.source "AccountSettingsXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAccountListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V
    .registers 2
    .parameter

    .prologue
    .line 844
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 844
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 844
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->doInBackground([Ljava/lang/Long;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)[Ljava/lang/Object;
    .registers 16
    .parameter

    .prologue
    .line 847
    .line 848
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 849
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 851
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettingsXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #setter for: Lcom/android/email/activity/setup/AccountSettingsXL;->mDefaultAccount:Ljava/lang/Long;
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$902(Lcom/android/email/activity/setup/AccountSettingsXL;Ljava/lang/Long;)Ljava/lang/Long;

    .line 853
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "emailAddress!=\'snc@snc.snc\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 856
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 858
    const/4 v0, 0x0

    .line 859
    :try_start_36
    new-array v9, v1, [Landroid/preference/PreferenceActivity$Header;

    .line 861
    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    move-object v2, v6

    .line 862
    :cond_3d
    :goto_3d
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 863
    const/4 v1, 0x2

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 865
    const/4 v4, 0x0

    .line 866
    const/4 v3, 0x0

    .line 867
    const/4 v1, 0x0

    .line 868
    if-eqz v6, :cond_78

    const-string v11, "@"

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_78

    .line 869
    const-string v3, "@"

    invoke-virtual {v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 871
    array-length v11, v3

    const/4 v12, 0x1

    if-le v11, v12, :cond_78

    const/4 v11, 0x1

    aget-object v11, v3, v11

    if-eqz v11, :cond_78

    .line 872
    const/4 v1, 0x1

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 873
    const-string v1, "[.]"

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 874
    const/4 v11, 0x0

    aget-object v1, v1, v11

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 879
    :cond_78
    const/4 v11, 0x0

    aget-object v3, v3, v11

    const-string v11, "snc"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    const-string v3, "snc.snc"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 883
    :cond_8b
    const-string v3, "hotmail"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a3

    const-string v3, "msn"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a3

    const-string v3, "live"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 885
    :cond_a3
    const/4 v1, 0x0

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 886
    cmp-long v1, v3, v7

    if-nez v1, :cond_b2

    .line 887
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_3d

    .line 890
    :cond_b2
    const/4 v1, 0x2

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 895
    new-instance v11, Landroid/text/TextPaint;

    invoke-direct {v11}, Landroid/text/TextPaint;-><init>()V

    .line 897
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v12}, Lcom/android/email/activity/setup/AccountSettingsXL;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_111

    .line 898
    const/high16 v12, 0x433e

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v11, v12, v13}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    .line 906
    :goto_d2
    const/4 v11, 0x1

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 907
    new-instance v12, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v12}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 908
    iput-wide v3, v12, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 909
    iput-object v1, v12, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 910
    iput-object v11, v12, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 911
    const-class v1, Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 912
    invoke-static {v3, v4, v6}, Lcom/android/email/activity/setup/AccountSettingsFragment;->buildArguments(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v12, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 915
    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_126

    .line 916
    invoke-static {}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$600()Ljava/util/HashSet;

    move-result-object v1

    iget-wide v3, v12, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_120

    .line 917
    const v1, 0x7f02002d

    iput v1, v12, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 925
    :goto_10a
    add-int/lit8 v1, v0, 0x1

    aput-object v12, v9, v0

    move v0, v1

    goto/16 :goto_3d

    .line 901
    :cond_111
    const/high16 v12, 0x4302

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v11, v12, v13}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    :try_end_118
    .catchall {:try_start_36 .. :try_end_118} :catchall_119

    goto :goto_d2

    .line 1001
    :catchall_119
    move-exception v0

    if-eqz v5, :cond_11f

    .line 1002
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1001
    :cond_11f
    throw v0

    .line 919
    :cond_120
    const v1, 0x7f020028

    :try_start_123
    iput v1, v12, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    goto :goto_10a

    .line 922
    :cond_126
    const/4 v1, 0x0

    iput v1, v12, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    goto :goto_10a

    .line 930
    :cond_12a
    invoke-interface {v5, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v1, v0

    move-object v4, v2

    .line 931
    :cond_12f
    :goto_12f
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1f3

    .line 932
    const/4 v0, 0x2

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 934
    const/4 v3, 0x0

    .line 935
    const/4 v2, 0x0

    .line 936
    const/4 v0, 0x0

    .line 937
    if-eqz v6, :cond_16a

    const-string v10, "@"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_16a

    .line 938
    const-string v2, "@"

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 940
    array-length v10, v2

    const/4 v11, 0x1

    if-le v10, v11, :cond_16a

    const/4 v10, 0x1

    aget-object v10, v2, v10

    if-eqz v10, :cond_16a

    .line 941
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 942
    const-string v0, "[.]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 943
    const/4 v10, 0x0

    aget-object v0, v0, v10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 947
    :cond_16a
    const-string v10, "snc"

    const/4 v11, 0x0

    aget-object v2, v2, v11

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17d

    const-string v2, "snc.snc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12f

    .line 951
    :cond_17d
    const-string v2, "hotmail"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_202

    const-string v2, "msn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_202

    const-string v2, "live"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_202

    .line 954
    const/4 v0, 0x0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 955
    cmp-long v0, v2, v7

    if-nez v0, :cond_1a5

    .line 956
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v4, v0

    .line 957
    goto :goto_12f

    .line 959
    :cond_1a5
    const/4 v0, 0x2

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 976
    const/4 v10, 0x1

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 977
    new-instance v11, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v11}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 978
    iput-wide v2, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 979
    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 980
    iput-object v10, v11, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 981
    const-class v0, Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 982
    invoke-static {v2, v3, v6}, Lcom/android/email/activity/setup/AccountSettingsFragment;->buildArguments(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 985
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1ef

    .line 986
    invoke-static {}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$600()Ljava/util/HashSet;

    move-result-object v0

    iget-wide v2, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e9

    .line 987
    const v0, 0x7f02002d

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 995
    :goto_1e2
    add-int/lit8 v0, v1, 0x1

    aput-object v11, v9, v1

    :goto_1e6
    move v1, v0

    .line 998
    goto/16 :goto_12f

    .line 989
    :cond_1e9
    const v0, 0x7f020028

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    goto :goto_1e2

    .line 992
    :cond_1ef
    const/4 v0, 0x0

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->iconRes:I
    :try_end_1f2
    .catchall {:try_start_123 .. :try_end_1f2} :catchall_119

    goto :goto_1e2

    .line 1001
    :cond_1f3
    if-eqz v5, :cond_1f8

    .line 1002
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1005
    :cond_1f8
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    const/4 v1, 0x1

    aput-object v4, v0, v1

    return-object v0

    :cond_202
    move v0, v1

    goto :goto_1e6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 844
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .registers 7
    .parameter "result"

    .prologue
    .line 1012
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_8

    if-nez p1, :cond_9

    .line 1028
    :cond_8
    :goto_8
    return-void

    .line 1015
    :cond_9
    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, [Landroid/preference/PreferenceActivity$Header;

    move-object v1, v2

    check-cast v1, [Landroid/preference/PreferenceActivity$Header;

    .line 1016
    .local v1, headers:[Landroid/preference/PreferenceActivity$Header;
    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1018
    .local v0, deletingAccountFound:Z
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    #setter for: Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;
    invoke-static {v2, v1}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$1002(Lcom/android/email/activity/setup/AccountSettingsXL;[Landroid/preference/PreferenceActivity$Header;)[Landroid/preference/PreferenceActivity$Header;

    .line 1019
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateHeaders()V

    .line 1021
    if-nez v0, :cond_2d

    .line 1022
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    const-wide/16 v3, -0x1

    #setter for: Lcom/android/email/activity/setup/AccountSettingsXL;->mDeletingAccountId:J
    invoke-static {v2, v3, v4}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$1102(Lcom/android/email/activity/setup/AccountSettingsXL;J)J

    .line 1026
    :cond_2d
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v3}, Lcom/android/email/activity/setup/AccountSettingsXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/EmailUtility;->getUnreadTotalCount(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/email/BadgeManager;->updateBadgeProvider(Landroid/content/Context;I)V

    goto :goto_8
.end method
