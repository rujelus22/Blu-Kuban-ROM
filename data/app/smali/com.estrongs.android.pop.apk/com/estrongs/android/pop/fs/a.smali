.class public Lcom/estrongs/android/pop/fs/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:I

.field public static final c:Ljava/util/UUID;

.field public static final d:[B

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Landroid/bluetooth/BluetoothAdapter;

.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Z

.field private static j:Lcom/estrongs/bluetooth/parser/a;

.field private static k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "La/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private static l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "La/b/b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "La/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Lcom/estrongs/android/pop/d/p;

.field private static o:Z

.field private static final p:Landroid/content/BroadcastReceiver;

.field private static final q:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v4, 0x9

    const/4 v0, 0x0

    const/4 v3, 0x0

    sput-object v0, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/fs/a;->e:Ljava/lang/String;

    sput v3, Lcom/estrongs/android/pop/fs/a;->b:I

    sput-object v0, Lcom/estrongs/android/pop/fs/a;->f:Ljava/lang/String;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/fs/a;->h:Ljava/util/Map;

    sput-boolean v3, Lcom/estrongs/android/pop/fs/a;->i:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/fs/a;->k:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/fs/a;->l:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/fs/a;->m:Ljava/util/HashMap;

    const-string v0, "00001106-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/fs/a;->c:Ljava/util/UUID;

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, -0x7

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    const/16 v2, -0x14

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, -0x3c

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, -0x6b

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, -0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, -0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    aput-byte v1, v0, v4

    const/16 v1, 0xa

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, -0x24

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, -0x62

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v4, v0, v1

    sput-object v0, Lcom/estrongs/android/pop/fs/a;->d:[B

    sput-boolean v3, Lcom/estrongs/android/pop/fs/a;->o:Z

    new-instance v0, Lcom/estrongs/android/pop/fs/b;

    invoke-direct {v0}, Lcom/estrongs/android/pop/fs/b;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/fs/a;->p:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/estrongs/android/pop/fs/c;

    invoke-direct {v0}, Lcom/estrongs/android/pop/fs/c;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/fs/a;->q:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, 0x0

    :try_start_2
    sget-object v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->am:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2, p0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_7} :catch_9

    move-result-wide v0

    :goto_8
    return-wide v0

    :catch_9
    move-exception v2

    goto :goto_8
.end method

.method static synthetic a(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/estrongs/android/pop/fs/a;->b(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/estrongs/bluetooth/parser/OBEXElement;)Ljava/lang/String;
    .registers 6

    const-string v1, ""

    invoke-virtual {p0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->d()Z

    move-result v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->f:Ljava/lang/String;

    if-nez v0, :cond_82

    const-string v0, "MM/dd/yy"

    :goto_e
    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_85

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_21
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->e()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_57

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " | "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " | "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_81
    return-object v0

    :cond_82
    sget-object v0, Lcom/estrongs/android/pop/fs/a;->f:Ljava/lang/String;

    goto :goto_e

    :cond_85
    invoke-virtual {p0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_8e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_ca

    const-string v0, "d"

    :goto_9b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "r"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "w"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_81

    :cond_ca
    const-string v0, "-"

    goto :goto_9b
.end method

.method private static a(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 3

    const-string v0, "Client is already in an operation"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const v1, 0x7f090235

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_19
    return-object v0

    :cond_1a
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_1a

    const-string v0, "/"

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    const-string v0, ""

    goto :goto_11
.end method

.method public static a(Landroid/content/Context;J)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v9, 0x0

    const-wide/16 v7, -0x1

    const/4 v6, 0x1

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    :goto_11
    return-object v2

    :cond_12
    sput-boolean v6, Lcom/estrongs/android/pop/fs/a;->o:Z

    invoke-static {p0}, Lcom/estrongs/android/pop/d/a;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/a;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/fs/a;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    cmp-long v1, p1, v7

    if-nez v1, :cond_72

    const-string v1, "Bluetooth Discovery"

    const v3, 0x7f09017b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    :goto_30
    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/d/a;->c(J)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/d/a;->a(J)Lcom/estrongs/android/pop/d/c;

    move-result-object v3

    iget-boolean v3, v3, Lcom/estrongs/android/pop/d/c;->e:Z

    if-nez v3, :cond_3e

    invoke-static {}, Lcom/estrongs/android/pop/fs/a;->h()V

    :cond_3e
    :goto_3e
    sget-boolean v3, Lcom/estrongs/android/pop/fs/a;->i:Z

    if-eqz v3, :cond_4a

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/d/a;->a(J)Lcom/estrongs/android/pop/d/c;

    move-result-object v3

    iget-boolean v3, v3, Lcom/estrongs/android/pop/d/c;->e:Z

    if-eqz v3, :cond_60

    :cond_4a
    :goto_4a
    sput-boolean v9, Lcom/estrongs/android/pop/fs/a;->o:Z

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/d/a;->a(J)Lcom/estrongs/android/pop/d/c;

    move-result-object v3

    iget-boolean v3, v3, Lcom/estrongs/android/pop/d/c;->e:Z

    if-eqz v3, :cond_68

    cmp-long v3, p1, v7

    if-nez v3, :cond_5b

    invoke-virtual {v0, v1, v2, v6}, Lcom/estrongs/android/pop/d/a;->a(JZ)V

    :cond_5b
    sput-boolean v9, Lcom/estrongs/android/pop/fs/a;->i:Z

    sget-object v2, Lcom/estrongs/android/pop/fs/a;->h:Ljava/util/Map;

    goto :goto_11

    :cond_60
    const-wide/16 v3, 0xc8

    :try_start_62
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_65
    .catch Ljava/lang/InterruptedException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_3e

    :catch_66
    move-exception v3

    goto :goto_4a

    :cond_68
    cmp-long v3, p1, v7

    if-nez v3, :cond_6f

    invoke-virtual {v0, v1, v2, v6}, Lcom/estrongs/android/pop/d/a;->a(JZ)V

    :cond_6f
    sget-object v2, Lcom/estrongs/android/pop/fs/a;->h:Ljava/util/Map;

    goto :goto_11

    :cond_72
    move-wide v1, p1

    goto :goto_30
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/estrongs/android/pop/d/a;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/a;

    move-result-object v0

    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-nez v1, :cond_c7

    const/4 v2, 0x0

    const v1, 0x7f09017b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/d/a;->c(J)V

    move-wide v3, v1

    :goto_22
    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_72

    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    :goto_31
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/estrongs/android/pop/d/a;->a(J)Lcom/estrongs/android/pop/d/c;

    move-result-object v2

    iget-boolean v2, v2, Lcom/estrongs/android/pop/d/c;->e:Z

    if-nez v2, :cond_c4

    const/4 v2, 0x0

    :try_start_3b
    invoke-static {p0, p1, v2}, Lcom/estrongs/android/pop/fs/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/Map;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_7a

    move-result-object v1

    move-object v7, v1

    :goto_40
    if-eqz v7, :cond_5e

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5e

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_50
    :goto_50
    invoke-virtual {v0, v3, v4}, Lcom/estrongs/android/pop/d/a;->a(J)Lcom/estrongs/android/pop/d/c;

    move-result-object v1

    iget-boolean v1, v1, Lcom/estrongs/android/pop/d/c;->e:Z

    if-nez v1, :cond_5e

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7d

    :cond_5e
    invoke-virtual {v0, v3, v4}, Lcom/estrongs/android/pop/d/a;->a(J)Lcom/estrongs/android/pop/d/c;

    move-result-object v1

    iget-boolean v1, v1, Lcom/estrongs/android/pop/d/c;->e:Z

    if-eqz v1, :cond_c2

    const/4 v1, 0x0

    :goto_67
    const-wide/16 v5, -0x1

    cmp-long v2, p3, v5

    if-nez v2, :cond_71

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v4, v2}, Lcom/estrongs/android/pop/d/a;->a(JZ)V

    :cond_71
    return-object v1

    :cond_72
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    move-object v5, v1

    goto :goto_31

    :catch_7a
    move-exception v2

    move-object v7, v1

    goto :goto_40

    :cond_7d
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x0

    :goto_8c
    array-length v10, v5

    if-lt v2, v10, :cond_b0

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v2, v2, v9

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-static {p0, v1, p2, v3, v4}, Lcom/estrongs/android/pop/fs/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_50

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_50

    invoke-interface {v6, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_50

    :cond_b0
    aget-object v10, v5, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_bf

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bf
    add-int/lit8 v2, v2, 0x1

    goto :goto_8c

    :cond_c2
    move-object v1, v6

    goto :goto_67

    :cond_c4
    move-object v7, v1

    goto/16 :goto_40

    :cond_c7
    move-wide v3, p3

    goto/16 :goto_22
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/estrongs/android/pop/fs/a;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/util/Map;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v1, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_d
    return-object v1

    :cond_e
    sget-object v1, Lcom/estrongs/android/pop/fs/a;->j:Lcom/estrongs/bluetooth/parser/a;

    if-nez v1, :cond_19

    new-instance v1, Lcom/estrongs/bluetooth/parser/a;

    invoke-direct {v1}, Lcom/estrongs/bluetooth/parser/a;-><init>()V

    sput-object v1, Lcom/estrongs/android/pop/fs/a;->j:Lcom/estrongs/bluetooth/parser/a;

    :cond_19
    sget-object v1, Lcom/estrongs/android/pop/fs/a;->n:Lcom/estrongs/android/pop/d/p;

    if-nez v1, :cond_23

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/p;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/a;->n:Lcom/estrongs/android/pop/d/p;

    :cond_23
    const/4 v3, 0x0

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_29
    sget-object v4, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v4

    if-eqz v4, :cond_36

    sget-object v4, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_36
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Z)La/b/b;

    move-result-object v4

    if-nez v4, :cond_5e

    sget v1, Lcom/estrongs/android/pop/fs/a;->b:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_57

    const v1, 0x7f0902be

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;

    sget-object v1, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;

    sput-object v1, Lcom/estrongs/android/pop/fs/a;->e:Ljava/lang/String;
    :try_end_57
    .catchall {:try_start_29 .. :try_end_57} :catchall_307
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_57} :catch_313

    :cond_57
    if-eqz v2, :cond_5c

    :try_start_59
    invoke-interface {v2}, La/b/d;->e()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_2fb

    :cond_5c
    :goto_5c
    const/4 v1, 0x0

    goto :goto_d

    :cond_5e
    :try_start_5e
    invoke-interface {v4}, La/b/b;->a()La/b/c;

    move-result-object v5

    const/16 v6, 0xcb

    sget-object v7, Lcom/estrongs/android/pop/fs/a;->l:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, La/b/c;->a(ILjava/lang/Object;)V

    invoke-static {v1}, Lcom/estrongs/android/pop/fs/a;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    :goto_72
    array-length v7, v6

    if-lt v1, v7, :cond_a1

    invoke-interface {v4}, La/b/b;->a()La/b/c;

    move-result-object v1

    const/16 v5, 0xcb

    sget-object v6, Lcom/estrongs/android/pop/fs/a;->l:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v5, v6}, La/b/c;->a(ILjava/lang/Object;)V

    const/16 v5, 0x42

    const-string v6, "x-obex/folder-listing"

    invoke-interface {v1, v5, v6}, La/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {v4, v1}, La/b/b;->c(La/b/c;)La/b/d;
    :try_end_8e
    .catchall {:try_start_5e .. :try_end_8e} :catchall_307
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_8e} :catch_313

    move-result-object v2

    if-eqz v2, :cond_99

    :try_start_91
    invoke-interface {v2}, La/b/d;->i()I
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_30b
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_31c

    move-result v5

    const/16 v6, 0xa0

    if-eq v5, v6, :cond_cc

    :cond_99
    if-eqz v2, :cond_9e

    :try_start_9b
    invoke-interface {v2}, La/b/d;->e()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_301

    :cond_9e
    :goto_9e
    const/4 v1, 0x0

    goto/16 :goto_d

    :cond_a1
    :try_start_a1
    aget-object v7, v6, v1

    if-eqz v7, :cond_ad

    aget-object v7, v6, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_b0

    :cond_ad
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    :cond_b0
    const/4 v7, 0x1

    aget-object v8, v6, v1

    invoke-interface {v5, v7, v8}, La/b/c;->a(ILjava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v4, v5, v7, v8}, La/b/b;->a(La/b/c;ZZ)La/b/c;

    move-result-object v7

    invoke-interface {v7}, La/b/c;->b()I
    :try_end_bf
    .catchall {:try_start_a1 .. :try_end_bf} :catchall_307
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_bf} :catch_313

    move-result v7

    const/16 v8, 0xa0

    if-eq v7, v8, :cond_ad

    if-eqz v2, :cond_c9

    :try_start_c6
    invoke-interface {v2}, La/b/d;->e()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_2fe

    :cond_c9
    :goto_c9
    const/4 v1, 0x0

    goto/16 :goto_d

    :cond_cc
    :try_start_cc
    invoke-interface {v2}, La/b/d;->h()La/b/c;

    move-result-object v5

    const/16 v6, 0x49

    invoke-interface {v5, v6}, La/b/c;->a(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_333

    invoke-interface {v4, v1}, La/b/b;->c(La/b/c;)La/b/d;
    :try_end_db
    .catchall {:try_start_cc .. :try_end_db} :catchall_30b
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_db} :catch_31c

    move-result-object v4

    :goto_dc
    :try_start_dc
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-interface {v4}, La/b/d;->b()Ljava/io/DataInputStream;

    move-result-object v2

    const/16 v5, 0x2000

    invoke-direct {v1, v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    sget-object v2, Lcom/estrongs/android/pop/fs/a;->j:Lcom/estrongs/bluetooth/parser/a;

    invoke-virtual {v2, v1}, Lcom/estrongs/bluetooth/parser/a;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    const/4 v5, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->k()I

    move-result v10

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->l()I

    move-result v7

    const/4 v1, 0x0

    if-nez v10, :cond_15e

    new-instance v5, Lcom/estrongs/android/pop/b/d;

    invoke-direct {v5, v2, v7}, Lcom/estrongs/android/pop/b/d;-><init>(Ljava/util/Map;I)V

    move-object v8, v1

    move-object v9, v2

    move-object v2, v5

    :goto_111
    if-eqz v2, :cond_19e

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V
    :try_end_118
    .catchall {:try_start_dc .. :try_end_118} :catchall_258
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_118} :catch_325

    move-object v3, v1

    :goto_119
    if-nez p3, :cond_1a6

    :try_start_11b
    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->m()Z

    move-result v1

    if-nez v1, :cond_1a6

    const/4 v1, 0x0

    move v7, v1

    :goto_127
    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->V()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/a;->f:Ljava/lang/String;

    if-eqz v6, :cond_156

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_137
    :goto_137
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1aa

    if-eqz v8, :cond_153

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_153

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2e1

    :cond_153
    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;
    :try_end_156
    .catchall {:try_start_11b .. :try_end_156} :catchall_258
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_156} :catch_225

    :cond_156
    if-eqz v4, :cond_32b

    :try_start_158
    invoke-interface {v4}, La/b/d;->e()V
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_15b} :catch_2f7

    move-object v1, v3

    goto/16 :goto_d

    :cond_15e
    const/4 v8, 0x1

    if-ne v10, v8, :cond_16a

    :try_start_161
    new-instance v5, Lcom/estrongs/android/pop/b/e;

    invoke-direct {v5, v2, v7}, Lcom/estrongs/android/pop/b/e;-><init>(Ljava/util/Map;I)V

    move-object v8, v1

    move-object v9, v2

    move-object v2, v5

    goto :goto_111

    :cond_16a
    const/4 v8, 0x2

    if-ne v10, v8, :cond_176

    new-instance v5, Lcom/estrongs/android/pop/b/c;

    invoke-direct {v5, v2, v7}, Lcom/estrongs/android/pop/b/c;-><init>(Ljava/util/Map;I)V

    move-object v8, v1

    move-object v9, v2

    move-object v2, v5

    goto :goto_111

    :cond_176
    const/4 v8, 0x3

    if-ne v10, v8, :cond_182

    new-instance v5, Lcom/estrongs/android/pop/b/b;

    invoke-direct {v5, v2, v7}, Lcom/estrongs/android/pop/b/b;-><init>(Ljava/util/Map;I)V

    move-object v8, v1

    move-object v9, v2

    move-object v2, v5

    goto :goto_111

    :cond_182
    const/4 v8, 0x4

    if-ne v10, v8, :cond_32e

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/ah;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Lcom/estrongs/android/pop/b/f;

    invoke-direct {v5, v2, v7}, Lcom/estrongs/android/pop/b/f;-><init>(Ljava/util/Map;I)V

    move-object v8, v1

    move-object v9, v2

    move-object v2, v5

    goto/16 :goto_111

    :cond_19e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_1a3
    .catchall {:try_start_161 .. :try_end_1a3} :catchall_258
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_1a3} :catch_325

    move-object v3, v1

    goto/16 :goto_119

    :cond_1a6
    const/4 v1, 0x1

    move v7, v1

    goto/16 :goto_127

    :cond_1aa
    :try_start_1aa
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/bluetooth/parser/OBEXElement;

    if-eqz v1, :cond_137

    if-nez v7, :cond_1c9

    invoke-virtual {v1}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_137

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1c9

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x2e

    if-eq v2, v5, :cond_137

    :cond_1c9
    invoke-virtual {v1}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_137

    if-nez p2, :cond_1df

    invoke-virtual {v1}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/fs/a;->n(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_137

    :cond_1df
    invoke-virtual {v1}, Lcom/estrongs/bluetooth/parser/OBEXElement;->d()Z

    move-result v12

    invoke-virtual {v1}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2, v12}, Lcom/estrongs/android/pop/fs/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    if-eqz v10, :cond_1f2

    const/4 v2, 0x1

    if-ne v10, v2, :cond_23c

    :cond_1f2
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v9, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f9
    :goto_1f9
    invoke-static {v1}, Lcom/estrongs/android/pop/fs/a;->a(Lcom/estrongs/bluetooth/parser/OBEXElement;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v2, 0x2

    invoke-virtual {v1}, Lcom/estrongs/bluetooth/parser/OBEXElement;->f()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    invoke-virtual {v1}, Lcom/estrongs/bluetooth/parser/OBEXElement;->b()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-interface {v3, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_223
    .catchall {:try_start_1aa .. :try_end_223} :catchall_258
    .catch Ljava/io/IOException; {:try_start_1aa .. :try_end_223} :catch_225

    goto/16 :goto_137

    :catch_225
    move-exception v1

    move-object v2, v1

    move-object v1, v3

    move-object v3, v4

    :goto_229
    :try_start_229
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {v2}, Lcom/estrongs/android/pop/fs/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;
    :try_end_232
    .catchall {:try_start_229 .. :try_end_232} :catchall_30f

    if-eqz v3, :cond_d

    :try_start_234
    invoke-interface {v3}, La/b/d;->e()V
    :try_end_237
    .catch Ljava/io/IOException; {:try_start_234 .. :try_end_237} :catch_239

    goto/16 :goto_d

    :catch_239
    move-exception v2

    goto/16 :goto_d

    :cond_23c
    const/4 v2, 0x2

    if-ne v10, v2, :cond_264

    const/4 v2, 0x2

    :try_start_240
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v14, 0x1

    if-eqz v12, :cond_25f

    const-wide/16 v5, 0x0

    :goto_24e
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v14

    invoke-virtual {v9, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_257
    .catchall {:try_start_240 .. :try_end_257} :catchall_258
    .catch Ljava/io/IOException; {:try_start_240 .. :try_end_257} :catch_225

    goto :goto_1f9

    :catchall_258
    move-exception v1

    :goto_259
    if-eqz v4, :cond_25e

    :try_start_25b
    invoke-interface {v4}, La/b/d;->e()V
    :try_end_25e
    .catch Ljava/io/IOException; {:try_start_25b .. :try_end_25e} :catch_304

    :cond_25e
    :goto_25e
    throw v1

    :cond_25f
    :try_start_25f
    invoke-virtual {v1}, Lcom/estrongs/bluetooth/parser/OBEXElement;->b()J

    move-result-wide v5

    goto :goto_24e

    :cond_264
    const/4 v2, 0x3

    if-ne v10, v2, :cond_28c

    invoke-virtual {v1}, Lcom/estrongs/bluetooth/parser/OBEXElement;->e()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_272

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    :cond_272
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v9, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1f9

    :cond_28c
    const/4 v2, 0x4

    if-ne v10, v2, :cond_1f9

    if-nez v8, :cond_2ad

    const/4 v2, 0x0

    :goto_292
    if-eqz v2, :cond_2c9

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v5, v6

    const/4 v6, 0x1

    iget v2, v2, Lcom/estrongs/android/util/aj;->e:I

    int-to-long v14, v2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v9, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1f9

    :cond_2ad
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/util/aj;

    goto :goto_292

    :cond_2c9
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {v9, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1f9

    :cond_2e1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/util/aj;

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Lcom/estrongs/android/util/ah;->a(Lcom/estrongs/android/util/aj;Z)V
    :try_end_2f5
    .catchall {:try_start_25f .. :try_end_2f5} :catchall_258
    .catch Ljava/io/IOException; {:try_start_25f .. :try_end_2f5} :catch_225

    goto/16 :goto_14d

    :catch_2f7
    move-exception v1

    move-object v1, v3

    goto/16 :goto_d

    :catch_2fb
    move-exception v1

    goto/16 :goto_5c

    :catch_2fe
    move-exception v1

    goto/16 :goto_c9

    :catch_301
    move-exception v1

    goto/16 :goto_9e

    :catch_304
    move-exception v2

    goto/16 :goto_25e

    :catchall_307
    move-exception v1

    move-object v4, v2

    goto/16 :goto_259

    :catchall_30b
    move-exception v1

    move-object v4, v2

    goto/16 :goto_259

    :catchall_30f
    move-exception v1

    move-object v4, v3

    goto/16 :goto_259

    :catch_313
    move-exception v1

    move-object/from16 v16, v1

    move-object v1, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto/16 :goto_229

    :catch_31c
    move-exception v1

    move-object/from16 v16, v1

    move-object v1, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto/16 :goto_229

    :catch_325
    move-exception v1

    move-object v2, v1

    move-object v1, v3

    move-object v3, v4

    goto/16 :goto_229

    :cond_32b
    move-object v1, v3

    goto/16 :goto_d

    :cond_32e
    move-object v8, v1

    move-object v9, v2

    move-object v2, v5

    goto/16 :goto_111

    :cond_333
    move-object v4, v2

    goto/16 :goto_dc
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/estrongs/android/pop/fs/a;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    return-void

    :cond_e
    const/4 v0, 0x0

    :try_start_f
    sget-object v1, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_87

    move-result-object v0

    :goto_15
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_d

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/estrongs/android/pop/fs/a;->a(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bt://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_84

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_53
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/fs/a;->b(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v0, v3, v6

    const/4 v0, 0x2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_84
    const-string v1, ""

    goto :goto_53

    :catch_87
    move-exception v1

    goto :goto_15
.end method

.method static synthetic a(Z)V
    .registers 1

    sput-boolean p0, Lcom/estrongs/android/pop/fs/a;->i:Z

    return-void
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lcom/estrongs/android/pop/fs/a;->o:Z

    return v0
.end method

.method private static a(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_10

    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static a(Landroid/content/Context;La/b/b;Ljava/lang/String;J)Z
    .registers 15

    const/16 v8, 0xa0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/d/a;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/a;

    move-result-object v3

    :try_start_8
    invoke-interface {p1}, La/b/b;->a()La/b/c;

    move-result-object v0

    const/16 v4, 0xcb

    sget-object v5, Lcom/estrongs/android/pop/fs/a;->l:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, La/b/c;->a(ILjava/lang/Object;)V

    const/16 v4, 0x42

    const-string v5, "x-obex/folder-listing"

    invoke-interface {v0, v4, v5}, La/b/c;->a(ILjava/lang/Object;)V

    const/4 v4, 0x1

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, La/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, La/b/b;->c(La/b/c;)La/b/d;

    move-result-object v4

    if-eqz v4, :cond_32

    invoke-interface {v4}, La/b/d;->i()I

    move-result v5

    if-eq v5, v8, :cond_34

    :cond_32
    move v0, v1

    :goto_33
    return v0

    :cond_34
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-interface {v4}, La/b/d;->b()Ljava/io/DataInputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v6, Lcom/estrongs/android/pop/fs/a;->j:Lcom/estrongs/bluetooth/parser/a;

    invoke-virtual {v6, v5}, Lcom/estrongs/bluetooth/parser/a;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-interface {v4}, La/b/d;->e()V

    if-eqz v6, :cond_60

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_60

    invoke-virtual {v3, p3, p4}, Lcom/estrongs/android/pop/d/a;->a(J)Lcom/estrongs/android/pop/d/c;

    move-result-object v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v0

    :cond_5a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8e

    :cond_60
    invoke-interface {p1}, La/b/b;->a()La/b/c;

    move-result-object v0

    const/16 v3, 0xcb

    sget-object v4, Lcom/estrongs/android/pop/fs/a;->l:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, La/b/c;->a(ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, La/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, La/b/b;->e(La/b/c;)La/b/c;

    move-result-object v0

    invoke-interface {v0}, La/b/c;->b()I
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_7e} :catch_12b

    move-result v0

    if-ne v0, v8, :cond_131

    move v0, v2

    :goto_82
    const/4 v1, 0x0

    :try_start_83
    sput-object v1, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_85} :catch_86

    goto :goto_33

    :catch_86
    move-exception v1

    :goto_87
    invoke-static {v1}, Lcom/estrongs/android/pop/fs/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;

    goto :goto_33

    :cond_8e
    :try_start_8e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/bluetooth/parser/OBEXElement;

    if-eqz v4, :cond_9c

    iget-boolean v6, v4, Lcom/estrongs/android/pop/d/c;->e:Z

    if-eqz v6, :cond_9c

    move v0, v1

    goto :goto_33

    :cond_9c
    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/estrongs/android/pop/fs/a;->n(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5a

    const/4 v6, 0x1

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, La/b/c;->a(ILjava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {p1, v3, v6, v7}, La/b/b;->a(La/b/c;ZZ)La/b/c;

    move-result-object v3

    invoke-interface {v3}, La/b/c;->b()I

    move-result v3

    if-eq v3, v8, :cond_bd

    move v0, v1

    goto/16 :goto_33

    :cond_bd
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->d()Z

    move-result v6

    if-eqz v6, :cond_108

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3, p4}, Lcom/estrongs/android/pop/fs/a;->a(Landroid/content/Context;La/b/b;Ljava/lang/String;J)Z

    move-result v0

    :goto_ef
    invoke-interface {p1}, La/b/b;->a()La/b/c;

    move-result-object v3

    const/16 v6, 0xcb

    sget-object v7, Lcom/estrongs/android/pop/fs/a;->l:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v6, v7}, La/b/c;->a(ILjava/lang/Object;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {p1, v3, v6, v7}, La/b/b;->a(La/b/c;ZZ)La/b/c;

    if-nez v0, :cond_5a

    move v0, v1

    goto/16 :goto_33

    :cond_108
    invoke-interface {p1}, La/b/b;->a()La/b/c;

    move-result-object v3

    const/16 v6, 0xcb

    sget-object v7, Lcom/estrongs/android/pop/fs/a;->l:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v6, v7}, La/b/c;->a(ILjava/lang/Object;)V

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v6, v0}, La/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {p1, v3}, La/b/b;->e(La/b/c;)La/b/c;

    move-result-object v0

    invoke-interface {v0}, La/b/c;->b()I
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_126} :catch_12b

    move-result v0

    if-ne v0, v8, :cond_134

    move v0, v2

    goto :goto_ef

    :catch_12b
    move-exception v0

    move-object v9, v0

    move v0, v1

    move-object v1, v9

    goto/16 :goto_87

    :cond_131
    move v0, v1

    goto/16 :goto_82

    :cond_134
    move v0, v1

    goto :goto_ef
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-static {p0}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/e/a;->a(Ljava/lang/String;)V

    :cond_17
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 15

    invoke-static {p0}, Lcom/estrongs/android/pop/d/a;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/a;

    move-result-object v0

    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-nez v1, :cond_cd

    const/4 v2, 0x0

    const v1, 0x7f09017a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/d/a;->c(J)V

    :goto_1c
    const/4 v4, 0x0

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    :try_start_22
    invoke-static {p1, v3}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Z)La/b/b;

    move-result-object v6

    if-nez v6, :cond_33

    sget v3, Lcom/estrongs/android/pop/fs/a;->b:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_31

    sget-object v3, Lcom/estrongs/android/pop/fs/a;->e:Ljava/lang/String;

    sput-object v3, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;

    :cond_31
    const/4 v0, 0x0

    :goto_32
    return v0

    :cond_33
    invoke-static {v5}, Lcom/estrongs/android/pop/fs/a;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3c

    array-length v3, v7

    if-nez v3, :cond_3e

    :cond_3c
    const/4 v0, 0x0

    goto :goto_32

    :cond_3e
    invoke-interface {v6}, La/b/b;->a()La/b/c;

    move-result-object v8

    const/16 v3, 0xcb

    sget-object v9, Lcom/estrongs/android/pop/fs/a;->l:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v3, v9}, La/b/c;->a(ILjava/lang/Object;)V

    const/4 v3, 0x0

    :goto_4e
    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    if-lt v3, v9, :cond_77

    const/4 v3, 0x1

    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v7, v9

    invoke-interface {v8, v3, v9}, La/b/c;->a(ILjava/lang/Object;)V

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/a;->l(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-static {p0, v6, v5, v1, v2}, Lcom/estrongs/android/pop/fs/a;->a(Landroid/content/Context;La/b/b;Ljava/lang/String;J)Z

    move-result v4

    :cond_66
    :goto_66
    const/4 v3, 0x0

    sput-object v3, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;
    :try_end_69
    .catchall {:try_start_22 .. :try_end_69} :catchall_cb
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_69} :catch_c2

    move v3, v4

    :goto_6a
    const-wide/16 v4, -0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_72

    if-nez v3, :cond_75

    :cond_72
    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/d/a;->a(JZ)V

    :cond_75
    move v0, v3

    goto :goto_32

    :cond_77
    :try_start_77
    aget-object v9, v7, v3

    if-eqz v9, :cond_83

    aget-object v9, v7, v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_86

    :cond_83
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    :cond_86
    const/4 v9, 0x1

    aget-object v10, v7, v3

    invoke-interface {v8, v9, v10}, La/b/c;->a(ILjava/lang/Object;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v6, v8, v9, v10}, La/b/b;->a(La/b/c;ZZ)La/b/c;

    move-result-object v9

    invoke-interface {v9}, La/b/c;->b()I

    move-result v9

    const/16 v10, 0xa0

    if-eq v9, v10, :cond_83

    const/4 v0, 0x0

    goto :goto_32

    :cond_9c
    invoke-interface {v6}, La/b/b;->a()La/b/c;

    move-result-object v3

    const/16 v5, 0xcb

    sget-object v8, Lcom/estrongs/android/pop/fs/a;->l:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v5, v8}, La/b/c;->a(ILjava/lang/Object;)V

    const/4 v5, 0x1

    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    invoke-interface {v3, v5, v7}, La/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {v6, v3}, La/b/b;->e(La/b/c;)La/b/c;

    move-result-object v3

    invoke-interface {v3}, La/b/c;->b()I
    :try_end_bb
    .catchall {:try_start_77 .. :try_end_bb} :catchall_cb
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_bb} :catch_c2

    move-result v3

    const/16 v5, 0xa0

    if-ne v3, v5, :cond_66

    const/4 v4, 0x1

    goto :goto_66

    :catch_c2
    move-exception v3

    :try_start_c3
    invoke-static {v3}, Lcom/estrongs/android/pop/fs/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;
    :try_end_c9
    .catchall {:try_start_c3 .. :try_end_c9} :catchall_cb

    move v3, v4

    goto :goto_6a

    :catchall_cb
    move-exception v0

    throw v0

    :cond_cd
    move-wide v1, p2

    goto/16 :goto_1c
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .registers 14

    const/4 v2, 0x0

    const/16 v10, 0xa0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_b
    invoke-static {p0, v5}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Z)La/b/b;

    move-result-object v5

    if-nez v5, :cond_20

    sget v3, Lcom/estrongs/android/pop/fs/a;->b:I

    if-ne v3, v0, :cond_19

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->e:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_cc
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_b8

    :cond_19
    if-eqz v2, :cond_1e

    :try_start_1b
    invoke-interface {v4}, La/b/d;->e()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_d3

    :cond_1e
    :goto_1e
    move v0, v1

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    :try_start_20
    invoke-interface {v5}, La/b/b;->a()La/b/c;

    move-result-object v6

    const/16 v7, 0xcb

    sget-object v8, Lcom/estrongs/android/pop/fs/a;->l:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, La/b/c;->a(ILjava/lang/Object;)V

    invoke-static {v3}, Lcom/estrongs/android/pop/fs/a;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_38

    array-length v3, v7
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_cc
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_36} :catch_b8

    if-nez v3, :cond_3f

    :cond_38
    if-eqz v2, :cond_3d

    :try_start_3a
    invoke-interface {v4}, La/b/d;->e()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_d6

    :cond_3d
    :goto_3d
    move v0, v1

    goto :goto_1f

    :cond_3f
    move v3, v1

    :goto_40
    :try_start_40
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    if-lt v3, v8, :cond_63

    const/4 v3, 0x1

    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    invoke-interface {v6, v3, v7}, La/b/c;->a(ILjava/lang/Object;)V

    if-eqz p1, :cond_8b

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-interface {v5, v6, v3, v7}, La/b/b;->a(La/b/c;ZZ)La/b/c;

    move-result-object v3

    invoke-interface {v3}, La/b/c;->b()I
    :try_end_59
    .catchall {:try_start_40 .. :try_end_59} :catchall_cc
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_59} :catch_b8

    move-result v3

    if-eq v3, v10, :cond_ab

    if-eqz v2, :cond_61

    :try_start_5e
    invoke-interface {v4}, La/b/d;->e()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_db

    :cond_61
    :goto_61
    move v0, v1

    goto :goto_1f

    :cond_63
    :try_start_63
    aget-object v8, v7, v3

    if-eqz v8, :cond_6f

    aget-object v8, v7, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_72

    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_72
    const/4 v8, 0x1

    aget-object v9, v7, v3

    invoke-interface {v6, v8, v9}, La/b/c;->a(ILjava/lang/Object;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v5, v6, v8, v9}, La/b/b;->a(La/b/c;ZZ)La/b/c;

    move-result-object v8

    invoke-interface {v8}, La/b/c;->b()I
    :try_end_81
    .catchall {:try_start_63 .. :try_end_81} :catchall_cc
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_81} :catch_b8

    move-result v8

    if-eq v8, v10, :cond_6f

    if-eqz v2, :cond_89

    :try_start_86
    invoke-interface {v4}, La/b/d;->e()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_d9

    :cond_89
    :goto_89
    move v0, v1

    goto :goto_1f

    :cond_8b
    const/16 v3, 0xc3

    :try_start_8d
    new-instance v4, Ljava/lang/Long;

    const-wide/16 v7, 0x1

    invoke-direct {v4, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v6, v3, v4}, La/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {v5, v6}, La/b/b;->d(La/b/c;)La/b/d;

    move-result-object v2

    invoke-interface {v2}, La/b/d;->d()Ljava/io/DataOutputStream;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_ab
    .catchall {:try_start_8d .. :try_end_ab} :catchall_cc
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_ab} :catch_b8

    :cond_ab
    const/4 v1, 0x0

    :try_start_ac
    sput-object v1, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;
    :try_end_ae
    .catchall {:try_start_ac .. :try_end_ae} :catchall_cc
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_ae} :catch_df

    if-eqz v2, :cond_1f

    :try_start_b0
    invoke-interface {v2}, La/b/d;->e()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_b5

    goto/16 :goto_1f

    :catch_b5
    move-exception v1

    goto/16 :goto_1f

    :catch_b8
    move-exception v0

    move-object v11, v0

    move v0, v1

    move-object v1, v11

    :goto_bc
    :try_start_bc
    invoke-static {v1}, Lcom/estrongs/android/pop/fs/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;
    :try_end_c2
    .catchall {:try_start_bc .. :try_end_c2} :catchall_cc

    if-eqz v2, :cond_1f

    :try_start_c4
    invoke-interface {v2}, La/b/d;->e()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_c9

    goto/16 :goto_1f

    :catch_c9
    move-exception v1

    goto/16 :goto_1f

    :catchall_cc
    move-exception v0

    if-eqz v2, :cond_d2

    :try_start_cf
    invoke-interface {v2}, La/b/d;->e()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_dd

    :cond_d2
    :goto_d2
    throw v0

    :catch_d3
    move-exception v0

    goto/16 :goto_1e

    :catch_d6
    move-exception v0

    goto/16 :goto_3d

    :catch_d9
    move-exception v0

    goto :goto_89

    :catch_db
    move-exception v0

    goto :goto_61

    :catch_dd
    move-exception v1

    goto :goto_d2

    :catch_df
    move-exception v1

    goto :goto_bc
