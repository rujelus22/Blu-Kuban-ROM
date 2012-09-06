.class public Lcom/google/tts/ConfigurationManager$dataDownloader;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tts/ConfigurationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dataDownloader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tts/ConfigurationManager;


# direct methods
.method public constructor <init>(Lcom/google/tts/ConfigurationManager;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/tts/ConfigurationManager$dataDownloader;->this$0:Lcom/google/tts/ConfigurationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 61
    invoke-static {}, Lcom/google/tts/ConfigurationManager;->downloadEspeakData()V

    .line 62
    iget-object v0, p0, Lcom/google/tts/ConfigurationManager$dataDownloader;->this$0:Lcom/google/tts/ConfigurationManager;

    invoke-virtual {v0}, Lcom/google/tts/ConfigurationManager;->finish()V

    .line 63
    return-void
.end method
