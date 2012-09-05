.class public final Lcom/google/android/youtube/app/honeycomb/ui/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/transfer/v;


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

.field private final I:Lcom/google/android/youtube/core/client/ad;

.field private J:Z

.field private K:Z

.field private final b:Landroid/app/Activity;

.field private final c:Landroid/content/res/Resources;

.field private final d:Landroid/content/ContentResolver;

.field private final e:Landroid/content/SharedPreferences;

.field private final f:Lcom/google/android/youtube/core/Analytics;

.field private final g:Lcom/google/android/youtube/app/honeycomb/ui/u;

.field private final h:Lcom/google/android/youtube/core/transfer/s;

.field private final i:Lcom/google/android/youtube/core/e;

.field private j:Lcom/google/android/youtube/core/async/g;

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

.field private final y:Lcom/google/android/youtube/app/ui/cf;

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

    sput-object v0, Lcom/google/android/youtube/app/honeycomb/ui/q;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/app/honeycomb/ui/u;Lcom/google/android/youtube/core/e;)V
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
    iput-object p3, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->I:Lcom/google/android/youtube/core/client/ad;

    .line 149
    const-string v0, "activity can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->b:Landroid/app/Activity;

    .line 150
    iput-object p4, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->g:Lcom/google/android/youtube/app/honeycomb/ui/u;

    .line 151
    const-string v0, "errorHelper can\'t be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/e;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->i:Lcom/google/android/youtube/core/e;

    .line 153
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 155
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->c:Landroid/content/res/Resources;

    .line 156
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->d:Landroid/content/ContentResolver;

    .line 157
    const-string v1, "youtube"

    invoke-virtual {p1, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->e:Landroid/content/SharedPreferences;

    .line 158
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->J()Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->f:Lcom/google/android/youtube/core/Analytics;

    .line 160
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->e:Landroid/content/SharedPreferences;

    const-string v1, "upload_privacy"

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Privacy;->PRIVATE:Lcom/google/android/youtube/core/model/Video$Privacy;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Video$Privacy;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/model/Video$Privacy;->valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Privacy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->C:Lcom/google/android/youtube/core/model/Video$Privacy;

    .line 163
    const v0, 0x7f09001c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->n:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f09001b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->p:Landroid/widget/ImageView;

    .line 165
    const v0, 0x7f090027

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->o:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f09006d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->r:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f09008f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->t:Landroid/widget/EditText;

    .line 169
    const v0, 0x7f090090

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->u:Landroid/widget/EditText;

    .line 170
    const v0, 0x7f090091

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->v:Landroid/widget/EditText;

    .line 171
    const v0, 0x7f090045

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/PrivacySpinner;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->q:Lcom/google/android/youtube/app/ui/PrivacySpinner;

    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->q:Lcom/google/android/youtube/app/ui/PrivacySpinner;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->C:Lcom/google/android/youtube/core/model/Video$Privacy;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/PrivacySpinner;->a(Lcom/google/android/youtube/core/model/Video$Privacy;)V

    .line 173
    const v0, 0x7f090092

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->s:Landroid/widget/CheckBox;

    .line 175
    const v0, 0x7f09007f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->w:Landroid/widget/Button;

    .line 176
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->w:Landroid/widget/Button;

    const v1, 0x7f0a0105

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->w:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->w:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/ui/r;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/ui/r;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/q;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v0, 0x7f09008e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->x:Landroid/widget/TextView;

    .line 189
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->x:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 191
    new-instance v0, Lcom/google/android/youtube/app/ui/cf;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/ui/s;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/ui/s;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/q;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/youtube/app/ui/cf;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->y:Lcom/google/android/youtube/app/ui/cf;

    .line 198
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/v;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/ui/v;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/q;)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->j:Lcom/google/android/youtube/core/async/g;

    .line 200
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->E:Ljava/util/List;

    .line 201
    new-instance v0, Lcom/google/android/youtube/core/transfer/s;

    invoke-direct {v0, p1, p3}, Lcom/google/android/youtube/core/transfer/s;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/client/ad;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->h:Lcom/google/android/youtube/core/transfer/s;

    .line 202
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->w:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)Lcom/google/android/youtube/app/honeycomb/ui/w;
    .registers 10
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 397
    const-string v0, "contentUri may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :try_start_6
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->d:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/youtube/app/honeycomb/ui/q;->a:[Ljava/lang/String;

    const-string v3, "mime_type LIKE \'video/%\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_12} :catch_17

    move-result-object v1

    .line 401
    if-nez v1, :cond_3e

    move-object v0, v6

    .line 445
    :goto_16
    return-object v0

    .line 404
    :catch_17
    move-exception v0

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error resolving content from URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    .line 406
    goto :goto_16

    .line 409
    :cond_3e
    :try_start_3e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_ed

    move-result v0

    if-nez v0, :cond_49

    .line 410
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_16

    .line 412
    :cond_49
    :try_start_49
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/w;

    invoke-direct {v0}, Lcom/google/android/youtube/app/honeycomb/ui/w;-><init>()V

    .line 413
    const-string v2, "_id"

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/q;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/w;->a(Lcom/google/android/youtube/app/honeycomb/ui/w;Ljava/lang/Long;)Ljava/lang/Long;

    .line 414
    const-string v2, "_data"

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/q;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/w;->a(Lcom/google/android/youtube/app/honeycomb/ui/w;Ljava/lang/String;)Ljava/lang/String;

    .line 415
    const-string v2, "_display_name"

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/q;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/w;->b(Lcom/google/android/youtube/app/honeycomb/ui/w;Ljava/lang/String;)Ljava/lang/String;

    .line 416
    const-string v2, "_size"

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/q;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/w;->b(Lcom/google/android/youtube/app/honeycomb/ui/w;Ljava/lang/Long;)Ljava/lang/Long;

    .line 417
    const-string v2, "mime_type"

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/q;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/w;->c(Lcom/google/android/youtube/app/honeycomb/ui/w;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    const-string v2, "duration"

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/q;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/w;->c(Lcom/google/android/youtube/app/honeycomb/ui/w;Ljava/lang/Long;)Ljava/lang/Long;

    .line 419
    const-string v2, "latitude"

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/q;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/w;->d(Lcom/google/android/youtube/app/honeycomb/ui/w;Ljava/lang/String;)Ljava/lang/String;

    .line 420
    const-string v2, "longitude"

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/q;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/w;->e(Lcom/google/android/youtube/app/honeycomb/ui/w;Ljava/lang/String;)Ljava/lang/String;

    .line 421
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->m:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_d9

    .line 422
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->m:Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/w;->a(Lcom/google/android/youtube/app/honeycomb/ui/w;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 427
    :goto_9f
    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/w;->i(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_b7

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/w;->j(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 428
    :cond_b7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to read video file ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V
    :try_end_d3
    .catchall {:try_start_49 .. :try_end_d3} :catchall_ed

    .line 429
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto/16 :goto_16

    .line 424
    :cond_d9
    :try_start_d9
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->d:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/w;->i(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v7, 0x0

    invoke-static {v2, v3, v4, v5, v7}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/w;->a(Lcom/google/android/youtube/app/honeycomb/ui/w;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_ec
    .catchall {:try_start_d9 .. :try_end_ec} :catchall_ed

    goto :goto_9f

    .line 445
    :catchall_ed
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 431
    :cond_f2
    :try_start_f2
    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/w;->j(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 432
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 433
    const-string v4, "file"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12d

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a file uri ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V
    :try_end_127
    .catchall {:try_start_f2 .. :try_end_127} :catchall_ed

    .line 435
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto/16 :goto_16

    .line 437
    :cond_12d
    :try_start_12d
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/w;->f(Lcom/google/android/youtube/app/honeycomb/ui/w;Ljava/lang/String;)Ljava/lang/String;

    .line 438
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/w;->g(Lcom/google/android/youtube/app/honeycomb/ui/w;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/w;->k(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16d

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid file type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/w;->k(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V
    :try_end_167
    .catchall {:try_start_12d .. :try_end_167} :catchall_ed

    .line 441
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto/16 :goto_16

    .line 445
    :cond_16d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_16
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/ui/q;Landroid/net/Uri;)Lcom/google/android/youtube/app/honeycomb/ui/w;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/q;->a(Landroid/net/Uri;)Lcom/google/android/youtube/app/honeycomb/ui/w;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/youtube/app/honeycomb/ui/w;)Lcom/google/android/youtube/core/transfer/b;
    .registers 8
    .parameter

    .prologue
    .line 347
    new-instance v0, Lcom/google/android/youtube/core/transfer/b;

    invoke-direct {v0}, Lcom/google/android/youtube/core/transfer/b;-><init>()V

    .line 348
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->l:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 349
    const-string v1, "username"

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_10
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/ui/w;->g(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 352
    const-string v1, "upload_title"

    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/ui/w;->g(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_1f
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/ui/w;->d(Lcom/google/android/youtube/app/honeycomb/ui/w;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 355
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/ui/w;->d(Lcom/google/android/youtube/app/honeycomb/ui/w;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 356
    const-string v2, "upload_file_thumbnail"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;[B)V

    .line 358
    :cond_32
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/ui/w;->h(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 359
    const-string v1, "upload_file_duration"

    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/ui/w;->h(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;J)V

    .line 361
    :cond_48
    const-string v1, "upload_start_time_millis"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;J)V

    .line 362
    const-string v1, "authAccount"

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->k:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v1, "upload_description"

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v1, "upload_keywords"

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v1, "upload_privacy"

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->C:Lcom/google/android/youtube/core/model/Video$Privacy;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Video$Privacy;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->D:Z

    if-eqz v1, :cond_9b

    .line 367
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/ui/q;->b(Lcom/google/android/youtube/app/honeycomb/ui/w;)Landroid/util/Pair;

    move-result-object v1

    .line 368
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

    invoke-virtual {v0, v2, v1}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_9b
    return-object v0
.end method

.method private static a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 450
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 451
    if-gez v0, :cond_8

    .line 452
    const/4 v0, 0x0

    .line 454
    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_7
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/ui/q;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->l:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 328
    const v1, 0x7f0900cf

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 329
    if-eqz v1, :cond_e

    .line 330
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 331
    const/4 v0, 0x1

    .line 333
    :cond_e
    return v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/ui/q;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->G:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/ui/q;)J
    .registers 3
    .parameter

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->H:J

    return-wide v0
.end method

.method private static b(Lcom/google/android/youtube/app/honeycomb/ui/w;)Landroid/util/Pair;
    .registers 3
    .parameter

    .prologue
    .line 374
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/ui/w;->a(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/ui/w;->b(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/String;

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
    .line 458
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 459
    if-gez v0, :cond_8

    .line 460
    const/4 v0, 0x0

    .line 462
    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/ui/q;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->K:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/ui/q;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->f:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method private d()V
    .registers 4

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "upload_privacy"

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->C:Lcom/google/android/youtube/core/model/Video$Privacy;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Video$Privacy;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 529
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->g:Lcom/google/android/youtube/app/honeycomb/ui/u;

    if-eqz v0, :cond_1e

    .line 530
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->g:Lcom/google/android/youtube/app/honeycomb/ui/u;

    invoke-interface {v0}, Lcom/google/android/youtube/app/honeycomb/ui/u;->g_()V

    .line 532
    :cond_1e
    return-void
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/ui/q;)V
    .registers 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->e()V

    return-void
.end method

.method private e()V
    .registers 16

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x1

    .line 535
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->F:I

    .line 536
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->z:Ljava/lang/String;

    .line 537
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->u:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->A:Ljava/lang/String;

    .line 538
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->v:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->B:Ljava/lang/String;

    .line 539
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->q:Lcom/google/android/youtube/app/ui/PrivacySpinner;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/PrivacySpinner;->a()Lcom/google/android/youtube/core/model/Video$Privacy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->C:Lcom/google/android/youtube/core/model/Video$Privacy;

    .line 540
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->D:Z

    .line 542
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v12, :cond_8b

    .line 543
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->E:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/youtube/app/honeycomb/ui/w;

    .line 544
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->z:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 545
    invoke-static {v10}, Lcom/google/android/youtube/app/honeycomb/ui/w;->f(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->z:Ljava/lang/String;

    .line 547
    :cond_5e
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->z:Ljava/lang/String;

    invoke-static {v10, v0}, Lcom/google/android/youtube/app/honeycomb/ui/w;->h(Lcom/google/android/youtube/app/honeycomb/ui/w;Ljava/lang/String;)Ljava/lang/String;

    .line 548
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->h:Lcom/google/android/youtube/core/transfer/s;

    invoke-static {v10}, Lcom/google/android/youtube/app/honeycomb/ui/w;->l(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10}, Lcom/google/android/youtube/app/honeycomb/ui/w;->f(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->k:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->C:Lcom/google/android/youtube/core/model/Video$Privacy;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->z:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->A:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->B:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->D:Z

    if-eqz v9, :cond_89

    invoke-static {v10}, Lcom/google/android/youtube/app/honeycomb/ui/q;->b(Lcom/google/android/youtube/app/honeycomb/ui/w;)Landroid/util/Pair;

    move-result-object v9

    :goto_7f
    invoke-direct {p0, v10}, Lcom/google/android/youtube/app/honeycomb/ui/q;->a(Lcom/google/android/youtube/app/honeycomb/ui/w;)Lcom/google/android/youtube/core/transfer/b;

    move-result-object v10

    iget-boolean v11, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->G:Z

    invoke-virtual/range {v0 .. v12}, Lcom/google/android/youtube/core/transfer/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/model/Video$Privacy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Lcom/google/android/youtube/core/transfer/b;ZZ)V

    .line 585
    :cond_88
    return-void

    :cond_89
    move-object v9, v7

    .line 548
    goto :goto_7f

    .line 563
    :cond_8b
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v1, v12

    :goto_92
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/youtube/app/honeycomb/ui/w;

    .line 564
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->z:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 565
    invoke-static {v10}, Lcom/google/android/youtube/app/honeycomb/ui/w;->f(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/google/android/youtube/app/honeycomb/ui/w;->h(Lcom/google/android/youtube/app/honeycomb/ui/w;Ljava/lang/String;)Ljava/lang/String;

    move v13, v1

    .line 570
    :goto_af
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->h:Lcom/google/android/youtube/core/transfer/s;

    invoke-static {v10}, Lcom/google/android/youtube/app/honeycomb/ui/w;->l(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10}, Lcom/google/android/youtube/app/honeycomb/ui/w;->f(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->k:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->C:Lcom/google/android/youtube/core/model/Video$Privacy;

    invoke-static {v10}, Lcom/google/android/youtube/app/honeycomb/ui/w;->g(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->A:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->B:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->D:Z

    if-eqz v9, :cond_fd

    invoke-static {v10}, Lcom/google/android/youtube/app/honeycomb/ui/q;->b(Lcom/google/android/youtube/app/honeycomb/ui/w;)Landroid/util/Pair;

    move-result-object v9

    :goto_cd
    invoke-direct {p0, v10}, Lcom/google/android/youtube/app/honeycomb/ui/q;->a(Lcom/google/android/youtube/app/honeycomb/ui/w;)Lcom/google/android/youtube/core/transfer/b;

    move-result-object v10

    iget-boolean v11, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->G:Z

    invoke-virtual/range {v0 .. v12}, Lcom/google/android/youtube/core/transfer/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/model/Video$Privacy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Lcom/google/android/youtube/core/transfer/b;ZZ)V

    move v1, v13

    goto :goto_92

    .line 567
    :cond_d8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->z:Ljava/lang/String;

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

    invoke-static {v10, v0}, Lcom/google/android/youtube/app/honeycomb/ui/w;->h(Lcom/google/android/youtube/app/honeycomb/ui/w;Ljava/lang/String;)Ljava/lang/String;

    .line 568
    add-int/lit8 v13, v1, 0x1

    goto :goto_af

    :cond_fd
    move-object v9, v7

    .line 570
    goto :goto_cd
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/ui/q;)V
    .registers 3
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->y:Lcom/google/android/youtube/app/ui/cf;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cf;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->h:Lcom/google/android/youtube/core/transfer/s;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/transfer/s;->a(Lcom/google/android/youtube/core/transfer/v;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->b:Landroid/app/Activity;

    const/16 v1, 0x3fd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_d
.end method

.method static synthetic f(Lcom/google/android/youtube/app/honeycomb/ui/q;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->E:Ljava/util/List;

    return-object v0
.end method

.method private f()V
    .registers 3

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->J:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->K:Z

    if-eqz v0, :cond_e

    .line 589
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->w:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 591
    :cond_e
    return-void
.end method

.method static synthetic g(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->p:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/content/res/Resources;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->c:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/widget/CheckBox;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->s:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic m(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/google/android/youtube/app/honeycomb/ui/q;)V
    .registers 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->f()V

    return-void
.end method

.method static synthetic o(Lcom/google/android/youtube/app/honeycomb/ui/q;)Lcom/google/android/youtube/core/e;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->i:Lcom/google/android/youtube/core/e;

    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 337
    packed-switch p1, :pswitch_data_c

    .line 342
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 339
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->y:Lcom/google/android/youtube/app/ui/cf;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cf;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 337
    :pswitch_data_c
    .packed-switch 0x3fd
        :pswitch_5
    .end packed-switch
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->h:Lcom/google/android/youtube/core/transfer/s;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/s;->a()V

    .line 261
    return-void
.end method

.method public final a(Landroid/content/Intent;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 205
    const-string v0, "intent can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v0, "userAuth can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->k:Lcom/google/android/youtube/core/model/UserAuth;

    .line 208
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 209
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 210
    const-string v2, "com.google.android.youtube.intent.action.UPLOAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 212
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 213
    if-eqz v2, :cond_30

    .line 214
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->m:Landroid/graphics/Bitmap;

    .line 215
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_30
    :goto_30
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 231
    :cond_34
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 232
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 233
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://media/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 234
    :cond_4e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring non-media-content uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 235
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_34

    .line 217
    :cond_68
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 219
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 220
    if-eqz v0, :cond_30

    .line 221
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 223
    :cond_7e
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 225
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_30

    .line 227
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_30

    .line 238
    :cond_96
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 239
    const-string v0, "no media content uri(s)"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 249
    :goto_a6
    return-void

    .line 243
    :cond_a7
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_b2

    .line 244
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->I:Lcom/google/android/youtube/core/client/ad;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->j:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, p2, v2}, Lcom/google/android/youtube/core/client/ad;->a(Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    .line 246
    :cond_b2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->H:J

    .line 247
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->f:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "UploadFormShown"

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/t;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/ui/t;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/q;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/t;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_a6
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 508
    const-string v0, "Error requesting location for upload"

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 509
    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->F:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->F:I

    .line 510
    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->F:I

    if-nez v0, :cond_35

    .line 511
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_36

    .line 512
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->i:Lcom/google/android/youtube/core/e;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/e;->b(Ljava/lang/Throwable;)V

    .line 513
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->w:Landroid/widget/Button;

    const v1, 0x7f0a009c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 514
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->w:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 515
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->f:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "UploadDestinationError"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_35
    :goto_35
    return-void

    .line 517
    :cond_36
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->d()V

    goto :goto_35
.end method

.method public final a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 489
    iget v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->F:I

    if-eqz p1, :cond_11

    const/4 v0, 0x0

    :goto_5
    sub-int v0, v1, v0

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->F:I

    .line 490
    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->F:I

    if-nez v0, :cond_10

    .line 491
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->d()V

    .line 493
    :cond_10
    return-void

    .line 489
    :cond_11
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->e()V

    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->J:Z

    .line 485
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->f()V

    .line 486
    return-void
.end method

.method public final c()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 496
    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->F:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->F:I

    .line 497
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_21

    .line 498
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->b:Landroid/app/Activity;

    const v1, 0x7f0a0107

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    .line 499
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->g:Lcom/google/android/youtube/app/honeycomb/ui/u;

    if-eqz v0, :cond_20

    .line 500
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->g:Lcom/google/android/youtube/app/honeycomb/ui/u;

    invoke-interface {v0}, Lcom/google/android/youtube/app/honeycomb/ui/u;->c()V

    .line 505
    :cond_20
    :goto_20
    return-void

    .line 502
    :cond_21
    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/q;->F:I

    if-nez v0, :cond_20

    .line 503
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->d()V

    goto :goto_20
.end method