.end method

.method public static b(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, 0x0

    :try_start_2
    sget-object v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->am:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2, p0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_7} :catch_9

    move-result-wide v0

    :goto_8
    return-wide v0

    :catch_9
    move-exception v2

    goto :goto_8
.end method

.method private static b(Ljava/lang/String;Z)La/b/b;
    .registers 12

    const/16 v9, 0xa0

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_6b

    sget-object v1, Lcom/estrongs/android/pop/fs/a;->k:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/b;

    if-eqz v1, :cond_6b

    :try_start_15
    invoke-interface {v1}, La/b/b;->a()La/b/c;

    move-result-object v6

    const/16 v4, 0xcb

    sget-object v7, Lcom/estrongs/android/pop/fs/a;->l:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v4, v7}, La/b/c;->a(ILjava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-interface {v1, v6, v4, v7}, La/b/b;->a(La/b/c;ZZ)La/b/c;

    move-result-object v4

    :goto_2a
    invoke-interface {v4}, La/b/c;->b()I

    move-result v4

    if-eq v4, v9, :cond_34

    const/16 v4, 0xa

    if-lt v2, v4, :cond_35

    :cond_34
    :goto_34
    return-object v1

    :cond_35
    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-interface {v1, v6, v4, v7}, La/b/b;->a(La/b/c;ZZ)La/b/c;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3a} :catch_3e

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :catch_3e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v6, "not connected"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_63

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v6, "connection abort"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_63

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v6, "connect"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9d

    :cond_63
    sget-object v2, Lcom/estrongs/android/pop/fs/a;->k:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_68
    invoke-interface {v1}, La/b/b;->e()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_d9

    :cond_6b
    :goto_6b
    :try_start_6b
    sget-object v1, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_78

    sget-object v1, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_78
    sget-object v1, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    sget-object v2, Lcom/estrongs/android/pop/fs/a;->c:Ljava/util/UUID;

    invoke-static {v1, v2}, Lcom/estrongs/bluetooth/c;->a(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)La/b/b;

    move-result-object v4

    invoke-interface {v4}, La/b/b;->a()La/b/c;

    move-result-object v1

    const/16 v2, 0x46

    sget-object v6, Lcom/estrongs/android/pop/fs/a;->d:[B

    invoke-interface {v1, v2, v6}, La/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {v4, v1}, La/b/b;->a(La/b/c;)La/b/c;

    move-result-object v1

    if-eqz v1, :cond_c8

    invoke-interface {v1}, La/b/c;->b()I
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_98} :catch_d2

    move-result v2

    if-eq v2, v9, :cond_b0

    move-object v1, v3

    goto :goto_34

    :cond_9d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "already in an operation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ae

    sput v8, Lcom/estrongs/android/pop/fs/a;->b:I

    :cond_ae
    move-object v1, v3

    goto :goto_34

    :cond_b0
    const/16 v2, 0xcb

    :try_start_b2
    invoke-interface {v1, v2}, La/b/c;->a(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c8

    move-object v0, v2

    check-cast v0, Ljava/lang/Long;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v4, v6, v7}, La/b/b;->a(J)V

    sget-object v1, Lcom/estrongs/android/pop/fs/a;->l:Ljava/util/HashMap;

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_c8} :catch_d2

    :cond_c8
    if-eqz p1, :cond_cf

    sget-object v1, Lcom/estrongs/android/pop/fs/a;->k:Ljava/util/HashMap;

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_cf
    move-object v1, v4

    goto/16 :goto_34

    :catch_d2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v3

    goto/16 :goto_34

    :catch_d9
    move-exception v1

    goto :goto_6b
