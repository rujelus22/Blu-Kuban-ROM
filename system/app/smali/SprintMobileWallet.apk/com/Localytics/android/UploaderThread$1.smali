.class Lcom/Localytics/android/UploaderThread$1;
.super Ljava/lang/Object;
.source "UploaderThread.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Localytics/android/UploaderThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Localytics/android/UploaderThread;


# direct methods
.method constructor <init>(Lcom/Localytics/android/UploaderThread;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Localytics/android/UploaderThread$1;->this$0:Lcom/Localytics/android/UploaderThread;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/Localytics/android/UploaderThread$1;->this$0:Lcom/Localytics/android/UploaderThread;

    #getter for: Lcom/Localytics/android/UploaderThread;->_uploaderFilePrefix:Ljava/lang/String;
    invoke-static {v0}, Lcom/Localytics/android/UploaderThread;->access$0(Lcom/Localytics/android/UploaderThread;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
