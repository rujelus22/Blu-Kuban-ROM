.class public Lcom/estrongs/android/pop/view/a/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Landroid/content/res/Resources;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/view/a/c;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/view/a/c;->c:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/view/a/c;->d:Ljava/util/Hashtable;

    sput-object v1, Lcom/estrongs/android/pop/view/a/c;->e:Landroid/content/res/Resources;

    const-string v0, "com.estrongs.android.pop"

    sput-object v0, Lcom/estrongs/android/pop/view/a/c;->f:Ljava/lang/String;

    const-string v0, "com.estrongs.android.pop.cupcake"

    sput-object v0, Lcom/estrongs/android/pop/view/a/c;->g:Ljava/lang/String;

    sput-object v1, Lcom/estrongs/android/pop/view/a/c;->h:Ljava/lang/String;

    sput-object v1, Lcom/estrongs/android/pop/view/a/c;->i:Ljava/lang/String;

    sput-object v1, Lcom/estrongs/android/pop/view/a/c;->j:Ljava/lang/String;

    sput-object v1, Lcom/estrongs/android/pop/view/a/c;->k:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/util/List;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_6
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    return v1

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "TunnyBrowse"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_43

    const-string v2, "APP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    const-string v2, "Bubble"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_6b

    const-string v2, "APP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/c;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x73

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/estrongs/android/pop/e/a;->d(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {}, Lcom/estrongs/android/pop/view/a/c;->b()Z

    move-result v4

    if-eqz v4, :cond_9b

    const/4 v2, 0x0

    :cond_9b
    if-nez v2, :cond_6

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/content/ContextWrapper;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_6
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 10

    const v0, 0x7f020044

    const v1, 0x7f02002e

    const v2, 0x7f020024

    const v3, 0x7f02011b

    const v4, 0x7f02005e

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_1b
    move v0, v4

    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->s(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    const v0, 0x7f0200cb

    goto :goto_1c

    :cond_27
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const-string v0, "webdav://192.168.222.254:80/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const v0, 0x7f02000a

    goto :goto_1c

    :cond_39
    const v0, 0x7f02011d

    goto :goto_1c

    :cond_3d
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_79

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/a;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/a;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    const v0, 0x7f020031

    goto :goto_1c

    :cond_53
    const v0, 0x7f020032

    goto :goto_1c

    :cond_57
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/a;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/a;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    const v0, 0x7f020033

    goto :goto_1c

    :cond_67
    const v0, 0x7f020034

    goto :goto_1c

    :cond_6b
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/a;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    const v0, 0x7f02002f

    goto :goto_1c

    :cond_75
    const v0, 0x7f020030

    goto :goto_1c

    :cond_79
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1bb

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_11c

    const-string v6, "dropbox"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    const-string v0, "kanbox"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    const v0, 0x7f020080

    goto :goto_1c

    :cond_9d
    const-string v0, "sugarsync"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    const v0, 0x7f0200ce

    goto/16 :goto_1c

    :cond_aa
    const-string v0, "kuaipan"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    const v0, 0x7f020081

    goto/16 :goto_1c

    :cond_b7
    const-string v0, "box"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    move v0, v1

    goto/16 :goto_1c

    :cond_c2
    const-string v0, "baidu"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    move v0, v2

    goto/16 :goto_1c

    :cond_cd
    const-string v0, "vdisk"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    move v0, v3

    goto/16 :goto_1c

    :cond_d8
    const-string v0, "skydrive"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e5

    const v0, 0x7f0200cd

    goto/16 :goto_1c

    :cond_e5
    const-string v0, "gdrive"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    const v0, 0x7f020066

    goto/16 :goto_1c

    :cond_f2
    const-string v0, "s3"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    const v0, 0x7f0200c3

    goto/16 :goto_1c

    :cond_ff
    const-string v0, "yandex"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    const v0, 0x7f020122

    goto/16 :goto_1c

    :cond_10c
    const-string v0, "ubuntu"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_119

    const v0, 0x7f020115

    goto/16 :goto_1c

    :cond_119
    move v0, v4

    goto/16 :goto_1c

    :cond_11c
    const-string v6, "dropbox"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    const-string v0, "vdisk"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12f

    move v0, v3

    goto/16 :goto_1c

    :cond_12f
    const-string v0, "kanbox"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13c

    const v0, 0x7f020080

    goto/16 :goto_1c

    :cond_13c
    const-string v0, "sugarsync"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_149

    const v0, 0x7f0200ce

    goto/16 :goto_1c

    :cond_149
    const-string v0, "kuaipan"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_156

    const v0, 0x7f020081

    goto/16 :goto_1c

    :cond_156
    const-string v0, "box"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_161

    move v0, v1

    goto/16 :goto_1c

    :cond_161
    const-string v0, "baidu"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16c

    move v0, v2

    goto/16 :goto_1c

    :cond_16c
    const-string v0, "vdisk"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_177

    move v0, v3

    goto/16 :goto_1c

    :cond_177
    const-string v0, "skydrive"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_184

    const v0, 0x7f0200cd

    goto/16 :goto_1c

    :cond_184
    const-string v0, "gdrive"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_191

    const v0, 0x7f020066

    goto/16 :goto_1c

    :cond_191
    const-string v0, "s3"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19e

    const v0, 0x7f0200c3

    goto/16 :goto_1c

    :cond_19e
    const-string v0, "yandex"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ab

    const v0, 0x7f020122

    goto/16 :goto_1c

    :cond_1ab
    const-string v0, "ubuntu"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b8

    const v0, 0x7f020115

    goto/16 :goto_1c

    :cond_1b8
    move v0, v4

    goto/16 :goto_1c

    :cond_1bb
    const v0, 0x7f0200a3

    goto/16 :goto_1c
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZI)I
    .registers 8

    const v2, 0x7f020110

    const v0, 0x7f0200a2

    const/4 v1, -0x1

    if-eqz p2, :cond_a6

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    sget-object v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/c;->h(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->r(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->s(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->t(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85

    :cond_3d
    packed-switch v2, :pswitch_data_102

    const v0, 0x7f02009f

    :cond_43
    :goto_43
    if-ne v0, v1, :cond_48

    const v0, 0x7f020048

    :cond_48
    return v0

    :pswitch_49
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->r(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5b

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    :cond_5b
    const v0, 0x7f02005f

    goto :goto_43

    :cond_5f
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->s(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    const v0, 0x7f0200cc

    goto :goto_43

    :cond_69
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->t(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    const v0, 0x7f02011e

    goto :goto_43

    :cond_73
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    const v0, 0x7f02004f

    goto :goto_43

    :cond_7d
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    :cond_83
    :goto_83
    move v0, v1

    goto :goto_43

    :cond_85
    packed-switch v2, :pswitch_data_108

    move v0, v1

    goto :goto_43

    :pswitch_8a
    if-nez p3, :cond_90

    const v0, 0x7f02004d

    goto :goto_43

    :cond_90
    const/4 v0, 0x1

    if-ne p3, v0, :cond_97

    const v0, 0x7f02004c

    goto :goto_43

    :cond_97
    const/4 v0, 0x2

    if-ne p3, v0, :cond_83

    const v0, 0x7f02004b

    goto :goto_43

    :pswitch_9e
    const v0, 0x7f020053

    goto :goto_43

    :pswitch_a2
    const v0, 0x7f020051

    goto :goto_43

    :cond_a6
    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_112

    goto :goto_83

    :sswitch_ae
    const v0, 0x7f020054

    goto :goto_43

    :sswitch_b2
    const v0, 0x7f02005c

    goto :goto_43

    :sswitch_b6
    const v0, 0x7f02005b

    goto :goto_43

    :sswitch_ba
    const v0, 0x7f02005a

    goto :goto_43

    :sswitch_be
    const v0, 0x7f0200d4

    goto :goto_43

    :sswitch_c2
    const v0, 0x7f020121

    goto/16 :goto_43

    :sswitch_c7
    const v0, 0x7f020046

    goto/16 :goto_43

    :sswitch_cc
    const v0, 0x7f0200b7

    goto/16 :goto_43

    :sswitch_d1
    const v0, 0x7f02003e

    goto/16 :goto_43

    :sswitch_d6
    const v0, 0x7f020073

    goto/16 :goto_43

    :sswitch_db
    move v0, v1

    goto/16 :goto_43

    :sswitch_de
    const v0, 0x7f020123

    goto/16 :goto_43

    :sswitch_e3
    const v0, 0x7f0200b1

    goto/16 :goto_43

    :sswitch_e8
    const v0, 0x7f020045

    goto/16 :goto_43

    :sswitch_ed
    move v0, v2

    goto/16 :goto_43

    :sswitch_f0
    const v0, 0x7f0200b0

    goto/16 :goto_43

    :sswitch_f5
    const v0, 0x7f02003d

    goto/16 :goto_43

    :sswitch_fa
    const v0, 0x7f020058

    goto/16 :goto_43

    :sswitch_ff
    move v0, v2

    goto/16 :goto_43

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_49
    .end packed-switch

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_9e
        :pswitch_a2
    .end packed-switch

    :sswitch_data_112
    .sparse-switch
        0x10000 -> :sswitch_ae
        0x10001 -> :sswitch_be
        0x10010 -> :sswitch_b2
        0x10011 -> :sswitch_b2
        0x10012 -> :sswitch_b2
        0x10013 -> :sswitch_b2
        0x10014 -> :sswitch_b2
        0x1004d -> :sswitch_be
        0x20020 -> :sswitch_b6
        0x20021 -> :sswitch_b6
        0x20022 -> :sswitch_b6
        0x20023 -> :sswitch_b6
        0x20024 -> :sswitch_b6
        0x20025 -> :sswitch_b6
        0x20026 -> :sswitch_b6
        0x20027 -> :sswitch_b6
        0x20028 -> :sswitch_ba
        0x20029 -> :sswitch_ba
        0x2002a -> :sswitch_ba
        0x2002b -> :sswitch_ba
        0x2002c -> :sswitch_b6
        0x2002d -> :sswitch_b6
        0x2002e -> :sswitch_b6
        0x30027 -> :sswitch_ba
        0x30028 -> :sswitch_ba
        0x30029 -> :sswitch_ba
        0x3002a -> :sswitch_ba
        0x3002b -> :sswitch_ba
        0x3002c -> :sswitch_ba
        0x3002d -> :sswitch_ba
        0x3002e -> :sswitch_ba
        0x3002f -> :sswitch_ba
        0x40030 -> :sswitch_c2
        0x40031 -> :sswitch_c7
        0x40032 -> :sswitch_d6
        0x40033 -> :sswitch_db
        0x40034 -> :sswitch_db
        0x40035 -> :sswitch_db
        0x40036 -> :sswitch_db
        0x40037 -> :sswitch_cc
        0x4003c -> :sswitch_e8
        0x40040 -> :sswitch_d1
        0x50038 -> :sswitch_de
        0x50039 -> :sswitch_e3
        0x5003d -> :sswitch_f0
        0x5003f -> :sswitch_f5
        0x6004b -> :sswitch_ed
        0x6004c -> :sswitch_e8
        0x70001 -> :sswitch_fa
        0x80001 -> :sswitch_ff
        0x80002 -> :sswitch_e8
        0x80003 -> :sswitch_e8
        0x80004 -> :sswitch_e8
        0x80005 -> :sswitch_e8
    .end sparse-switch
.end method

.method public static a(Landroid/content/ContextWrapper;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 8

    const v5, 0x7f020054

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x73

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x2000

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_81

    :try_start_2f
    invoke-static {}, Lcom/estrongs/android/pop/view/a/c;->b()Z

    move-result v4

    if-eqz v4, :cond_67

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_42
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2f .. :try_end_42} :catch_8a

    move-result-object v1

    :goto_43
    if-nez v1, :cond_6e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_4d
    :goto_4d
    if-eqz v1, :cond_66

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->a:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_66
    return-object v1

    :cond_67
    :try_start_67
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_6c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_67 .. :try_end_6c} :catch_8a

    move-result-object v1

    goto :goto_43

    :cond_6e
    instance-of v0, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_4d

    invoke-static {p0}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/estrongs/android/pop/e/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_4d

    :cond_81
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_4d

    :catch_8a
    move-exception v0

    goto :goto_43
.end method

.method public static a(Landroid/content/ContextWrapper;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/content/ContextWrapper;Ljava/lang/String;ZLcom/estrongs/android/pop/a/b;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/ContextWrapper;Ljava/lang/String;ZLcom/estrongs/android/pop/a/b;I)Landroid/graphics/drawable/Drawable;
    .registers 10

    const v4, 0x7f0200a0

    const v3, 0x7f020054

    const/4 v2, 0x1

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->a:Ljava/util/Hashtable;

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1d

    :cond_11
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1c
    :goto_1c
    return-object v0

    :cond_1d
    invoke-static {p1}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1c

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-static {p1}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1c

    :cond_33
    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_63

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-static {p1}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_4f

    invoke-static {p0, p1}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/content/ContextWrapper;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_4f
    if-nez v0, :cond_1c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1c

    :cond_5a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1c

    :cond_63
    if-eqz p2, :cond_e0

    if-eqz p3, :cond_e0

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/c;->h(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Lcom/estrongs/android/pop/a/b;->d()Z

    move-result v1

    if-eqz v1, :cond_8e

    if-ne v0, v2, :cond_85

    const v0, 0x7f0200a1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1c

    :cond_85
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1c

    :cond_8e
    invoke-virtual {p3}, Lcom/estrongs/android/pop/a/b;->e()I

    move-result v0

    if-ne v0, v2, :cond_a1

    const v0, 0x7f020032

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1c

    :cond_a1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_af

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1c

    :cond_af
    const/4 v1, 0x2

    if-ne v0, v1, :cond_bf

    const v0, 0x7f020030

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1c

    :cond_bf
    const/4 v1, 0x4

    if-ne v0, v1, :cond_cf

    const v0, 0x7f02007f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1c

    :cond_cf
    const/16 v1, 0x10

    if-ne v0, v1, :cond_e0

    const v0, 0x7f02009f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1c

    :cond_e0
    invoke-static {p0, p1, p2, p4}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1c
.end method

.method protected static a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 6

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->f:Ljava/lang/String;

    if-eq v2, v0, :cond_a

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->g:Ljava/lang/String;

    if-ne v2, v0, :cond_67

    :cond_a
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_15
    if-nez v0, :cond_66

    invoke-static {p0}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/e/a;->d(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_58

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v0, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3b

    invoke-static {p0}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/estrongs/android/pop/e/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_3b
    if-eqz v1, :cond_58

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->a:Ljava/util/Hashtable;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_58
    move-object v0, v1

    if-nez v0, :cond_66

    const v0, 0x7f020054

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_66
    return-object v0

    :cond_67
    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->a:Ljava/util/Hashtable;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_15
.end method

.method public static a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    sget-object v1, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_30

    sget-object v1, Lcom/estrongs/android/pop/view/a/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_2b

    if-nez v1, :cond_2a

    :try_start_13
    sget-object v2, Lcom/estrongs/android/pop/view/a/c;->e:Landroid/content/res/Resources;

    if-eqz v2, :cond_2a

    sget-object v3, Lcom/estrongs/android/pop/view/a/c;->e:Landroid/content/res/Resources;

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcom/estrongs/android/pop/view/a/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v2, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2a} :catch_2e

    :cond_2a
    :goto_2a
    return-object v1

    :catch_2b
    move-exception v1

    move-object v1, v2

    goto :goto_2a

    :catch_2e
    move-exception v2

    goto :goto_2a

    :cond_30
    move-object v1, v2

    goto :goto_2a
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public static a()V
    .registers 1

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->c:Ljava/util/Hashtable;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_9
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/a/c;->e:Landroid/content/res/Resources;

    :try_start_6
    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f02009f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f020054

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f02005c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f02005b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f02005a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f0200d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f020121

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f020046

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f0200b7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f02003e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f020073

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f020123

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f0200b1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f020048

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f02009f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f02004a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f02004d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f02004c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f02004b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f020050

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f020051

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f020052

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f020053

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f020045

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f02004f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f0200a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f02005f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f0200cc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f02011e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f02003d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f020110

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f0200b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f020065

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f020058

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f0200a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f0200a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f020032

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f020030

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    const v1, 0x7f02007f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29d
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_29d} :catch_29e

    :goto_29d
    return-void

    :catch_29e
    move-exception v0

    goto :goto_29d
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0, p1, p2}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/view/a/c;->a:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    return-object v0
.end method

.method public static b(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 6

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_67

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_67

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "?"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "*"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "|"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ">"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\""

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/estrongs/android/pop/view/a/c;->c:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_67
    return-object v0
.end method

.method public static b(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 9

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->d:Ljava/util/Hashtable;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->d:Ljava/util/Hashtable;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_14
    :goto_14
    return-object v0

    :cond_15
    const-string v1, ""

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v4, 0x2000

    :try_start_20
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_23} :catch_29

    move-result-object v0

    move-object v2, v0

    :goto_25
    if-nez v2, :cond_2c

    move-object v0, v1

    goto :goto_14

    :catch_29
    move-exception v2

    move-object v2, v0

    goto :goto_25

    :cond_2c
    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->h:Ljava/lang/String;

    if-nez v0, :cond_50

    const v0, 0x7f0900ed

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/view/a/c;->h:Ljava/lang/String;

    const v0, 0x7f0900ee

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/view/a/c;->i:Ljava/lang/String;

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->V()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/a/c;->j:Ljava/lang/String;

    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/estrongs/android/pop/view/a/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_129

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v1, :cond_14

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    const-wide/32 v5, 0x12d000

    cmp-long v5, v3, v5

    if-lez v5, :cond_13e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    long-to-float v0, v3

    const/high16 v3, 0x4980

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->j:Ljava/lang/String;

    if-nez v0, :cond_15f

    const-string v0, "yyyy-MM-dd"

    :goto_ff
    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/view/a/c;->d:Ljava/util/Hashtable;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    :cond_129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7a

    :cond_13e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    long-to-float v0, v3

    const/high16 v3, 0x4480

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e4

    :cond_15f
    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->j:Ljava/lang/String;

    goto :goto_ff
.end method

.method private static b()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_6} :catch_d

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    :goto_c
    return v0

    :catch_d
    move-exception v1

    goto :goto_c
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 3

    const/high16 v0, 0x1

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_22

    sget-object v0, Lcom/estrongs/android/pop/view/a/c;->b:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_22

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x1

    goto :goto_21
.end method

.method public static c(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v4, 0x2000

    :try_start_b
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_e} :catch_2d

    move-result-object v1

    :goto_f
    if-nez v1, :cond_12

    :goto_11
    return-object v0

    :cond_12
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_11

    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :catch_2d
    move-exception v2

    goto :goto_f
.end method