.end method

.method private static b(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    sparse-switch v1, :sswitch_data_94

    :goto_d
    return-object v0

    :sswitch_e
    const v0, 0x7f090117

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_1a
    const v0, 0x7f090118

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_26
    const v0, 0x7f090119

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_32
    const v0, 0x7f09011a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_3e
    const v0, 0x7f09011b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_4a
    const v0, 0x7f09011c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_56
    const v0, 0x7f09011d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_62
    const v0, 0x7f09011e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_6e
    const v0, 0x7f09011f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_7a
    const v0, 0x7f090120

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_86
    const v0, 0x7f090121

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    nop

    :sswitch_data_94
    .sparse-switch
        0x0 -> :sswitch_3e
        0x100 -> :sswitch_1a
        0x200 -> :sswitch_62
        0x300 -> :sswitch_4a
        0x400 -> :sswitch_e
        0x500 -> :sswitch_56
        0x600 -> :sswitch_32
        0x700 -> :sswitch_86
        0x800 -> :sswitch_6e
        0x900 -> :sswitch_26
        0x1f00 -> :sswitch_7a
    .end sparse-switch
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/fs/a;->b(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v0

    :goto_11
    return-object v0

    :catch_12
    move-exception v0

    invoke-static {v0}, Lcom/estrongs/android/pop/fs/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;

    const-string v0, ""

    goto :goto_11
.end method

.method public static b()V
    .registers 1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/fs/a;->i:Z

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_4

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public static b(Landroid/content/Context;)V
    .registers 4

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_d
    :try_start_d
    sget-object v0, Lcom/estrongs/android/pop/fs/a;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_1f

    :goto_12
    sget-object v0, Lcom/estrongs/android/pop/fs/a;->k:Ljava/util/HashMap;

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_24

    :cond_1e
    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12

    :cond_24
    sget-object v0, Lcom/estrongs/android/pop/fs/a;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3f

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_1e

    :cond_3f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/pop/fs/a;->k:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/b;

    if-eqz v0, :cond_2e

    const/4 v2, 0x0

    :try_start_50
    invoke-interface {v0, v2}, La/b/b;->b(La/b/c;)La/b/c;

    invoke-interface {v0}, La/b/b;->e()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_56} :catch_57

    goto :goto_2e

    :catch_57
    move-exception v0

    goto :goto_2e
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/16 v4, 0xa0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_4
    sget-object v0, Lcom/estrongs/android/pop/fs/a;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/d;

    if-eqz v0, :cond_49

    invoke-interface {v0}, La/b/d;->e()V

    invoke-interface {v0}, La/b/d;->i()I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_14} :catch_3d

    move-result v0

    if-ne v0, v4, :cond_39

    move v3, v1

    :goto_18
    :try_start_18
    sget-object v0, Lcom/estrongs/android/pop/fs/a;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1d
    sget-object v0, Lcom/estrongs/android/pop/fs/a;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/d;

    if-eqz v0, :cond_47

    invoke-interface {v0}, La/b/d;->e()V

    if-eqz v3, :cond_45

    invoke-interface {v0}, La/b/d;->i()I
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2f} :catch_40

    move-result v0

    if-ne v0, v4, :cond_3b

    move v0, v1

    :goto_33
    :try_start_33
    sget-object v1, Lcom/estrongs/android/pop/fs/a;->m:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_38} :catch_43

    :goto_38
    return v0

    :cond_39
    move v3, v2

    goto :goto_18

    :cond_3b
    move v0, v2

    goto :goto_33

    :catch_3d
    move-exception v0

    move v0, v2

    goto :goto_38

    :catch_40
    move-exception v0

    move v0, v3

    goto :goto_38

    :catch_43
    move-exception v1

    goto :goto_38

    :cond_45
    move v0, v3

    goto :goto_33

    :cond_47
    move v0, v3

    goto :goto_38

    :cond_49
    move v3, v2

    goto :goto_1d
