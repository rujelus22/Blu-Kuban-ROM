.class Lcom/sec/android/providers/downloads/SecHandlerThread$1;
.super Ljava/lang/Object;
.source "SecHandlerThread.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/providers/downloads/SecHandlerThread;->validateDownloadedContent(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/providers/downloads/SecHandlerThread;


# direct methods
.method constructor <init>(Lcom/sec/android/providers/downloads/SecHandlerThread;)V
    .registers 2
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/sec/android/providers/downloads/SecHandlerThread$1;->this$0:Lcom/sec/android/providers/downloads/SecHandlerThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "mp"

    .prologue
    .line 245
    const-string v0, "SecDownloader"

    const-string v1, "SecHandlerThread : validateDownloadedContent : OnPrepareed method"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method
