.class public Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;
.super Landroid/app/Activity;
.source "VoiceListDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;,
        Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsListAdapter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOCALE:Ljava/util/Locale;


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mEventHandler:Landroid/os/Handler;

.field private mId:J

.field private mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 45
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->DEFAULT_LOCALE:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->mDialog:Landroid/app/Dialog;

    .line 66
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$1;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->mEventHandler:Landroid/os/Handler;

    .line 287
    return-void
.end method

.method private getDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;
    .registers 8
    .parameter "context"
    .parameter "date"

    .prologue
    const/16 v3, 0x20

    .line 214
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 215
    .local v1, shortDateFormat:Ljava/text/DateFormat;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, dateString:Ljava/lang/StringBuffer;
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 218
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x181

    invoke-static {p1, p2, p3, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    :goto_26
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 222
    :cond_2b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x141

    invoke-static {p1, p2, p3, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_26
.end method

.method private getFileLocation(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "path"

    .prologue
    const/16 v4, 0x2f

    const/4 v5, 0x0

    .line 260
    const/4 v3, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 261
    .local v2, startIndex:I
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 262
    .local v0, endIndex:I
    const-string v1, ""

    .line 264
    .local v1, fileLocation:Ljava/lang/String;
    if-ltz v2, :cond_22

    if-ltz v0, :cond_22

    .line 265
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/mnt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 266
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 271
    :cond_22
    :goto_22
    return-object v1

    .line 268
    :cond_23
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_22
.end method

.method private static getShortSize(J)Ljava/lang/String;
    .registers 10
    .parameter "number"

    .prologue
    const/high16 v7, 0x4480

    .line 240
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "0.#"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, df:Ljava/text/DecimalFormat;
    long-to-float v1, p0

    .line 245
    .local v1, size:F
    float-to-double v3, v1

    const-wide v5, 0x412999999999999aL

    cmpg-double v3, v3, v5

    if-gez v3, :cond_2e

    .line 246
    div-float/2addr v1, v7

    .line 247
    const-string v2, "KB"

    .line 256
    .local v2, unit:Ljava/lang/String;
    :goto_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 248
    .end local v2           #unit:Ljava/lang/String;
    :cond_2e
    float-to-double v3, v1

    const-wide v5, 0x41c999999999999aL

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3f

    .line 249
    div-float v3, v1, v7

    div-float v1, v3, v7

    .line 250
    const-string v2, "MB"

    .restart local v2       #unit:Ljava/lang/String;
    goto :goto_17

    .line 252
    .end local v2           #unit:Ljava/lang/String;
    :cond_3f
    div-float v3, v1, v7

    div-float/2addr v3, v7

    div-float v1, v3, v7

    .line 253
    const-string v2, "GB"

    .restart local v2       #unit:Ljava/lang/String;
    goto :goto_17
.end method

.method private getSizeFormat(J)Ljava/lang/String;
    .registers 7
    .parameter "size"

    .prologue
    .line 231
    sget-object v2, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 232
    .local v0, nf:Ljava/text/NumberFormat;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->getShortSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 233
    .local v1, strBuf:Ljava/lang/StringBuffer;
    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-lez v2, :cond_28

    .line 234
    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " bytes)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private stringForTime(J)Ljava/lang/String;
    .registers 15
    .parameter "timeMs"

    .prologue
    .line 275
    const-wide/16 v8, 0x3e8

    div-long v6, p1, v8

    .line 276
    .local v6, totalSeconds:J
    const-wide/16 v8, 0x3c

    rem-long v4, v6, v8

    .line 277
    .local v4, seconds:J
    const-wide/16 v8, 0x3c

    div-long v8, v6, v8

    const-wide/16 v10, 0x3c

    rem-long v2, v8, v10

    .line 278
    .local v2, minutes:J
    const-wide/16 v8, 0xe10

    div-long v0, v6, v8

    .line 280
    .local v0, hours:J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_3d

    .line 281
    const-string v8, "%d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 283
    :goto_3c
    return-object v8

    :cond_3d
    const-string v8, "%02d:%02d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3c
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const-string v1, "VoiceListDetailsActivity"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 54
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 55
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->mId:J

    .line 57
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->setContentView(I)V

    .line 58
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->showDialog(I)V

    .line 60
    new-instance v1, Lcom/sec/android/app/voicerecorder/util/VRIntent;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/voicerecorder/util/VRIntent;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    .line 61
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForActivity(Z)V

    .line 63
    const-string v1, "VoiceListDetailsActivity"

    const-string v2, "onCreate Exit"

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 17
    .parameter "id"

    .prologue
    .line 96
    const-string v0, "VoiceListDetailsActivity"

    const-string v1, "onCreateDialog()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_e

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->mDialog:Landroid/app/Dialog;

    .line 168
    :goto_d
    return-object v0

    .line 101
    :cond_e
    packed-switch p1, :pswitch_data_110

    .line 168
    const/4 v0, 0x0

    goto :goto_d

    .line 103
    :pswitch_13
    const-string v0, "VoiceListDetailsActivity"

    const-string v1, "DIALOG_DETAILS"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    .local v9, detailsDialog:Landroid/app/AlertDialog$Builder;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v7, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;>;"
    const v0, 0x7f060056

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, selection:Ljava/lang/String;
    :try_start_3f
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 115
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_106

    .line 116
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 117
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 118
    .local v14, path:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v13, file:Ljava/io/File;
    const-string v0, "duration"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 121
    .local v10, duration:J
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;

    const v1, 0x7f060057

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;

    const v1, 0x7f060058

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {p0, p0, v4, v5}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->getDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;

    const v1, 0x7f060059

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v14}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->getFileLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;

    const v1, 0x7f06005a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v10, v11}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->stringForTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;

    const v1, 0x7f06005b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->getSizeFormat(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v10           #duration:J
    .end local v13           #file:Ljava/io/File;
    .end local v14           #path:Ljava/lang/String;
    :cond_d4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_d7} :catch_10a

    .line 138
    .end local v8           #c:Landroid/database/Cursor;
    :goto_d7
    new-instance v6, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsListAdapter;

    invoke-direct {v6, p0, p0, v7}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsListAdapter;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 140
    .local v6, DetailsListAdapter:Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsListAdapter;
    const/4 v0, 0x0

    invoke-virtual {v9, v6, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06002f

    new-instance v2, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$2;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$3;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;)V

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$4;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;)V

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->mDialog:Landroid/app/Dialog;

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->mDialog:Landroid/app/Dialog;

    goto/16 :goto_d

    .line 130
    .end local v6           #DetailsListAdapter:Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsListAdapter;
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_106
    :try_start_106
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->finish()V
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_109} :catch_10a

    goto :goto_d7

    .line 133
    .end local v8           #c:Landroid/database/Cursor;
    :catch_10a
    move-exception v12

    .line 135
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->finish()V

    goto :goto_d7

    .line 101
    nop

    :pswitch_data_110
    .packed-switch 0x2
        :pswitch_13
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForActivity(Z)V

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 92
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 207
    const/16 v0, 0x52

    if-ne p1, v0, :cond_7

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->finish()V

    .line 210
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