.end method

.method public static c()V
    .registers 1

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_d
    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/fs/a;->i:Z

    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/a;->l(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static d()V
    .registers 3

    sget-boolean v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ae:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    sget-object v2, Lcom/estrongs/android/pop/fs/a;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ae:Z

    goto :goto_4
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 12

    const/4 v2, 0x0

    const/16 v10, 0xa0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_b
    invoke-static {p0, v5}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Z)La/b/b;

    move-result-object v5

    if-nez v5, :cond_1f

    sget v3, Lcom/estrongs/android/pop/fs/a;->b:I

    if-ne v3, v1, :cond_19

    sget-object v1, Lcom/estrongs/android/pop/fs/a;->e:Ljava/lang/String;

    sput-object v1, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_b4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_a3

    :cond_19
    if-eqz v2, :cond_1e

    :try_start_1b
    invoke-interface {v4}, La/b/d;->e()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_bb

    :cond_1e
    :goto_1e
    return v0

    :cond_1f
    :try_start_1f
    invoke-static {v3}, Lcom/estrongs/android/pop/fs/a;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_28

    array-length v3, v6
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_b4
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_26} :catch_a3

    if-nez v3, :cond_30

    :cond_28
    if-eqz v2, :cond_1e

    :try_start_2a
    invoke-interface {v4}, La/b/d;->e()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_1e

    :catch_2e
    move-exception v1

    goto :goto_1e

    :cond_30
    :try_start_30
    invoke-interface {v5}, La/b/b;->a()La/b/c;

    move-result-object v7

    const/16 v3, 0xcb

    sget-object v8, Lcom/estrongs/android/pop/fs/a;->l:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v3, v8}, La/b/c;->a(ILjava/lang/Object;)V

    move v3, v0

    :goto_40
    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    if-lt v3, v8, :cond_6c

    const/4 v3, 0x1

    array-length v4, v6

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v6, v4

    invoke-interface {v7, v3, v4}, La/b/c;->a(ILjava/lang/Object;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/a;->l(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_95

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v5, v7, v3, v4}, La/b/b;->a(La/b/c;ZZ)La/b/c;

    move-result-object v3

    invoke-interface {v3}, La/b/c;->b()I

    move-result v3

    if-ne v3, v10, :cond_61

    move v0, v1

    :cond_61
    :goto_61
    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;
    :try_end_64
    .catchall {:try_start_30 .. :try_end_64} :catchall_b4
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_64} :catch_a3

    if-eqz v2, :cond_1e

    :try_start_66
    invoke-interface {v2}, La/b/d;->e()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_1e

    :catch_6a
    move-exception v1

    goto :goto_1e

    :cond_6c
    :try_start_6c
    aget-object v8, v6, v3

    if-eqz v8, :cond_78

    aget-object v8, v6, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7b

    :cond_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_7b
    const/4 v8, 0x1

    aget-object v9, v6, v3

    invoke-interface {v7, v8, v9}, La/b/c;->a(ILjava/lang/Object;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v5, v7, v8, v9}, La/b/b;->a(La/b/c;ZZ)La/b/c;

    move-result-object v8

    invoke-interface {v8}, La/b/c;->b()I
    :try_end_8a
    .catchall {:try_start_6c .. :try_end_8a} :catchall_b4
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_8a} :catch_a3

    move-result v8

    if-eq v8, v10, :cond_78

    if-eqz v2, :cond_1e

    :try_start_8f
    invoke-interface {v4}, La/b/d;->e()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93

    goto :goto_1e

    :catch_93
    move-exception v1

    goto :goto_1e

    :cond_95
    :try_start_95
    invoke-interface {v5, v7}, La/b/b;->c(La/b/c;)La/b/d;

    move-result-object v2

    if-eqz v2, :cond_61

    invoke-interface {v2}, La/b/d;->i()I
    :try_end_9e
    .catchall {:try_start_95 .. :try_end_9e} :catchall_b4
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_9e} :catch_a3

    move-result v3

    if-ne v3, v10, :cond_61

    move v0, v1

    goto :goto_61

    :catch_a3
    move-exception v1

    :try_start_a4
    invoke-static {v1}, Lcom/estrongs/android/pop/fs/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;
    :try_end_aa
    .catchall {:try_start_a4 .. :try_end_aa} :catchall_b4

    if-eqz v2, :cond_1e

    :try_start_ac
    invoke-interface {v2}, La/b/d;->e()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b1

    goto/16 :goto_1e

    :catch_b1
    move-exception v1

    goto/16 :goto_1e

    :catchall_b4
    move-exception v0

    if-eqz v2, :cond_ba

    :try_start_b7
    invoke-interface {v2}, La/b/d;->e()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_be

    :cond_ba
    :goto_ba
    throw v0

    :catch_bb
    move-exception v1

    goto/16 :goto_1e

    :catch_be
    move-exception v1

    goto :goto_ba
