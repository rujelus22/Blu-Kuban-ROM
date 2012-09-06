.class public final Lcom/google/android/youtube/app/honeycomb/ui/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/transfer/aa;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Lcom/google/android/youtube/core/model/Video$Privacy;

.field private D:Z

.field private final E:Ljava/util/List;

.field private F:I

.field private G:Z

.field private H:J

.field private final I:Lcom/google/android/youtube/core/b/ae;

.field private J:Z

.field private K:Z

.field private final b:Landroid/app/Activity;

.field private final c:Landroid/content/res/Resources;

.field private final d:Landroid/content/ContentResolver;

.field private final e:Landroid/content/SharedPreferences;

.field private final f:Lcom/google/android/youtube/core/Analytics;

.field private final g:Lcom/google/android/youtube/app/honeycomb/ui/q;

.field private final h:Lcom/google/android/youtube/core/transfer/x;

.field private final i:Lcom/google/android/youtube/core/d;

.field private j:Lcom/google/android/youtube/core/async/l;

.field private k:Lcom/google/android/youtube/core/model/UserAuth;

.field private l:Ljava/lang/String;

.field private m:Landroid/graphics/Bitmap;

.field private final n:Landroid/widget/TextView;

.field private final o:Landroid/widget/TextView;

.field private final p:Landroid/widget/ImageView;

.field private final q:Lcom/google/android/youtube/app/ui/PrivacySpinner;

.field private final r:Landroid/widget/TextView;

.field private final s:Landroid/widget/CheckBox;

.field private final t:Landroid/widget/EditText;

.field private final u:Landroid/widget/EditText;

.field private final v:Landroid/widget/EditText;

.field private final w:Landroid/widget/Button;

.field private final x:Landroid/widget/TextView;

