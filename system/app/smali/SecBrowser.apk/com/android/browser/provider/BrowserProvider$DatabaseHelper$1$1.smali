.class Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1$1;
.super Ljava/lang/Object;
.source "BrowserProvider.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1;


# direct methods
.method constructor <init>(Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1;)V
    .registers 2
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1$1;->this$1:Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .parameter "dir"
    .parameter "filename"

    .prologue
    .line 360
    const-string v0, "gears"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