.end method

.method public static e()V
    .registers 2

    sget-boolean v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ae:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_b
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/fs/a;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_18

    :goto_14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ae:Z

    goto :goto_4

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/fs/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;
    .registers 10

    const/16 v8, 0xa0

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_b
    invoke-static {p0, v4}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Z)La/b/b;

    move-result-object v4

    if-nez v4, :cond_20

    sget v0, Lcom/estrongs/android/pop/fs/a;->b:I

    if-ne v0, v5, :cond_19

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->e:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_11a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_11f

    :cond_19
    if-eqz v1, :cond_1e

    :try_start_1b
    invoke-interface {v3}, La/b/d;->e()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_10b

    :cond_1e
    :goto_1e
    move-object v0, v1

    :goto_1f
    return-object v0

    :cond_20
    :try_start_20
    invoke-static {p0}, Lcom/estrongs/android/pop/fs/a;->l(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_124

    invoke-static {v2}, Lcom/estrongs/android/pop/fs/a;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4}, La/b/b;->a()La/b/c;

    move-result-object v5

    const/16 v6, 0xcb

    sget-object v7, Lcom/estrongs/android/pop/fs/a;->l:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, La/b/c;->a(ILjava/lang/Object;)V

    :goto_39
    array-length v6, v2

    if-lt v0, v6, :cond_65

    invoke-interface {v4}, La/b/b;->a()La/b/c;

    move-result-object v0

    const/16 v2, 0xcb

    sget-object v3, Lcom/estrongs/android/pop/fs/a;->l:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, La/b/c;->a(ILjava/lang/Object;)V

    const/16 v2, 0x42

    const-string v3, "x-obex/folder-listing"

    invoke-interface {v0, v2, v3}, La/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {v4, v0}, La/b/b;->c(La/b/c;)La/b/d;
    :try_end_55
    .catchall {:try_start_20 .. :try_end_55} :catchall_11a
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_55} :catch_11f

    move-result-object v2

    if-eqz v2, :cond_5e

    :try_start_58
    invoke-interface {v2}, La/b/d;->i()I
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_11c
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_122

    move-result v0

    if-eq v0, v8, :cond_8d

    :cond_5e
    if-eqz v2, :cond_63

    :try_start_60
    invoke-interface {v2}, La/b/d;->e()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_111

    :cond_63
    :goto_63
    move-object v0, v1

    goto :goto_1f

    :cond_65
    :try_start_65
    aget-object v6, v2, v0

    if-eqz v6, :cond_71

    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_74

    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_74
    const/4 v6, 0x1

    aget-object v7, v2, v0

    invoke-interface {v5, v6, v7}, La/b/c;->a(ILjava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, La/b/b;->a(La/b/c;ZZ)La/b/c;

    move-result-object v6

    invoke-interface {v6}, La/b/c;->b()I
    :try_end_83
    .catchall {:try_start_65 .. :try_end_83} :catchall_11a
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_83} :catch_11f

    move-result v6

    if-eq v6, v8, :cond_71

    if-eqz v1, :cond_8b

    :try_start_88
    invoke-interface {v3}, La/b/d;->e()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_10e

    :cond_8b
    :goto_8b
    move-object v0, v1

    goto :goto_1f

    :cond_8d
    :try_start_8d
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-interface {v2}, La/b/d;->b()Ljava/io/DataInputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->j:Lcom/estrongs/bluetooth/parser/a;

    invoke-virtual {v0, v3}, Lcom/estrongs/bluetooth/parser/a;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9f
    .catchall {:try_start_8d .. :try_end_9f} :catchall_11c
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_9f} :catch_122

    move-object v3, v2

    :goto_a0
    :try_start_a0
    new-instance v2, Lcom/estrongs/android/pop/d/e;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/d/e;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_100

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/android/pop/d/e;->d:Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ae
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_ce

    :goto_b4
    invoke-static {p0}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/estrongs/android/pop/d/e;->j:J

    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/estrongs/android/pop/d/e;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/estrongs/android/pop/d/e;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/estrongs/android/pop/d/e;->l:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;
    :try_end_c6
    .catchall {:try_start_a0 .. :try_end_c6} :catchall_f8
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_c6} :catch_e1

    if-eqz v3, :cond_cb

    :try_start_c8
    invoke-interface {v3}, La/b/d;->e()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_114

    :cond_cb
    :goto_cb
    move-object v0, v2

    goto/16 :goto_1f

    :cond_ce
    :try_start_ce
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/bluetooth/parser/OBEXElement;

    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->d()Z

    move-result v0

    if-eqz v0, :cond_f1

    iget v0, v2, Lcom/estrongs/android/pop/d/e;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/estrongs/android/pop/d/e;->f:I
    :try_end_e0
    .catchall {:try_start_ce .. :try_end_e0} :catchall_f8
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_e0} :catch_e1

    goto :goto_ae

    :catch_e1
    move-exception v0

    move-object v2, v3

    :goto_e3
    :try_start_e3
    invoke-static {v0}, Lcom/estrongs/android/pop/fs/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;
    :try_end_e9
    .catchall {:try_start_e3 .. :try_end_e9} :catchall_11c

    if-eqz v2, :cond_ee

    :try_start_eb
    invoke-interface {v2}, La/b/d;->e()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_116

    :cond_ee
    :goto_ee
    move-object v0, v1

    goto/16 :goto_1f

    :cond_f1
    :try_start_f1
    iget v0, v2, Lcom/estrongs/android/pop/d/e;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/estrongs/android/pop/d/e;->g:I
    :try_end_f7
    .catchall {:try_start_f1 .. :try_end_f7} :catchall_f8
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f7} :catch_e1

    goto :goto_ae

    :catchall_f8
    move-exception v0

    move-object v1, v3

    :goto_fa
    if-eqz v1, :cond_ff

    :try_start_fc
    invoke-interface {v1}, La/b/d;->e()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_ff} :catch_118

    :cond_ff
    :goto_ff
    throw v0

    :cond_100
    :try_start_100
    const-string v0, "File"

    iput-object v0, v2, Lcom/estrongs/android/pop/d/e;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/a;->a(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/estrongs/android/pop/d/e;->e:J
    :try_end_10a
    .catchall {:try_start_100 .. :try_end_10a} :catchall_f8
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_10a} :catch_e1

    goto :goto_b4

    :catch_10b
    move-exception v0

    goto/16 :goto_1e

    :catch_10e
    move-exception v0

    goto/16 :goto_8b

    :catch_111
    move-exception v0

    goto/16 :goto_63

    :catch_114
    move-exception v0

    goto :goto_cb

    :catch_116
    move-exception v0

    goto :goto_ee

    :catch_118
    move-exception v1

    goto :goto_ff

    :catchall_11a
    move-exception v0

    goto :goto_fa

    :catchall_11c
    move-exception v0

    move-object v1, v2

    goto :goto_fa

    :catch_11f
    move-exception v0

    move-object v2, v1

    goto :goto_e3

    :catch_122
    move-exception v0

    goto :goto_e3

    :cond_124
    move-object v0, v1

    move-object v3, v1

    goto/16 :goto_a0
