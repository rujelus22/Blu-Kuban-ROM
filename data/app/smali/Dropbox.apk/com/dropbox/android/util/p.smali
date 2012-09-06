.class final Lcom/dropbox/android/util/p;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/io/FilenameFilter;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 922
    const-string v0, "dbup-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "gzdbup-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
