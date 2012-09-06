.class public Lcom/google/android/maps/driveabout/app/bj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lo/P;

.field private c:[Lo/P;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:[Lo/b;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string v0, "+"

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->a:Ljava/lang/String;

    .line 115
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bj;->h:I

    .line 116
    return-void
.end method

.method public static a(I)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 761
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/app/bj;->a(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/String;)Landroid/net/Uri;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 774
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "google.navigation"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 779
    const-string v0, "fd"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 781
    if-eqz p0, :cond_30

    .line 783
    packed-switch p0, :pswitch_data_42

    .line 791
    const-string v0, "d"

    .line 794
    :goto_2b
    const-string v2, "mode"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 797
    :cond_30
    if-eqz p1, :cond_37

    .line 798
    const-string v0, "entry"

    invoke-virtual {v1, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 801
    :cond_37
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 785
    :pswitch_3c
    const-string v0, "w"

    goto :goto_2b

    .line 788
    :pswitch_3f
    const-string v0, "b"

    goto :goto_2b

    .line 783
    :pswitch_data_42
    .packed-switch 0x2
        :pswitch_3c
        :pswitch_3f
    .end packed-switch
.end method

.method public static a(Lad/y;I[Lo/b;Ljava/lang/String;)Landroid/net/Uri;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 673
    if-nez p0, :cond_7

    .line 674
    invoke-static {p1, p3}, Lcom/google/android/maps/driveabout/app/bj;->a(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 686
    :goto_6
    return-object v0

    .line 678
    :cond_7
    invoke-virtual {p0}, Lad/y;->f()Lat/B;

    move-result-object v1

    .line 679
    invoke-virtual {p0}, Lad/y;->h()Ljava/lang/String;

    move-result-object v2

    .line 680
    invoke-virtual {p0}, Lad/y;->e()Ljava/lang/String;

    move-result-object v3

    .line 681
    invoke-virtual {p0}, Lad/y;->g()Ljava/lang/String;

    move-result-object v4

    .line 682
    new-instance v5, Lo/P;

    if-nez v1, :cond_24

    const/4 v0, 0x0

    :goto_1c
    invoke-direct {v5, v3, v0, v2, v4}, Lo/P;-><init>(Ljava/lang/String;Ln/s;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-static {v5, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/bj;->a(Lo/P;I[Lo/b;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_6

    .line 682
    :cond_24
    new-instance v0, Ln/s;

    invoke-virtual {v1}, Lat/B;->c()I

    move-result v6

    invoke-virtual {v1}, Lat/B;->e()I

    move-result v1

    invoke-direct {v0, v6, v1}, Ln/s;-><init>(II)V

    goto :goto_1c
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 708
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "google.navigation"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 714
    if-eqz p0, :cond_24

    .line 715
    const-string v1, "q"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 717
    :cond_24
    if-eqz p1, :cond_2b

    .line 718
    const-string v1, "sll"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 720
    :cond_2b
    if-eqz p2, :cond_32

    .line 721
    const-string v1, "sspn"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 723
    :cond_32
    if-eqz p3, :cond_39

    .line 724
    const-string v1, "mode"

    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 726
    :cond_39
    if-eqz p4, :cond_46

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_46

    .line 727
    const-string v1, "entry"

    invoke-virtual {v0, v1, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 729
    :cond_46
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lo/P;I[Lo/b;)Landroid/net/Uri;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 593
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/maps/driveabout/app/bj;->a(Lo/P;I[Lo/b;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lo/P;I[Lo/b;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 609
    new-instance v0, Lcom/google/android/maps/driveabout/app/bk;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/bk;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/bk;->a(Lo/P;)Lcom/google/android/maps/driveabout/app/bk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bk;->a(I)Lcom/google/android/maps/driveabout/app/bk;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/app/bk;->a([Lo/b;)Lcom/google/android/maps/driveabout/app/bk;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/maps/driveabout/app/bk;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bk;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Z)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 741
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "google.navigation"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 746
    const-string v1, "resume"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 747
    if-eqz p0, :cond_2d

    .line 748
    const-string v1, "sync_layers"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 750
    :cond_2d
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a([Lo/P;I[Lo/b;)Landroid/net/Uri;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 629
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/maps/driveabout/app/bj;->a([Lo/P;I[Lo/b;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a([Lo/P;I[Lo/b;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 646
    new-instance v0, Lcom/google/android/maps/driveabout/app/bk;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/bk;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/bk;->a([Lo/P;)Lcom/google/android/maps/driveabout/app/bk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bk;->a(I)Lcom/google/android/maps/driveabout/app/bk;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/app/bk;->a([Lo/b;)Lcom/google/android/maps/driveabout/app/bk;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/maps/driveabout/app/bk;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bk;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ln/s;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 40
    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/bj;->b(Ln/s;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lo/P;ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x3d

    .line 821
    if-nez p0, :cond_6

    .line 822
    const/4 v0, 0x0

    .line 863
    :goto_5
    return-object v0

    .line 825
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://maps.google.com/?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 828
    const-string v1, "nav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    const-string v1, "daddr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 836
    invoke-virtual {p0}, Lo/P;->d()Lo/Q;

    move-result-object v1

    .line 837
    if-eqz v1, :cond_68

    .line 838
    invoke-virtual {v1}, Lo/Q;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    :goto_3a
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    const-string v1, "dirflg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 847
    const/4 v1, 0x2

    if-ne p1, v1, :cond_70

    .line 848
    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    :goto_4f
    if-eqz p2, :cond_63

    .line 857
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    const-string v1, "entry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    :cond_63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 840
    :cond_68
    invoke-virtual {p0}, Lo/P;->c()Ln/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 849
    :cond_70
    const/4 v1, 0x3

    if-ne p1, v1, :cond_79

    .line 850
    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    .line 852
    :cond_79
    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f
.end method

.method static synthetic a([Lo/b;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 40
    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/bj;->b([Lo/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/P;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    invoke-static {p1}, Lcom/google/android/maps/driveabout/app/bj;->b(Ljava/lang/String;)Ln/s;

    move-result-object v1

    .line 249
    if-nez p0, :cond_a

    if-nez v1, :cond_a

    .line 250
    const/4 v0, 0x0

    .line 253
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lo/P;

    invoke-direct {v0, p0, v1, p2, p3}, Lo/P;-><init>(Ljava/lang/String;Ln/s;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 377
    const-string v0, "google.navigation"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "http"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static b(Ln/s;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ln/s;->a()I

    move-result v1

    invoke-static {v1}, Laa/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ln/s;->b()I

    move-result v1

    invoke-static {v1}, Laa/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b([Lo/b;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    const/4 v0, 0x0

    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_3d

    .line 328
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_14

    .line 329
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lo/b;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lo/b;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 333
    :cond_3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ln/s;
    .registers 9
    .parameter

    .prologue
    const-wide v6, 0x412e848000000000L

    const/4 v0, 0x0

    .line 263
    if-nez p0, :cond_9

    .line 277
    :cond_8
    :goto_8
    return-object v0

    .line 267
    :cond_9
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 268
    if-eqz v1, :cond_8

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_8

    .line 270
    const/4 v2, 0x0

    :try_start_16
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 271
    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 272
    new-instance v1, Ln/s;

    mul-double/2addr v2, v6

    double-to-int v2, v2

    mul-double v3, v4, v6

    double-to-int v3, v3

    invoke-direct {v1, v2, v3}, Ln/s;-><init>(II)V
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_2d} :catch_2f

    move-object v0, v1

    goto :goto_8

    .line 273
    :catch_2f
    move-exception v1

    goto :goto_8
.end method

.method private static c(Ljava/lang/String;)[Lo/b;
    .registers 12
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x2

    const/4 v2, 0x0

    .line 298
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 299
    new-array v0, v2, [Lo/b;

    .line 317
    :cond_b
    :goto_b
    return-object v0

    .line 301
    :cond_c
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 302
    array-length v1, v5

    new-array v1, v1, [Lo/b;

    .line 304
    array-length v6, v5

    move v3, v2

    :goto_17
    if-ge v2, v6, :cond_3f

    aget-object v4, v5, v2

    .line 305
    const-string v7, ":"

    invoke-virtual {v4, v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 306
    array-length v7, v4

    if-ne v7, v10, :cond_b

    .line 310
    const/4 v7, 0x0

    :try_start_25
    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 311
    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 312
    add-int/lit8 v4, v3, 0x1

    new-instance v9, Lo/b;

    invoke-direct {v9, v7, v8}, Lo/b;-><init>(II)V

    aput-object v9, v1, v3
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_3b} :catch_41

    .line 304
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_17

    :cond_3f
    move-object v0, v1

    .line 317
    goto :goto_b

    .line 313
    :catch_41
    move-exception v1

    goto :goto_b
.end method

.method private l()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 343
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bj;->a:Ljava/lang/String;

    const-string v3, "http:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bj;->a:Ljava/lang/String;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 370
    :cond_17
    :goto_17
    return v0

    .line 347
    :cond_18
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bj;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 348
    const-string v3, "1"

    const-string v4, "nav"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 353
    const-string v3, "daddr"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 354
    if-eqz v3, :cond_17

    .line 358
    const-string v4, "dirflg"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 359
    iput v0, p0, Lcom/google/android/maps/driveabout/app/bj;->d:I

    .line 360
    if-eqz v2, :cond_49

    .line 361
    const-string v4, "w"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 362
    const/4 v2, 0x2

    iput v2, p0, Lcom/google/android/maps/driveabout/app/bj;->d:I

    .line 369
    :cond_49
    :goto_49
    new-array v2, v1, [Lo/P;

    new-instance v4, Lo/P;

    invoke-direct {v4, v3, v5, v5, v5}, Lo/P;-><init>(Ljava/lang/String;Ln/s;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v0

    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/bj;->c:[Lo/P;

    move v0, v1

    .line 370
    goto :goto_17

    .line 363
    :cond_56
    const-string v4, "b"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 365
    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/maps/driveabout/app/bj;->d:I

    goto :goto_49
.end method


# virtual methods
.method public a()Z
    .registers 9

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 125
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bj;->l()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 126
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/bj;->i:Z

    move v0, v2

    .line 231
    :goto_d
    return v0

    .line 130
    :cond_e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->a:Ljava/lang/String;

    const-string v1, "google.navigation:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    move v0, v3

    .line 131
    goto :goto_d

    .line 138
    :cond_1a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->a:Ljava/lang/String;

    const-string v1, "google.navigation:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&x=y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    .line 148
    :goto_48
    const-string v0, "sync_layers"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 150
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/bj;->j:Z

    .line 155
    :cond_58
    const-string v0, "resume"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 157
    iput v7, p0, Lcom/google/android/maps/driveabout/app/bj;->h:I

    move v0, v2

    .line 158
    goto :goto_d

    .line 144
    :cond_6a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&x=y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    goto :goto_48

    .line 162
    :cond_89
    const-string v0, "mode"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    iput v3, p0, Lcom/google/android/maps/driveabout/app/bj;->d:I

    .line 164
    const-string v4, "w"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 165
    iput v7, p0, Lcom/google/android/maps/driveabout/app/bj;->d:I

    .line 172
    :cond_9b
    :goto_9b
    const-string v0, "entry"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/di;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->e:Ljava/lang/String;

    .line 175
    const-string v0, "fd"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    const-string v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 177
    iput v5, p0, Lcom/google/android/maps/driveabout/app/bj;->h:I

    move v0, v2

    .line 178
    goto/16 :goto_d

    .line 166
    :cond_ba
    const-string v4, "b"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 168
    iput v5, p0, Lcom/google/android/maps/driveabout/app/bj;->d:I

    goto :goto_9b

    .line 181
    :cond_c5
    const-string v0, "opt"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/bj;->c(Ljava/lang/String;)[Lo/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->f:[Lo/b;

    .line 182
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->f:[Lo/b;

    if-nez v0, :cond_d8

    move v0, v3

    .line 183
    goto/16 :goto_d

    .line 186
    :cond_d8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 188
    const-string v0, "altvia"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_108

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/bj;->b(Ljava/lang/String;)Ln/s;

    move-result-object v0

    .line 191
    if-nez v0, :cond_fc

    move v0, v3

    .line 192
    goto/16 :goto_d

    .line 194
    :cond_fc
    new-instance v6, Lo/P;

    invoke-direct {v6, v0}, Lo/P;-><init>(Ln/s;)V

    .line 195
    invoke-virtual {v6, v7}, Lo/P;->a(I)V

    .line 196
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e7

    .line 199
    :cond_108
    const-string v0, "r"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->g:Ljava/lang/String;

    .line 201
    const-string v0, "s"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "sll"

    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "stitle"

    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "stoken"

    invoke-virtual {v1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/maps/driveabout/app/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/P;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->b:Lo/P;

    .line 206
    const-string v0, "sr"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    const-string v5, "true"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_146

    .line 208
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->b:Lo/P;

    if-nez v0, :cond_143

    move v0, v3

    .line 209
    goto/16 :goto_d

    .line 211
    :cond_143
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bj;->h:I

    .line 214
    :cond_146
    const-string v0, "q"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "ll"

    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "token"

    invoke-virtual {v1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/maps/driveabout/app/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/P;

    move-result-object v0

    .line 220
    if-nez v0, :cond_167

    move v0, v3

    .line 221
    goto/16 :goto_d

    .line 223
    :cond_167
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lo/P;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/P;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->c:[Lo/P;

    .line 225
    const-string v0, "true"

    const-string v4, "goff"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_195

    .line 226
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->c:[Lo/P;

    array-length v0, v0

    if-lt v0, v2, :cond_18f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->b:Lo/P;

    if-nez v0, :cond_192

    :cond_18f
    move v0, v3

    .line 227
    goto/16 :goto_d

    .line 229
    :cond_192
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bj;->h:I

    :cond_195
    move v0, v2

    .line 231
    goto/16 :goto_d
.end method

.method public b()Lo/P;
    .registers 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->c:[Lo/P;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->c:[Lo/P;

    array-length v0, v0

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->c:[Lo/P;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bj;->c:[Lo/P;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public c()Lo/P;
    .registers 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->b:Lo/P;

    return-object v0
.end method

.method public d()[Lo/P;
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->c:[Lo/P;

    return-object v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 407
    iget v0, p0, Lcom/google/android/maps/driveabout/app/bj;->d:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()[Lo/b;
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->f:[Lo/b;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 437
    iget v0, p0, Lcom/google/android/maps/driveabout/app/bj;->h:I

    return v0
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bj;->j:Z

    return v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bj;->i:Z

    return v0
.end method
