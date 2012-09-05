.class public Lcom/samsung/swift/util/SwiftConfig;
.super Ljava/util/Properties;
.source "SwiftConfig.java"


# static fields
.field public static final INSTANCE:Lcom/samsung/swift/util/SwiftConfig; = null

.field private static final serialVersionUID:J = -0x7647a9690fae782fL


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    new-instance v0, Lcom/samsung/swift/util/SwiftConfig;

    invoke-direct {v0}, Lcom/samsung/swift/util/SwiftConfig;-><init>()V

    sput-object v0, Lcom/samsung/swift/util/SwiftConfig;->INSTANCE:Lcom/samsung/swift/util/SwiftConfig;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 102
    :try_start_3
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "swift.conf"

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/swift/util/SwiftConfig;->load(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_10} :catch_11
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_10} :catch_18

    .line 108
    return-void

    .line 103
    :catch_11
    move-exception v0

    .line 104
    .local v0, e:Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 105
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_18
    move-exception v0

    .line 106
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"
    .parameter "_default"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/samsung/swift/util/SwiftConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_7

    .end local p2
    :goto_6
    return-object p2

    .restart local p2
    :cond_7
    move-object p2, v0

    goto :goto_6
.end method
