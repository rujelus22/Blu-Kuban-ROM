.class public Lcom/google/android/apps/googlevoice/FileFactoryImpl;
.super Ljava/lang/Object;
.source "FileFactoryImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/FileFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/FileFactoryImpl$1;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/FileFactoryImpl;->context:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public createFile(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/proxy/FileProxy;
    .registers 3
    .parameter "path"

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/apps/googlevoice/FileFactory$Storage;->INTERNAL:Lcom/google/android/apps/googlevoice/FileFactory$Storage;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/googlevoice/FileFactoryImpl;->createFile(Ljava/lang/String;Lcom/google/android/apps/googlevoice/FileFactory$Storage;)Lcom/google/android/apps/googlevoice/proxy/FileProxy;

    move-result-object v0

    return-object v0
.end method

.method public createFile(Ljava/lang/String;Lcom/google/android/apps/googlevoice/FileFactory$Storage;)Lcom/google/android/apps/googlevoice/proxy/FileProxy;
    .registers 6
    .parameter "path"
    .parameter "storage"

    .prologue
    .line 32
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 34
    new-instance v0, Lcom/google/android/apps/googlevoice/proxy/FileProxyImpl;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/proxy/FileProxyImpl;-><init>(Ljava/io/File;)V

    .line 36
    :goto_12
    return-object v0

    :cond_13
    new-instance v0, Lcom/google/android/apps/googlevoice/proxy/FileProxyImpl;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p2}, Lcom/google/android/apps/googlevoice/FileFactoryImpl;->getAppsRootDirectory(Lcom/google/android/apps/googlevoice/FileFactory$Storage;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/proxy/FileProxyImpl;-><init>(Ljava/io/File;)V

    goto :goto_12
.end method

.method public getAppsRootDirectory(Lcom/google/android/apps/googlevoice/FileFactory$Storage;)Ljava/lang/String;
    .registers 4
    .parameter "storage"

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/apps/googlevoice/FileFactoryImpl$1;->$SwitchMap$com$google$android$apps$googlevoice$FileFactory$Storage:[I

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/FileFactory$Storage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5c

    .line 50
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 44
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/FileFactoryImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 47
    :pswitch_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/FileFactoryImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 42
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_d
        :pswitch_39
    .end packed-switch
.end method
