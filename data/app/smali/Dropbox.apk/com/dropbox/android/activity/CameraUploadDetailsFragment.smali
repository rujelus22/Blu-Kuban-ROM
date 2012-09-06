.class public Lcom/dropbox/android/activity/CameraUploadDetailsFragment;
.super Lcom/dropbox/android/activity/base/BaseFragment;
.source "panda.py"


# static fields
.field private static final a:Ljava/text/DateFormat;

.field private static final b:Ljava/text/DateFormat;


# instance fields
.field private V:Landroid/view/View;

.field private W:Landroid/view/View;

.field private X:Landroid/view/View;

.field private Y:Landroid/widget/TextView;

.field private final Z:Lcom/dropbox/android/activity/g;

.field private final aa:Lcom/dropbox/android/activity/h;

.field private ab:Lcom/dropbox/android/activity/n;

.field private ac:Landroid/database/Cursor;

.field private ad:Ldbxyzptlk/i/f;

.field private ae:Ljava/lang/String;

.field private c:Lcom/dropbox/android/activity/i;

.field private d:Lcom/dropbox/android/activity/i;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->a:Ljava/text/DateFormat;

    .line 67
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->b:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/dropbox/android/activity/base/BaseFragment;-><init>()V

    .line 83
    new-instance v0, Lcom/dropbox/android/activity/g;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/dropbox/android/activity/g;-><init>(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->Z:Lcom/dropbox/android/activity/g;

    .line 84
    new-instance v0, Lcom/dropbox/android/activity/h;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/dropbox/android/activity/h;-><init>(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->aa:Lcom/dropbox/android/activity/h;

    .line 525
    return-void
.end method

.method private A()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 343
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c:Lcom/dropbox/android/activity/i;

    const v1, 0x7f090113

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->j()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/dropbox/android/activity/i;->a(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    .line 346
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->d:Lcom/dropbox/android/activity/i;

    const v1, 0x7f090112

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/dropbox/android/activity/i;->a(Ljava/lang/CharSequence;Z)V

    .line 347
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->X:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 348
    return-void
.end method

.method static synthetic a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter

    .prologue
    .line 62
    invoke-static {p0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Date;)Ljava/lang/String;
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x1

    .line 932
    sget-object v0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->b:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 934
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 935
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 937
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 939
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 940
    const/4 v4, -0x1

    invoke-virtual {v3, v7, v4}, Ljava/util/Calendar;->add(II)V

    .line 942
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_40

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v4, v2, :cond_40

    .line 944
    const v1, 0x7f090120

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 952
    :goto_3f
    return-object v0

    .line 946
    :cond_40
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v2, v4, :cond_64

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_64

    .line 948
    const v1, 0x7f090121

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 951
    :cond_64
    sget-object v1, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->a:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 952
    const v2, 0x7f09011f

    invoke-virtual {p0, v2}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v8

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f
.end method

.method private a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    if-eqz v0, :cond_13

    .line 153
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->Z:Lcom/dropbox/android/activity/g;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 154
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 155
    iput-object v2, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    .line 158
    :cond_13
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ad:Ldbxyzptlk/i/f;

    if-eqz v0, :cond_20

    .line 159
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ad:Ldbxyzptlk/i/f;

    iget-object v1, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->aa:Lcom/dropbox/android/activity/h;

    invoke-virtual {v0, v1}, Ldbxyzptlk/i/f;->unregisterObserver(Ljava/lang/Object;)V

    .line 160
    iput-object v2, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ad:Ldbxyzptlk/i/f;

    .line 162
    :cond_20
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)V
    .registers 1
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->b()V

    return-void
.end method

.method private static b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/high16 v10, 0x4400

    const/high16 v9, 0x43c0

    const/high16 v5, 0x4000

    .line 895
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 896
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 899
    if-le v4, v3, :cond_46

    .line 900
    int-to-float v0, v3

    div-float/2addr v0, v5

    .line 901
    int-to-float v2, v4

    div-float/2addr v2, v5

    .line 902
    sub-float v7, v2, v0

    .line 904
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 905
    neg-float v8, v7

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 906
    const/high16 v7, 0x42b4

    invoke-virtual {v5, v7, v0, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 908
    const/16 v0, 0x200

    if-ge v4, v0, :cond_3b

    const/16 v0, 0x180

    if-ge v3, v0, :cond_3b

    .line 909
    int-to-float v0, v4

    div-float v0, v10, v0

    int-to-float v2, v3

    div-float v2, v9, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 910
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_3b
    move-object v0, p0

    move v2, v1

    .line 913
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 915
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v0

    .line 928
    :cond_45
    :goto_45
    return-object p0

    .line 917
    :cond_46
    const/16 v0, 0x200

    if-ge v3, v0, :cond_45

    const/16 v0, 0x180

    if-ge v4, v0, :cond_45

    .line 918
    int-to-float v0, v3

    div-float v0, v10, v0

    int-to-float v1, v4

    div-float v1, v9, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 919
    int-to-float v1, v3

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 920
    int-to-float v2, v4

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 922
    invoke-static {p0, v1, v0, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 924
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v0

    .line 925
    goto :goto_45
.end method

.method private b()V
    .registers 16

    .prologue
    const v13, 0x7f090044

    const/16 v9, 0x8

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ad:Ldbxyzptlk/i/f;

    if-eqz v0, :cond_15

    .line 166
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ad:Ldbxyzptlk/i/f;

    iget-object v3, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->aa:Lcom/dropbox/android/activity/h;

    invoke-virtual {v0, v3}, Ldbxyzptlk/i/f;->unregisterObserver(Ljava/lang/Object;)V

    .line 167
    iput-object v4, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ad:Ldbxyzptlk/i/f;

    .line 170
    :cond_15
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v6

    .line 171
    invoke-direct {p0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->a()V

    .line 172
    invoke-virtual {v6}, Lcom/dropbox/android/filemanager/v;->k()Lcom/dropbox/android/taskqueue/G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/G;->e()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    .line 173
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->Z:Lcom/dropbox/android/activity/g;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 174
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_89

    .line 175
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 178
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    const-string v5, "camera_upload_status"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Lcom/dropbox/android/taskqueue/P;->valueOf(Ljava/lang/String;)Lcom/dropbox/android/taskqueue/P;

    move-result-object v7

    .line 181
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    const-string v5, "camera_upload_initial_scan"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 182
    if-ne v0, v1, :cond_8a

    move v5, v1

    .line 184
    :goto_5d
    if-eqz v5, :cond_8c

    sget-object v0, Lcom/dropbox/android/taskqueue/P;->f:Lcom/dropbox/android/taskqueue/P;

    if-ne v7, v0, :cond_8c

    move v0, v1

    .line 185
    :goto_64
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v3

    invoke-virtual {v3}, Ldbxyzptlk/j/m;->i()Ldbxyzptlk/j/p;

    move-result-object v3

    sget-object v8, Ldbxyzptlk/j/p;->c:Ldbxyzptlk/j/p;

    if-ne v3, v8, :cond_8e

    move v3, v1

    .line 186
    :goto_71
    if-nez v0, :cond_75

    if-eqz v3, :cond_a3

    .line 187
    :cond_75
    iget-object v1, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->W:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->V:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 190
    if-eqz v0, :cond_90

    .line 191
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->Y:Landroid/widget/TextView;

    const v1, 0x7f090116

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 326
    :cond_89
    :goto_89
    return-void

    :cond_8a
    move v5, v2

    .line 182
    goto :goto_5d

    :cond_8c
    move v0, v2

    .line 184
    goto :goto_64

    :cond_8e
    move v3, v2

    .line 185
    goto :goto_71

    .line 193
    :cond_90
    sget-object v0, Lcom/dropbox/android/taskqueue/P;->b:Lcom/dropbox/android/taskqueue/P;

    if-ne v7, v0, :cond_9d

    .line 194
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->Y:Landroid/widget/TextView;

    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_89

    .line 196
    :cond_9d
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->Y:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(I)V

    goto :goto_89

    .line 202
    :cond_a3
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->W:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->V:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    const-string v8, "camera_upload_file_path"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 207
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    const-string v9, "camera_upload_local_mime_type"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 209
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ae:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_147

    move v0, v1

    .line 210
    :goto_d2
    iput-object v8, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ae:Ljava/lang/String;

    .line 213
    invoke-static {v8}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_257

    .line 214
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_e6

    move-object v3, v4

    .line 220
    :cond_e6
    :goto_e6
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v10

    .line 223
    invoke-direct {p0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->z()V

    .line 226
    sget-object v11, Lcom/dropbox/android/activity/f;->a:[I

    invoke-virtual {v7}, Lcom/dropbox/android/taskqueue/P;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_25a

    :cond_f8
    move v3, v1

    .line 285
    :goto_f9
    if-eqz v3, :cond_11f

    .line 288
    if-eqz v5, :cond_202

    .line 289
    const v3, 0x7f090116

    invoke-virtual {p0, v3}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(I)Ljava/lang/String;

    move-result-object v3

    .line 307
    :goto_104
    if-eqz v0, :cond_24a

    sget-object v0, Lcom/dropbox/android/taskqueue/P;->g:Lcom/dropbox/android/taskqueue/P;

    if-ne v7, v0, :cond_24a

    .line 308
    :goto_10a
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c:Lcom/dropbox/android/activity/i;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->j()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v1}, Lcom/dropbox/android/activity/i;->a(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    .line 311
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->d:Lcom/dropbox/android/activity/i;

    invoke-virtual {v0, v3, v2}, Lcom/dropbox/android/activity/i;->a(Ljava/lang/CharSequence;Z)V

    .line 315
    :cond_11f
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    const-string v2, "camera_upload_pending_paths_json"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    :try_start_12d
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_132
    .catch Lorg/json/JSONException; {:try_start_12d .. :try_end_132} :catch_24d

    .line 323
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    const-string v3, "camera_upload_local_uri"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    iget-object v2, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ab:Lcom/dropbox/android/activity/n;

    invoke-virtual {v2, v0, v1, v7}, Lcom/dropbox/android/activity/n;->a(Ljava/lang/String;Lorg/json/JSONArray;Lcom/dropbox/android/taskqueue/P;)V

    goto/16 :goto_89

    :cond_147
    move v0, v2

    .line 209
    goto :goto_d2

    .line 228
    :pswitch_149
    const v3, 0x7f090047

    invoke-virtual {p0, v3}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(I)Ljava/lang/String;

    move-result-object v4

    move v3, v1

    .line 229
    goto :goto_f9

    .line 231
    :pswitch_152
    const v3, 0x7f090115

    invoke-virtual {p0, v3}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(I)Ljava/lang/String;

    move-result-object v4

    move v3, v1

    .line 232
    goto :goto_f9

    .line 234
    :pswitch_15b
    const v3, 0x7f090114

    invoke-virtual {p0, v3}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(I)Ljava/lang/String;

    move-result-object v4

    move v3, v1

    .line 235
    goto :goto_f9

    .line 237
    :pswitch_164
    invoke-virtual {p0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/dropbox/android/util/y;->a(Landroid/content/Context;)Lcom/dropbox/android/util/C;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dropbox/android/util/C;->b()Z

    move-result v3

    if-eqz v3, :cond_17c

    .line 238
    const v3, 0x7f090119

    invoke-virtual {p0, v3}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(I)Ljava/lang/String;

    move-result-object v4

    move v3, v1

    goto/16 :goto_f9

    .line 240
    :cond_17c
    const v3, 0x7f090118

    invoke-virtual {p0, v3}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(I)Ljava/lang/String;

    move-result-object v4

    move v3, v1

    .line 242
    goto/16 :goto_f9

    .line 244
    :pswitch_186
    if-eqz v3, :cond_f8

    .line 245
    new-instance v11, Ldbxyzptlk/i/i;

    iget-object v12, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    iget-object v13, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    const-string v14, "id"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ldbxyzptlk/i/i;-><init>(J)V

    .line 247
    invoke-virtual {v6}, Lcom/dropbox/android/filemanager/v;->b()Ldbxyzptlk/i/g;

    move-result-object v6

    invoke-virtual {v6, v11}, Ldbxyzptlk/i/g;->a(Ldbxyzptlk/i/i;)Ldbxyzptlk/i/f;

    move-result-object v6

    iput-object v6, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ad:Ldbxyzptlk/i/f;

    .line 248
    iget-object v6, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ad:Ldbxyzptlk/i/f;

    if-eqz v6, :cond_1b0

    .line 249
    iget-object v6, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ad:Ldbxyzptlk/i/f;

    iget-object v11, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->aa:Lcom/dropbox/android/activity/h;

    invoke-virtual {v6, v11}, Ldbxyzptlk/i/f;->registerObserver(Landroid/database/ContentObserver;)V

    .line 252
    :cond_1b0
    invoke-static {v8, v9}, Lcom/dropbox/android/util/ar;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 253
    if-eqz v6, :cond_1ba

    .line 254
    invoke-direct {p0, v6}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 257
    :cond_1ba
    if-nez v4, :cond_254

    .line 258
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 259
    const-wide/16 v11, 0x0

    cmp-long v4, v8, v11

    if-lez v4, :cond_1d6

    .line 260
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v3}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 266
    :goto_1cf
    invoke-direct {p0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->y()V

    move-object v4, v3

    move v3, v1

    .line 267
    goto/16 :goto_f9

    .line 262
    :cond_1d6
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1cf

    .line 270
    :pswitch_1db
    invoke-virtual {p0, v13}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(I)Ljava/lang/String;

    move-result-object v4

    move v3, v1

    .line 271
    goto/16 :goto_f9

    .line 273
    :pswitch_1e2
    invoke-direct {p0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->A()V

    move v3, v2

    .line 275
    goto/16 :goto_f9

    .line 277
    :pswitch_1e8
    invoke-virtual {v10}, Ldbxyzptlk/j/m;->g()Z

    move-result v3

    if-eqz v3, :cond_1f8

    .line 278
    const v3, 0x7f09010e

    invoke-virtual {p0, v3}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(I)Ljava/lang/String;

    move-result-object v4

    move v3, v1

    goto/16 :goto_f9

    .line 280
    :cond_1f8
    const v3, 0x7f09010f

    invoke-virtual {p0, v3}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(I)Ljava/lang/String;

    move-result-object v4

    move v3, v1

    goto/16 :goto_f9

    .line 291
    :cond_202
    iget-object v3, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ac:Landroid/database/Cursor;

    const-string v6, "camera_upload_num_remaining"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 292
    if-lez v3, :cond_232

    .line 293
    if-ne v3, v1, :cond_21d

    .line 294
    const v3, 0x7f09011b

    invoke-virtual {p0, v3}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_104

    .line 296
    :cond_21d
    const v5, 0x7f09011c

    invoke-virtual {p0, v5}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_104

    .line 299
    :cond_232
    invoke-virtual {v10}, Ldbxyzptlk/j/m;->g()Z

    move-result v3

    if-eqz v3, :cond_241

    .line 300
    const v3, 0x7f090110

    invoke-virtual {p0, v3}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_104

    .line 302
    :cond_241
    const v3, 0x7f090111

    invoke-virtual {p0, v3}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_104

    :cond_24a
    move v1, v2

    .line 307
    goto/16 :goto_10a

    .line 319
    :catch_24d
    move-exception v0

    .line 321
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_254
    move-object v3, v4

    goto/16 :goto_1cf

    :cond_257
    move-object v3, v4

    goto/16 :goto_e6

    .line 226
    :pswitch_data_25a
    .packed-switch 0x1
        :pswitch_149
        :pswitch_152
        :pswitch_15b
        :pswitch_164
        :pswitch_186
        :pswitch_1db
        :pswitch_1e2
        :pswitch_1e8
    .end packed-switch
.end method

.method static synthetic b(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)V
    .registers 1
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->y()V

    return-void
.end method

.method static synthetic c(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/FrameLayout;
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method private y()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ad:Ldbxyzptlk/i/f;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ad:Ldbxyzptlk/i/f;

    instance-of v0, v0, Ldbxyzptlk/i/j;

    if-eqz v0, :cond_1f

    .line 331
    iget-object v1, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->e:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ad:Ldbxyzptlk/i/f;

    check-cast v0, Ldbxyzptlk/i/j;

    invoke-virtual {v0}, Ldbxyzptlk/i/j;->c()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 335
    :goto_1e
    return-void

    .line 333
    :cond_1f
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1e
.end method

.method private z()V
    .registers 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->X:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    const v0, 0x7f030006

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 95
    new-instance v2, Lcom/dropbox/android/activity/i;

    const v0, 0x7f0d001c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Lcom/dropbox/android/activity/i;-><init>(Landroid/widget/TextView;)V

    iput-object v2, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c:Lcom/dropbox/android/activity/i;

    .line 96
    new-instance v2, Lcom/dropbox/android/activity/i;

    const v0, 0x7f0d001d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Lcom/dropbox/android/activity/i;-><init>(Landroid/widget/TextView;)V

    iput-object v2, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->d:Lcom/dropbox/android/activity/i;

    .line 97
    const v0, 0x7f0d001b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->e:Landroid/widget/ProgressBar;

    .line 98
    const v0, 0x7f0d0019

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->f:Landroid/widget/FrameLayout;

    .line 99
    const v0, 0x7f0d0018

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->g:Landroid/widget/ImageView;

    .line 100
    const v0, 0x7f0d0016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->V:Landroid/view/View;

    .line 101
    const v0, 0x7f0d001a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->h:Landroid/widget/ImageView;

    .line 102
    const v0, 0x7f0d0014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->W:Landroid/view/View;

    .line 103
    const v0, 0x7f0d001e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->X:Landroid/view/View;

    .line 104
    const v0, 0x7f0d0015

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->Y:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->X:Landroid/view/View;

    new-instance v2, Lcom/dropbox/android/activity/d;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/d;-><init>(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v0, 0x7f0d0017

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/dropbox/android/activity/e;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/e;-><init>(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance v0, Lcom/dropbox/android/activity/n;

    invoke-direct {v0, p0, p3}, Lcom/dropbox/android/activity/n;-><init>(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ab:Lcom/dropbox/android/activity/n;

    .line 126
    return-object v1
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 137
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseFragment;->c()V

    .line 138
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->f()Z

    move-result v0

    if-nez v0, :cond_15

    .line 139
    invoke-virtual {p0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 143
    :goto_14
    return-void

    .line 141
    :cond_15
    invoke-direct {p0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->b()V

    goto :goto_14
.end method

.method public final d()V
    .registers 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseFragment;->d()V

    .line 148
    invoke-direct {p0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->a()V

    .line 149
    return-void
.end method

.method public final e(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseFragment;->e(Landroid/os/Bundle;)V

    .line 132
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->ab:Lcom/dropbox/android/activity/n;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/activity/n;->a(Landroid/os/Bundle;)V

    .line 133
    return-void
.end method
