.class public Lcom/samsung/swift/security/SecurityManagerImpl;
.super Lcom/samsung/swift/security/SecurityManager;
.source "SecurityManagerImpl.java"


# static fields
.field private static final TAGNAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    const-class v0, Lcom/samsung/swift/security/SecurityManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/security/SecurityManagerImpl;->TAGNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityManager;-><init>()V

    .line 97
    sget-object v0, Lcom/samsung/swift/security/SecurityManagerImpl;->TAGNAME:Ljava/lang/String;

    const-string v1, "Creating SecurityManagerImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Lcom/samsung/swift/service/NativeComponents;->instance()Lcom/samsung/swift/service/NativeComponents;

    .line 99
    return-void
.end method

.method private static getBrowserUid()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, -0x1

    .line 127
    .local v0, BrowserUid:I
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 128
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v3, "com.android.browser"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 129
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    return v3
.end method

.method public static native start()V
.end method


# virtual methods
.method public native cleanExpired(Z)V
.end method

.method public native getConnections()[Lcom/samsung/swift/security/Connection;
.end method

.method public native getNetworks()[Lcom/samsung/swift/security/Network;
.end method

.method public native remove(Lcom/samsung/swift/security/Connection;)V
.end method

.method public native remove(Lcom/samsung/swift/security/Network;)V
.end method

.method public native reset()V
.end method

.method protected native submitChallange(Lcom/samsung/swift/security/Connection;)V
.end method

.method public native update(Lcom/samsung/swift/security/Connection;)V
.end method

.method public native update(Lcom/samsung/swift/security/Network;)V
.end method
