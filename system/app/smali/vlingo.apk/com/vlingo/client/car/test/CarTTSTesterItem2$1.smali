.class Lcom/vlingo/client/car/test/CarTTSTesterItem2$1;
.super Ljava/lang/Object;
.source "CarTTSTesterItem2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/test/CarTTSTesterItem2;->loadForCache(Lcom/vlingo/client/core/tts/TTSFileCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/test/CarTTSTesterItem2;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/test/CarTTSTesterItem2;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem2$1;->this$0:Lcom/vlingo/client/car/test/CarTTSTesterItem2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 17
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v9, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem2$1;->this$0:Lcom/vlingo/client/car/test/CarTTSTesterItem2;

    #getter for: Lcom/vlingo/client/car/test/CarTTSTesterItem2;->items:Ljava/util/Vector;
    invoke-static {v9}, Lcom/vlingo/client/car/test/CarTTSTesterItem2;->access$100(Lcom/vlingo/client/car/test/CarTTSTesterItem2;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;

    .line 69
    .local v6, item:Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;
    #getter for: Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;->file:Ljava/io/File;
    invoke-static {v6}, Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;->access$200(Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;)Ljava/io/File;

    move-result-object v2

    .line 70
    .local v2, file:Ljava/io/File;
    iget-object v9, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem2$1;->this$0:Lcom/vlingo/client/car/test/CarTTSTesterItem2;

    #getter for: Lcom/vlingo/client/car/test/CarTTSTesterItem2;->items:Ljava/util/Vector;
    invoke-static {v9}, Lcom/vlingo/client/car/test/CarTTSTesterItem2;->access$100(Lcom/vlingo/client/car/test/CarTTSTesterItem2;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;

    #getter for: Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;->filename:Ljava/lang/String;
    invoke-static {v9}, Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;->access$300(Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, filename:Ljava/lang/String;
    #getter for: Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;->cache:Lcom/vlingo/client/core/tts/TTSFileCache;
    invoke-static {v6}, Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;->access$400(Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;)Lcom/vlingo/client/core/tts/TTSFileCache;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/vlingo/client/core/tts/TTSFileCache;->getDebugXMLForFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 74
    .local v8, xml:Ljava/lang/String;
    #getter for: Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;->cache:Lcom/vlingo/client/core/tts/TTSFileCache;
    invoke-static {v6}, Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;->access$400(Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;)Lcom/vlingo/client/core/tts/TTSFileCache;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/vlingo/client/core/tts/TTSFileCache;->getDebugBytesForFilename(Ljava/lang/String;)[B

    move-result-object v0

    .line 77
    .local v0, bytes:[B
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem2$1;->this$0:Lcom/vlingo/client/car/test/CarTTSTesterItem2;

    invoke-virtual {v10}, Lcom/vlingo/client/car/test/CarTTSTesterItem2;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 79
    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    .line 80
    .local v7, player:Landroid/media/MediaPlayer;
    const/4 v4, 0x0

    .line 82
    .local v4, in:Ljava/io/FileInputStream;
    :try_start_50
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_50 .. :try_end_55} :catch_67

    .end local v4           #in:Ljava/io/FileInputStream;
    .local v5, in:Ljava/io/FileInputStream;
    move-object v4, v5

    .line 88
    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :goto_56
    :try_start_56
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 89
    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepare()V

    .line 90
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 91
    invoke-virtual {v7}, Landroid/media/MediaPlayer;->start()V
    :try_end_66
    .catch Ljava/lang/IllegalArgumentException; {:try_start_56 .. :try_end_66} :catch_6c
    .catch Ljava/lang/IllegalStateException; {:try_start_56 .. :try_end_66} :catch_71
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_66} :catch_76

    .line 99
    :goto_66
    return-void

    .line 83
    :catch_67
    move-exception v1

    .line 84
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_56

    .line 92
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_6c
    move-exception v1

    .line 93
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_66

    .line 94
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_71
    move-exception v1

    .line 95
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_66

    .line 96
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_76
    move-exception v1

    .line 97
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_66
.end method