.end method

.method static synthetic f()Z
    .registers 1

    sget-boolean v0, Lcom/estrongs/android/pop/fs/a;->i:Z

    return v0
.end method

.method public static g(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 9

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    :try_start_8
    invoke-static {p0, v3}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Z)La/b/b;

    move-result-object v3

    if-nez v3, :cond_18

    sget v0, Lcom/estrongs/android/pop/fs/a;->b:I

    if-ne v0, v4, :cond_16

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->e:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;

    :cond_16
    move-object v0, v1

    :goto_17
    return-object v0

    :cond_18
    invoke-static {v2}, Lcom/estrongs/android/pop/fs/a;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    array-length v4, v2

    if-nez v4, :cond_23

    :cond_21
    move-object v0, v1

    goto :goto_17

    :cond_23
    invoke-interface {v3}, La/b/b;->a()La/b/c;

    move-result-object v4

    const/16 v5, 0xcb

    sget-object v6, Lcom/estrongs/android/pop/fs/a;->l:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, La/b/c;->a(ILjava/lang/Object;)V

    :goto_32
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-lt v0, v5, :cond_57

    invoke-interface {v3}, La/b/b;->a()La/b/c;

    move-result-object v0

    const/16 v4, 0xcb

    sget-object v5, Lcom/estrongs/android/pop/fs/a;->l:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, La/b/c;->a(ILjava/lang/Object;)V

    const/4 v4, 0x1

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v2, v2, v5

    invoke-interface {v0, v4, v2}, La/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {v3, v0}, La/b/b;->c(La/b/c;)La/b/d;

    move-result-object v2

    if-nez v2, :cond_7c

    move-object v0, v1

    goto :goto_17

    :cond_57
    aget-object v5, v2, v0

    if-eqz v5, :cond_63

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_66

    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_66
    const/4 v5, 0x1

    aget-object v6, v2, v0

    invoke-interface {v4, v5, v6}, La/b/c;->a(ILjava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, La/b/b;->a(La/b/c;ZZ)La/b/c;

    move-result-object v5

    invoke-interface {v5}, La/b/c;->b()I

    move-result v5

    const/16 v6, 0xa0

    if-eq v5, v6, :cond_63

    move-object v0, v1

    goto :goto_17

    :cond_7c
    sget-object v0, Lcom/estrongs/android/pop/fs/a;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-interface {v2}, La/b/d;->b()Ljava/io/DataInputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8a
    .catchall {:try_start_8 .. :try_end_8a} :catchall_9a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8a} :catch_9c

    const/4 v1, 0x0

    :try_start_8b
    sput-object v1, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;
    :try_end_8d
    .catchall {:try_start_8b .. :try_end_8d} :catchall_9a
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8d} :catch_8e

    goto :goto_17

    :catch_8e
    move-exception v1

    :goto_8f
    :try_start_8f
    invoke-static {v1}, Lcom/estrongs/android/pop/fs/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_98
    .catchall {:try_start_8f .. :try_end_98} :catchall_9a

    goto/16 :goto_17

    :catchall_9a
    move-exception v0

    throw v0

    :catch_9c
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_8f
.end method

