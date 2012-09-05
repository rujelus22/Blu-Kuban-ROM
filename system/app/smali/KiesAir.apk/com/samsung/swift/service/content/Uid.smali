.class public Lcom/samsung/swift/service/content/Uid;
.super Ljava/lang/Object;
.source "Uid.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    const-class v0, Lcom/samsung/swift/service/content/ContentPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/content/Uid;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()I
    .registers 7

    .prologue
    .line 97
    const/4 v0, -0x1

    .line 99
    .local v0, ContentUid:I
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/swift/service/SwiftService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 103
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_9
    const-string v4, "com.android.content"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 104
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_13} :catch_2c

    .line 111
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_13
    sget-object v4, Lcom/samsung/swift/service/content/Uid;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content UID is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v0

    .line 106
    :catch_2c
    move-exception v2

    .line 109
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_13
.end method
