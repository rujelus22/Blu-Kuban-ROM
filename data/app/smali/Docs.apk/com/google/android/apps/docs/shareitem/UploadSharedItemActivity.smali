.class public Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;
.super Lcom/google/android/apps/docs/app/BaseDialogActivity;
.source "UploadSharedItemActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:LFX;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LHW;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LOL;

.field public a:LXJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXh;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXt;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LZE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private a:Landroid/content/ServiceConnection;

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/CheckBox;

.field private a:Landroid/widget/EditText;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/Spinner;

.field private a:Landroid/widget/TextView;

.field private a:Lcom/google/android/apps/docs/view/TitleBar;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private a:LpB;

.field public a:LtF;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private b:Landroid/widget/Button;

.field private b:Landroid/widget/TextView;

.field public c:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LXP;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/util/HashMap;

    .line 110
    sget-object v0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/util/HashMap;

    const-string v1, ".3gp"

    const-string v2, "video/3gpp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseDialogActivity;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/content/ServiceConnection;

    return-void
.end method

.method private a(Landroid/net/Uri;)I
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 706
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:LOL;

    const-string v1, "orientation"

    invoke-virtual {v0, p1, v1, v2}, LOL;->a(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v0

    .line 708
    const-string v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 710
    :try_start_15
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 711
    const-string v2, "Orientation"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_24} :catch_32

    move-result v1

    .line 713
    packed-switch v1, :pswitch_data_34

    .line 730
    :cond_28
    :goto_28
    :pswitch_28
    return v0

    .line 715
    :pswitch_29
    add-int/lit8 v0, v0, 0x5a

    .line 716
    goto :goto_28

    .line 718
    :pswitch_2c
    add-int/lit16 v0, v0, 0xb4

    .line 719
    goto :goto_28

    .line 721
    :pswitch_2f
    add-int/lit16 v0, v0, 0x10e

    .line 722
    goto :goto_28

    .line 726
    :catch_32
    move-exception v1

    goto :goto_28

    .line 713
    :pswitch_data_34
    .packed-switch 0x3
        :pswitch_2c
        :pswitch_28
        :pswitch_28
        :pswitch_29
        :pswitch_28
        :pswitch_2f
    .end packed-switch
.end method

