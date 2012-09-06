.class public LA/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:LA/e;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/location/Location;Landroid/location/Location;Landroid/location/Location;I)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const-wide v7, 0x412e848000000000L

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, LA/b;->a:Landroid/content/Context;

    .line 106
    new-instance v0, LA/e;

    invoke-direct {v0, p2}, LA/e;-><init>(Ljava/io/File;)V

    iput-object v0, p0, LA/b;->b:LA/e;

    .line 108
    if-eqz p4, :cond_40

    .line 109
    const/4 v0, 0x1

    new-array v0, v0, [Ln/s;

    .line 110
    const/4 v2, 0x0

    new-instance v3, Ln/s;

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v4, v7

    double-to-int v4, v4

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-direct {v3, v4, v5}, Ln/s;-><init>(II)V

    aput-object v3, v0, v2

    .line 113
    :goto_2b
    invoke-direct {p0, p3}, LA/b;->a(Landroid/location/Location;)Ln/s;

    move-result-object v2

    invoke-direct {p0, p5}, LA/b;->a(Landroid/location/Location;)Ln/s;

    move-result-object v3

    invoke-static {v2, v0, v3, v1, p6}, LA/b;->a(Ln/s;[Ln/s;Ln/s;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LA/b;->c:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, LA/b;->b()V

    .line 116
    invoke-direct {p0}, LA/b;->c()V

    .line 117
    return-void

    :cond_40
    move-object v0, v1

    goto :goto_2b
.end method

.method static a(Ln/s;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const v2, 0x358637bd

    .line 179
    invoke-virtual {p0}, Ln/s;->a()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    .line 180
    invoke-virtual {p0}, Ln/s;->b()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    .line 181
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%f,%f"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ln/s;[Ln/s;Ln/s;Ljava/lang/String;I)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    if-eqz p0, :cond_a8

    if-eqz p2, :cond_a8

    .line 139
    invoke-static {p0}, LA/b;->a(Ln/s;)Ljava/lang/String;

    move-result-object v1

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    if-eqz p1, :cond_25

    .line 142
    const/4 v0, 0x0

    :goto_10
    array-length v3, p1

    if-ge v0, v3, :cond_25

    .line 143
    aget-object v3, p1, v0

    invoke-static {v3}, LA/b;->a(Ln/s;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 146
    :cond_25
    if-eqz p3, :cond_38

    .line 147
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, LA/b;->a(Ln/s;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_38
    const/4 v0, 0x2

    if-ne p4, v0, :cond_93

    const-string v0, "w"

    .line 151
    :goto_3d
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "http"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "maps.google.com"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "/maps"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "f"

    const-string v5, "d"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "saddr"

    invoke-virtual {v3, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "daddr"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "doflg"

    const-string v3, "ptu"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "dirflg"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    if-eqz p1, :cond_9f

    .line 165
    const/4 v0, 0x1

    :goto_82
    array-length v3, p1

    if-gt v0, v3, :cond_96

    .line 166
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    array-length v3, p1

    if-eq v0, v3, :cond_90

    .line 168
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_90
    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    .line 150
    :cond_93
    const-string v0, "d"

    goto :goto_3d

    .line 171
    :cond_96
    const-string v0, "via"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 173
    :cond_9f
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_a7
    return-object v0

    :cond_a8
    const/4 v0, 0x0

    goto :goto_a7
.end method

.method static synthetic a(LA/b;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, LA/b;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/location/Location;)Ln/s;
    .registers 8
    .parameter

    .prologue
    const-wide v4, 0x412e848000000000L

    .line 120
    if-nez p1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ln/s;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Ln/s;-><init>(II)V

    goto :goto_8
.end method

.method private b()V
    .registers 7

    .prologue
    .line 224
    iget-object v0, p0, LA/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lh/a;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v1, LA/c;

    invoke-direct {v1, p0}, LA/c;-><init>(LA/b;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LA/b;->d:Ljava/util/ArrayList;

    .line 240
    if-eqz v1, :cond_38

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    .line 243
    const/4 v0, 0x0

    :goto_21
    array-length v4, v1

    if-ge v0, v4, :cond_38

    .line 244
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_35

    .line 245
    iget-object v4, p0, LA/b;->d:Ljava/util/ArrayList;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 249
    :cond_38
    return-void
.end method

.method private c()V
    .registers 2

    .prologue
    .line 252
    new-instance v0, LA/d;

    invoke-direct {v0, p0}, LA/d;-><init>(LA/b;)V

    invoke-virtual {v0}, LA/d;->start()V

    .line 261
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 185
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "driveabout-bugs+crashlog@google.com"

    aput-object v3, v0, v2

    .line 187
    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v0, "android.intent.extra.SUBJECT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DriveAbout Error Report ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LA/b;->b:LA/e;

    invoke-virtual {v3}, LA/e;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    iget-object v0, p0, LA/b;->b:LA/e;

    invoke-virtual {v0}, LA/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, LA/b;->b:LA/e;

    invoke-virtual {v0}, LA/e;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 194
    iget-object v0, p0, LA/b;->b:LA/e;

    invoke-virtual {v0}, LA/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_57
    const-string v0, "file:///data/anr/traces.txt"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, LA/b;->b:LA/e;

    invoke-virtual {v0}, LA/e;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b2

    .line 199
    iget-object v0, p0, LA/b;->b:LA/e;

    invoke-virtual {v0}, LA/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    const-string v0, "Voice note attached.  You may add more comments now or in a follow up email later."

    .line 204
    :goto_6f
    iget-object v3, p0, LA/b;->c:Ljava/lang/String;

    if-eqz v3, :cond_8c

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, LA/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_8c
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 210
    const-string v3, "body"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v3, "attachments"

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v0, "message/rfc822"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    :try_start_ac
    iget-object v0, p0, LA/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_ac .. :try_end_b1} :catch_b5

    .line 220
    :goto_b1
    return-void

    .line 202
    :cond_b2
    const-string v0, "Please add further comments to describe the issue now or in a follow up email later."

    goto :goto_6f

    .line 217
    :catch_b5
    move-exception v0

    .line 218
    const-string v1, "ErrorReport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t send ErrorReport email: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b1
.end method
