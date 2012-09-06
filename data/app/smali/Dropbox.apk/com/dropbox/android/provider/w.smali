.class public abstract enum Lcom/dropbox/android/provider/w;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/provider/w;

.field public static final enum b:Lcom/dropbox/android/provider/w;

.field private static final synthetic h:[Lcom/dropbox/android/provider/w;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Landroid/net/Uri;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/dropbox/android/provider/x;

    const-string v1, "ACCOUNT_INFO"

    const-string v3, "/account_info"

    const-string v4, "com.dropbox.android.provider.ACCOUNT_INFO_READ"

    const/4 v5, 0x0

    const-string v6, "vnd.android.cursor.item/vnd.dropbox.account_info"

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/android/provider/x;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/android/provider/w;->a:Lcom/dropbox/android/provider/w;

    .line 48
    new-instance v3, Lcom/dropbox/android/provider/y;

    const-string v4, "CAMERA_UPLOAD_SETTINGS"

    const-string v6, "/camera_upload_settings"

    const-string v7, "com.dropbox.android.provider.CAMERA_UPLOAD_SETTINGS_READ"

    const-string v8, "com.dropbox.android.provider.CAMERA_UPLOAD_SETTINGS_WRITE"

    const-string v9, "vnd.android.cursor.item/vnd.dropbox.camera_upload_settings"

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/dropbox/android/provider/y;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/android/provider/w;->b:Lcom/dropbox/android/provider/w;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/android/provider/w;

    sget-object v1, Lcom/dropbox/android/provider/w;->a:Lcom/dropbox/android/provider/w;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/android/provider/w;->b:Lcom/dropbox/android/provider/w;

    aput-object v1, v0, v10

    sput-object v0, Lcom/dropbox/android/provider/w;->h:[Lcom/dropbox/android/provider/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput-object p3, p0, Lcom/dropbox/android/provider/w;->c:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.dropbox.android.provider.SDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/provider/w;->d:Landroid/net/Uri;

    .line 107
    iput-object p6, p0, Lcom/dropbox/android/provider/w;->e:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lcom/dropbox/android/provider/w;->f:Ljava/lang/String;

    .line 109
    iput-object p5, p0, Lcom/dropbox/android/provider/w;->g:Ljava/lang/String;

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/android/provider/v;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct/range {p0 .. p6}, Lcom/dropbox/android/provider/w;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/provider/w;
    .registers 2
    .parameter

    .prologue
    .line 20
    const-class v0, Lcom/dropbox/android/provider/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/provider/w;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/provider/w;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/dropbox/android/provider/w;->h:[Lcom/dropbox/android/provider/w;

    invoke-virtual {v0}, [Lcom/dropbox/android/provider/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/provider/w;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)I
.end method

.method public abstract a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;
.end method

.method public abstract a(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/content/Context;)Landroid/net/Uri;
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dropbox/android/provider/w;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dropbox/android/provider/w;->d:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dropbox/android/provider/w;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dropbox/android/provider/w;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dropbox/android/provider/w;->g:Ljava/lang/String;

    return-object v0
.end method
