.class Lcom/quramsoft/xiv/XIVUtils$1;
.super Ljava/lang/Thread;
.source "XIVUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quramsoft/xiv/XIVUtils;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V
    .registers 3
    .parameter "$anonymous0"
    .parameter

    .prologue
    .line 1
    iput-object p2, p0, Lcom/quramsoft/xiv/XIVUtils$1;->val$options:Landroid/graphics/BitmapFactory$Options;

    .line 788
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 791
    const-wide/16 v0, 0x1770

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 792
    iget-object v0, p0, Lcom/quramsoft/xiv/XIVUtils$1;->val$options:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_a} :catch_b

    .line 795
    :goto_a
    return-void

    .line 793
    :catch_b
    move-exception v0

    goto :goto_a
.end method
