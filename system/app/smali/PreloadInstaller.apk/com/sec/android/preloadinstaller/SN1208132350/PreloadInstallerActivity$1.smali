.class Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$1;
.super Ljava/lang/Object;
.source "PreloadInstallerActivity.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$1;->this$0:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 89
    const-string v0, ".apk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
