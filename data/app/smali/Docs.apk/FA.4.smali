.class public LFA;
.super Ljava/lang/Thread;
.source "GViewActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/experiments/gview/GViewActivity;

.field final synthetic a:Ljava/io/Reader;

.field final synthetic a:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;Lorg/apache/http/HttpEntity;Ljava/io/Reader;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, LFA;->a:Lcom/google/android/apps/docs/experiments/gview/GViewActivity;

    iput-object p2, p0, LFA;->a:Lorg/apache/http/HttpEntity;

    iput-object p3, p0, LFA;->a:Ljava/io/Reader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 393
    :try_start_0
    iget-object v0, p0, LFA;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 394
    iget-object v0, p0, LFA;->a:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    .line 397
    :goto_a
    return-void

    .line 395
    :catch_b
    move-exception v0

    goto :goto_a
.end method