.field private final y:Lcom/google/android/youtube/app/ui/dj;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 80
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "longitude"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/app/honeycomb/ui/m;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/app/honeycomb/ui/q;Lcom/google/android/youtube/core/d;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p3, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->I:Lcom/google/android/youtube/core/b/ae;

    .line 149
    const-string v0, "activity can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->b:Landroid/app/Activity;

    .line 150
    iput-object p4, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->g:Lcom/google/android/youtube/app/honeycomb/ui/q;

    .line 151
    const-string v0, "errorHelper can\'t be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/d;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->i:Lcom/google/android/youtube/core/d;

    .line 153
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 155
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->c:Landroid/content/res/Resources;

    .line 156
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->d:Landroid/content/ContentResolver;

    .line 157
    const-string v1, "youtube"

    invoke-virtual {p1, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->e:Landroid/content/SharedPreferences;

    .line 158
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->f:Lcom/google/android/youtube/core/Analytics;

    .line 160
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->e:Landroid/content/SharedPreferences;

    const-string v1, "upload_privacy"

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Privacy;->PRIVATE:Lcom/google/android/youtube/core/model/Video$Privacy;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Video$Privacy;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/model/Video$Privacy;->valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Privacy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->C:Lcom/google/android/youtube/core/model/Video$Privacy;

    .line 163
    const v0, 0x7f080024

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->n:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f080023

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->p:Landroid/widget/ImageView;

    .line 165
    const v0, 0x7f080030

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->o:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f0800b7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->r:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f080121

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->t:Landroid/widget/EditText;

    .line 169
    const v0, 0x7f080122

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->u:Landroid/widget/EditText;

    .line 170
    const v0, 0x7f080123

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->v:Landroid/widget/EditText;

    .line 171
    const v0, 0x7f08006a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/PrivacySpinner;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->q:Lcom/google/android/youtube/app/ui/PrivacySpinner;

    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->q:Lcom/google/android/youtube/app/ui/PrivacySpinner;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->C:Lcom/google/android/youtube/core/model/Video$Privacy;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/PrivacySpinner;->setPrivacy(Lcom/google/android/youtube/core/model/Video$Privacy;)V

    .line 173
    const v0, 0x7f080124

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->s:Landroid/widget/CheckBox;

    .line 175
    const v0, 0x7f0800ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->w:Landroid/widget/Button;

    .line 176
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->w:Landroid/widget/Button;

    const v1, 0x7f0b0146

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->w:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->w:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/ui/n;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/ui/n;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v0, 0x7f080120

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->x:Landroid/widget/TextView;

    .line 189
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->x:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 191
    new-instance v0, Lcom/google/android/youtube/app/ui/dj;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/ui/o;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/ui/o;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/m;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/youtube/app/ui/dj;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->y:Lcom/google/android/youtube/app/ui/dj;

    .line 198
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/r;

    invoke-direct {v0, p0, v3}, Lcom/google/android/youtube/app/honeycomb/ui/r;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/m;B)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->j:Lcom/google/android/youtube/core/async/l;

    .line 200
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->E:Ljava/util/List;

    .line 201
    new-instance v1, Lcom/google/android/youtube/core/transfer/x;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->I()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {v1, p1, p3, v0}, Lcom/google/android/youtube/core/transfer/x;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/b/ae;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->h:Lcom/google/android/youtube/core/transfer/x;

    .line 203
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/ui/m;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->w:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)Lcom/google/android/youtube/app/honeycomb/ui/s;
    .registers 10
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 398
    const-string v0, "contentUri may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :try_start_6
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->d:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/youtube/app/honeycomb/ui/m;->a:[Ljava/lang/String;

    const-string v3, "mime_type LIKE \'video/%\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_12} :catch_17

    move-result-object v1

    .line 402
    if-nez v1, :cond_3a

    move-object v0, v6

    .line 446
    :goto_16
    return-object v0

    .line 405
    :catch_17
    move-exception v0

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error resolving content from URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    move-object v0, v6

    .line 407
    goto :goto_16

    .line 410
    :cond_3a
    :try_start_3a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_e6

    move-result v0

    if-nez v0, :cond_45

    .line 411
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_16

    .line 413
    :cond_45
    :try_start_45
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/s;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/s;-><init>(B)V

    .line 414
    const-string v2, "_id"

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/m;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/s;->a(Lcom/google/android/youtube/app/honeycomb/ui/s;Ljava/lang/Long;)Ljava/lang/Long;

    .line 415
    const-string v2, "_data"

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/m;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/s;->a(Lcom/google/android/youtube/app/honeycomb/ui/s;Ljava/lang/String;)Ljava/lang/String;

    .line 416
    const-string v2, "_display_name"

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/m;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/s;->b(Lcom/google/android/youtube/app/honeycomb/ui/s;Ljava/lang/String;)Ljava/lang/String;

    .line 417
    const-string v2, "_size"

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/m;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/s;->b(Lcom/google/android/youtube/app/honeycomb/ui/s;Ljava/lang/Long;)Ljava/lang/Long;

    .line 418
    const-string v2, "mime_type"

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/m;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/s;->c(Lcom/google/android/youtube/app/honeycomb/ui/s;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    const-string v2, "duration"

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/m;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/s;->c(Lcom/google/android/youtube/app/honeycomb/ui/s;Ljava/lang/Long;)Ljava/lang/Long;

    .line 420
    const-string v2, "latitude"

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/m;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/s;->d(Lcom/google/android/youtube/app/honeycomb/ui/s;Ljava/lang/String;)Ljava/lang/String;

    .line 421
    const-string v2, "longitude"

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/m;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/s;->e(Lcom/google/android/youtube/app/honeycomb/ui/s;Ljava/lang/String;)Ljava/lang/String;

    .line 422
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->m:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_d2

    .line 423
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->m:Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/s;->a(Lcom/google/android/youtube/app/honeycomb/ui/s;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 428
    :goto_9c
    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/s;->i(Lcom/google/android/youtube/app/honeycomb/ui/s;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_b4

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/s;->j(Lcom/google/android/youtube/app/honeycomb/ui/s;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 429
    :cond_b4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unable to read video file ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_45 .. :try_end_cc} :catchall_e6

    .line 430
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto/16 :goto_16

    .line 425
    :cond_d2
    :try_start_d2
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->d:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/s;->i(Lcom/google/android/youtube/app/honeycomb/ui/s;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v7, 0x0

    invoke-static {v2, v3, v4, v5, v7}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/s;->a(Lcom/google/android/youtube/app/honeycomb/ui/s;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_e5
    .catchall {:try_start_d2 .. :try_end_e5} :catchall_e6

    goto :goto_9c

    .line 446
    :catchall_e6
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 432
    :cond_eb
    :try_start_eb
    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/s;->j(Lcom/google/android/youtube/app/honeycomb/ui/s;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 434
    const-string v3, "file"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_122

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "not a file uri ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V
    :try_end_11c
    .catchall {:try_start_eb .. :try_end_11c} :catchall_e6

    .line 436
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto/16 :goto_16

    .line 438
    :cond_122
    :try_start_122
    invoke-static {v0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/s;->a(Lcom/google/android/youtube/app/honeycomb/ui/s;Landroid/net/Uri;)Landroid/net/Uri;

    .line 439
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/s;->f(Lcom/google/android/youtube/app/honeycomb/ui/s;Ljava/lang/String;)Ljava/lang/String;

    .line 440
    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/s;->k(Lcom/google/android/youtube/app/honeycomb/ui/s;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15a

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid file type ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/s;->k(Lcom/google/android/youtube/app/honeycomb/ui/s;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V
    :try_end_154
    .catchall {:try_start_122 .. :try_end_154} :catchall_e6

    .line 442
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto/16 :goto_16

    .line 446
    :cond_15a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_16
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/ui/m;Landroid/net/Uri;)Lcom/google/android/youtube/app/honeycomb/ui/s;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/m;->a(Landroid/net/Uri;)Lcom/google/android/youtube/app/honeycomb/ui/s;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/youtube/app/honeycomb/ui/s;)Lcom/google/android/youtube/core/transfer/d;
    .registers 8
    .parameter

    .prologue
    .line 348
    new-instance v0, Lcom/google/android/youtube/core/transfer/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/transfer/d;-><init>()V

    .line 349
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->l:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 350
    const-string v1, "username"

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_10
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/ui/s;->g(Lcom/google/android/youtube/app/honeycomb/ui/s;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 353
    const-string v1, "upload_title"

    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/ui/s;->g(Lcom/google/android/youtube/app/honeycomb/ui/s;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_1f
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/ui/s;->d(Lcom/google/android/youtube/app/honeycomb/ui/s;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 356
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/ui/s;->d(Lcom/google/android/youtube/app/honeycomb/ui/s;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 357
    const-string v2, "upload_file_thumbnail"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;[B)V

    .line 359
    :cond_32
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/ui/s;->h(Lcom/google/android/youtube/app/honeycomb/ui/s;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 360
    const-string v1, "upload_file_duration"

    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/ui/s;->h(Lcom/google/android/youtube/app/honeycomb/ui/s;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;J)V

    .line 362
    :cond_48
    const-string v1, "upload_start_time_millis"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;J)V

    .line 363
    const-string v1, "authAccount"

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->k:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v1, "upload_description"

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v1, "upload_keywords"

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v1, "upload_privacy"

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->C:Lcom/google/android/youtube/core/model/Video$Privacy;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Video$Privacy;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->D:Z

    if-eqz v1, :cond_9b

    .line 368
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/ui/m;->b(Lcom/google/android/youtube/app/honeycomb/ui/s;)Landroid/util/Pair;

    move-result-object v1

    .line 369
    const-string v2, "upload_location"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_9b
    return-object v0
.end method

.method private static a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 451
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 452
    if-gez v0, :cond_8

    .line 453
    const/4 v0, 0x0

    .line 455
    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_7
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/ui/m;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->l:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 329
    const v1, 0x7f080145

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 330
    if-eqz v1, :cond_e

    .line 331
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 332
    const/4 v0, 0x1

    .line 334
    :cond_e
    return v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/ui/m;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->G:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/ui/m;)J
    .registers 3
    .parameter

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->H:J

    return-wide v0
.end method

.method private static b(Lcom/google/android/youtube/app/honeycomb/ui/s;)Landroid/util/Pair;
    .registers 3
    .parameter

    .prologue
    .line 375
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/ui/s;->a(Lcom/google/android/youtube/app/honeycomb/ui/s;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/ui/s;->b(Lcom/google/android/youtube/app/honeycomb/ui/s;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 459
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 460
    if-gez v0, :cond_8

    .line 461
    const/4 v0, 0x0

    .line 463
    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/ui/m;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->K:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/ui/m;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->f:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/ui/m;)V
    .registers 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/m;->f()V

    return-void
.end method

.method private e()V
    .registers 4

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "upload_privacy"

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->C:Lcom/google/android/youtube/core/model/Video$Privacy;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Video$Privacy;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 531
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->g:Lcom/google/android/youtube/app/honeycomb/ui/q;

    if-eqz v0, :cond_1e

    .line 532
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->g:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-interface {v0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->g()V

    .line 534
    :cond_1e
    return-void
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/ui/m;)V
    .registers 3
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->y:Lcom/google/android/youtube/app/ui/dj;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/dj;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->h:Lcom/google/android/youtube/core/transfer/x;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/transfer/x;->a(Lcom/google/android/youtube/core/transfer/aa;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->b:Landroid/app/Activity;

    const/16 v1, 0x3fd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_d
.end method

.method static synthetic f(Lcom/google/android/youtube/app/honeycomb/ui/m;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->E:Ljava/util/List;

    return-object v0
.end method

.method private f()V
    .registers 16

    .prologue
    const/4 v0, 0x1

    const/4 v12, 0x0

    const/4 v7, 0x0

    .line 537
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->F:I

    .line 538
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->t:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->z:Ljava/lang/String;

    .line 539
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->u:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->A:Ljava/lang/String;

    .line 540
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->v:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->B:Ljava/lang/String;

    .line 541
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->q:Lcom/google/android/youtube/app/ui/PrivacySpinner;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/PrivacySpinner;->a()Lcom/google/android/youtube/core/model/Video$Privacy;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->C:Lcom/google/android/youtube/core/model/Video$Privacy;

    .line 542
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->s:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->D:Z

    .line 544
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_8b

    .line 545
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->E:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/youtube/app/honeycomb/ui/s;

    .line 546
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->z:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 547
    invoke-static {v10}, Lcom/google/android/youtube/app/honeycomb/ui/s;->f(Lcom/google/android/youtube/app/honeycomb/ui/s;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->z:Ljava/lang/String;

    .line 549
    :cond_5e
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->z:Ljava/lang/String;

    invoke-static {v10, v0}, Lcom/google/android/youtube/app/honeycomb/ui/s;->g(Lcom/google/android/youtube/app/honeycomb/ui/s;Ljava/lang/String;)Ljava/lang/String;

    .line 550
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->h:Lcom/google/android/youtube/core/transfer/x;

    invoke-static {v10}, Lcom/google/android/youtube/app/honeycomb/ui/s;->l(Lcom/google/android/youtube/app/honeycomb/ui/s;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v10}, Lcom/google/android/youtube/app/honeycomb/ui/s;->f(Lcom/google/android/youtube/app/honeycomb/ui/s;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->k:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->C:Lcom/google/android/youtube/core/model/Video$Privacy;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->z:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->A:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->B:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->D:Z

    if-eqz v9, :cond_89

    invoke-static {v10}, Lcom/google/android/youtube/app/honeycomb/ui/m;->b(Lcom/google/android/youtube/app/honeycomb/ui/s;)Landroid/util/Pair;

    move-result-object v9

    :goto_7f
    invoke-direct {p0, v10}, Lcom/google/android/youtube/app/honeycomb/ui/m;->a(Lcom/google/android/youtube/app/honeycomb/ui/s;)Lcom/google/android/youtube/core/transfer/d;

    move-result-object v10

    iget-boolean v11, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->G:Z

    invoke-virtual/range {v0 .. v12}, Lcom/google/android/youtube/core/transfer/x;->a(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/model/Video$Privacy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Lcom/google/android/youtube/core/transfer/d;ZZ)V

    .line 587
    :cond_88
    return-void

    :cond_89
    move-object v9, v7

    .line 550
    goto :goto_7f

    .line 565
    :cond_8b
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v1, v0

    :goto_92
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/youtube/app/honeycomb/ui/s;

    .line 566
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->z:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 567
    invoke-static {v10}, Lcom/google/android/youtube/app/honeycomb/ui/s;->f(Lcom/google/android/youtube/app/honeycomb/ui/s;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/google/android/youtube/app/honeycomb/ui/s;->g(Lcom/google/android/youtube/app/honeycomb/ui/s;Ljava/lang/String;)Ljava/lang/String;

    move v13, v1

    .line 572
    :goto_af
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->h:Lcom/google/android/youtube/core/transfer/x;

    invoke-static {v10}, Lcom/google/android/youtube/app/honeycomb/ui/s;->l(Lcom/google/android/youtube/app/honeycomb/ui/s;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v10}, Lcom/google/android/youtube/app/honeycomb/ui/s;->f(Lcom/google/android/youtube/app/honeycomb/ui/s;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->k:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->C:Lcom/google/android/youtube/core/model/Video$Privacy;

    invoke-static {v10}, Lcom/google/android/youtube/app/honeycomb/ui/s;->g(Lcom/google/android/youtube/app/honeycomb/ui/s;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->A:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->B:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->D:Z

    if-eqz v9, :cond_fd

    invoke-static {v10}, Lcom/google/android/youtube/app/honeycomb/ui/m;->b(Lcom/google/android/youtube/app/honeycomb/ui/s;)Landroid/util/Pair;

    move-result-object v9

    :goto_cd
    invoke-direct {p0, v10}, Lcom/google/android/youtube/app/honeycomb/ui/m;->a(Lcom/google/android/youtube/app/honeycomb/ui/s;)Lcom/google/android/youtube/core/transfer/d;

    move-result-object v10

    iget-boolean v11, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->G:Z

    invoke-virtual/range {v0 .. v12}, Lcom/google/android/youtube/core/transfer/x;->a(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/model/Video$Privacy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Lcom/google/android/youtube/core/transfer/d;ZZ)V

    move v1, v13

    goto :goto_92

    .line 569
    :cond_d8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/google/android/youtube/app/honeycomb/ui/s;->g(Lcom/google/android/youtube/app/honeycomb/ui/s;Ljava/lang/String;)Ljava/lang/String;

    .line 570
    add-int/lit8 v13, v1, 0x1

    goto :goto_af

    :cond_fd
    move-object v9, v7

    .line 572
    goto :goto_cd
.end method

.method static synthetic g(Lcom/google/android/youtube/app/honeycomb/ui/m;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->J:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->K:Z

    if-eqz v0, :cond_e

    .line 591
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->w:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 593
    :cond_e
    return-void
.end method

.method static synthetic h(Lcom/google/android/youtube/app/honeycomb/ui/m;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->p:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/app/honeycomb/ui/m;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/youtube/app/honeycomb/ui/m;)Landroid/content/res/Resources;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->c:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/youtube/app/honeycomb/ui/m;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/youtube/app/honeycomb/ui/m;)Landroid/widget/CheckBox;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->s:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic m(Lcom/google/android/youtube/app/honeycomb/ui/m;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/google/android/youtube/app/honeycomb/ui/m;)V
    .registers 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/m;->g()V

    return-void
.end method

.method static synthetic o(Lcom/google/android/youtube/app/honeycomb/ui/m;)Lcom/google/android/youtube/core/d;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->i:Lcom/google/android/youtube/core/d;

    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 338
    packed-switch p1, :pswitch_data_c

    .line 343
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 340
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->y:Lcom/google/android/youtube/app/ui/dj;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/dj;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 338
    :pswitch_data_c
    .packed-switch 0x3fd
        :pswitch_5
    .end packed-switch
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->h:Lcom/google/android/youtube/core/transfer/x;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/x;->a()V

    .line 262
    return-void
.end method

.method public final a(Landroid/content/Intent;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 206
    const-string v0, "intent can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v0, "userAuth can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->k:Lcom/google/android/youtube/core/model/UserAuth;

    .line 209
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 210
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 211
    const-string v2, "com.google.android.youtube.intent.action.UPLOAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 213
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 214
    if-eqz v2, :cond_30

    .line 215
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->m:Landroid/graphics/Bitmap;

    .line 216
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_30
    :goto_30
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 232
    :cond_34
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 233
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 234
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://media/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 235
    :cond_4e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring non-media-content uri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 236
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_34

    .line 218
    :cond_64
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 220
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 221
    if-eqz v0, :cond_30

    .line 222
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 224
    :cond_7a
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 226
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_30

    .line 228
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_30

    .line 239
    :cond_92
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 240
    const-string v0, "no media content uri(s)"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 250
    :goto_a2
    return-void

    .line 244
    :cond_a3
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_ae

    .line 245
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->I:Lcom/google/android/youtube/core/b/ae;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->j:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, p2, v2}, Lcom/google/android/youtube/core/b/ae;->a(Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    .line 247
    :cond_ae
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->H:J

    .line 248
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->f:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "UploadFormShown"

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/p;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/ui/p;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/m;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_a2
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 509
    const-string v0, "Error requesting location for upload"

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 510
    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->F:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->F:I

    .line 511
    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->F:I

    if-nez v0, :cond_54

    .line 512
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_55

    .line 513
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->i:Lcom/google/android/youtube/core/d;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    .line 514
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->w:Landroid/widget/Button;

    const v1, 0x7f0b00c3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 515
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->w:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 516
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->f:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "UploadDestinationError"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_54
    :goto_54
    return-void

    .line 519
    :cond_55
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/m;->e()V

    goto :goto_54
.end method

.method public final a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 490
    iget v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->F:I

    if-eqz p1, :cond_11

    const/4 v0, 0x0

    :goto_5
    sub-int v0, v1, v0

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->F:I

    .line 491
    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->F:I

    if-nez v0, :cond_10

    .line 492
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/m;->e()V

    .line 494
    :cond_10
    return-void

    .line 490
    :cond_11
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/m;->f()V

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->J:Z

    .line 486
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/m;->g()V

    .line 487
    return-void
.end method

.method public final c()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 497
    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->F:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->F:I

    .line 498
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_21

    .line 499
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->b:Landroid/app/Activity;

    const v1, 0x7f0b0148

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    .line 500
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->g:Lcom/google/android/youtube/app/honeycomb/ui/q;

    if-eqz v0, :cond_20

    .line 501
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->g:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-interface {v0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->h()V

    .line 506
    :cond_20
    :goto_20
    return-void

    .line 503
    :cond_21
    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->F:I

    if-nez v0, :cond_20

    .line 504
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/m;->e()V

    goto :goto_20
.end method

.method public final d()V
    .registers 1

    .prologue
    .line 526
    return-void
.end method