.method private a(Landroid/net/Uri;Landroid/content/ContentResolver;)I
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 564
    const/4 v0, -0x1

    .line 565
    const/4 v1, 0x0

    .line 567
    :try_start_2
    const-string v2, "r"

    invoke-virtual {p2, p1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 568
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_33
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_b} :catch_1c

    move-result-wide v2

    long-to-int v0, v2

    .line 573
    if-eqz v1, :cond_12

    .line 574
    :try_start_f
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_13

    .line 580
    :cond_12
    :goto_12
    return v0

    .line 576
    :catch_13
    move-exception v1

    .line 577
    const-string v1, "UploadSharedItemActivity"

    const-string v2, "Error closing file opened to obtain size."

    invoke-static {v1, v2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 569
    :catch_1c
    move-exception v2

    .line 570
    :try_start_1d
    const-string v2, "UploadSharedItemActivity"

    const-string v3, "Error opening file to obtain size."

    invoke-static {v2, v3}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_33

    .line 573
    if-eqz v1, :cond_12

    .line 574
    :try_start_26
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_12

    .line 576
    :catch_2a
    move-exception v1

    .line 577
    const-string v1, "UploadSharedItemActivity"

    const-string v2, "Error closing file opened to obtain size."

    invoke-static {v1, v2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 572
    :catchall_33
    move-exception v0

    .line 573
    if-eqz v1, :cond_39

    .line 574
    :try_start_36
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    .line 578
    :cond_39
    :goto_39
    throw v0

    .line 576
    :catch_3a
    move-exception v1

    .line 577
    const-string v1, "UploadSharedItemActivity"

    const-string v2, "Error closing file opened to obtain size."

    invoke-static {v1, v2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/Intent;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 813
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 814
    const-class v1, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 815
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 817
    const-string v1, "convertDocument"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 818
    const-string v1, "deleteAfterUpload"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 819
    const-string v1, "docListTitle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    const-string v1, "evaluateForOcr"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 821
    if-eqz p3, :cond_2f

    .line 822
    const-string v1, "accountName"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    :cond_2f
    return-object v0
.end method

.method private a(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .registers 13
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 642
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 643
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 644
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "video/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 646
    if-eqz v0, :cond_37

    .line 648
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:LOL;

    const-string v2, "_id"

    invoke-virtual {v0, p1, v2, v6, v7}, LOL;->a(Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v2

    .line 649
    cmp-long v0, v2, v8

    if-lez v0, :cond_ad

    .line 650
    invoke-virtual {p0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3, v5, v1}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 653
    if-eqz v0, :cond_ad

    .line 698
    :goto_36
    return-object v0

    .line 657
    :cond_37
    if-eqz v2, :cond_ad

    .line 658
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Landroid/net/Uri;)I

    move-result v2

    .line 660
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:LOL;

    const-string v3, "_id"

    invoke-virtual {v0, p1, v3, v6, v7}, LOL;->a(Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v3

    .line 662
    cmp-long v0, v3, v8

    if-lez v0, :cond_60

    .line 663
    invoke-virtual {p0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v4, v5, v1}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 665
    if-eqz v0, :cond_60

    .line 666
    invoke-static {v0}, LXs;->a(Landroid/graphics/Bitmap;)LXs;

    move-result-object v0

    invoke-virtual {v0, v2}, LXs;->a(I)LXs;

    move-result-object v0

    invoke-virtual {v0}, LXs;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_36

    .line 677
    :cond_60
    :try_start_60
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:LXt;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    invoke-interface {v0, v3}, LXt;->a(Ljava/io/InputStream;)LXu;

    move-result-object v3

    .line 678
    const/4 v0, 0x1

    .line 680
    :goto_6f
    invoke-virtual {v3}, LXu;->a()I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    div-int/2addr v4, v5

    if-lt v4, p2, :cond_81

    invoke-virtual {v3}, LXu;->b()I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    div-int/2addr v4, v5

    if-ge v4, p2, :cond_96

    .line 686
    :cond_81
    invoke-virtual {p0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v0}, LXs;->a(Ljava/io/InputStream;I)LXs;

    move-result-object v0

    invoke-virtual {v0, v2}, LXs;->a(I)LXs;

    move-result-object v0

    invoke-virtual {v0}, LXs;->a()Landroid/graphics/Bitmap;
    :try_end_94
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_94} :catch_99
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_94} :catch_a3

    move-result-object v0

    goto :goto_36

    .line 684
    :cond_96
    mul-int/lit8 v0, v0, 0x2

    goto :goto_6f

    .line 690
    :catch_99
    move-exception v0

    .line 691
    const-string v2, "UploadSharedItemActivity"

    const-string v3, "Could not open image for thumbnail creation"

    invoke-static {v2, v3, v0}, LZA;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 692
    goto :goto_36

    .line 693
    :catch_a3
    move-exception v0

    .line 694
    const-string v2, "UploadSharedItemActivity"

    const-string v3, "Could not open image for thumbnail creation"

    invoke-static {v2, v3, v0}, LZA;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 695
    goto :goto_36

    :cond_ad
    move-object v0, v1

    .line 698
    goto :goto_36
.end method

.method private a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 488
    iget-object v1, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 489
    sget-object v1, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 490
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 491
    const-string v4, "UploadSharedItemActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hardcoding mimetype to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v1, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    sget-object v1, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_57
    move-object v1, v0

    goto :goto_1d

    .line 498
    :cond_59
    if-eqz v1, :cond_63

    const-string v0, "/*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 500
    :cond_63
    const-string v0, "UploadSharedItemActivity"

    const-string v1, "Could not get mime type -- will infer it"

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {p0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 504
    :goto_72
    if-eqz v0, :cond_7c

    iget-object v1, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:LFX;

    invoke-static {v1, v0}, LZB;->a(LFX;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_84

    .line 505
    :cond_7c
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    :cond_84
    if-eqz v0, :cond_8e

    iget-object v1, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:LFX;

    invoke-static {v1, v0}, LZB;->a(LFX;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_98

    .line 509
    :cond_8e
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:LFX;

    const-string v1, "defaultUploadMimeType"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    :cond_98
    return-object v0

    :cond_99
    move-object v0, v1

    goto :goto_72

    :cond_9b
    move-object v0, v1

    goto :goto_57
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/lang/String;

    return-object p1
.end method

.method private a(Z)Ljava/util/List;
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "LtB;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 525
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 527
    iget-object v1, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 529
    iget-object v2, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_69

    .line 531
    iget-object v2, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 537
    :goto_32
    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Landroid/net/Uri;)I

    move-result v5

    .line 538
    new-instance v6, LtD;

    iget-object v7, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:LanD;

    iget-object v8, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->c:LanD;

    invoke-direct {v6, v7, v8}, LtD;-><init>(LanD;LanD;)V

    invoke-virtual {v6, v2}, LtD;->a(Ljava/lang/String;)LtD;

    move-result-object v2

    invoke-virtual {v2, v1}, LtD;->a(Landroid/net/Uri;)LtD;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, LtD;->b(Ljava/lang/String;)LtD;

    move-result-object v1

    invoke-virtual {v1, v0}, LtD;->c(Ljava/lang/String;)LtD;

    move-result-object v1

    invoke-virtual {v1, p1}, LtD;->a(Z)LtD;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->j:Z

    invoke-virtual {v1, v2}, LtD;->b(Z)LtD;

    move-result-object v1

    invoke-virtual {v1, v5}, LtD;->a(I)LtD;

    move-result-object v1

    invoke-virtual {v1}, LtD;->a()LtB;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 534
    :cond_69
    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    goto :goto_32

    .line 549
    :cond_6e
    return-object v3
.end method

.method private a(Landroid/content/Intent;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 190
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 191
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 192
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 193
    new-instance v0, LOL;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v0, v4}, LOL;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:LOL;

    .line 194
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 195
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 196
    if-nez v0, :cond_31

    .line 197
    const-string v0, "This item cannot be uploaded as Google Document."

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->b(Ljava/lang/String;)V

    .line 235
    :goto_30
    return-void

    .line 200
    :cond_31
    if-eqz v1, :cond_3b

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 201
    :cond_3b
    const-string v0, "This item cannot be uploaded as Google Document."

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->b(Ljava/lang/String;)V

    goto :goto_30

    .line 204
    :cond_41
    const-string v1, "accountName"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/lang/String;

    .line 205
    const-string v1, "docListTitle"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    if-nez v1, :cond_88

    .line 207
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :goto_58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/util/List;

    .line 212
    iget-object v1, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 226
    :goto_69
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_db

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No files requested to be uploaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->b(Ljava/lang/String;)V

    goto :goto_30

    .line 209
    :cond_88
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 214
    :cond_8c
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 215
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/util/List;

    .line 216
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 217
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    .line 219
    :cond_b6
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/TextView;

    sget v1, LcY;->upload_multiple_document_titles:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_69

    .line 222
    :cond_c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 231
    :cond_db
    const-string v0, "convertDocument"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->i:Z

    .line 232
    const-string v0, "deleteAfterUpload"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->j:Z

    .line 233
    const-string v0, "evaluateForOcr"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->k:Z

    .line 234
    invoke-direct {p0, p1, v3}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Landroid/content/Intent;Ljava/util/List;)V

    goto/16 :goto_30
.end method

.method private a(Landroid/content/Intent;Ljava/util/List;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 299
    invoke-virtual {p0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a()LIi;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->i:Z

    if-eqz v0, :cond_52

    sget v0, LcY;->upload_shared_item_title_convert_drivev2:I

    :goto_b
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LIi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Ljava/util/List;)V

    .line 304
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_55

    .line 305
    iget-object v1, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/EditText;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 307
    iget-boolean v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->k:Z

    if-eqz v0, :cond_40

    .line 308
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->b(Landroid/net/Uri;)V

    .line 318
    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->i:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 319
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    return-void

    .line 299
    :cond_52
    sget v0, LcY;->upload_shared_item_title_drivev2:I

    goto :goto_b

    .line 311
    :cond_55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5e

    .line 315
    :cond_81
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_40
.end method

.method private a(Landroid/net/Uri;)V
    .registers 5
    .parameter

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->j:Z

    if-eqz v0, :cond_36

    if-eqz p1, :cond_36

    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 288
    const-string v0, "UploadSharedItemActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleaning up file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 292
    :cond_36
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->e()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:LXh;

    invoke-interface {v0, p1}, LXh;->a(Ljava/lang/String;)LXg;

    move-result-object v1

    .line 332
    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(LXg;)Z

    move-result v0

    .line 335
    iget-object v2, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    invoke-virtual {v1}, LXg;->b()Z

    move-result v0

    .line 339
    if-nez v0, :cond_1e

    .line 340
    iget-object v1, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 342
    :cond_1e
    iget-object v1, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 343
    return-void

    .line 335
    :cond_24
    const/16 v0, 0x8

    goto :goto_f
.end method

.method private a(Ljava/util/List;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 357
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    .line 358
    const/4 v0, 0x0

    .line 365
    :goto_9
    if-eqz v0, :cond_3c

    .line 366
    iget-object v1, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 367
    iget-object v1, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 368
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    :goto_1c
    return-void

    .line 360
    :cond_1d
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 361
    iget-object v1, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 363
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_9

    .line 370
    :cond_3c
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1c
.end method

.method private a(LXg;)Z
    .registers 4
    .parameter

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 347
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-virtual {p1, v0}, LXg;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 349
    const/4 v0, 0x0

    .line 352
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method private a(Landroid/net/Uri;)Z
    .registers 13
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 739
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 740
    iget-object v1, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:LXh;

    invoke-interface {v1, v0}, LXh;->a(Ljava/lang/String;)LXg;

    move-result-object v5

    .line 744
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 749
    :goto_1e
    invoke-virtual {p0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 750
    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result v1

    int-to-long v6, v1

    .line 751
    const-wide/16 v1, 0x0

    .line 755
    if-eqz v0, :cond_37

    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "image/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 756
    :cond_37
    sget-object v0, LkU;->j:LkU;

    invoke-virtual {v5, v0}, LXg;->a(LkU;)J

    move-result-wide v1

    .line 770
    :cond_3d
    cmp-long v0, v6, v1

    if-lez v0, :cond_a1

    .line 771
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 772
    invoke-static {p0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 773
    invoke-static {p0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 774
    sget v2, LcY;->file_too_large_for_upload_drivev2:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 775
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v4

    aput-object v5, v6, v3

    const/4 v0, 0x2

    aput-object v1, v6, v0

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 777
    sget v1, LcY;->file_too_large_for_upload_title:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 778
    sget v2, LcY;->file_too_large_for_upload_okbtn:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 780
    invoke-static {v0, v1, v2}, LoB;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 781
    iget-object v1, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:LpB;

    invoke-interface {v1, v0}, LpB;->a(Landroid/os/Bundle;)V

    move v0, v3

    .line 785
    :goto_77
    return v0

    .line 744
    :cond_78
    iget-boolean v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->i:Z

    goto :goto_1e

    .line 761
    :cond_7b
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, LXg;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 763
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_87
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 764
    invoke-static {v0}, LkT;->a(Ljava/lang/String;)LkU;

    move-result-object v0

    invoke-virtual {v5, v0}, LXg;->a(LkU;)J

    move-result-wide v9

    .line 766
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v1, v0

    .line 767
    goto :goto_87

    :cond_a1
    move v0, v4

    .line 785
    goto :goto_77
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->j:Z

    return v0
.end method

.method private b(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:LOL;

    const-string v1, "_display_name"

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, LOL;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/net/Uri;)V
    .registers 6
    .parameter

    .prologue
    .line 375
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-static {p0}, Lop;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 377
    sget v0, LcY;->camera_ocr_evaluating_message:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 378
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 379
    const/4 v2, -0x2

    sget v0, LcY;->camera_ocr_evaluating_skip_button:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 382
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 384
    new-instance v0, LOM;

    invoke-direct {v0, p0, v1}, LOM;-><init>(Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;Landroid/app/ProgressDialog;)V

    .line 395
    new-instance v1, LON;

    invoke-direct {v1, p0, p1, v0}, LON;-><init>(Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;Landroid/net/Uri;Landroid/os/Handler;)V

    invoke-virtual {v1}, LON;->start()V

    .line 402
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 800
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:LXJ;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, LXJ;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 801
    const-string v0, "UploadSharedItemActivity"

    invoke-static {v0, p1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual {p0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->finish()V

    .line 803
    return-void
.end method

.method private declared-synchronized b(Ljava/util/List;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LtB;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 589
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 590
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Landroid/net/Uri;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_3a

    move-result v0

    if-eqz v0, :cond_7

    .line 618
    :goto_19
    monitor-exit p0

    return-void

    .line 595
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:LtF;

    new-instance v1, LOQ;

    invoke-direct {v1, p0, p1}, LOQ;-><init>(Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;Ljava/util/List;)V

    invoke-interface {v0, p0, v1}, LtF;->a(Landroid/content/Context;LXy;)Landroid/content/ServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/content/ServiceConnection;

    .line 612
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/content/ServiceConnection;

    if-nez v0, :cond_36

    .line 613
    sget v0, LcY;->upload_queue_failed_to_start:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 617
    :cond_36
    invoke-direct {p0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->f()V
    :try_end_39
    .catchall {:try_start_1b .. :try_end_39} :catchall_3a

    goto :goto_19

    .line 589
    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .registers 5

    .prologue
    .line 405
    invoke-static {p0}, Lop;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 406
    sget v1, LcY;->camera_ocr_blur_warning:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, LcY;->camera_ocr_blur_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x108008a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, LcY;->camera_ocr_warning_continue:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, LcY;->camera_ocr_warning_retake:I

    new-instance v3, LOO;

    invoke-direct {v3, p0}, LOO;-><init>(Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 423
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 425
    return-void
.end method

.method private e()Z
    .registers 12

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 430
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:LHW;

    invoke-interface {v0}, LHW;->a()[Landroid/accounts/Account;

    move-result-object v6

    .line 431
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v0, 0x1090008

    invoke-direct {v7, p0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 433
    const v0, 0x1090009

    invoke-virtual {v7, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 437
    array-length v8, v6

    move v5, v3

    move v1, v3

    move v2, v3

    :goto_1a
    if-ge v5, v8, :cond_52

    aget-object v9, v6, v5

    .line 438
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:LXh;

    iget-object v10, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v10}, LXh;->a(Ljava/lang/String;)LXg;

    move-result-object v0

    .line 439
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(LXg;)Z

    move-result v10

    .line 440
    invoke-virtual {v0}, LXg;->b()Z

    move-result v0

    if-nez v0, :cond_32

    if-eqz v10, :cond_4c

    .line 441
    :cond_32
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/lang/String;

    iget-object v10, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    move v0, v4

    .line 442
    :goto_41
    if-eqz v0, :cond_81

    move v0, v1

    .line 445
    :goto_44
    iget-object v2, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 446
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    .line 437
    :cond_4c
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1a

    :cond_50
    move v0, v3

    .line 441
    goto :goto_41

    .line 450
    :cond_52
    if-nez v1, :cond_62

    .line 451
    sget v0, LcY;->no_account_support_this_upload:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->b(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->finish()V

    move v0, v3

    .line 474
    :goto_61
    return v0

    .line 456
    :cond_62
    invoke-virtual {v7, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 459
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/Spinner;

    new-instance v1, LOP;

    invoke-direct {v1, p0, v7}, LOP;-><init>(Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 473
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    move v0, v4

    .line 474
    goto :goto_61

    :cond_81
    move v0, v2

    goto :goto_44
.end method

.method private f()V
    .registers 4

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 625
    invoke-virtual {p0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, LcY;->upload_toast_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 626
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 627
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 829
    const/4 v0, 0x0

    return-object v0
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 167
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->c()V

    .line 168
    sget v0, LcS;->title_bar:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/view/TitleBar;

    iput-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    .line 169
    sget v0, LcS;->upload_textview_document_title:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/TextView;

    .line 170
    sget v0, LcS;->upload_multiple_listview_document_title:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->b:Landroid/widget/TextView;

    .line 171
    sget v0, LcS;->upload_edittext_document_title:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/EditText;

    .line 172
    sget v0, LcS;->upload_image_preview:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/ImageView;

    .line 173
    sget v0, LcS;->upload_doclist_convert:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/CheckBox;

    .line 174
    sget v0, LcS;->upload_spinner_account:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/Spinner;

    .line 175
    sget v0, LcS;->upload_button_ok:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/Button;

    .line 176
    sget v0, LcS;->upload_button_cancel:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->b:Landroid/widget/Button;

    .line 177
    sget v0, LcS;->upload_conversion_options_layout:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/LinearLayout;

    .line 179
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 261
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 262
    if-eqz p1, :cond_11

    .line 263
    const-string v0, "UploadSharedItemActivity"

    const-string v1, "Invalid request code in activity result."

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->finish()V

    .line 266
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 632
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Landroid/net/Uri;)V

    .line 633
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onBackPressed()V

    .line 634
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, LcS;->upload_button_ok:I

    if-ne v0, v1, :cond_26

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 277
    :goto_1b
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Z)Ljava/util/List;

    move-result-object v0

    .line 278
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->b(Ljava/util/List;)V

    .line 284
    :cond_22
    :goto_22
    return-void

    .line 274
    :cond_23
    iget-boolean v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->i:Z

    goto :goto_1b

    .line 279
    :cond_26
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, LcS;->upload_button_cancel:I

    if-ne v0, v1, :cond_22

    .line 280
    invoke-virtual {p0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 281
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Landroid/net/Uri;)V

    .line 282
    invoke-virtual {p0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->finish()V

    goto :goto_22
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {p0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 158
    sget v1, LcU;->upload_shared_item_activity:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->setContentView(I)V

    .line 160
    invoke-virtual {p0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a()LIi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    invoke-interface {v1, v2}, LIi;->a(LIB;)V

    .line 161
    new-instance v1, LoB;

    invoke-direct {v1}, LoB;-><init>()V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Lof;)LpB;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:LpB;

    .line 162
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Landroid/content/Intent;)V

    .line 163
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_9

    .line 791
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 793
    :cond_9
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onDestroy()V

    .line 794
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 185
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->setIntent(Landroid/content/Intent;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Landroid/content/Intent;)V

    .line 187
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 253
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 255
    const-string v0, "accountName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/lang/String;

    .line 256
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onResume()V

    .line 241
    invoke-direct {p0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->e()Z

    .line 242
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 246
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 248
    const-string v0, "accountName"

    iget-object v1, p0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method
