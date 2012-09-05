.class public Lcom/sprint/dsa/data/Content;
.super Ljava/lang/Object;
.source "Content.java"


# instance fields
.field public mAlerts:Lcom/sprint/dsa/data/Alerts;

.field public mAppVer:J

.field public mDiagnosticGroups:Lcom/sprint/dsa/diagnostics/DiagnosticGroups;

.field public mDiagnosticStubs:Lcom/sprint/dsa/diagnostics/DiagnosticStubs;

.field public mOptional:Z

.field public mPacks:Lcom/sprint/dsa/pack/Packs;

.field public mPages:Lcom/sprint/dsa/data/Pages;

.field public mPromos:Lcom/sprint/dsa/data/PageContent;

.field public mSettings:Lcom/sprint/dsa/SzSettings;

.field public mUpgradePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/sprint/dsa/SzSettings;

    const-string v1, "0"

    invoke-direct {v0, v1}, Lcom/sprint/dsa/SzSettings;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sprint/dsa/data/Content;->mSettings:Lcom/sprint/dsa/SzSettings;

    .line 33
    new-instance v0, Lcom/sprint/dsa/data/Alerts;

    const-string v1, "0"

    invoke-direct {v0, v1}, Lcom/sprint/dsa/data/Alerts;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sprint/dsa/data/Content;->mAlerts:Lcom/sprint/dsa/data/Alerts;

    .line 34
    new-instance v0, Lcom/sprint/dsa/data/PageContent;

    const-string v1, "0"

    invoke-direct {v0, v1}, Lcom/sprint/dsa/data/PageContent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sprint/dsa/data/Content;->mPromos:Lcom/sprint/dsa/data/PageContent;

    .line 35
    new-instance v0, Lcom/sprint/dsa/data/Pages;

    invoke-direct {v0}, Lcom/sprint/dsa/data/Pages;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/data/Content;->mPages:Lcom/sprint/dsa/data/Pages;

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sprint/dsa/data/Content;->mAppVer:J

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/dsa/data/Content;->mUpgradePath:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/dsa/data/Content;->mOptional:Z

    .line 39
    new-instance v0, Lcom/sprint/dsa/pack/Packs;

    invoke-direct {v0}, Lcom/sprint/dsa/pack/Packs;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/data/Content;->mPacks:Lcom/sprint/dsa/pack/Packs;

    .line 40
    new-instance v0, Lcom/sprint/dsa/diagnostics/DiagnosticStubs;

    invoke-direct {v0}, Lcom/sprint/dsa/diagnostics/DiagnosticStubs;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/data/Content;->mDiagnosticStubs:Lcom/sprint/dsa/diagnostics/DiagnosticStubs;

    .line 41
    new-instance v0, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;

    invoke-direct {v0}, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/data/Content;->mDiagnosticGroups:Lcom/sprint/dsa/diagnostics/DiagnosticGroups;

    .line 42
    return-void
.end method

.method protected static getContentFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "appMode"

    .prologue
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, fileName:Ljava/lang/String;
    return-object v0
.end method

.method public static readLocalFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "context"
    .parameter "appMode"

    .prologue
    .line 86
    invoke-static {p1}, Lcom/sprint/dsa/data/Content;->getContentFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, fileName:Ljava/lang/String;
    :try_start_4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v3, fileData:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 91
    .local v5, fis:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 93
    .local v0, bis:Ljava/io/BufferedInputStream;
    const/16 v7, 0x400

    new-array v1, v7, [B

    .line 94
    .local v1, buf:[B
    const/4 v6, 0x0

    .line 95
    .local v6, numRead:I
    :goto_17
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_26

    .line 99
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 105
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #buf:[B
    .end local v3           #fileData:Ljava/lang/StringBuffer;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v6           #numRead:I
    :goto_25
    return-object v7

    .line 96
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #buf:[B
    .restart local v3       #fileData:Ljava/lang/StringBuffer;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v6       #numRead:I
    :cond_26
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v8, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_2f} :catch_30
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2f} :catch_3d

    goto :goto_17

    .line 103
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #buf:[B
    .end local v3           #fileData:Ljava/lang/StringBuffer;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v6           #numRead:I
    :catch_30
    move-exception v2

    .line 105
    .local v2, ex:Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f040002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_25

    .line 107
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    :catch_3d
    move-exception v2

    .line 108
    .local v2, ex:Ljava/lang/Exception;
    const-string v7, "SprintZone"

    const-string v8, "Error reading file version of downloaded content."

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static saveLocalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "context"
    .parameter "xml"
    .parameter "appMode"

    .prologue
    .line 71
    invoke-static {p2}, Lcom/sprint/dsa/data/Content;->getContentFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, fileName:Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 75
    .local v2, fos:Ljava/io/FileOutputStream;
    const-string v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 76
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    .line 82
    return-void

    .line 78
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catch_16
    move-exception v0

    .line 79
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "SprintZone"

    const-string v4, "Error saving file version of downloaded content."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public detachAlerts()Lcom/sprint/dsa/data/Alerts;
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sprint/dsa/data/Content;->mAlerts:Lcom/sprint/dsa/data/Alerts;

    .line 52
    .local v0, ret:Lcom/sprint/dsa/data/Alerts;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/dsa/data/Content;->mAlerts:Lcom/sprint/dsa/data/Alerts;

    .line 53
    return-object v0
.end method

.method public detachPages()Lcom/sprint/dsa/data/Pages;
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sprint/dsa/data/Content;->mPages:Lcom/sprint/dsa/data/Pages;

    .line 64
    .local v0, ret:Lcom/sprint/dsa/data/Pages;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/dsa/data/Content;->mPages:Lcom/sprint/dsa/data/Pages;

    .line 65
    return-object v0
.end method

.method public detachPromos()Lcom/sprint/dsa/data/PageContent;
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sprint/dsa/data/Content;->mPromos:Lcom/sprint/dsa/data/PageContent;

    .line 58
    .local v0, ret:Lcom/sprint/dsa/data/PageContent;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/dsa/data/Content;->mPromos:Lcom/sprint/dsa/data/PageContent;

    .line 59
    return-object v0
.end method

.method public detachSettings()Lcom/sprint/dsa/SzSettings;
    .registers 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sprint/dsa/data/Content;->mSettings:Lcom/sprint/dsa/SzSettings;

    .line 46
    .local v0, ret:Lcom/sprint/dsa/SzSettings;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/dsa/data/Content;->mSettings:Lcom/sprint/dsa/SzSettings;

    .line 47
    return-object v0
.end method
