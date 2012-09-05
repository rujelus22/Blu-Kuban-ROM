.class public Lcom/sec/android/app/controlpanel/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFsWritable()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/TMP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, directoryName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 219
    :goto_2d
    return v2

    .line 215
    :cond_2e
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 216
    const/4 v2, 0x1

    goto :goto_2d

    .line 218
    :cond_36
    const-string v3, "JobManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkFsWritable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not writable."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public static getBootTime()J
    .registers 12

    .prologue
    .line 106
    const-string v10, "^btime\\s+(\\d+)"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 107
    .local v4, btimePattern:Ljava/util/regex/Pattern;
    const-wide/16 v0, -0x1

    .line 108
    .local v0, bootTime:J
    const/4 v2, 0x0

    .line 111
    .local v2, br:Ljava/io/BufferedReader;
    :try_start_9
    new-instance v7, Ljava/io/File;

    const-string v10, "/proc/stat"

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 113
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v11, 0x2000

    invoke-direct {v3, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_8f
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_22} :catch_56
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_22} :catch_69
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_7c

    .line 115
    .end local v2           #br:Ljava/io/BufferedReader;
    .local v3, br:Ljava/io/BufferedReader;
    :try_start_22
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, text:Ljava/lang/String;
    if-eqz v9, :cond_a7

    .line 116
    invoke-virtual {v4, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 117
    .local v8, m:Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_43

    .line 118
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_9b
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_3a} :catch_a4
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_3a} :catch_a1
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3a} :catch_9e

    move-result-wide v0

    move-object v2, v3

    .line 133
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v8           #m:Ljava/util/regex/Matcher;
    .end local v9           #text:Ljava/lang/String;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :cond_3c
    :goto_3c
    if-eqz v2, :cond_41

    .line 134
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_51

    .end local v7           #file:Ljava/io/File;
    :cond_41
    :goto_41
    move-wide v10, v0

    .line 139
    :goto_42
    return-wide v10

    .line 121
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v7       #file:Ljava/io/File;
    .restart local v8       #m:Ljava/util/regex/Matcher;
    .restart local v9       #text:Ljava/lang/String;
    :cond_43
    const-wide/16 v10, -0x1

    .line 133
    if-eqz v3, :cond_4a

    .line 134
    :try_start_47
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4c

    :cond_4a
    :goto_4a
    move-object v2, v3

    .line 137
    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_42

    .line 135
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :catch_4c
    move-exception v6

    .line 136
    .local v6, e1:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4a

    .line 135
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v6           #e1:Ljava/io/IOException;
    .end local v8           #m:Ljava/util/regex/Matcher;
    .end local v9           #text:Ljava/lang/String;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :catch_51
    move-exception v6

    .line 136
    .restart local v6       #e1:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    .line 125
    .end local v6           #e1:Ljava/io/IOException;
    .end local v7           #file:Ljava/io/File;
    :catch_56
    move-exception v5

    .line 126
    .local v5, e:Ljava/io/FileNotFoundException;
    :goto_57
    :try_start_57
    const-string v10, "Utils"

    const-string v11, "getBootTime() FileNotFoundException "

    invoke-static {v10, v11, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_8f

    .line 133
    if-eqz v2, :cond_41

    .line 134
    :try_start_60
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_41

    .line 135
    :catch_64
    move-exception v6

    .line 136
    .restart local v6       #e1:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    .line 127
    .end local v5           #e:Ljava/io/FileNotFoundException;
    .end local v6           #e1:Ljava/io/IOException;
    :catch_69
    move-exception v5

    .line 128
    .local v5, e:Ljava/io/IOException;
    :goto_6a
    :try_start_6a
    const-string v10, "Utils"

    const-string v11, "getBootTime() IOException "

    invoke-static {v10, v11, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_8f

    .line 133
    if-eqz v2, :cond_41

    .line 134
    :try_start_73
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_41

    .line 135
    :catch_77
    move-exception v6

    .line 136
    .restart local v6       #e1:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    .line 129
    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #e1:Ljava/io/IOException;
    :catch_7c
    move-exception v5

    .line 130
    .local v5, e:Ljava/lang/Exception;
    :goto_7d
    :try_start_7d
    const-string v10, "Utils"

    const-string v11, "getBootTime() Exception "

    invoke-static {v10, v11, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_8f

    .line 133
    if-eqz v2, :cond_41

    .line 134
    :try_start_86
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_41

    .line 135
    :catch_8a
    move-exception v6

    .line 136
    .restart local v6       #e1:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    .line 132
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #e1:Ljava/io/IOException;
    :catchall_8f
    move-exception v10

    .line 133
    :goto_90
    if-eqz v2, :cond_95

    .line 134
    :try_start_92
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96

    .line 137
    :cond_95
    :goto_95
    throw v10

    .line 135
    :catch_96
    move-exception v6

    .line 136
    .restart local v6       #e1:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_95

    .line 132
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v6           #e1:Ljava/io/IOException;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v7       #file:Ljava/io/File;
    :catchall_9b
    move-exception v10

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_90

    .line 129
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :catch_9e
    move-exception v5

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_7d

    .line 127
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :catch_a1
    move-exception v5

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_6a

    .line 125
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :catch_a4
    move-exception v5

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_57

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v9       #text:Ljava/lang/String;
    :cond_a7
    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_3c
.end method

.method public static getIntPref(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 5
    .parameter "context"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 30
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 31
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getProcessStartTime(I)J
    .registers 11
    .parameter "pid"

    .prologue
    .line 150
    const-string v8, "(-?\\d+)\\s(\\S+)\\s([A-Z])\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 152
    .local v4, processStatPattern:Ljava/util/regex/Pattern;
    const-wide/16 v5, -0x1

    .line 154
    .local v5, startTime:J
    :try_start_8
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/proc/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/stat"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 156
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v9, 0x2000

    invoke-direct {v0, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 158
    .local v0, br:Ljava/io/BufferedReader;
    :goto_38
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, text:Ljava/lang/String;
    if-eqz v7, :cond_59

    .line 159
    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 160
    .local v3, m:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_53

    .line 161
    const/16 v8, 0x16

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_38

    .line 163
    :cond_53
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 164
    const-wide/16 v8, -0x1

    .line 174
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #m:Ljava/util/regex/Matcher;
    .end local v7           #text:Ljava/lang/String;
    :goto_58
    return-wide v8

    .line 167
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #file:Ljava/io/File;
    .restart local v7       #text:Ljava/lang/String;
    :cond_59
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_5c} :catch_5e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_5c} :catch_67

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #file:Ljava/io/File;
    .end local v7           #text:Ljava/lang/String;
    :cond_5c
    :goto_5c
    move-wide v8, v5

    .line 174
    goto :goto_58

    .line 169
    :catch_5e
    move-exception v1

    .line 170
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v8, "Utils"

    const-string v9, "getProcessStartTime() FileNotFoundException "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c

    .line 171
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_67
    move-exception v1

    .line 172
    .local v1, e:Ljava/io/IOException;
    const-string v8, "Utils"

    const-string v9, "getProcessStartTime() IOException "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c
.end method

.method public static getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 42
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 43
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hasStorage(Z)Z
    .registers 4
    .parameter "requireWriteAccess"

    .prologue
    const/4 v1, 0x1

    .line 184
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 186
    if-eqz p0, :cond_13

    .line 187
    invoke-static {}, Lcom/sec/android/app/controlpanel/Utils;->checkFsWritable()Z

    move-result v1

    .line 195
    :cond_13
    :goto_13
    return v1

    .line 192
    :cond_14
    if-nez p0, :cond_1e

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 195
    :cond_1e
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static isLocaleChange(Landroid/content/Context;)Z
    .registers 12
    .parameter "context"

    .prologue
    const/4 v10, -0x1

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 71
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v8, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, locale:Ljava/lang/String;
    const-string v8, "locale"

    const-string v9, ""

    invoke-static {p0, v8, v9}, Lcom/sec/android/app/controlpanel/Utils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, previousLocale:Ljava/lang/String;
    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    .line 74
    .local v3, mcc:I
    const-string v8, "mcc"

    invoke-static {p0, v8, v10}, Lcom/sec/android/app/controlpanel/Utils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 75
    .local v6, previousMcc:I
    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    .line 76
    .local v4, mnc:I
    const-string v8, "mnc"

    invoke-static {p0, v8, v10}, Lcom/sec/android/app/controlpanel/Utils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 79
    .local v7, previousMnc:I
    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 80
    const/4 v2, 0x1

    .line 85
    .local v2, mLocaleChanged:Z
    :goto_30
    return v2

    .line 82
    .end local v2           #mLocaleChanged:Z
    :cond_31
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    if-ne v3, v6, :cond_3b

    if-eq v4, v7, :cond_3d

    :cond_3b
    const/4 v2, 0x1

    .restart local v2       #mLocaleChanged:Z
    :goto_3c
    goto :goto_30

    .end local v2           #mLocaleChanged:Z
    :cond_3d
    const/4 v2, 0x0

    goto :goto_3c
.end method

.method public static setIntPref(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 35
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 36
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 37
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    return-void
.end method

.method public static setStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 47
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 48
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    return-void
.end method

.method public static writeLocaleConfig(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 90
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v6, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, locale:Ljava/lang/String;
    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    .line 92
    .local v3, mcc:I
    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    .line 93
    .local v4, mnc:I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 94
    .local v5, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 95
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v6, "locale"

    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    const-string v6, "mcc"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 97
    const-string v6, "mnc"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    return-void
.end method