.method static synthetic g()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->h:Ljava/util/Map;

    return-object v0
.end method

.method public static h(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 9

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    :try_start_8
    invoke-static {p0, v3}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Z)La/b/b;

    move-result-object v3

    if-nez v3, :cond_18

    sget v0, Lcom/estrongs/android/pop/fs/a;->b:I

    if-ne v0, v4, :cond_16

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->e:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;

    :cond_16
    move-object v0, v1

    :goto_17
    return-object v0

    :cond_18
    invoke-static {v2}, Lcom/estrongs/android/pop/fs/a;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    array-length v4, v2

    if-nez v4, :cond_23

    :cond_21
    move-object v0, v1

    goto :goto_17

    :cond_23
    invoke-interface {v3}, La/b/b;->a()La/b/c;

    move-result-object v4

    const/16 v5, 0xcb

    sget-object v6, Lcom/estrongs/android/pop/fs/a;->l:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, La/b/c;->a(ILjava/lang/Object;)V

    :goto_32
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-lt v0, v5, :cond_76

    invoke-interface {v3}, La/b/b;->a()La/b/c;

    move-result-object v4

    const/16 v0, 0xcb

    sget-object v5, Lcom/estrongs/android/pop/fs/a;->l:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v0, v5}, La/b/c;->a(ILjava/lang/Object;)V

    const/4 v0, 0x1

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v2, v2, v5

    invoke-interface {v4, v0, v2}, La/b/c;->a(ILjava/lang/Object;)V

    const/16 v0, 0xc3

    new-instance v2, Ljava/lang/Long;

    sget-object v5, Lcom/estrongs/android/pop/fs/a;->n:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v5, p0}, Lcom/estrongs/android/pop/d/p;->d(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v2, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v4, v0, v2}, La/b/c;->a(ILjava/lang/Object;)V

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->l:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v3, v5, v6}, La/b/b;->a(J)V

    invoke-interface {v3, v4}, La/b/b;->d(La/b/c;)La/b/d;

    move-result-object v2

    if-nez v2, :cond_9c

    move-object v0, v1

    goto :goto_17

    :cond_76
    aget-object v5, v2, v0

    if-eqz v5, :cond_82

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_85

    :cond_82
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_85
    const/4 v5, 0x1

    aget-object v6, v2, v0

    invoke-interface {v4, v5, v6}, La/b/c;->a(ILjava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, La/b/b;->a(La/b/c;ZZ)La/b/c;

    move-result-object v5

    invoke-interface {v5}, La/b/c;->b()I

    move-result v5

    const/16 v6, 0xa0

    if-eq v5, v6, :cond_82

    move-object v0, v1

    goto/16 :goto_17

    :cond_9c
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-interface {v2}, La/b/d;->d()Ljava/io/DataOutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a5
    .catchall {:try_start_8 .. :try_end_a5} :catchall_bb
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_a5} :catch_bd

    :try_start_a5
    sget-object v1, Lcom/estrongs/android/pop/fs/a;->m:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;
    :try_end_ad
    .catchall {:try_start_a5 .. :try_end_ad} :catchall_bb
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_ad} :catch_af

    goto/16 :goto_17

    :catch_af
    move-exception v1

    :goto_b0
    :try_start_b0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {v1}, Lcom/estrongs/android/pop/fs/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;
    :try_end_b9
    .catchall {:try_start_b0 .. :try_end_b9} :catchall_bb

    goto/16 :goto_17

    :catchall_bb
    move-exception v0

    throw v0

    :catch_bd
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_b0
.end method

.method private static h()V
    .registers 1

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_d
    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/fs/a;->i:Z

    sget-object v0, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    return-void
.end method

.method public static i(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    sput-object v2, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_1c

    move-result v1

    const/16 v2, 0x100

    if-ne v1, v2, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    :goto_1b
    return v0

    :catch_1c
    move-exception v1

    invoke-static {v1}, Lcom/estrongs/android/pop/fs/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;

    goto :goto_1b
.end method

.method public static j(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    sput-object v2, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_1c

    move-result v1

    const/16 v2, 0x200

    if-ne v1, v2, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    :goto_1b
    return v0

    :catch_1c
    move-exception v1

    invoke-static {v1}, Lcom/estrongs/android/pop/fs/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;

    goto :goto_1b
.end method

.method public static k(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/estrongs/android/pop/fs/a;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    sput-object v2, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_18

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_17

    const/4 v0, 0x1

    :cond_17
    :goto_17
    return v0

    :catch_18
    move-exception v1

    invoke-static {v1}, Lcom/estrongs/android/pop/fs/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;

    goto :goto_17
.end method

.method private static l(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static m(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    const-string v0, "[/+]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static n(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
